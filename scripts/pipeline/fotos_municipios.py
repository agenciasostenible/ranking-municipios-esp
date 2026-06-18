#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Rellena foto_url de municipios usando Wikidata P18 (foto representativa, NO el
# mapa de localización). Resuelve el QID por nombre en es.wikipedia (por lotes de
# 50) y saca P18 de Wikidata (por lotes de 50). Para los que ya tenían un MAPA y
# no encontramos foto, pone 'NONE' (así el front muestra el degradado, no el mapa).
import json, time, hashlib, urllib.parse, urllib.request

UA = "rankingspain-photo-bot/1.0 (jlalvarez600@gmail.com)"
targets = json.load(open('/tmp/foto_targets.json'))

def api(url):
    for intento in range(4):
        try:
            req = urllib.request.Request(url, headers={'User-Agent': UA})
            with urllib.request.urlopen(req, timeout=30) as r:
                return json.loads(r.read().decode('utf-8'))
        except Exception as e:
            time.sleep(1.5 * (intento + 1))
    return None

def chunks(lst, n):
    for i in range(0, len(lst), n):
        yield lst[i:i+n]

# ── 1. Nombre → QID (es.wikipedia, lotes de 50) ──────────────────────────────
name_to_qid = {}
nombres = list({t['nombre'] for t in targets})
for i, batch in enumerate(chunks(nombres, 50)):
    titles = '|'.join(batch)
    url = 'https://es.wikipedia.org/w/api.php?action=query&prop=pageprops&ppprop=wikibase_item&redirects=1&format=json&titles=' + urllib.parse.quote(titles)
    d = api(url)
    if not d or 'query' not in d:
        continue
    q = d['query']
    norm = {x['from']: x['to'] for x in q.get('normalized', [])}
    redir = {x['from']: x['to'] for x in q.get('redirects', [])}
    by_title = {}
    for p in q.get('pages', {}).values():
        qid = p.get('pageprops', {}).get('wikibase_item')
        if qid:
            by_title[p['title']] = qid
    for n in batch:
        t = n
        for _ in range(3):
            if t in norm: t = norm[t]
            if t in redir: t = redir[t]
        if t in by_title:
            name_to_qid[n] = by_title[t]
    if i % 10 == 0:
        print(f"  wiki batch {i}: {len(name_to_qid)} QIDs")
    time.sleep(0.25)

print(f"QIDs resueltos: {len(name_to_qid)} / {len(nombres)} nombres")

# ── 2. QID → P18 (Wikidata, lotes de 50) ─────────────────────────────────────
qids = list(set(name_to_qid.values()))
qid_to_img = {}
for i, batch in enumerate(chunks(qids, 50)):
    url = 'https://www.wikidata.org/w/api.php?action=wbgetentities&props=claims&format=json&ids=' + '|'.join(batch)
    d = api(url)
    if not d or 'entities' not in d:
        continue
    for qid, ent in d['entities'].items():
        try:
            img = ent['claims']['P18'][0]['mainsnak']['datavalue']['value']
            qid_to_img[qid] = img
        except Exception:
            pass
    if i % 10 == 0:
        print(f"  wikidata batch {i}: {len(qid_to_img)} imgs")
    time.sleep(0.25)

print(f"P18 encontradas: {len(qid_to_img)} / {len(qids)} QIDs")

# ── 3. Construir URL de la foto ──────────────────────────────────────────────
def foto_url(filename):
    fn = filename.replace(' ', '_')
    ext = fn.rsplit('.', 1)[-1].lower()
    enc = urllib.parse.quote(fn)
    if ext in ('jpg', 'jpeg', 'png'):
        h = hashlib.md5(fn.encode('utf-8')).hexdigest()
        return f"https://upload.wikimedia.org/wikipedia/commons/thumb/{h[0]}/{h[0:2]}/{enc}/800px-{enc}"
    return f"https://commons.wikimedia.org/wiki/Special:FilePath/{enc}?width=800"

# ── 4. Generar SQL ───────────────────────────────────────────────────────────
st = []
n_foto = n_clear = 0
for t in targets:
    qid = name_to_qid.get(t['nombre'])
    img = qid_to_img.get(qid) if qid else None
    if img:
        u = foto_url(img).replace("'", "''")
        st.append(f"UPDATE municipios SET foto_url='{u}' WHERE codigo_ine='{t['codigo_ine']}';")
        n_foto += 1
    elif t['estado'] == 'map':
        # Tenía un mapa y no hallamos foto → quitar el mapa (degradado de fallback)
        st.append(f"UPDATE municipios SET foto_url='NONE' WHERE codigo_ine='{t['codigo_ine']}';")
        n_clear += 1

OUT = '/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations'
header = "-- 0276 fotos municipios desde Wikidata P18 (foto real, no mapa). Mapas sin foto -> NONE.\n"
files = 0
for i in range(0, len(st), 1500):
    files += 1
    open(f'{OUT}/0276_fotos_municipios_{i//1500+1:02d}.sql', 'w').write(header + '\n'.join(st[i:i+1500]) + '\n')

json.dump({'name_to_qid': name_to_qid, 'qid_to_img': qid_to_img}, open('/tmp/foto_results.json', 'w'))
print(f"\nUPDATE foto: {n_foto} | mapas limpiados: {n_clear} | archivos: {files}")

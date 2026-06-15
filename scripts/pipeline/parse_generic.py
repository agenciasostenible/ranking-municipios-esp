#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import re, json, sys, unicodedata

SRC = sys.argv[1]; OUT = sys.argv[2]
LINES = open(SRC, encoding='utf-8').read().split('\n')
N = len(LINES)

UNIPROV = {
 'islas baleares':'Islas Baleares','illes balears':'Islas Baleares','principado de asturias':'Asturias',
 'asturias':'Asturias','cantabria':'Cantabria','comunidad de madrid':'Madrid','madrid':'Madrid',
 'region de murcia':'Murcia','murcia':'Murcia','comunidad foral de navarra':'Navarra','navarra':'Navarra',
 'la rioja':'La Rioja','ceuta':'Ceuta','melilla':'Melilla'}
def norm(s):
    s=unicodedata.normalize('NFKD',s).encode('ascii','ignore').decode().lower(); return re.sub(r'[^a-z ]','',s).strip()
def clean_header(s): return re.sub(r'\s*[\(|].*$','',s).strip()

re_prov = re.compile(r'^\s*(?:[•◦]\s*)?Provincia:\s*(.+)', re.I)
re_prov2= re.compile(r'PROVINCIA:\s*([^|()]+)', re.I)
re_com  = re.compile(r'^\s*(?:Comunidad|Ciudad)\s+Aut[oó]noma:\s*(.+)', re.I)
re_muni = re.compile(r'(?:^|[•◦]\s*)Municipio:\s*(.+)')

muni_starts=[]; prov_at=[None]*N; cur=None; headers=set()
for i,ln in enumerate(LINES):
    mp=re_prov.match(ln); mc=re_com.match(ln); mp2=re_prov2.search(ln)
    if mp: cur=clean_header(mp.group(1)); headers.add(i)
    elif 'PROVINCIA:' in ln.upper() and mp2: cur=clean_header(mp2.group(1)); headers.add(i)
    elif mc:
        raw=clean_header(mc.group(1)); cur=UNIPROV.get(norm(raw))  # multiprov -> None
        headers.add(i)
    prov_at[i]=cur
    if re_muni.search(ln): muni_starts.append(i)

MARK={'◦','•','○','●','·','▪'}
def rtext(s,e):
    out=[]
    for j in range(s,e):
        if j in headers and j!=s: break
        t=LINES[j].strip()
        if not t: continue
        out.append(' ||| ' if t in MARK else ' '+t)
    return ''.join(out)

LBL=(r'(?:Recurso o [^:]*Principal|Instalaci[oó]n Principal|Almazara[^:]*|'
     r'Empresas y Recursos Clave|Recursos Clave|Cat[aá]logo de Actividades[^:]*|'
     r'Veneraci[oó]n Principal|'
     r'Tipolog[íi]a[^:]*|Grado de Consolidaci[oó]n|Variedad[^:]*|Dificultad[^:]*|'
     r'An[aá]lisis[^:]*|Normativa[^:]*|Descripci[oó]n[^:]*|Puntuaci[oó]n[^:]*|Municipio):')
STOP=r'(?:\|\|\||'+LBL+r'|$)'
def field(txt,label):
    m=re.search(label+r'\s*:\s*(.+?)\s*'+STOP, txt)
    return re.sub(r'\s+',' ',m.group(1)).strip(' |.') if m else ''

records=[]
for k,i in enumerate(muni_starts):
    e=muni_starts[k+1] if k+1<len(muni_starts) else N
    txt=rtext(i,e)
    nombre=field(txt, r'(?:Recurso o [^:]*Principal|Instalaci[oó]n Principal|Almazara[^:]*Principal|Empresas y Recursos Clave|Recursos Clave|Almazara)')
    mp=re.search(r'Puntuaci[oó]n(?:\s+y\s+Ranking)?:\s*(\d{1,3})\s*/\s*100', txt)
    score=int(mp.group(1)) if mp else None
    muni=field(txt, r'Municipio')
    desc=field(txt, r'Descripci[oó]n e Importancia')
    if not desc:
        # oleo: justificación tras "NN / 100." + Análisis
        mj=re.search(r'Puntuaci[oó]n(?:\s+y\s+Ranking)?:\s*\d{1,3}\s*/\s*100\.?\s*(.+?)\s*'+STOP, txt)
        just=re.sub(r'\s+',' ',mj.group(1)).strip(' |.') if mj else ''
        anal=field(txt, r'An[aá]lisis[^:]*')
        cat=field(txt, r'Cat[aá]logo de Actividades[^:]*')
        desc=(just+'. '+anal+'. '+cat).strip(' .').strip('. ')
    norma=field(txt, r'An[aá]lisis de Normativa[^:]*')
    records.append({'provincia':prov_at[i],'municipio':muni,'nombre':nombre,'score':score,
                    'desc':desc,'norma':norma,'line':i+1})

json.dump(records, open(OUT,'w'), ensure_ascii=False)
print(f'{SRC}: records={len(records)} sin_score={sum(1 for r in records if r["score"] is None)} '
      f'score0={sum(1 for r in records if r["score"]==0)} sin_nombre={sum(1 for r in records if not r["nombre"])} '
      f'prov_None={sum(1 for r in records if r["provincia"] is None)}')
import random
for r in records[:2]:
    print(f"  [{r['provincia']}] {r['municipio']!r} ({r['score']}) :: {r['nombre'][:50]!r} :: {r['desc'][:80]!r}")

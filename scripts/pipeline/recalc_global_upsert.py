#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Recalcula ranking_global para TODOS los municipios canónicos con datos y hace
# UPSERT (inserta los que faltaban -p.ej. los 959 sin fila- y refresca el resto).
# Fórmula IDÉNTICA a recalc_global.py (ponderada + amortiguada + fama mínima).
import json, unicodedata
from collections import defaultdict

scores_rows = json.load(open('/tmp/all_scores.json'))
munis = json.load(open('/tmp/munis_all.json'))
MUNI = {m['codigo_ine']: m for m in munis}

by_muni = defaultdict(dict)
for r in scores_rows:
    by_muni[r['codigo_ine']][r['categoria']] = r['puntuacion']

PESOS = {
    'monumentos': 1.3, 'pueblo_bonito': 1.2, 'gastronomia': 1.1, 'castillos': 1.0,
    'conjuntos': 1.0, 'museos': 0.9, 'Playas': 0.8, 'senderismo': 0.8, 'fiestas': 0.8,
    'TurismoRural': 0.7, 'vinos': 0.6, 'festivales': 0.5,
}
K_VIRTUAL = 2.0
BASE_M = 28.0
FAMA_CAP = 3.0

def calc_global(s):
    sp = 0.0; sw = 0.0
    for cat, w in PESOS.items():
        v = s.get(cat, 0)
        if v and v > 0:
            sp += v * w; sw += w
    if sw == 0:
        return 0.0
    base = (sp + K_VIRTUAL * BASE_M) / (sw + K_VIRTUAL)
    fama = min(FAMA_CAP, s.get('notoriedad_search', 0) * 0.04 + s.get('notoriedad_instagram', 0) * 0.03)
    return round(min(100.0, base + fama), 1)

def pk(p):
    n = unicodedata.normalize('NFD', p or ''); n = ''.join(c for c in n if unicodedata.category(c) != 'Mn').lower()
    return 'baleares' if 'balear' in n else n

has_global = set(l.strip() for l in open('/tmp/has_global.txt') if l.strip())

glob = {code: calc_global(s) for code, s in by_muni.items()}

# Conjunto canónico completo con global>0, para calcular el rango (posición real)
canon = []
for code, g in glob.items():
    m = MUNI.get(code)
    if not m or m['dup'] != 0 or g <= 0:
        continue
    canon.append({'code': code, 'g': g, 'prov': m['provincia'], 'nombre': m['nombre']})

order = sorted(canon, key=lambda r: (-r['g'], r['nombre']))
rank_nac = {r['code']: i for i, r in enumerate(order, 1)}
byp = defaultdict(list)
for r in canon:
    byp[pk(r['prov'])].append(r)
rank_prov = {}
for p, rs in byp.items():
    for i, r in enumerate(sorted(rs, key=lambda x: (-x['g'], x['nombre'])), 1):
        rank_prov[r['code']] = i

# SOLO los que faltan (no tienen fila ranking_global). No tocamos a nadie más.
st = []
faltan = [r for r in order if r['code'] not in has_global]
for r in faltan:
    code, g = r['code'], r['g']
    rn, rp = rank_nac[code], rank_prov[code]
    st.append(
        f"INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion, ranking_nacional, ranking_provincial) "
        f"VALUES ('{code}','ranking_global',{g},{rn},{rp}) "
        f"ON CONFLICT(codigo_ine,categoria) DO NOTHING;"
    )

OUT = '/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations'
N = len(st)
header = "-- 0275 ranking_global: insertar SOLO los municipios canónicos que no tenían fila\n-- (aparecían como '#—' pese a tener datos: Calvià, Chipiona, Alquézar...). No modifica\n-- ninguna puntuación existente. Fórmula idéntica a recalcular-rankings.py.\n"
files = 0
for i in range(0, N, 3000):
    files += 1
    open(f'{OUT}/0275_ranking_global_faltantes_{i//3000+1:02d}.sql', 'w').write(header + '\n'.join(st[i:i+3000]) + '\n')

print(f"munis que faltaban (a insertar): {N}")
print("muestra: " + " | ".join(f"{r['nombre']} {r['g']} (#nac {rank_nac[r['code']]})" for r in faltan[:6]))
print(f"archivos: {files}")

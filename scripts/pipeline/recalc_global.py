#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import json
from collections import defaultdict
import unicodedata

scores_rows = json.load(open('/tmp/all_scores.json'))
munis = json.load(open('/tmp/munis_all.json'))
MUNI = {m['codigo_ine']: m for m in munis}

# scores por municipio
by_muni = defaultdict(dict)
for r in scores_rows:
    by_muni[r['codigo_ine']][r['categoria']] = r['puntuacion']

# Pesos por sustancia y calidad del dato (nombres REALES de la BD)
PESOS = {
    'monumentos':       1.3,
    'pueblo_bonito':    1.2,
    'gastronomia':      1.1,
    'castillos':        1.0,
    'conjuntos':        1.0,
    'museos':           0.9,
    'Playas':           0.8,
    'senderismo':       0.8,
    'fiestas':          0.8,
    # 'TurismoRural' excluido del global desde 2026-06-25 (score casi universal, distorsionaba)
    'vinos':            0.6,
    'festivales':       0.5,
}
# media amortiguada (shrinkage): acerca a base cuando hay pocas categorías
K_VIRTUAL = 2.0
BASE_M    = 28.0
# fama solo como desempate
FAMA_CAP  = 3.0

def calc_global(s):
    sp = 0.0; sw = 0.0
    for cat, w in PESOS.items():
        v = s.get(cat, 0)
        if v and v > 0:
            sp += v * w; sw += w
    if sw == 0:
        return 0.0
    base = (sp + K_VIRTUAL * BASE_M) / (sw + K_VIRTUAL)
    fama = min(FAMA_CAP, s.get('notoriedad_search',0)*0.04 + s.get('notoriedad_instagram',0)*0.03)
    return round(min(100.0, base + fama), 1)

glob = {}
for code, s in by_muni.items():
    glob[code] = calc_global(s)
# municipios sin ninguna puntuacion -> 0
for m in munis:
    glob.setdefault(m['codigo_ine'], 0.0)

# rankings sobre canónicos
def pk(p):
    n=unicodedata.normalize('NFD',p or ''); n=''.join(c for c in n if unicodedata.category(c)!='Mn').lower()
    return 'baleares' if 'balear' in n else n

# build list with provincia, only canonical for ranking display
rows = []
for code, g in glob.items():
    m = MUNI.get(code)
    if not m: continue
    rows.append({'code':code,'g':g,'prov':m['provincia'],'nombre':m['nombre'],'dup':m['dup']})

canon = [r for r in rows if r['dup']==0]
order = sorted(canon, key=lambda r:(-r['g'], r['nombre']))
rank_nac = {r['code']:i for i,r in enumerate(order,1)}
byp = defaultdict(list)
for r in canon: byp[pk(r['prov'])].append(r)
rank_prov = {}
for p, rs in byp.items():
    for i,r in enumerate(sorted(rs,key=lambda x:(-x['g'],x['nombre'])),1): rank_prov[r['code']]=i

print("=== NUEVO TOP 30 Ranking Global ===")
for i,r in enumerate(order[:30],1):
    print(f"  #{i:>2} {r['g']:>5} {r['nombre']} ({r['prov']})")

# Torremolinos check
for r in canon:
    if r['nombre']=='Torremolinos':
        print(f"\nTorremolinos -> {r['g']} | #nac {rank_nac[r['code']]} | #prov {rank_prov[r['code']]}")

# write UPDATE SQL (todos los codigos con fila ranking_global)
st=[]
for code,g in glob.items():
    rn = rank_nac.get(code, 'NULL'); rp = rank_prov.get(code, 'NULL')
    st.append(f"UPDATE puntuaciones SET puntuacion={g}, ranking_nacional={rn}, ranking_provincial={rp} WHERE codigo_ine='{code}' AND categoria='ranking_global';")
OUT='/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations'
import os
for i in range(0,len(st),3500):
    open(f'{OUT}/0239_ranking_global_justo_{i//3500+1:02d}.sql','w').write('-- 0239 recalculo ranking_global (ponderado + amortiguado + fama minima)\n'+'\n'.join(st[i:i+3500])+'\n')
print(f"\nupdates: {len(st)} | archivos: {(len(st)+3499)//3500}")

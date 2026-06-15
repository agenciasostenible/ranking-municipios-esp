#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import json, re, unicodedata, sys
from collections import defaultdict

FINAL=sys.argv[1]; CATKEY=sys.argv[2]; TIPO=sys.argv[3]; FUENTE=sys.argv[4]; MIGNUM=sys.argv[5]; MIGNAME=sys.argv[6]
UNI=json.load(open(FINAL))['uni']
def norm(s):
    s=unicodedata.normalize('NFD',s); return ''.join(c for c in s if unicodedata.category(c)!='Mn').lower()
def esc(v): return 'NULL' if v is None else "'"+str(v).replace("'","''")+"'"
def pk(p):
    n=norm(p or ''); return 'baleares' if 'balear' in n else n

order=sorted(UNI,key=lambda r:(-r['score'], r['canon']))
rn={r['dbcode']:i for i,r in enumerate(order,1)}
byp=defaultdict(list)
for r in UNI: byp[pk(r['provincia'])].append(r)
rp={}
for p,rows in byp.items():
    for i,r in enumerate(sorted(rows,key=lambda x:(-x['score'],x['canon'])),1): rp[r['dbcode']]=i

ent=[]; pun=[]
for r in UNI:
    code=r['dbcode']; nombre=(r['ent'] or r['canon'])[:200]
    ent.append(f"INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente) VALUES ({esc(code)},{esc(TIPO)},{esc(nombre)},{esc(r['desc'])},{esc(FUENTE)});")
    pun.append(f"INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion,ranking_provincial,ranking_nacional) VALUES ({esc(code)},{esc(CATKEY)},{r['score']},{rp[code]},{rn[code]}) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion, ranking_provincial=excluded.ranking_provincial, ranking_nacional=excluded.ranking_nacional;")

OUT='/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations'
allst=ent+pun
head=f"-- {MIGNUM} {MIGNAME} ({FUENTE}) — entidades + puntuaciones\n"
for i in range(0,len(allst),3000):
    open(f'{OUT}/{MIGNUM}_{MIGNAME}_{i//3000+1:02d}.sql','w').write(head+'\n'.join(allst[i:i+3000])+'\n')
print(f'{CATKEY}: entidades={len(ent)} puntuaciones={len(pun)} archivos={(len(allst)+2999)//3000} score=[{min(r["score"] for r in UNI)}-{max(r["score"] for r in UNI)}]')
print('  top3:', [(r['canon'],r['provincia'],r['score']) for r in order[:3]])

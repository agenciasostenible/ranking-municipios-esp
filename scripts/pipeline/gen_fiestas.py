#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import json, re, unicodedata
from collections import defaultdict

data = json.load(open('/tmp/fiestas_final.json'))
UNI = data['uni']; PROVCOM = data['provcom']
DBM = {m['codigo_ine']:m for m in json.load(open('/tmp/db_municipios.json'))}

def norm(s):
    s=unicodedata.normalize('NFD',s); return ''.join(c for c in s if unicodedata.category(c)!='Mn').lower()
def esc(v): return 'NULL' if v is None else "'"+str(v).replace("'","''")+"'"
def pk(p):
    n=norm(p or ''); return 'baleares' if 'balear' in n else n

def comunidad_of(prov):
    if prov in PROVCOM: return PROVCOM[prov]
    # derive from any DB row of that province
    for m in DBM.values():
        if m['provincia']==prov: return None
    return None

# rankings
order=sorted(UNI,key=lambda r:(-r['score'], r['canon']))
rn={r['dbcode']:i for i,r in enumerate(order,1)}
byp=defaultdict(list)
for r in UNI: byp[pk(r['provincia'])].append(r)
rp={}
for p,rows in byp.items():
    for i,r in enumerate(sorted(rows,key=lambda x:(-x['score'],x['canon'])),1): rp[r['dbcode']]=i

muni=[]; ent=[]; pun=[]
seen=set()
# comunidad lookup from existing DB rows by province
COM_BY_PROV={}
for m in DBM.values():
    if m['provincia'] not in COM_BY_PROV:
        COM_BY_PROV[m['provincia']]=None
import json as _j
# fetch comunidad from a DB row that has it? db_municipios.json lacks comunidad; use PROVCOM fallback
COMFALL={'Almería':'Andalucía','Granada':'Andalucía','Málaga':'Andalucía','Sevilla':'Andalucía',
 'Córdoba':'Andalucía','Jaén':'Andalucía','Huelva':'Andalucía','Cádiz':'Andalucía',
 'Zaragoza':'Aragón','Teruel':'Aragón','Huesca':'Aragón','Zamora':'Castilla y León',
 'Burgos':'Castilla y León','Salamanca':'Castilla y León','Ávila':'Castilla y León',
 'Valladolid':'Castilla y León','León':'Castilla y León','Palencia':'Castilla y León',
 'Soria':'Castilla y León','Segovia':'Castilla y León','Ciudad Real':'Castilla-La Mancha',
 'Albacete':'Castilla-La Mancha','Asturias':'Principado de Asturias','Cantabria':'Cantabria',
 'Madrid':'Comunidad de Madrid','Las Palmas':'Canarias','Santa Cruz de Tenerife':'Canarias'}

for r in UNI:
    code=r['dbcode']
    if r.get('new') and code not in seen:
        com=COMFALL.get(r['provincia'],r['provincia'])
        muni.append(f"INSERT OR IGNORE INTO municipios (codigo_ine,nombre,provincia,comunidad,nombre_search,es_duplicado) VALUES ({esc(code)},{esc(r['canon'])},{esc(r['provincia'])},{esc(com)},{esc(norm(r['canon']))},0);")
        seen.add(code)
    nombre=r['fiesta'][:200]
    ent.append(f"INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente) VALUES ({esc(code)},'fiesta',{esc(nombre)},{esc(r['desc'])},'inventario_fiestas_pdf');")
    pun.append(f"INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion,ranking_provincial,ranking_nacional) VALUES ({esc(code)},'fiestas',{r['score']},{rp[code]},{rn[code]}) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion, ranking_provincial=excluded.ranking_provincial, ranking_nacional=excluded.ranking_nacional;")

print('muni nuevos:',len(muni),'| entidades:',len(ent),'| puntuaciones:',len(pun))
OUT='/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations'
allst=muni+ent+pun
for i in range(0,len(allst),3500):
    open(f'{OUT}/0242_fiestas_pdf_{i//3500+1:02d}.sql','w').write('-- 0242 fiestas desde PDF (inventario_fiestas_pdf)\n'+'\n'.join(allst[i:i+3500])+'\n')
print('archivos:',(len(allst)+3499)//3500)

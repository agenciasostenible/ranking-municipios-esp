#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import json, re, unicodedata, difflib
from collections import defaultdict

R   = json.load(open('/tmp/fiestas_records.json'))
DB  = json.load(open('/tmp/db_municipios.json'))
INE = json.load(open('/tmp/ine_munis.json'))

def norm(s):
    s=unicodedata.normalize('NFD',s); return ''.join(c for c in s if unicodedata.category(c)!='Mn').lower().strip()
ARTS={'el','la','los','las','o','a','os','as','l','es','sa',"l'"}
def key(s):
    s=norm(s).replace("’","'").replace("'"," ")
    s=re.sub(r'[^a-z0-9ñ/ ]',' ',s); toks=[t for t in s.split() if t]
    while toks and toks[0] in ARTS: toks=toks[1:]
    while toks and toks[-1] in ARTS: toks=toks[:-1]
    return ' '.join(toks)

PROV_CANON={'la coruña':'A Coruña','a coruña':'A Coruña','lérida':'Lleida','gerona':'Girona',
 'orense':'Ourense','vizcaya':'Vizcaya','guipúzcoa':'Guipúzcoa','álava':'Álava','baleares':'Baleares',
 'islas baleares':'Baleares','castellón':'Castellón','valencia':'Valencia','alicante':'Alicante',
 'la rioja':'La Rioja','asturias':'Asturias','murcia':'Murcia','madrid':'Madrid','cantabria':'Cantabria',
 'santander':'Cantabria','navarra':'Navarra','oviedo':'Asturias','las palmas':'Las Palmas',
 'santa cruz de tenerife':'Santa Cruz de Tenerife'}
INE_PROVS=sorted(set(m['provincia'] for m in INE))
PROV_BY_NORM={norm(p):p for p in INE_PROVS}
def cprov(p):
    if not p: return None
    pn=norm(p)
    if pn in PROV_CANON: return PROV_CANON[pn]
    if pn in PROV_BY_NORM: return PROV_BY_NORM[pn]
    pn2=re.split(r'[(/–-]',pn)[0].strip()
    return PROV_CANON.get(pn2) or PROV_BY_NORM.get(pn2)
def dbprov_variants(p): return ['Baleares','Islas Baleares'] if p=='Baleares' else [p]

def build_index(rows, prefer_dup=False):
    if prefer_dup: rows=sorted(rows,key=lambda r:r.get('es_dup',0))
    pidx=defaultdict(dict); gidx={}
    for r in rows:
        prov=r['provincia']; code=r['codigo_ine']; nom=r['nombre']
        for nm in [nom]+(nom.split('/') if '/' in nom else []):
            k=key(nm)
            if not k: continue
            pidx[prov].setdefault(k,code); gidx.setdefault(k,(code,prov))
    return pidx,gidx
INE_pidx,INE_gidx=build_index(INE)
INE_bycode={m['codigo_ine']:m for m in INE}
DB_pidx,DB_gidx=build_index(DB,prefer_dup=True)

def match(name,prov,pidx,gidx,cp=0.86,cg=0.92):
    k=key(name)
    if not k: return None
    provs=dbprov_variants(prov) if prov else []
    for pp in provs:
        if k in pidx.get(pp,{}): return pidx[pp][k]
    if '/' in name:
        for part in name.split('/'):
            kp=key(part)
            for pp in provs:
                if kp in pidx.get(pp,{}): return pidx[pp][kp]
    for pp in provs:
        cks=list(pidx.get(pp,{}).keys())
        if cks:
            mm=difflib.get_close_matches(k,cks,n=1,cutoff=cp)
            if mm: return pidx[pp][mm[0]]
        # trailing-token trim
        toks=k.split()
        for cut in range(len(toks)-1,0,-1):
            kk=' '.join(toks[:cut])
            if len(kk)<4: break
            if kk in pidx.get(pp,{}): return pidx[pp][kk]
    if k in gidx: return gidx[k][0]
    gm=difflib.get_close_matches(k,list(gidx.keys()),n=1,cutoff=cg)
    if gm: return gidx[gm[0]][0]
    return None

def clean_name(s):
    s=(s or '').strip().rstrip('.').strip()
    s=re.sub(r'\s*\(.*$','',s).strip()
    return s
GARB=re.compile(r'\s*(?:Has dicho|Wikipedia|Biquipedia|Las respuestas de la IA|Anexo:|Calendario de fiestas|Diputaci[oó]n Provincial|Mostrar todo|Lista de municipios|Mapy|http|www\.|Fuente:).*$', re.I)
def degarb(s):
    return GARB.sub('', s or '').strip()

def split_fiesta(s):
    """nombre = primera frase (los nombres de fiesta); resto -> a la descripción."""
    s=degarb(s).strip()
    s=re.sub(r'\s*\((?:Continuaci[oó]n|Provincia)[^)]*\)\s*$','',s).strip()
    if '. ' in s:
        i=s.index('. ')
        return s[:i+1].strip().rstrip('.'), s[i+2:].strip()
    return s.rstrip('.'), ''

def cap(s):
    return s[:1].upper()+s[1:] if s and s[0].islower() and s[0].isascii() else s

def build_desc(extra, r):
    parts=[]
    if extra: parts.append(extra.rstrip('.')+'.')
    tp=degarb(r['tipologia']); ms=degarb(r['mes']); jt=degarb(r['just'])
    if tp: parts.append(tp.rstrip('.')+'.')
    if ms: parts.append('Se celebra en '+ms.rstrip('.')+'.')
    if jt: parts.append(jt.rstrip('.')+'.')
    return cap(' '.join(parts).strip())

PROVCOM={'A Coruña':'Galicia','Lugo':'Galicia','Ourense':'Galicia','Pontevedra':'Galicia',
 'Asturias':'Principado de Asturias','Cantabria':'Cantabria','Navarra':'Navarra',
 'Las Palmas':'Canarias','Santa Cruz de Tenerife':'Canarias'}

resolved=[]; drop=0; dropsamp=[]
for r in R:
    name=clean_name(r['municipio'])
    prov=cprov(r['provincia'])
    if not name or len(name)<2 or r['score'] is None or not (r['fiestas'] or r['just']):
        drop+=1; continue
    icode=match(name,prov,INE_pidx,INE_gidx)
    if not icode:
        drop+=1
        if len(dropsamp)<15: dropsamp.append((r['line'],prov,name))
        continue
    im=INE_bycode[icode]
    dbcode=match(im['nombre'],im['provincia'],DB_pidx,DB_gidx)
    fname,extra=split_fiesta(r['fiestas'])
    if not fname: fname='Fiestas locales'
    resolved.append({'ine':icode,'canon':im['nombre'],'provincia':im['provincia'],
                     'score':r['score'],'fiesta':fname[:180],'desc':build_desc(extra,r),
                     'dbcode':dbcode,'line':r['line']})

# dedup by INE keep richest (longest desc, then highest score)
best={}
for r in resolved:
    k=r['ine']
    if k not in best or (len(r['desc']),r['score'])>(len(best[k]['desc']),best[k]['score']): best[k]=r
uni=list(best.values())
print('records:',len(R),'| resueltos:',len(resolved),'| drop:',drop,'| únicos:',len(uni))
print('drop samples:',dropsamp[:10])

# assign codes for new fichas
DB_codes=set(r['codigo_ine'] for r in DB)
ex9=[int(c) for c in DB_codes if c.isdigit() and c.startswith('9') and len(c)==5]
nextc=(max(ex9)+1) if ex9 else 90001
exist=0;new=0
for r in uni:
    if r['dbcode']: exist+=1
    else: r['dbcode']=str(nextc); r['new']=True; nextc+=1; new+=1
print('ya en BD:',exist,'| nuevas fichas:',new,'(desde',ex9 and max(ex9)+1,')')
json.dump({'uni':uni,'provcom':PROVCOM}, open('/tmp/fiestas_final.json','w'), ensure_ascii=False)
print('\n=== muestra final ===')
for r in uni[:4]:
    print(f"  {r['dbcode']} {r['canon']} ({r['provincia']}) {r['score']}/100")
    print(f"     fiesta: {r['fiesta'][:55]!r}")
    print(f"     desc: {r['desc'][:90]!r}")

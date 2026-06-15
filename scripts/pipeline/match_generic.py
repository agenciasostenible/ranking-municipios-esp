#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import json, re, unicodedata, difflib, sys
from collections import defaultdict

INP=sys.argv[1]; OUTP=sys.argv[2]
R   = json.load(open(INP))
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
 'santa cruz de tenerife':'Santa Cruz de Tenerife','ceuta':'Ceuta','melilla':'Melilla'}
INE_PROVS=sorted(set(m['provincia'] for m in INE)); PROV_BY_NORM={norm(p):p for p in INE_PROVS}
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
INE_pidx,INE_gidx=build_index(INE); INE_bycode={m['codigo_ine']:m for m in INE}
DB_pidx,DB_gidx=build_index(DB,prefer_dup=True)

def match(name,prov,pidx,gidx,cp=0.86,cg=0.92):
    k=key(name)
    if not k: return None
    provs=dbprov_variants(prov) if prov else []
    for pp in provs:
        if k in pidx.get(pp,{}): return pidx[pp][k]
    for pp in provs:
        cks=list(pidx.get(pp,{}).keys())
        if cks:
            mm=difflib.get_close_matches(k,cks,n=1,cutoff=cp)
            if mm: return pidx[pp][mm[0]]
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
    return re.sub(r'\s*\(.*$','',s).strip()
def cap(s): return s[:1].upper()+s[1:] if s and s[0].islower() and s[0].isascii() else s
ALIAS={'mao':('Maó-Mahón','Baleares'),'palma':('Palma de Mallorca','Baleares')}

GARB_CUT=re.compile(
    r'\s*(?:¿\s*(?:Puedo|Damos|Continúo|Continúa|Quieres|Procedo|Desea|Seguimos|Avanzamos|Te parece|Paso a|Pasamos|Empezamos|Comenzamos|Quiere)|'
    r'Las respuestas de la IA|Has dicho|Map data|El mapa interactivo|'
    r'Para (?:acelerar|mantener|avanzar|continuar|maximizar|dar|seguir|cerrar|optimizar|no perder)|'
    r'Se aplica (?:estricta|rigurosa|el filtro)|Se omiten|Se descartan|Procesaremos|'
    r'A continuación (?:procesaremos|abrimos|entramos)|Entramos en|Damos (?:inicio|paso|el salto)|'
    r'Quedo a la espera|Confirmo la|Asumo el rol|Entendido)\b.*$', re.I|re.S)
def degarb(s):
    s=GARB_CUT.sub('', s or '')
    s=re.sub(r'\s*\[\d+\]','',s)                 # refs [1]
    s=re.sub(r'\s*Más informaci[oó]n\s*$','',s, flags=re.I)
    return s.strip(' .,|')
def build_desc(r):
    d=cap(degarb((r.get('desc') or '')).rstrip('.'))
    parts=[d+'.'] if d else []
    nm=degarb((r.get('norma') or '')).rstrip('.')
    if nm: parts.append('Normativa: '+nm+'.')
    return ' '.join(parts).strip()

resolved=[]; drop=0; samp=[]
for r in R:
    if r['score'] is None or r['score']<=0: continue
    name=clean_name(r['municipio']); prov=cprov(r['provincia'])
    nk=norm(name)
    if nk in ALIAS: name,prov=ALIAS[nk]
    if not name or len(name)<2: drop+=1; continue
    icode=match(name,prov,INE_pidx,INE_gidx)
    if not icode:
        drop+=1
        if len(samp)<15: samp.append((r['line'],r['provincia'],name))
        continue
    im=INE_bycode[icode]
    dbcode=match(im['nombre'],im['provincia'],DB_pidx,DB_gidx)
    ent=(r.get('nombre') or '').strip().rstrip('.')[:200] or im['nombre']
    resolved.append({'ine':icode,'canon':im['nombre'],'provincia':im['provincia'],'score':r['score'],
                     'ent':ent,'desc':build_desc(r),'dbcode':dbcode,'line':r['line']})

# SOLO fichas existentes en la web: descartar los que no tienen dbcode (no crear 9xxxx)
no_db=sum(1 for r in resolved if not r['dbcode'])
resolved=[r for r in resolved if r['dbcode']]
best={}
for r in resolved:
    k=r['dbcode']
    if k not in best or (len(r['desc']),r['score'])>(len(best[k]['desc']),best[k]['score']): best[k]=r
uni=list(best.values())
json.dump({'uni':uni}, open(OUTP,'w'), ensure_ascii=False)
print(f'{INP}: resueltos={len(resolved)} unicos(dbcode)={len(uni)} drop_noINE={drop} drop_noDB={no_db}')
print('  drops:',samp[:8])

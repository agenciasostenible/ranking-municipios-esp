import json, glob, unicodedata, re, math
from collections import defaultdict
files=sorted(glob.glob('/Users/joseluisalvarezaguilera/Downloads/dataset_instagram-hashtag-analytics-scraper_*.json'))
entries={}
for f in files:
    for e in json.load(open(f)):
        nm=e.get('name') or e.get('id')
        if not nm: continue
        pc=e.get('postsCount') or 0
        if nm not in entries or pc>(entries[nm].get('postsCount') or 0): entries[nm]=e
def norm(s):
    s=unicodedata.normalize('NFD',s);s=''.join(c for c in s if unicodedata.category(c)!='Mn').lower();return re.sub(r'[^a-z0-9]','',s)
DB=json.load(open('/tmp/db_municipios.json'));DB_sorted=sorted(DB,key=lambda r:r['es_dup'])
_all=json.load(open('/tmp/all_scores.json'))
GLOBAL={r['codigo_ine']:r['puntuacion'] for r in _all if r['categoria']=='ranking_global'}
idx={}
for r in DB_sorted:
    for part in [r['nombre']]+(r['nombre'].split('/') if '/' in r['nombre'] else []):
        k=norm(part)
        if k: idx.setdefault(k,r)
PROVS=set(norm(p) for p in ['Álava','Albacete','Alicante','Almería','Asturias','Ávila','Badajoz','Barcelona','Burgos','Cáceres','Cádiz','Cantabria','Castellón','Ciudad Real','Córdoba','Cuenca','Girona','Granada','Guadalajara','Guipúzcoa','Huelva','Huesca','Jaén','León','Lleida','Lugo','Madrid','Málaga','Murcia','Navarra','Ourense','Palencia','Pontevedra','Salamanca','Segovia','Sevilla','Soria','Tarragona','Teruel','Toledo','Valencia','Valladolid','Vizcaya','Zamora','Zaragoza','Coruña','Galicia','Cataluña','Andalucia','Aragon','Extremadura','Canarias','Euskadi'])
KEYWORDS=['espana','pueblosdeespana','pueblosbonitos','paisvasco','euskadi','andalucia','costabrava','costadelsol','costablanca','costacalida','spain','visitspain','total_spain','estaes_','loves_','rinconesde','mediterraneo']
FOREIGN=set(['guayaquil','quito','machala','ambato','cotopaxi','quevedo','cumbaya','riobamba','manta','loja','ecuador','sandiego','sanfrancisco','bayarea','socal','irvine','eastbay','sanjose','losangeles','california','florida','miami','texas','tx','elpaso','dallastexas','corpuschristi','dallas','houston','michoacan','zacatecas','tijuana','cdmx','monterrey','queretaro','puebla','oaxaca','lima','peru','bogota','colombia','medellin','venezuela','caracas','maracaibo','argentina','buenosaires','chile','panama','patagonia','machupicchu','cusco','puertorico','sanjuan','brasil','brazil','saopaulo','riodejaneiro','laserena','vinadelmar','concepcion','sanantonio','santaana','barranquilla','cali','bucaramanga','pereira','rosario','bsas','rancagua'])
def strong(h):
    k=norm(h);return k in PROVS or any(kw in k for kw in KEYWORDS)
def town(h,selfk):
    k=norm(h)
    if k==selfk or k not in idx: return False
    return (idx[k].get('pob') or 0)>=2000
def foreign_count(e):
    tags=[t['hash'] for t in (e.get('related') or [])]+[t['hash'] for t in (e.get('frequent') or [])]
    return sum(1 for h in tags if norm(h) in FOREIGN)
def context_ok(e,selfk):
    tags=[t['hash'] for t in (e.get('related') or [])]+[t['hash'] for t in (e.get('frequent') or [])]
    if not tags: return False
    s=sum(1 for h in tags if strong(h));t=sum(1 for h in tags if town(h,selfk))
    return s>=2 or (s>=1 and t>=1) or t>=2
HIGH=50000; RESCUE_POP=25000
# posts_eff with collision filter (small munis only)
recs=[]
for nm,e in entries.items():
    m=idx[norm(nm)]; 
    if m['es_dup']!=0: continue
    pc=e.get('postsCount') or 0; pop=m.get('pob') or 0
    collision = pc>=HIGH and (not context_ok(e,norm(nm)) or foreign_count(e)>=2)
    posts_eff = 0 if collision else pc
    recs.append((m['codigo_ine'],m['nombre'],m['provincia'],posts_eff,pop,collision))
# dedup by codigo keep max posts_eff
best={}
for c,nm,pr,pe,pop,col in recs:
    if c not in best or pe>best[c][3]: best[c]=(c,nm,pr,pe,pop,col)
recs=list(best.values())
LPmax=max((math.log10(r[3]+1) for r in recs if r[3]>0), default=1)
LPOPmax=max((math.log10(r[4]+1) for r in recs if r[4]>0), default=1)
W=0.55  # peso posts vs poblacion
def score(c,pe,pop,col):
    lpop=math.log10(pop+1)/LPOPmax if pop>0 else 0
    fame=(GLOBAL.get(c,0) or 0)/100.0
    if col or pe<=0:
        return round(100*(0.55*lpop+0.45*fame),1)
    lp=math.log10(pe+1)/LPmax
    return round(100*(0.40*lp+0.25*lpop+0.35*fame),1)
scored=[(c,nm,pr,pe,pop,score(c,pe,pop,col)) for c,nm,pr,pe,pop,col in recs]
scored=[s for s in scored if s[5]>0]
print('municipios con score>0:',len(scored))
print('\n=== TOP 30 (mezcla posts+tamaño) ===')
for c,nm,pr,pe,pop,sc in sorted(scored,key=lambda x:-x[5])[:30]:
    print(f"  {sc:>5}  {nm} ({pr})  [{pe:,} posts, {pop:,} hab]")
json.dump([{'codigo':c,'score':sc} for c,nm,pr,pe,pop,sc in scored], open('/tmp/ig_scores.json','w'))

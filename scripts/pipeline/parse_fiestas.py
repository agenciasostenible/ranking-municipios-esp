#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import re, json

LINES = open('/tmp/fiestas_raw.txt', encoding='utf-8').read().split('\n')
N = len(LINES)

re_com  = re.compile(r'Comunidad Aut[oó]noma:\s*(.+)')
re_prov = re.compile(r'^\s*(?:[•◦]\s*)?Provincia:\s*(.+)')
re_muni = re.compile(r'(?:^|[•◦]\s*)Municipio:\s*(.+)')

def strip_paren_tail(s):
    return re.sub(r'\s*\((?:Continuaci[oó]n|Provincia Completa|Continúa|continuaci[oó]n)[^)]*\)\s*$', '', s).strip()

# boundaries: municipio starts + headers
muni_starts = []
com_at = [None]*N
prov_at = [None]*N
cur_com=None; cur_prov=None
header_lines=set()
for i,ln in enumerate(LINES):
    m=re_com.search(ln)
    if m and 'CAMPINGS' not in ln:
        cur_com=strip_paren_tail(m.group(1)); header_lines.add(i)
    m=re_prov.match(ln)
    if m:
        cur_prov=strip_paren_tail(re.split(r'\(',m.group(1))[0]).strip(); header_lines.add(i)
    com_at[i]=cur_com; prov_at[i]=cur_prov
    if re_muni.search(ln):
        muni_starts.append(i)

MARKERS={'◦','•','○','●','·','▪'}
def record_text(start, end):
    out=[]
    for j in range(start, end):
        if j in header_lines and j!=start: break
        s=LINES[j].strip()
        if not s: continue
        if s in MARKERS: out.append(' ||| ')
        else: out.append(' '+s)
    return ''.join(out)

STOP = r'(?:\|\|\||Fiestas(?:\s+Mayores)?:|Tipolog[íi]a:|Mes(?:\s+de\s+celebraci[oó]n)?:|Puntuaci[oó]n:|Municipio:|$)'
def field(text, label):
    m=re.search(label+r'\s*(.+?)\s*'+STOP, text)
    return re.sub(r'\s+',' ',m.group(1)).strip(' |') if m else ''

records=[]
for k,i in enumerate(muni_starts):
    end = muni_starts[k+1] if k+1<len(muni_starts) else N
    txt = record_text(i, end)
    nombre = field(txt, r'Municipio:')
    fiestas = field(txt, r'Fiestas(?:\s+Mayores)?:')
    tipologia = field(txt, r'Tipolog[íi]a:')
    mes = field(txt, r'Mes(?:\s+de\s+celebraci[oó]n)?:')
    mp = re.search(r'Puntuaci[oó]n:\s*(\d{1,3})\s*/\s*100', txt)
    score = int(mp.group(1)) if mp else None
    mj = re.search(r'Puntuaci[oó]n:\s*\d{1,3}\s*/\s*100\s*\((.+)\)', txt)
    just = re.sub(r'\s+',' ', mj.group(1)).replace('|||','').strip(' |') if mj else ''
    records.append({'comunidad':com_at[i],'provincia':prov_at[i],'municipio':nombre,
                    'fiestas':fiestas,'tipologia':tipologia,'mes':mes,'score':score,
                    'just':just,'line':i+1})

json.dump(records, open('/tmp/fiestas_records.json','w'), ensure_ascii=False)
print('records:', len(records))
print('sin score:', sum(1 for r in records if r['score'] is None))
print('sin fiestas:', sum(1 for r in records if not r['fiestas']))
print('score>100:', [r['score'] for r in records if r['score'] and r['score']>100][:5])
print('provincias:', len(set(r['provincia'] for r in records)))
print('\n=== muestra 5 ===')
for r in records[:5]:
    print(f"\n[{r['comunidad']}/{r['provincia']}] {r['municipio']!r} ({r['score']}/100)")
    print(f"   fiestas: {r['fiestas'][:70]!r}")
    print(f"   tipologia: {r['tipologia'][:60]!r}")
    print(f"   mes: {r['mes'][:40]!r}")
    print(f"   just: {r['just'][:70]!r}")

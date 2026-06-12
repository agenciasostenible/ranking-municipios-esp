#!/usr/bin/env python3
"""
ingesta-nuevos-municipios.py
============================
Procesa los municipios que tienen puntuación 0 en ranking_global.
Para cada uno consulta:
  1. Overpass (OSM) — senderos, agua, montañas, miradores, camping, cuevas
  2. Wikipedia API  — visitas/mes (señal de notoriedad turística)
  3. BIC Ministerio — bienes de interés cultural

Guarda progreso en checkpoint.json para poder pausar y continuar.
Al terminar genera SQL listo para aplicar a D1.

Uso:
  python3 scripts/ingesta-nuevos-municipios.py           # procesa todos
  python3 scripts/ingesta-nuevos-municipios.py --prov 04  # solo Almería
  python3 scripts/ingesta-nuevos-municipios.py --desde 500  # continuar desde el 500

Aplica el resultado:
  npx wrangler d1 execute ranking-municipios --remote --file=migrations/0014_nuevos_scores.sql
"""

import json, time, os, sys, math, re, unicodedata, argparse, subprocess
import urllib.request, urllib.parse
from datetime import datetime

# ── Paths ──────────────────────────────────────────────────────────────
SCRIPT_DIR  = os.path.dirname(os.path.abspath(__file__))
PROJECT_DIR = os.path.dirname(SCRIPT_DIR)
CHECKPOINT  = os.path.join(PROJECT_DIR, "scripts", "checkpoint.json")
OUT_SQL     = os.path.join(PROJECT_DIR, "migrations", "0014_nuevos_scores.sql")

OVERPASS_URL = "https://overpass-api.de/api/interpreter"
WIKI_API     = "https://es.wikipedia.org/w/api.php"
BIC_URL      = "https://sede.mecd.gob.es/inetbicdb/do/ConsultaBienesMuebles"
HEADERS      = {"User-Agent": "RankingSpain/1.0 (jlalvarez600@gmail.com)"}

# ── Scoring weights ────────────────────────────────────────────────────
def score_osm(ents):
    """Calcula scores por categoría a partir de entidades OSM."""
    counts = {}
    for e in ents:
        t = e.get("tipo", "")
        counts[t] = counts.get(t, 0) + 1

    def nlog(n, cap=20): return min(math.log1p(n) / math.log1p(cap), 1.0)

    agua     = counts.get("agua", 0) + counts.get("playa_fluvial", 0)
    sende    = counts.get("sendero", 0)
    mont     = counts.get("montaña", 0)
    mirad    = counts.get("mirador", 0)
    camp     = counts.get("camping", 0)
    cueva    = counts.get("cueva", 0)
    espacio  = counts.get("espacio", 0)

    return {
        "naturaleza":    round((nlog(agua,30)*35 + nlog(mont,15)*35 + nlog(espacio,10)*30), 1),
        "senderismo":    round((nlog(sende,30)*60 + nlog(mont,10)*25 + nlog(mirad,10)*15), 1),
        "agua":          round(nlog(agua,30)*100, 1),
        "miradores":     round(nlog(mirad,15)*100, 1),
        "camping":       round(nlog(camp,10)*100, 1),
        "aventura":      round((nlog(sende,20)*30 + nlog(mont,10)*40 + nlog(cueva,5)*30), 1),
        "estrellas":     round((nlog(mont,10)*40 + nlog(espacio,5)*40 + nlog(mirad,10)*20), 1),
        "birdwatching":  round((nlog(espacio,10)*60 + nlog(agua,20)*40), 1),
        "escapada_rural":round((nlog(sende,15)*30 + nlog(agua,15)*30 + nlog(camp,5)*20 + nlog(mirad,10)*20), 1),
    }

def score_wiki(visitas_mes, n_idiomas):
    """Score de notoriedad basado en Wikipedia."""
    v = min(math.log1p(visitas_mes) / math.log1p(500000), 1.0)
    i = min(n_idiomas / 40, 1.0)
    return round((v * 0.7 + i * 0.3) * 60, 1)

def score_bic(n_bic):
    return round(min(math.log1p(n_bic) / math.log1p(50), 1.0) * 80, 1)

# ── OSM ────────────────────────────────────────────────────────────────
OSM_QUERY = """
[out:json][timeout:30];
(
  node["natural"~"peak|waterfall|spring|hot_spring"](area.a);
  way["natural"~"water|river|lake|beach"](area.a);
  way["leisure"="nature_reserve"](area.a);
  way["boundary"="protected_area"](area.a);
  node["tourism"="viewpoint"](area.a);
  node["tourism"~"camp_site|caravan_site"](area.a);
  way["leisure"~"swimming_area|beach"](area.a);
  relation["route"~"hiking|foot"](area.a);
  node["natural"="cave_entrance"](area.a);
  way["natural"="cliff"](area.a);
);
out count;
"""

def query_osm(nombre, provincia, lat, lon):
    """Consulta Overpass por límite administrativo o radio 5km."""
    # Intentar con nombre en Overpass
    query_area = f"""
[out:json][timeout:10];
area["name"="{nombre}"]["admin_level"="8"]["boundary"="administrative"]->.a;
(
  node["natural"~"peak|waterfall|spring"](area.a);
  way["natural"~"water|river|lake"](area.a);
  way["leisure"="nature_reserve"](area.a);
  node["tourism"="viewpoint"](area.a);
  node["tourism"~"camp_site|caravan_site"](area.a);
  relation["route"~"hiking|foot"](area.a);
  node["natural"="cave_entrance"](area.a);
  way["boundary"="protected_area"](area.a);
);
out count;
"""
    try:
        r = urllib.request.urlopen(
            urllib.request.Request(OVERPASS_URL,
                data=query_area.encode(), headers=HEADERS), timeout=12)
        data = json.loads(r.read())
        total = data.get("elements", [{}])[0].get("tags", {}).get("total", 0) if data.get("elements") else 0
        # Parsear counts por tipo
        ents = _parse_osm_counts(data)
        if sum(e.get("n",0) for e in ents) > 0:
            return ents
    except:
        pass

    # Fallback: radio 5km por coordenadas
    if not lat or not lon:
        return []
    query_radio = f"""
[out:json][timeout:8];
(
  node["natural"~"peak|waterfall|spring"](around:5000,{lat},{lon});
  way["natural"~"water|river|lake"](around:5000,{lat},{lon});
  node["tourism"="viewpoint"](around:5000,{lat},{lon});
  node["tourism"~"camp_site"](around:5000,{lat},{lon});
  relation["route"~"hiking"](around:5000,{lat},{lon});
  node["natural"="cave_entrance"](around:5000,{lat},{lon});
);
out count;
"""
    try:
        r = urllib.request.urlopen(
            urllib.request.Request(OVERPASS_URL,
                data=query_radio.encode(), headers=HEADERS), timeout=10)
        data = json.loads(r.read())
        return _parse_osm_counts(data)
    except:
        return []

def _parse_osm_counts(data):
    """Convierte respuesta Overpass count en lista de entidades."""
    ents = []
    tag_map = {
        "peak": ("montaña", 1), "waterfall": ("agua", 1), "spring": ("agua", 1),
        "water": ("agua", 1), "river": ("agua", 1), "lake": ("agua", 1),
        "nature_reserve": ("espacio", 1), "protected_area": ("espacio", 1),
        "viewpoint": ("mirador", 1), "camp_site": ("camping", 1),
        "caravan_site": ("camping", 1), "cave_entrance": ("cueva", 1),
        "cliff": ("montaña", 1),
    }
    for el in data.get("elements", []):
        tags = el.get("tags", {})
        for k, v in tags.items():
            if v in tag_map:
                tipo, _ = tag_map[v]
                ents.append({"tipo": tipo, "nombre": "", "sello": "", "desc": ""})
            elif k == "route" and v in ("hiking", "foot"):
                ents.append({"tipo": "sendero", "nombre": "", "sello": "", "desc": ""})
    return ents

# ── Wikipedia ──────────────────────────────────────────────────────────
def query_wikipedia(nombre, provincia):
    """Busca el artículo de Wikipedia y devuelve (visitas_mes, n_idiomas)."""
    # Buscar título
    search_url = (WIKI_API + "?action=query&list=search&srsearch=" +
                  urllib.parse.quote(f"{nombre} {provincia}") +
                  "&format=json&srlimit=1")
    try:
        r = urllib.request.urlopen(
            urllib.request.Request(search_url, headers=HEADERS), timeout=10)
        data = json.loads(r.read())
        results = data.get("query", {}).get("search", [])
        if not results:
            return 0, 0
        title = results[0]["title"]
        title_enc = urllib.parse.quote(title.replace(" ", "_"))

        # Visitas del último mes
        views_url = f"https://wikimedia.org/api/rest_v1/metrics/pageviews/per-article/es.wikipedia/all-access/user/{title_enc}/monthly/20240101/20241201"
        r2 = urllib.request.urlopen(
            urllib.request.Request(views_url, headers=HEADERS), timeout=10)
        vdata = json.loads(r2.read())
        items = vdata.get("items", [])
        visitas = sum(i.get("views", 0) for i in items[-3:]) // 3 if items else 0

        # Idiomas
        lang_url = (WIKI_API + "?action=query&prop=langlinks&titles=" +
                    urllib.parse.quote(title) + "&format=json&lllimit=50")
        r3 = urllib.request.urlopen(
            urllib.request.Request(lang_url, headers=HEADERS), timeout=10)
        ldata = json.loads(r3.read())
        pages = ldata.get("query", {}).get("pages", {})
        n_idiomas = max(len(p.get("langlinks", [])) for p in pages.values()) if pages else 0

        return visitas, n_idiomas
    except:
        return 0, 0

# ── BIC ────────────────────────────────────────────────────────────────
def query_bic(codigo_ine):
    """Consulta el número de BIC en el Ministerio de Cultura."""
    try:
        url = f"https://www.culturaydeporte.gob.es/bienes-culturales/bic.html?municipio={codigo_ine}"
        # La API real requiere POST; usamos aproximación por código INE
        # Por ahora devolvemos 0 — se puede implementar con scraping dedicado
        return 0
    except:
        return 0

# ── Main ───────────────────────────────────────────────────────────────
def load_checkpoint():
    if os.path.exists(CHECKPOINT):
        with open(CHECKPOINT) as f:
            return json.load(f)
    return {"procesados": [], "resultados": []}

def save_checkpoint(cp):
    with open(CHECKPOINT, "w") as f:
        json.dump(cp, f)

def get_municipios_pendientes(prov_filter=None):
    """Obtiene de D1 los municipios con ranking_global = 0."""
    cmd = (
        f'cd "{PROJECT_DIR}" && npx wrangler d1 execute ranking-municipios --remote '
        '--command "SELECT m.codigo_ine, m.nombre, m.provincia, m.latitud, m.longitud, m.poblacion '
        'FROM municipios m JOIN puntuaciones p ON m.codigo_ine=p.codigo_ine '
        'WHERE p.categoria=\'ranking_global\' AND p.puntuacion=0 '
        'ORDER BY m.poblacion DESC" --json 2>/dev/null'
    )
    raw = os.popen(cmd).read()
    try:
        rows = json.loads(raw)[0]["results"]
    except:
        print("ERROR: No se pudo conectar a D1")
        sys.exit(1)

    if prov_filter:
        rows = [r for r in rows if r["codigo_ine"].startswith(prov_filter)]

    return rows

def generar_sql(resultados):
    lines = [
        "-- Scores nuevos municipios (ingesta OSM + Wikipedia)",
        f"-- Generado: {datetime.now().isoformat()[:16]}",
        f"-- {len(resultados)} municipios procesados", ""
    ]
    for res in resultados:
        ine = res["codigo_ine"].replace("'", "''")

        # Entidades OSM
        for e in res.get("entidades", []):
            if not e.get("tipo"): continue
            tipo = e["tipo"].replace("'","''")
            nom  = e.get("nombre","").replace("'","''")
            lines.append(
                f"INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) "
                f"VALUES ('{ine}','{tipo}','{nom}','OSM',date('now'));"
            )

        # Scores
        scores = res.get("scores", {})
        for cat, pts in scores.items():
            if pts > 0:
                lines.append(
                    f"UPDATE puntuaciones SET puntuacion={pts} "
                    f"WHERE codigo_ine='{ine}' AND categoria='{cat}' AND puntuacion < {pts};"
                )

        # Score global (promedio ponderado)
        global_pts = res.get("score_global", 0)
        if global_pts > 0:
            lines.append(
                f"UPDATE puntuaciones SET puntuacion={global_pts} "
                f"WHERE codigo_ine='{ine}' AND categoria='ranking_global' AND puntuacion < {global_pts};"
            )

    with open(OUT_SQL, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))
    print(f"\n✓ SQL generado: {OUT_SQL} ({len(lines)} líneas)")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--prov",  help="Solo esta provincia (ej: 04)")
    parser.add_argument("--desde", type=int, default=0)
    parser.add_argument("--hasta", type=int, default=999999)
    parser.add_argument("--sin-osm", action="store_true", help="Solo Wikipedia, sin OSM")
    parser.add_argument("--reset",   action="store_true", help="Borrar checkpoint y empezar")
    args = parser.parse_args()

    if args.reset and os.path.exists(CHECKPOINT):
        os.remove(CHECKPOINT)

    cp = load_checkpoint()
    ya_procesados = set(cp["procesados"])

    print("Obteniendo municipios pendientes de D1...", flush=True)
    municipios = get_municipios_pendientes(args.prov)
    municipios = [m for m in municipios if m["codigo_ine"] not in ya_procesados]
    municipios = municipios[args.desde:args.hasta]

    print(f"  {len(municipios)} municipios por procesar", flush=True)
    print(f"  Checkpoint: {len(ya_procesados)} ya procesados\n", flush=True)

    stats = {"osm_ok": 0, "wiki_ok": 0, "sin_datos": 0}

    for i, mun in enumerate(municipios):
        ine   = mun["codigo_ine"]
        nom   = mun["nombre"]
        prov  = mun["provincia"]
        lat   = mun.get("latitud")
        lon   = mun.get("longitud")
        pob   = mun.get("poblacion", 0) or 0

        print(f"[{i+1}/{len(municipios)}] {nom} ({prov})...", end=" ", flush=True)

        result = {"codigo_ine": ine, "nombre": nom, "entidades": [], "scores": {}, "score_global": 0}

        # 1. OSM
        if not args.sin_osm:
            ents = query_osm(nom, prov, lat, lon)
            result["entidades"] = ents
            osm_scores = score_osm(ents)
            result["scores"].update(osm_scores)
            if ents:
                stats["osm_ok"] += 1
            time.sleep(0.3)  # rate limit Overpass

        # 2. Wikipedia
        visitas, n_idiomas = query_wikipedia(nom, prov)
        wiki_pts = score_wiki(visitas, n_idiomas)
        if wiki_pts > 0:
            result["scores"]["historia"] = max(result["scores"].get("historia", 0), wiki_pts * 0.5)
            stats["wiki_ok"] += 1
        time.sleep(0.2)

        # Score global
        s = result["scores"]
        pob_bonus = min(math.log1p(pob) / math.log1p(500000), 1.0) * 10
        scores_vals = [v for v in s.values() if v > 0]
        if scores_vals or wiki_pts > 0:
            base = sum(scores_vals) / max(len(scores_vals), 1) if scores_vals else 0
            result["score_global"] = round(base * 0.6 + wiki_pts * 0.3 + pob_bonus, 1)
        else:
            stats["sin_datos"] += 1

        cp["procesados"].append(ine)
        cp["resultados"].append(result)

        if result["score_global"] > 0:
            print(f"✓ global={result['score_global']} wiki={wiki_pts}", flush=True)
        else:
            print("(sin datos)", flush=True)

        # Guardar checkpoint cada 50
        if (i + 1) % 50 == 0:
            save_checkpoint(cp)
            print(f"\n  [checkpoint] {i+1} procesados, {stats}\n", flush=True)

    save_checkpoint(cp)
    generar_sql(cp["resultados"])

    print(f"\n{'='*50}")
    print(f"Completado: {len(cp['procesados'])} municipios")
    print(f"  OSM con datos: {stats['osm_ok']}")
    print(f"  Wikipedia OK:  {stats['wiki_ok']}")
    print(f"  Sin datos:     {stats['sin_datos']}")
    print(f"\nPara aplicar a D1:")
    print(f"  cd ranking-municipios-esp")
    print(f"  npx wrangler d1 execute ranking-municipios --remote --file=migrations/0014_nuevos_scores.sql")

if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""
Enriquece las fichas de municipios con datos de Wikidata.
Obtiene: castillos, iglesias, monasterios, museos, yacimientos,
         ermitas, palacios, catedrales, estatuas notables, festivales.

Uso:
  python3 scripts/enriquecer-wikidata.py

Genera: migrations/0021_wikidata_entidades.sql
Checkpoint: /tmp/wikidata_checkpoint.json (permite retomar si se interrumpe)
"""

import json, time, sys, unicodedata, os, subprocess
import urllib.request, urllib.parse

ENDPOINT   = "https://query.wikidata.org/sparql"
HEADERS    = {"User-Agent": "RankingSpain/1.0 (jlalvarez600@gmail.com)"}
CHECKPOINT = "/tmp/wikidata_checkpoint.json"
PROJECT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT_PATH   = os.path.join(PROJECT_DIR, "migrations", "0021_wikidata_entidades.sql")

TIPO_MAP = {
    "Q23413":  "castillo",
    "Q1370598":"castillo",
    "Q16970":  "iglesia",
    "Q182832": "iglesia",
    "Q44539":  "monasterio",
    "Q44613":  "monasterio",
    "Q131681": "ermita",
    "Q839954": "yacimiento",
    "Q33506":  "museo",
    "Q357696": "palacio",
    "Q16560":  "palacio",
    "Q483110": "festival",
    "Q179700": "monumento",
    "Q4989906":"monumento",
    "Q4022":   "rio",
}

TIPO_QUERY_IDS = " ".join(f"wd:{k}" for k in TIPO_MAP)

SPARQL_TEMPLATE = """
SELECT DISTINCT ?item ?label ?tipo ?lat ?lon ?wiki WHERE {{
  VALUES ?tipos {{ {tipos} }}
  ?mun wdt:P772 "{ine}" .
  ?item wdt:P131+ ?mun ;
        wdt:P31/wdt:P279* ?tipos .
  OPTIONAL {{ ?item wdt:P625 ?coord .
    BIND(geof:latitude(?coord) AS ?lat)
    BIND(geof:longitude(?coord) AS ?lon) }}
  OPTIONAL {{ ?item rdfs:label ?label FILTER(lang(?label)="es") }}
  OPTIONAL {{ ?article schema:about ?item ; schema:isPartOf <https://es.wikipedia.org/> .
    BIND(STR(?article) AS ?wiki) }}
  BIND(STR(?tipos) AS ?tipo)
}}
LIMIT 60
"""

def sparql_query(ine: str) -> list:
    query = SPARQL_TEMPLATE.format(tipos=TIPO_QUERY_IDS, ine=ine)
    url = ENDPOINT + "?query=" + urllib.parse.quote(query) + "&format=json"
    req = urllib.request.Request(url, headers=HEADERS)
    for attempt in range(3):
        try:
            with urllib.request.urlopen(req, timeout=30) as r:
                data = json.loads(r.read())
            return data["results"]["bindings"]
        except Exception as e:
            print(f"  ERROR {ine} (intento {attempt+1}): {e}", file=sys.stderr)
            if attempt < 2:
                time.sleep(5)
    return []

def esc(s: str) -> str:
    return s.replace("'", "''")

def get_tipo(tipo_uri: str) -> str:
    qid = tipo_uri.split("/")[-1]
    return TIPO_MAP.get(qid, "monumento")

def load_checkpoint():
    if os.path.exists(CHECKPOINT):
        with open(CHECKPOINT) as f:
            return json.load(f)
    return {"done": [], "inserts": []}

def save_checkpoint(done: list, inserts: list):
    with open(CHECKPOINT, "w") as f:
        json.dump({"done": done, "inserts": inserts}, f)

def main():
    print("Leyendo municipios desde D1...", flush=True)
    result = subprocess.run(
        ["npx", "wrangler", "d1", "execute", "ranking-municipios", "--remote",
         "--command", "SELECT codigo_ine, nombre, provincia FROM municipios ORDER BY codigo_ine",
         "--json"],
        capture_output=True, text=True, cwd=PROJECT_DIR
    )
    data = json.loads(result.stdout)
    municipios = data[0]["results"]
    print(f"  {len(municipios)} municipios", flush=True)

    ckpt = load_checkpoint()
    done_set = set(ckpt["done"])
    inserts  = ckpt["inserts"]
    skipped  = 0

    if done_set:
        print(f"  Retomando desde checkpoint: {len(done_set)} ya procesados", flush=True)

    for i, mun in enumerate(municipios):
        ine    = mun["codigo_ine"]
        nombre = mun["nombre"]
        prov   = mun["provincia"]

        if ine in done_set:
            continue

        if (i + 1) % 100 == 0:
            pct = round(len(done_set) / len(municipios) * 100, 1)
            print(f"[{len(done_set)}/{len(municipios)} {pct}%] {nombre} ({prov})...", flush=True)

        rows = sparql_query(ine)
        if not rows:
            skipped += 1
            done_set.add(ine)
            time.sleep(0.5)
        else:
            seen = set()
            for row in rows:
                qid = row["item"]["value"].split("/")[-1]
                if qid in seen:
                    continue
                seen.add(qid)

                label    = row.get("label", {}).get("value", "")
                tipo_uri = row.get("tipo",  {}).get("value", "")
                lat      = row.get("lat",   {}).get("value", None)
                lon      = row.get("lon",   {}).get("value", None)
                wiki     = row.get("wiki",  {}).get("value", "")
                tipo     = get_tipo(tipo_uri)

                if not label:
                    continue

                lat_sql  = lat if lat else "NULL"
                lon_sql  = lon if lon else "NULL"
                wiki_sql = f"'{esc(wiki)}'" if wiki else "NULL"

                inserts.append(
                    f"INSERT OR IGNORE INTO entidades "
                    f"(codigo_ine, tipo, nombre, latitud, longitud, wiki_url, fuente, fecha_ingesta) VALUES ("
                    f"'{esc(ine)}', '{tipo}', '{esc(label)}', "
                    f"{lat_sql}, {lon_sql}, {wiki_sql}, 'wikidata', date('now'));"
                )

            done_set.add(ine)
            time.sleep(1.1)

        # Guardar checkpoint cada 50 municipios
        if len(done_set) % 50 == 0:
            save_checkpoint(list(done_set), inserts)

    # Guardar checkpoint final y SQL
    save_checkpoint(list(done_set), inserts)

    with open(OUT_PATH, "w") as f:
        f.write("-- Entidades de Wikidata: patrimonio cultural de España\n")
        f.write(f"-- {len(inserts)} items de {len(done_set) - skipped} municipios\n\n")
        f.write("\n".join(inserts))
        f.write("\n")

    print(f"\n✓ {len(inserts)} entidades → {OUT_PATH}")
    print(f"  {skipped} municipios sin resultados en Wikidata")
    print(f"\nAhora aplica con:")
    print(f"  npx wrangler d1 execute ranking-municipios --remote --file={OUT_PATH}")

if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""
seed-todos-municipios.py
========================
Obtiene todos los municipios de España (~8.131) de Wikidata,
consultando provincia por provincia (52 queries pequeñas).

Uso:
  python3 scripts/seed-todos-municipios.py

Genera: migrations/0013_todos_municipios.sql
"""

import json, time, os, unicodedata
import urllib.request, urllib.parse

ENDPOINT = "https://query.wikidata.org/sparql"
HEADERS  = {"User-Agent": "RankingSpain/1.0 (jlalvarez600@gmail.com)"}

PROVINCIAS = {
    "01": ("Álava",              "País Vasco"),
    "02": ("Albacete",           "Castilla-La Mancha"),
    "03": ("Alicante",           "Comunitat Valenciana"),
    "04": ("Almería",            "Andalucía"),
    "05": ("Ávila",              "Castilla y León"),
    "06": ("Badajoz",            "Extremadura"),
    "07": ("Islas Baleares",     "Islas Baleares"),
    "08": ("Barcelona",          "Cataluña"),
    "09": ("Burgos",             "Castilla y León"),
    "10": ("Cáceres",            "Extremadura"),
    "11": ("Cádiz",              "Andalucía"),
    "12": ("Castellón",          "Comunitat Valenciana"),
    "13": ("Ciudad Real",        "Castilla-La Mancha"),
    "14": ("Córdoba",            "Andalucía"),
    "15": ("A Coruña",           "Galicia"),
    "16": ("Cuenca",             "Castilla-La Mancha"),
    "17": ("Girona",             "Cataluña"),
    "18": ("Granada",            "Andalucía"),
    "19": ("Guadalajara",        "Castilla-La Mancha"),
    "20": ("Guipúzcoa",          "País Vasco"),
    "21": ("Huelva",             "Andalucía"),
    "22": ("Huesca",             "Aragón"),
    "23": ("Jaén",               "Andalucía"),
    "24": ("León",               "Castilla y León"),
    "25": ("Lleida",             "Cataluña"),
    "26": ("La Rioja",           "La Rioja"),
    "27": ("Lugo",               "Galicia"),
    "28": ("Madrid",             "Comunidad de Madrid"),
    "29": ("Málaga",             "Andalucía"),
    "30": ("Murcia",             "Región de Murcia"),
    "31": ("Navarra",            "Navarra"),
    "32": ("Ourense",            "Galicia"),
    "33": ("Asturias",           "Asturias"),
    "34": ("Palencia",           "Castilla y León"),
    "35": ("Las Palmas",         "Canarias"),
    "36": ("Pontevedra",         "Galicia"),
    "37": ("Salamanca",          "Castilla y León"),
    "38": ("Santa Cruz de Tenerife", "Canarias"),
    "39": ("Cantabria",          "Cantabria"),
    "40": ("Segovia",            "Castilla y León"),
    "41": ("Sevilla",            "Andalucía"),
    "42": ("Soria",              "Castilla y León"),
    "43": ("Tarragona",          "Cataluña"),
    "44": ("Teruel",             "Aragón"),
    "45": ("Toledo",             "Castilla-La Mancha"),
    "46": ("Valencia",           "Comunitat Valenciana"),
    "47": ("Valladolid",         "Castilla y León"),
    "48": ("Vizcaya",            "País Vasco"),
    "49": ("Zamora",             "Castilla y León"),
    "50": ("Zaragoza",           "Aragón"),
    "51": ("Ceuta",              "Ceuta"),
    "52": ("Melilla",            "Melilla"),
}

CATS = [
    "ranking_global","historia","naturaleza","gastronomia","fiestas","senderismo",
    "agua","miradores","camping","aventura","escapada_rural","estrellas","birdwatching",
    "monumentos","museos","castillos","yacimientos","playas_fluviales","cuevas",
    "productos_locales","festivales","mercados","vinos","aceite","semana_santa",
    "conjuntos","restaurantes_top","balnearios","pesca","ciclismo","escalada",
    "accesible","retiros","lujo","mochilero","pareja","ninos","mercados_gastro",
]

def esc(s):
    return str(s).replace("'", "''") if s else ""

def normalize(s):
    s = unicodedata.normalize("NFD", s)
    return "".join(c for c in s if unicodedata.category(c) != "Mn").lower()

def query_provincia(prefix):
    query = f"""
SELECT ?ine ?nombre ?lat ?lon ?pob ?sup ?alt WHERE {{
  ?mun wdt:P772 ?ine ; wdt:P17 wd:Q29 .
  FILTER(STRSTARTS(?ine, "{prefix}") && STRLEN(?ine)=5)
  OPTIONAL {{ ?mun rdfs:label ?nombre FILTER(lang(?nombre)="es") }}
  OPTIONAL {{ ?mun wdt:P625 ?c .
    BIND(geof:latitude(?c) AS ?lat)
    BIND(geof:longitude(?c) AS ?lon) }}
  OPTIONAL {{ ?mun wdt:P1082 ?pob }}
  OPTIONAL {{ ?mun wdt:P2046 ?sup }}
  OPTIONAL {{ ?mun wdt:P2044 ?alt }}
}}
ORDER BY ?ine
"""
    url = ENDPOINT + "?query=" + urllib.parse.quote(query) + "&format=json"
    req = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(req, timeout=45) as r:
        return json.loads(r.read())["results"]["bindings"]

def val(row, key, default=None):
    v = row.get(key, {}).get("value")
    return v if v is not None else default

def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    project_dir = os.path.dirname(script_dir)

    # Cargar INEs ya en D1
    print("Leyendo municipios ya en D1...", flush=True)
    raw = os.popen(
        f'cd "{project_dir}" && npx wrangler d1 execute ranking-municipios --remote '
        '--command "SELECT codigo_ine FROM municipios" --json 2>/dev/null'
    ).read()
    try:
        existing = set(r["codigo_ine"] for r in json.loads(raw)[0]["results"])
    except:
        existing = set()
    print(f"  {len(existing)} municipios ya en D1", flush=True)

    all_municipios = {}  # ine -> datos

    for prefix, (prov, ccaa) in PROVINCIAS.items():
        print(f"  [{prefix}] {prov}...", end=" ", flush=True)
        try:
            rows = query_provincia(prefix)
            count = 0
            for row in rows:
                ine = val(row, "ine")
                if not ine or len(ine) != 5: continue
                all_municipios[ine] = {
                    "nombre": val(row, "nombre") or f"Municipio {ine}",
                    "provincia": prov,
                    "comunidad": ccaa,
                    "lat":  val(row, "lat"),
                    "lon":  val(row, "lon"),
                    "pob":  val(row, "pob", "0"),
                    "sup":  val(row, "sup"),
                    "alt":  val(row, "alt"),
                }
                count += 1
            print(f"{count} municipios", flush=True)
        except Exception as e:
            print(f"ERROR: {e}", flush=True)
        time.sleep(1.0)

    print(f"\nTotal obtenidos de Wikidata: {len(all_municipios)}", flush=True)

    # Generar SQL solo para los nuevos
    inserts = []
    score_inserts = []
    nuevos = 0

    for ine, m in sorted(all_municipios.items()):
        if ine in existing:
            continue

        nombre = m["nombre"]
        prov   = m["provincia"]
        ccaa   = m["comunidad"]

        try: pob = str(int(float(m["pob"])))
        except: pob = "0"
        try: sup = str(round(float(m["sup"]), 2))
        except: sup = "NULL"
        try: alt = str(int(float(m["alt"])))
        except: alt = "NULL"

        lat = m["lat"] or "NULL"
        lon = m["lon"] or "NULL"
        nombre_search = normalize(nombre)

        inserts.append(
            f"INSERT OR IGNORE INTO municipios "
            f"(codigo_ine,nombre,provincia,comunidad,poblacion,superficie_km2,"
            f"latitud,longitud,altitud_m,nombre_search) VALUES ("
            f"'{esc(ine)}','{esc(nombre)}','{esc(prov)}','{esc(ccaa)}',"
            f"{pob},{sup},{lat},{lon},{alt},'{esc(nombre_search)}');"
        )

        for cat in CATS:
            score_inserts.append(
                f"INSERT OR IGNORE INTO puntuaciones (codigo_ine,categoria,puntuacion) "
                f"VALUES ('{esc(ine)}','{cat}',0);"
            )
        nuevos += 1

    out_path = os.path.join(project_dir, "migrations", "0013_todos_municipios.sql")
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(f"-- Todos los municipios de España (Wikidata + INE)\n")
        f.write(f"-- {nuevos} municipios nuevos, {len(existing)} ya existían\n\n")
        f.write("\n".join(inserts))
        if score_inserts:
            f.write("\n\n-- Puntuaciones base 0 para municipios nuevos\n")
            f.write("\n".join(score_inserts))
        f.write("\n")

    print(f"\n✓ {nuevos} municipios nuevos escritos en {out_path}")
    if nuevos > 0:
        print(f"\nAplica a D1:")
        print(f"  npx wrangler d1 execute ranking-municipios --remote --file=migrations/0013_todos_municipios.sql")

if __name__ == "__main__":
    main()

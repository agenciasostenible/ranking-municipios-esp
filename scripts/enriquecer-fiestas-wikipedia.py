#!/usr/bin/env python3
"""
enriquecer-fiestas-wikipedia.py
================================
Para cada municipio, consulta su artículo de Wikipedia en español y extrae:
  - Si tiene fiesta patronal / festividad local       → score base  25
  - Si la fiesta tiene relevancia comarcal/provincial → score       50
  - Si está declarada Fiesta de Interés Turístico Regional → score  70
  - Si está declarada Fiesta de Interés Turístico Nacional → score  85
  - Si está declarada Fiesta de Interés Turístico Internacional → s 95

Además, carga el listado oficial de Fiestas de Interés Turístico
(curado manualmente abajo) para garantizar los más importantes.

Uso:
  python3 scripts/enriquecer-fiestas-wikipedia.py           # genera SQL
  python3 scripts/enriquecer-fiestas-wikipedia.py --apply   # aplica directo

Checkpoint: /tmp/fiestas_checkpoint.json
Salida:     migrations/fiestas_wikipedia.sql
"""

import json, time, re, sys, os, subprocess, unicodedata, argparse
import urllib.request, urllib.parse
from pathlib import Path

PROJECT_DIR = Path(__file__).parent.parent
OUT_PATH    = PROJECT_DIR / "migrations" / "fiestas_wikipedia.sql"
CHECKPOINT  = "/tmp/fiestas_checkpoint.json"
HEADERS     = {"User-Agent": "RankingSpain/1.0 (jlalvarez600@gmail.com)"}

# ── Scores ───────────────────────────────────────────────────────────────────
SCORE_PATRON_BASICO      = 25   # Cualquier municipio con patrón detectado
SCORE_FIESTA_CONOCIDA    = 45   # Menciones de festividad local relevante
SCORE_INTERES_REGIONAL   = 70
SCORE_INTERES_NACIONAL   = 85
SCORE_INTERES_INTERNACIONAL = 95

# ── Lista oficial curada: Fiestas de Interés Turístico ───────────────────────
# (código INE, score, descripción)
FIESTAS_OFICIALES = [
    # INTERNACIONALES
    ("31201", 95, "San Fermín — Fiesta de Interés Turístico Internacional"),
    ("46250", 95, "Las Fallas de Valencia — Fiesta de Interés Turístico Internacional"),
    ("41091", 95, "Semana Santa de Sevilla — Fiesta de Interés Turístico Internacional"),
    ("41091", 95, "Feria de Abril de Sevilla — Fiesta de Interés Turístico Internacional"),
    ("30030", 95, "Semana Santa de Cartagena — Fiesta de Interés Turístico Internacional"),
    ("30016", 95, "Entierro de la Sardina de Murcia — Fiesta de Interés Turístico Internacional"),
    ("30016", 95, "Bando de la Huerta de Murcia — Fiesta de Interés Turístico Internacional"),
    ("03014", 95, "Moros y Cristianos de Alcoy — Fiesta de Interés Turístico Internacional"),
    ("18087", 95, "Corpus Christi de Granada — Fiesta de Interés Turístico Internacional"),
    ("41006", 95, "Romería del Rocío (Almonte) — Fiesta de Interés Turístico Internacional"),
    ("08019", 95, "La Mercè de Barcelona — Fiesta de Interés Turístico Internacional"),
    ("28079", 95, "San Isidro de Madrid — Fiesta de Interés Turístico Internacional"),
    ("36057", 95, "Semana Santa de Pontevedra — Fiesta de Interés Turístico Internacional"),
    ("15030", 95, "Festas de María Pita (A Coruña) — Fiesta de Interés Turístico Internacional"),
    ("17079", 95, "Temps de Flors de Girona — Fiesta de Interés Turístico Internacional"),
    ("10037", 95, "WOMAD de Cáceres — Fiesta de Interés Turístico Internacional"),
    ("22125", 95, "Semana Santa de Huesca — Fiesta de Interés Turístico Internacional"),
    ("50297", 95, "Fiestas del Pilar de Zaragoza — Fiesta de Interés Turístico Internacional"),
    ("48020", 95, "Aste Nagusia de Bilbao — Fiesta de Interés Turístico Internacional"),
    ("20069", 95, "Tamborrada de San Sebastián — Fiesta de Interés Turístico Internacional"),
    ("07040", 95, "Sant Sebastià de Palma — Fiesta de Interés Turístico Internacional"),
    ("38038", 95, "Carnaval de Santa Cruz de Tenerife — Fiesta de Interés Turístico Internacional"),
    ("35016", 95, "Carnaval de Las Palmas — Fiesta de Interés Turístico Internacional"),
    ("46131", 95, "Moros i Cristians de Gandia — Fiesta de Interés Turístico Internacional"),

    # NACIONALES
    ("18017", 85, "Cascamorras de Baza — Fiesta de Interés Turístico Nacional"),
    ("18053", 85, "Cascamorras de Guadix — Fiesta de Interés Turístico Nacional"),
    ("02003", 85, "Semana Santa de Albacete — Fiesta de Interés Turístico Nacional"),
    ("03099", 85, "Fogueres de Sant Joan de Alicante — Fiesta de Interés Turístico Nacional"),
    ("04013", 85, "Semana Santa de Almería — Fiesta de Interés Turístico Nacional"),
    ("33044", 85, "Semana Santa de Oviedo — Fiesta de Interés Turístico Nacional"),
    ("07054", 85, "Sant Joan de Ciutadella — Fiesta de Interés Turístico Nacional"),
    ("14021", 85, "Cruces de Mayo de Córdoba — Fiesta de Interés Turístico Nacional"),
    ("14021", 85, "Feria de Córdoba — Fiesta de Interés Turístico Nacional"),
    ("14021", 85, "Semana Santa de Córdoba — Fiesta de Interés Turístico Nacional"),
    ("17155", 85, "Patum de Berga — Fiesta de Interés Turístico Nacional"),
    ("16078", 85, "Semana de Música Religiosa de Cuenca — Fiesta de Interés Turístico Nacional"),
    ("11012", 85, "Carnaval de Cádiz — Fiesta de Interés Turístico Nacional"),
    ("11020", 85, "Semana Santa de Jerez — Fiesta de Interés Turístico Nacional"),
    ("11004", 85, "Cabalgata de Reyes de Algeciras — Fiesta de Interés Turístico Nacional"),
    ("39075", 85, "Semana Grande de Santander — Fiesta de Interés Turístico Nacional"),
    ("39019", 85, "La Folía de San Vicente de la Barquera — Fiesta de Interés Turístico Nacional"),
    ("45168", 85, "Corpus Christi de Toledo — Fiesta de Interés Turístico Nacional"),
    ("46239", 85, "Semana Santa de Sagunto — Fiesta de Interés Turístico Nacional"),
    ("47186", 85, "Semana Santa de Valladolid — Fiesta de Interés Turístico Nacional"),
    ("49275", 85, "Semana Santa de Zamora — Fiesta de Interés Turístico Nacional"),
    ("50297", 85, "Semana Santa de Zaragoza — Fiesta de Interés Turístico Nacional"),
    ("23050", 85, "Semana Santa de Jaén — Fiesta de Interés Turístico Nacional"),
    ("23063", 85, "Semana Santa de Linares — Fiesta de Interés Turístico Nacional"),
    ("29067", 85, "Semana Santa de Málaga — Fiesta de Interés Turístico Nacional"),
    ("29095", 85, "Feria de Málaga — Fiesta de Interés Turístico Nacional"),  # código Málaga ciudad
    ("21041", 85, "Fiestas Colombinas de Huelva — Fiesta de Interés Turístico Nacional"),
    ("27028", 85, "Semana Santa de Lugo — Fiesta de Interés Turístico Nacional"),
    ("36038", 85, "Semana Santa de Pontevedra — Fiesta de Interés Turístico Nacional"),
    ("32054", 85, "Entroido de Xinzo de Limia — Fiesta de Interés Turístico Nacional"),
    ("32028", 85, "Entroido de Laza — Fiesta de Interés Turístico Nacional"),
    ("32057", 85, "Entroido de Verín — Fiesta de Interés Turístico Nacional"),
    ("15078", 85, "Semana Santa de Santiago de Compostela — Fiesta de Interés Turístico Nacional"),
    ("15078", 85, "Día de Santiago (Santiago de Compostela) — Fiesta de Interés Turístico Nacional"),
    ("24089", 85, "Semana Santa de León — Fiesta de Interés Turístico Nacional"),
    ("37274", 85, "Semana Santa de Salamanca — Fiesta de Interés Turístico Nacional"),
    ("09059", 85, "Semana Santa de Burgos — Fiesta de Interés Turístico Nacional"),
    ("40181", 85, "Semana Santa de Segovia — Fiesta de Interés Turístico Nacional"),
    ("34120", 85, "Semana Santa de Palencia — Fiesta de Interés Turístico Nacional"),
    ("42173", 85, "Semana Santa de Soria — Fiesta de Interés Turístico Nacional"),
    ("05019", 85, "Semana Santa de Ávila — Fiesta de Interés Turístico Nacional"),
    ("19130", 85, "Semana Santa de Guadalajara — Fiesta de Interés Turístico Nacional"),
    ("13034", 85, "Semana Santa de Ciudad Real — Fiesta de Interés Turístico Nacional"),
    ("06015", 85, "Semana Santa de Badajoz — Fiesta de Interés Turístico Nacional"),
    ("10037", 85, "Semana Santa de Cáceres — Fiesta de Interés Turístico Nacional"),
    ("06083", 85, "Semana Santa de Mérida — Fiesta de Interés Turístico Nacional"),
    ("08169", 85, "Patum de Berga — Fiesta de Interés Turístico Nacional"),
    ("08101", 85, "Sant Medir de Gràcia (Barcelona) — Fiesta de Interés Turístico Nacional"),
    ("43148", 85, "Santa Tecla de Tarragona — Fiesta de Interés Turístico Nacional"),
    ("25120", 85, "Aplec del Caragol de Lleida — Fiesta de Interés Turístico Nacional"),
    ("44216", 85, "Vaquillas del Ángel de Teruel — Fiesta de Interés Turístico Nacional"),
    ("44216", 85, "Bodas de Isabel de Segura (Teruel) — Fiesta de Interés Turístico Nacional"),
    ("22188", 85, "Noche de San Juan de Huesca — Fiesta de Interés Turístico Nacional"),
    ("26089", 85, "Fiestas de La Rioja (Logroño) — Fiesta de Interés Turístico Nacional"),
    ("01059", 85, "Fiesta de la Virgen Blanca (Vitoria) — Fiesta de Interés Turístico Nacional"),
    ("20069", 85, "Semana Grande de San Sebastián — Fiesta de Interés Turístico Nacional"),
    ("48020", 85, "Semana Grande de Bilbao — Fiesta de Interés Turístico Nacional"),
    ("35016", 85, "Fiesta del Charco de La Aldea — Fiesta de Interés Turístico Nacional"),
    ("38023", 85, "Romería de Nuestra Señora de Candelaria — Fiesta de Interés Turístico Nacional"),

    # REGIONALES destacados
    ("18169", 70, "Noche de las Velas de Pampaneira — Fiesta de Interés Turístico Regional"),
    ("18185", 70, "Fiesta de la Toma de Granada — Fiesta de Interés Turístico Regional"),
    ("18091", 70, "Fiesta de San Cecilio (Granada) — Fiesta de Interés Turístico Regional"),
    ("04902", 70, "Fiestas de Moros y Cristianos de Vera — Fiesta de Interés Turístico Regional"),
    ("03065", 70, "Moros y Cristianos de Elda — Fiesta de Interés Turístico Regional"),
    ("03056", 70, "Moros y Cristianos de Cocentaina — Fiesta de Interés Turístico Regional"),
    ("03138", 70, "Moros y Cristianos de Villena — Fiesta de Interés Turístico Regional"),
    ("30027", 85, "Semana Santa de Lorca — Fiesta de Interés Turístico Internacional"),  # corrección: es internacional
    ("30027", 85, "Bordados de Lorca — Fiesta de Interés Turístico Internacional"),
    ("46113", 70, "Fogueres de Sant Joan de Dénia — Fiesta de Interés Turístico Regional"),
    ("12040", 70, "Magdalena de Castellón — Fiesta de Interés Turístico Regional"),
    ("08221", 70, "Festa Major de Sitges — Fiesta de Interés Turístico Regional"),
    ("08101", 70, "La Diada de Sant Jordi (Barcelona) — Fiesta de Interés Turístico Regional"),
    ("43123", 70, "Carnestoltes de Reus — Fiesta de Interés Turístico Regional"),
    ("17171", 70, "Sant Narcís de Girona — Fiesta de Interés Turístico Regional"),
    ("50099", 70, "Carnaval de Calanda (tamborada) — Fiesta de Interés Turístico Regional"),
    ("31030", 70, "Roncal (Tributo de las Tres Vacas) — Fiesta de Interés Turístico Regional"),
    ("33051", 70, "Vaqueirada de Aristébano — Fiesta de Interés Turístico Regional"),
    ("33024", 70, "Descenso del Sella (Arriondas) — Fiesta de Interés Turístico Regional"),
    ("39006", 70, "Carnaval de Anievas — Fiesta de Interés Turístico Regional"),
    ("15077", 70, "Fiesta de San Froilán (Santiago) — Fiesta de Interés Turístico Regional"),
    ("32054", 70, "Carnaval de Xinzo de Limia — Fiesta de Interés Turístico Regional"),
    ("36048", 70, "Festa da Peregrina (Pontevedra) — Fiesta de Interés Turístico Regional"),
    ("24089", 70, "Fiestas de San Juan y San Pedro de León — Fiesta de Interés Turístico Regional"),
    ("37274", 70, "Ferias y Fiestas de Salamanca — Fiesta de Interés Turístico Regional"),
    ("09059", 70, "Fiestas de San Pedro y San Pablo de Burgos — Fiesta de Interés Turístico Regional"),
    ("40181", 70, "Fiestas de San Juan de Segovia — Fiesta de Interés Turístico Regional"),
    ("05185", 70, "Santa Teresa de Ávila — Fiesta de Interés Turístico Regional"),
    ("38026", 70, "Carnaval de Puerto de la Cruz — Fiesta de Interés Turístico Regional"),
    ("35004", 70, "Fiesta de la Rama de Agaete — Fiesta de Interés Turístico Regional"),
    ("07026", 70, "Sant Antoni de Muro — Fiesta de Interés Turístico Regional"),
    ("07063", 70, "Sant Antoni de sa Pobla — Fiesta de Interés Turístico Regional"),
    ("07015", 70, "Sant Antoni de Artà — Fiesta de Interés Turístico Regional"),
]

# ── Keywords para detectar nivel en texto de Wikipedia ───────────────────────
KEYWORDS_INTERNACIONAL = [
    "interés turístico internacional", "interes turistico internacional",
    "declarada de interés turístico internacional",
]
KEYWORDS_NACIONAL = [
    "interés turístico nacional", "interes turistico nacional",
    "declarada de interés turístico nacional",
    "fiesta nacional", "celebración nacional",
]
KEYWORDS_REGIONAL = [
    "interés turístico regional", "interes turistico regional",
    "declarada de interés turístico regional",
    "interés turístico autonómico",
]
KEYWORDS_FIESTA_CONOCIDA = [
    "patronas", "patrono", "patrón", "patrona", "copatrón", "copatron",
    "fiestas mayores", "feria mayor", "semana santa", "carnaval",
    "romería", "romerías", "procesión", "verbena", "feria de",
    "fiestas patronales", "festividad principal", "fiesta local",
    "fiestas de", "celebra cada año", "fiesta popular",
]
KEYWORDS_PATRON_BASICO = [
    "festividad de", "festividades", "fiestas", "patrón",
    "patrona", "santo patrón", "virgen de", "san ", "santa ",
    "corpus christi", "semana cultural", "día del municipio",
]

def normalize(text: str) -> str:
    return unicodedata.normalize("NFKD", text.lower())

def get_wikipedia_extract(title: str):
    """Obtiene el texto completo del artículo de Wikipedia."""
    url = (
        "https://es.wikipedia.org/w/api.php?action=query"
        f"&titles={urllib.parse.quote(title)}"
        "&prop=extracts&explaintext=1&exsectionformat=plain"
        "&format=json&redirects=1"
    )
    try:
        req = urllib.request.Request(url, headers=HEADERS)
        with urllib.request.urlopen(req, timeout=15) as r:
            data = json.loads(r.read().decode())
        pages = data.get("query", {}).get("pages", {})
        page = next(iter(pages.values()))
        if "missing" in page:
            return None
        return page.get("extract", "")
    except Exception:
        return None

def score_from_text(text: str) -> tuple[int, str]:
    """
    Analiza el texto del artículo y devuelve (score, motivo).
    Busca en el texto completo, priorizando secciones de fiestas.
    """
    t = normalize(text)

    # Extraer sección de fiestas si existe
    fiesta_section = ""
    for header in ["fiestas", "festividades", "cultura", "tradiciones", "eventos"]:
        idx = t.find(f"\n{header}\n")
        if idx == -1:
            idx = t.find(f"\n== {header} ==")
        if idx != -1:
            end = t.find("\n==", idx + 10)
            fiesta_section = t[idx: end if end > 0 else idx + 2000]
            break

    # Si no hay sección específica, analizar el texto completo (primeros 8000 chars)
    search_text = (fiesta_section + " " + t[:8000]) if fiesta_section else t[:8000]

    if any(k in search_text for k in KEYWORDS_INTERNACIONAL):
        return SCORE_INTERES_INTERNACIONAL, "Fiesta de Interés Turístico Internacional"
    if any(k in search_text for k in KEYWORDS_NACIONAL):
        return SCORE_INTERES_NACIONAL, "Fiesta de Interés Turístico Nacional"
    if any(k in search_text for k in KEYWORDS_REGIONAL):
        return SCORE_INTERES_REGIONAL, "Fiesta de Interés Turístico Regional"
    if any(k in search_text for k in KEYWORDS_FIESTA_CONOCIDA):
        return SCORE_FIESTA_CONOCIDA, "Fiestas patronales / festividad local relevante"
    if any(k in search_text for k in KEYWORDS_PATRON_BASICO):
        return SCORE_PATRON_BASICO, "Festividad local / patrón del municipio"

    return 0, "Sin datos de fiestas en Wikipedia"

def d1_query(sql: str) -> list:
    result = subprocess.run(
        ["npx", "wrangler", "d1", "execute", "ranking-municipios",
         "--remote", "--command", sql, "--json"],
        capture_output=True, text=True, cwd=str(PROJECT_DIR)
    )
    if result.returncode != 0:
        raise RuntimeError(result.stderr[:300])
    return json.loads(result.stdout)[0].get("results", [])

def escape_sql(s: str) -> str:
    return s.replace("'", "''")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true")
    args = parser.parse_args()

    # Cargar checkpoint
    checkpoint: dict[str, dict] = {}
    if os.path.exists(CHECKPOINT):
        with open(CHECKPOINT) as f:
            checkpoint = json.load(f)
        print(f"  Checkpoint cargado: {len(checkpoint)} municipios ya procesados")

    # Cargar municipios con su nombre Wikipedia (wiki_title si existe, si no nombre)
    print("Leyendo municipios desde D1...")
    rows = d1_query("SELECT codigo_ine, nombre, provincia FROM municipios ORDER BY codigo_ine")
    print(f"  {len(rows)} municipios")

    # Resultados: ine → {score, motivo, fuente}
    resultados: dict[str, dict] = dict(checkpoint)

    # Primero, aplicar fiestas oficiales curadas (siempre, sin Wikipedia)
    print("\nAplicando fiestas oficiales curadas...")
    for ine, score, motivo in FIESTAS_OFICIALES:
        if ine not in resultados or resultados[ine]["score"] < score:
            resultados[ine] = {"score": score, "motivo": motivo, "fuente": "oficial_curado"}

    # Luego, Wikipedia para los que no tienen datos o tienen score bajo
    pendientes = [r for r in rows if r["codigo_ine"] not in checkpoint]
    print(f"\nConsultando Wikipedia para {len(pendientes)} municipios pendientes...")

    for i, row in enumerate(pendientes, 1):
        ine    = row["codigo_ine"]
        nombre = row["nombre"]
        prov   = row["provincia"]

        if i % 100 == 0:
            pct = i / len(pendientes) * 100
            print(f"[{i}/{len(pendientes)} {pct:.1f}%] {nombre} ({prov})...")
            # Guardar checkpoint
            with open(CHECKPOINT, "w") as f:
                json.dump(resultados, f)

        # Intentar título directo, luego con provincia
        titles = [nombre, f"{nombre} ({prov})", f"{nombre} (municipio)"]
        text = None
        for title in titles:
            text = get_wikipedia_extract(title)
            if text and len(text) > 200:
                break
            time.sleep(0.05)

        if not text:
            resultados[ine] = {"score": 0, "motivo": "Sin artículo Wikipedia", "fuente": "wikipedia"}
            time.sleep(0.1)
            continue

        score, motivo = score_from_text(text)

        # Si el municipio ya tiene datos de oficial_curado con score mayor, no sobreescribir
        existing = resultados.get(ine, {})
        if existing.get("fuente") == "oficial_curado" and existing.get("score", 0) >= score:
            resultados[ine]["wikipedia_score"] = score
        else:
            resultados[ine] = {"score": score, "motivo": motivo, "fuente": "wikipedia"}

        time.sleep(0.15)  # respetar rate limit Wikipedia

    # Guardar checkpoint final
    with open(CHECKPOINT, "w") as f:
        json.dump(resultados, f)
    print(f"\nCheckpoint guardado: {len(resultados)} municipios procesados")

    # ── Generar SQL ───────────────────────────────────────────────────────────
    print("\nGenerando SQL...")
    lines = [
        "-- fiestas_wikipedia.sql",
        "-- Generado por scripts/enriquecer-fiestas-wikipedia.py",
        f"-- {len(resultados)} municipios procesados",
        "",
    ]

    actualizados = 0
    for ine, data in resultados.items():
        score  = data.get("score", 0)
        motivo = data.get("motivo", "")
        if score <= 0:
            continue

        # Solo actualiza si el score nuevo es mayor que el existente
        lines.append(
            f"UPDATE puntuaciones SET puntuacion = MAX(puntuacion, {score}) "
            f"WHERE codigo_ine = '{ine}' AND categoria = 'fiestas';"
        )
        lines.append(
            f"INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) "
            f"VALUES ('{ine}', 'fiestas', {score});"
        )

        # Añadir why_json si score >= 45
        if score >= 45:
            emoji = "🎉"
            desc = escape_sql(motivo[:100])
            lines.append(
                f"UPDATE municipios SET why_json = json_insert(COALESCE(why_json,'[]'),'$[#]',"
                f"'{emoji} Fiestas: {desc}') "
                f"WHERE codigo_ine='{ine}' AND COALESCE(why_json,'[]') NOT LIKE '%{emoji} Fiestas:%';"
            )
        actualizados += 1

    lines.append("")
    sql_content = "\n".join(lines)
    OUT_PATH.write_text(sql_content)
    print(f"  SQL generado: {OUT_PATH}")
    print(f"  Municipios con score > 0: {actualizados}")

    # Estadísticas
    scores = [d["score"] for d in resultados.values() if d["score"] > 0]
    if scores:
        print(f"\n  Score medio:  {sum(scores)/len(scores):.1f}")
        print(f"  Con score 95: {sum(1 for s in scores if s>=95)}")
        print(f"  Con score 85: {sum(1 for s in scores if 85<=s<95)}")
        print(f"  Con score 70: {sum(1 for s in scores if 70<=s<85)}")
        print(f"  Con score 45: {sum(1 for s in scores if 45<=s<70)}")
        print(f"  Con score 25: {sum(1 for s in scores if 25<=s<45)}")

    if args.apply:
        print("\nAplicando SQL a D1 remoto...")
        # Partir en chunks de 50 statements
        statements = [l for l in lines if l.strip() and not l.startswith("--")]
        chunk_size = 50
        for j in range(0, len(statements), chunk_size):
            chunk = "\n".join(statements[j:j+chunk_size])
            result = subprocess.run(
                ["npx", "wrangler", "d1", "execute", "ranking-municipios",
                 "--remote", "--command", chunk],
                capture_output=True, text=True, cwd=str(PROJECT_DIR)
            )
            if result.returncode != 0:
                print(f"  ERROR en chunk {j//chunk_size}: {result.stderr[:200]}")
            elif j % 500 == 0:
                print(f"  {j}/{len(statements)} statements aplicados...")
        print("  ¡Listo!")
    else:
        print(f"\nPara aplicar: python3 scripts/enriquecer-fiestas-wikipedia.py --apply")
        print(f"O manualmente: npx wrangler d1 execute ranking-municipios --remote --file migrations/fiestas_wikipedia.sql")

if __name__ == "__main__":
    main()

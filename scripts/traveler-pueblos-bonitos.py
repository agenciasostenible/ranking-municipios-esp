#!/usr/bin/env python3
"""
Aplica puntuaciones pueblo_bonito a municipios mencionados en medios de referencia
(Traveler/Condé Nast, NatGeo, Repsol) extraídos manualmente de búsquedas.

Puntuación:
  - Mencionado en múltiples fuentes top (NatGeo + Traveler): 85-95 pts
  - Mencionado en fuente top (Traveler o NatGeo): 70-85 pts
  - Mencionado en Repsol u otra fuente curada: 55-70 pts
"""

import json, subprocess, os, datetime
from pathlib import Path

PROJECT_DIR = Path(__file__).parent.parent

# Municipios extraídos de búsquedas de traveler.es + NatGeo + Repsol
# Formato: (nombre, provincia_hint, puntuacion_pueblo_bonito, why_label)
MUNICIPIOS = [
    # Madrid
    ("Chinchón",              "Madrid",     88, "Pueblo bonito · Plaza Mayor histórica"),
    ("Patones de Arriba",     "Madrid",     82, "Pueblo bonito · Arquitectura pizarra"),
    ("Buitrago del Lozoya",   "Madrid",     80, "Pueblo bonito · Villa medieval amurallada"),
    ("Manzanares el Real",    "Madrid",     78, "Pueblo bonito · Castillo de los Mendoza"),
    ("Nuevo Baztán",          "Madrid",     72, "Pueblo bonito · Conjunto Barroco BIC"),
    ("Rascafría",             "Madrid",     70, "Pueblo bonito · Valle del Lozoya"),

    # Andalucía - Cádiz
    ("Arcos de la Frontera",  "Cádiz",      90, "Pueblo bonito · Pueblo blanco en peñón"),
    ("Vejer de la Frontera",  "Cádiz",      88, "Pueblo bonito · Pueblo blanco andaluz"),
    ("Setenil de las Bodegas","Cádiz",      87, "Pueblo bonito · Casas bajo la roca"),
    ("Zahara de la Sierra",   "Cádiz",      85, "Pueblo bonito · Castillo y embalse"),
    ("Grazalema",             "Cádiz",      83, "Pueblo bonito · Sierra de Grazalema"),
    ("Olvera",                "Cádiz",      78, "Pueblo bonito · Ruta de los pueblos blancos"),
    ("Ubrique",               "Cádiz",      75, "Pueblo bonito · Artesanía en cuero"),
    ("Medina Sidonia",        "Cádiz",      74, "Pueblo bonito · Ciudad ducal histórica"),

    # Andalucía - Sevilla
    ("Carmona",               "Sevilla",    87, "Pueblo bonito · Necrópolis romana"),
    ("Osuna",                 "Sevilla",    82, "Pueblo bonito · Barroco sevillano"),
    ("Marchena",              "Sevilla",    75, "Pueblo bonito · Bella desconocida"),
    ("Cazalla de la Sierra",  "Sevilla",    73, "Pueblo bonito · Sierra Norte"),
    ("Estepa",                "Sevilla",    72, "Pueblo bonito · Balcón de Andalucía"),

    # Andalucía - Málaga
    ("Frigiliana",            "Málaga",     90, "Pueblo bonito · Pueblo más bonito Axarquía"),
    ("Ronda",                 "Málaga",     88, "Pueblo bonito · Tajo de Ronda"),
    ("Antequera",             "Málaga",     80, "Pueblo bonito · Dólmenes UNESCO"),
    ("Cómpeta",               "Málaga",     75, "Pueblo bonito · Vino dulce · Axarquía"),
    ("Casares",               "Málaga",     74, "Pueblo bonito · Cuna de Blas Infante"),

    # Andalucía - Córdoba
    ("Priego de Córdoba",     "Córdoba",    88, "Pueblo bonito · Joya del Barroco andaluz"),
    ("Zuheros",               "Córdoba",    85, "Pueblo bonito · Pueblo más bonito de Córdoba"),
    ("Iznájar",               "Córdoba",    82, "Pueblo bonito · Pueblo blanco del embalse"),
    ("Almodóvar del Río",     "Córdoba",    80, "Pueblo bonito · Castillo medieval"),

    # Andalucía - Granada
    ("Montefrío",             "Granada",    87, "Pueblo bonito · Vista más bella del mundo CNN"),
    ("Alhama de Granada",     "Granada",    83, "Pueblo bonito · Tajo y aguas termales"),
    ("Guadix",                "Granada",    80, "Pueblo bonito · Ciudad de las cuevas"),
    ("Capileira",             "Granada",    78, "Pueblo bonito · Alpujarra granadina"),

    # Andalucía - Jaén
    ("Úbeda",                 "Jaén",       90, "Pueblo bonito · Renacimiento UNESCO"),
    ("Baeza",                 "Jaén",       90, "Pueblo bonito · Renacimiento UNESCO"),
    ("Cazorla",               "Jaén",       85, "Pueblo bonito · Parque Natural Cazorla"),
    ("Segura de la Sierra",   "Jaén",       82, "Pueblo bonito · Pueblo más bonito de España"),

    # Andalucía - Huelva
    ("Aracena",               "Huelva",     85, "Pueblo bonito · Gruta de las Maravillas"),
    ("Almonaster la Real",    "Huelva",     82, "Pueblo bonito · Pueblo más bonito de España"),
    ("Niebla",                "Huelva",     78, "Pueblo bonito · Murallas romanas"),
    ("Moguer",                "Huelva",     75, "Pueblo bonito · Juan Ramón Jiménez"),

    # Galicia
    ("Combarro",              "Pontevedra", 87, "Pueblo bonito · Hórreos sobre el mar"),
    ("Cambados",              "Pontevedra", 82, "Pueblo bonito · Capital del Albariño"),
    ("Allariz",               "Ourense",    85, "Pueblo bonito · Medieval · Alfonso X"),
    ("Ribadavia",             "Ourense",    80, "Pueblo bonito · Capital del Ribeiro"),
    ("Betanzos",              "A Coruña",   82, "Pueblo bonito · Conjunto Histórico Artístico"),
    ("Baiona",                "Pontevedra", 80, "Pueblo bonito · Primera noticia del Nuevo Mundo"),
    ("Mondoñedo",             "Lugo",       80, "Pueblo bonito · Conjunto Histórico · Catedral"),
    ("Viveiro",               "Lugo",       78, "Pueblo bonito · Villa medieval amurallada"),

    # Asturias
    ("Cudillero",             "Asturias",   88, "Pueblo bonito · Puerto de colores en anfiteatro"),
    ("Taramundi",             "Asturias",   82, "Pueblo bonito · Turismo rural pionero"),
    ("Lastres",               "Asturias",   80, "Pueblo bonito · Pueblo marinero · Dinosaurios"),

    # Cantabria
    ("Santillana del Mar",    "Cantabria",  90, "Pueblo bonito · Tres mentiras medievales"),
    ("San Vicente de la Barquera", "Cantabria", 87, "Pueblo bonito · Castillo y Picos Europa"),
    ("Comillas",              "Cantabria",  85, "Pueblo bonito · Capricho de Gaudí"),
    ("Potes",                 "Cantabria",  78, "Pueblo bonito · Puerta de los Picos"),

    # País Vasco
    ("Hondarribia",           "Gipuzkoa",   88, "Pueblo bonito · Casco histórico amurallado"),
    ("Getaria",               "Gipuzkoa",   85, "Pueblo bonito · Villa marinera · Balenciaga"),
    ("Laguardia",             "Álava",      85, "Pueblo bonito · Rioja Alavesa medieval"),
    ("Bermeo",                "Bizkaia",    80, "Pueblo bonito · Puerto pesquero vasco"),

    # Navarra
    ("Olite",                 "Navarra",    88, "Pueblo bonito · Ciudad medieval · Castillo Real"),
    ("Ujué",                  "Navarra",    83, "Pueblo bonito · Pueblo más bonito de España"),
    ("Puente la Reina",       "Navarra",    80, "Pueblo bonito · Camino de Santiago"),

    # La Rioja
    ("Briones",               "La Rioja",   83, "Pueblo bonito · Pueblo más bonito de España"),
    ("San Millán de la Cogolla", "La Rioja", 85, "Pueblo bonito · Cuna del español · UNESCO"),
    ("Ezcaray",               "La Rioja",   80, "Pueblo bonito · Arquitectura riojana"),

    # Aragón
    ("Albarracín",            "Teruel",     95, "Pueblo bonito · Pueblo más bonito de España"),
    ("Alquézar",              "Huesca",     92, "Pueblo bonito · Cañón del Vero · Medieval"),
    ("Aínsa",                 "Huesca",     90, "Pueblo bonito · Plaza Mayor medieval"),
    ("Sos del Rey Católico",  "Zaragoza",   87, "Pueblo bonito · Cuna de Fernando el Católico"),
    ("Valderrobres",          "Teruel",     85, "Pueblo bonito · Matarraña · Medieval"),
    ("Rubielos de Mora",      "Teruel",     83, "Pueblo bonito · Pueblo más bonito de España"),
    ("Daroca",                "Zaragoza",   80, "Pueblo bonito · Muralla medieval"),

    # Castilla y León
    ("La Alberca",            "Salamanca",  90, "Pueblo bonito · Pueblo más bonito de España"),
    ("Covarrubias",           "Burgos",     87, "Pueblo bonito · Conjunto Histórico Artístico"),
    ("Frías",                 "Burgos",     85, "Pueblo bonito · Casas colgadas medievales"),
    ("Urueña",                "Valladolid", 83, "Pueblo bonito · Villa del libro"),
    ("Ciudad Rodrigo",        "Salamanca",  82, "Pueblo bonito · Ciudad amurallada"),
    ("Mogarraz",              "Salamanca",  82, "Pueblo bonito · Retratos en las fachadas"),
    ("Pedraza",               "Segovia",    88, "Pueblo bonito · Villa medieval más bella Segovia"),
    ("Sepúlveda",             "Segovia",    82, "Pueblo bonito · Hoces del Duratón"),
    ("Berlanga de Duero",     "Soria",      80, "Pueblo bonito · Castillo y colegiata"),
    ("Puebla de Sanabria",    "Zamora",     83, "Pueblo bonito · Castillo medieval · Lago"),

    # Castilla-La Mancha
    ("Almagro",               "Ciudad Real",85, "Pueblo bonito · Corral de Comedias s.XVI"),
    ("Alcalá del Júcar",      "Albacete",   82, "Pueblo bonito · Hoz del Júcar"),
    ("Alarcón",               "Cuenca",     85, "Pueblo bonito · Castillo-Parador en peñón"),
    ("Cuenca",                "Cuenca",     88, "Pueblo bonito · Casas Colgadas UNESCO"),
    ("Belmonte",              "Cuenca",     80, "Pueblo bonito · Castillo de Belmonte"),
    ("Sigüenza",              "Guadalajara",85, "Pueblo bonito · Catedral románica · Parador"),
    ("Atienza",               "Guadalajara",80, "Pueblo bonito · Medieval · Cinco iglesias"),

    # Extremadura
    ("Trujillo",              "Cáceres",    88, "Pueblo bonito · Cuna de conquistadores"),
    ("Hervás",                "Cáceres",    85, "Pueblo bonito · Judería más bonita Extremadura"),
    ("Cáceres",               "Cáceres",    90, "Pueblo bonito · Ciudad monumental UNESCO"),
    ("Jerez de los Caballeros","Badajoz",   83, "Pueblo bonito · Templarios · Torres barrocas"),
    ("Zafra",                 "Badajoz",    82, "Pueblo bonito · Pequeña Sevilla extremeña"),
    ("Olivenza",              "Badajoz",    80, "Pueblo bonito · Influencia portuguesa"),

    # Comunidad Valenciana
    ("Morella",               "Castellón",  90, "Pueblo bonito · Ciudad amurallada medieval"),
    ("Peñíscola",             "Castellón",  87, "Pueblo bonito · Ciudad en el mar · Castillo"),
    ("Bocairent",             "Valencia",   85, "Pueblo bonito · Pueblo más bonito de España"),
    ("Guadalest",             "Alicante",   87, "Pueblo bonito · Castillo sobre la roca"),
    ("Altea",                 "Alicante",   83, "Pueblo bonito · Casco histórico cúpula azul"),
    ("Jávea",                 "Alicante",   80, "Pueblo bonito · Cap de la Nau · Cabo"),

    # Murcia
    ("Caravaca de la Cruz",   "Murcia",     87, "Pueblo bonito · Ciudad Santa · Jubileo"),
    ("Moratalla",             "Murcia",     83, "Pueblo bonito · Pueblo más bonito Murcia"),
    ("Cehegín",               "Murcia",     80, "Pueblo bonito · Maravilla Rural de España"),
    ("Mula",                  "Murcia",     78, "Pueblo bonito · Tamboradas UNESCO"),

    # Baleares
    ("Valldemossa",           "Islas Baleares", 90, "Pueblo bonito · Sierra Tramuntana UNESCO"),
    ("Deià",                  "Islas Baleares", 88, "Pueblo bonito · Pueblo de artistas Mallorca"),
    ("Fornalutx",             "Islas Baleares", 87, "Pueblo bonito · Pueblo más bonito España"),
    ("Sóller",                "Islas Baleares", 85, "Pueblo bonito · Valle de los naranjos"),
    ("Ciutadella de Menorca", "Islas Baleares", 85, "Pueblo bonito · Capital histórica Menorca"),

    # Canarias
    ("Tejeda",                "Las Palmas", 87, "Pueblo bonito · Corazón de Gran Canaria"),
    ("Teror",                 "Las Palmas", 83, "Pueblo bonito · Basílica · Mercado dominical"),
    ("Garachico",             "Santa Cruz de Tenerife", 87, "Pueblo bonito · Pueblo más bonito Canarias"),
    ("La Orotava",            "Santa Cruz de Tenerife", 85, "Pueblo bonito · Casas nobles tinerfeñas"),
    ("Betancuria",            "Las Palmas", 83, "Pueblo bonito · Capital histórica Fuerteventura"),
    ("Agüimes",               "Las Palmas", 78, "Pueblo bonito · Casco histórico Gran Canaria"),
]

def esc(s):
    return s.replace("'", "''")

def normalize(s):
    import unicodedata
    s = unicodedata.normalize('NFD', s)
    return ''.join(c for c in s if unicodedata.category(c) != 'Mn').lower()

def main():
    print(f"Buscando {len(MUNICIPIOS)} municipios en D1...", flush=True)

    # Obtener todos los municipios de D1
    result = subprocess.run(
        ["npx", "wrangler", "d1", "execute", "ranking-municipios", "--remote",
         "--command", "SELECT codigo_ine, nombre, provincia, nombre_search FROM municipios",
         "--json"],
        capture_output=True, text=True, cwd=PROJECT_DIR
    )
    data = json.loads(result.stdout)
    db_munis = data[0]["results"]

    # Índice por nombre_search y por nombre normalizado
    by_search = {m["nombre_search"]: m for m in db_munis if m.get("nombre_search")}
    by_norm   = {normalize(m["nombre"]): m for m in db_munis}

    inserts = []
    not_found = []

    for nombre, prov_hint, puntuacion, why_label in MUNICIPIOS:
        nombre_norm = normalize(nombre)
        mun = by_search.get(nombre_norm) or by_norm.get(nombre_norm)

        # Si hay ambigüedad por provincia, filtrar
        if not mun:
            # Intentar con nombre exacto ignorando provincia
            candidates = [m for m in db_munis if normalize(m["nombre"]) == nombre_norm]
            if len(candidates) == 1:
                mun = candidates[0]
            elif len(candidates) > 1 and prov_hint:
                prov_norm = normalize(prov_hint)
                for c in candidates:
                    if normalize(c.get("provincia", "")) == prov_norm:
                        mun = c
                        break
                if not mun:
                    mun = candidates[0]  # primer resultado

        if not mun:
            not_found.append(f"{nombre} ({prov_hint})")
            continue

        ine = mun["codigo_ine"]
        inserts.append(
            f"INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion) "
            f"VALUES ('{esc(ine)}', 'pueblo_bonito', {puntuacion}) "
            f"ON CONFLICT(codigo_ine, categoria) DO UPDATE SET "
            f"puntuacion = MAX(puntuacion, excluded.puntuacion);"
        )
        # Añadir why_json label
        inserts.append(
            f"UPDATE municipios SET why_json = CASE "
            f"WHEN why_json IS NULL OR why_json = '[]' THEN json_array('{esc(why_label)}') "
            f"WHEN why_json NOT LIKE '%{esc(why_label[:20])}%' THEN json(json_insert(why_json, '$[#]', '{esc(why_label)}')) "
            f"ELSE why_json END "
            f"WHERE codigo_ine = '{esc(ine)}';"
        )
        print(f"  ✓ {nombre} ({mun['provincia']}) → {puntuacion} pts", flush=True)

    ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    out = PROJECT_DIR / "migrations" / f"enriquecimiento_{ts}_traveler_pueblos_bonitos.sql"
    with open(out, "w") as f:
        f.write("-- Pueblos bonitos: Traveler/NatGeo/Repsol (extraídos de búsquedas)\n\n")
        f.write("\n".join(inserts))
        f.write("\n")

    print(f"\n✓ {len(inserts)//2} municipios → {out.name}")
    if not_found:
        print(f"⚠ No encontrados ({len(not_found)}): {', '.join(not_found)}")

    print("\nAplicando a D1...", flush=True)
    r = subprocess.run(
        ["npx", "wrangler", "d1", "execute", "ranking-municipios", "--remote", f"--file={out}"],
        capture_output=True, text=True, cwd=PROJECT_DIR
    )
    if r.returncode == 0:
        print("✅ Aplicado correctamente")
    else:
        print("❌ Error:", r.stderr[:500])

if __name__ == "__main__":
    main()

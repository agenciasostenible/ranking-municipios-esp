#!/usr/bin/env python3
"""
enriquecer-desde-url.py
=======================
Lee un artículo de una URL, extrae municipios mencionados con Claude,
y genera SQL para enriquecer puntuaciones y why_json.

Uso:
  python3 scripts/enriquecer-desde-url.py <URL>
  python3 scripts/enriquecer-desde-url.py <URL> --dry-run   # solo muestra, no escribe SQL
  python3 scripts/enriquecer-desde-url.py <URL> --apply     # aplica directo a D1

Requiere:
  ANTHROPIC_API_KEY en el entorno
  pip install anthropic

Aplica el SQL generado:
  npx wrangler d1 execute ranking-municipios --remote --file=migrations/enriquecimiento_<fecha>.sql
"""

import os, sys, json, re, argparse, subprocess, urllib.request, html, datetime
from pathlib import Path

try:
    import anthropic
except ImportError:
    print("ERROR: Instala el SDK: pip install anthropic")
    sys.exit(1)

SCRIPT_DIR  = Path(__file__).parent
PROJECT_DIR = SCRIPT_DIR.parent

# Categorías disponibles con sus emojis
CATEGORIAS = {
    "senderismo":    "🥾 Senderismo",
    "historia":      "🏛️ Historia",
    "naturaleza":    "🌿 Naturaleza",
    "gastronomia":   "🍽️ Gastronomía",
    "agua":          "💧 Agua",
    "camping":       "⛺ Camping",
    "aventura":      "🧗 Aventura",
    "ninos":         "👨‍👩‍👧 Familias",
    "escapada_rural":"🏡 Rural",
    "estrellas":     "🌌 Astroturismo",
    "castillos":     "🏰 Castillos",
    "yacimientos":   "⚱️ Arqueología",
    "miradores":     "🔭 Miradores",
    "cuevas":        "🕳️ Cuevas",
    "birdwatching":  "🦅 Birdwatching",
    "vinos":         "🍷 Vinos",
    "fiestas":       "🎉 Fiestas",
    "pareja":        "💑 Parejas",
    "ciclismo":      "🚵 Cicloturismo",
    "playas_fluviales": "🏖️ Playas río",
    "museos":        "🖼️ Museos",
    "lujo":          "💎 Lujo",
    "pueblo_bonito": "🌸 Pueblo bonito",
    "playas":        "🏖️ Playas",
}

def fetch_article(url: str) -> str:
    """Descarga el HTML y extrae el texto limpio."""
    print(f"📥 Descargando {url}...")
    req = urllib.request.Request(url, headers={"User-Agent": "Mozilla/5.0"})
    try:
        with urllib.request.urlopen(req, timeout=15) as r:
            raw = r.read().decode("utf-8", errors="ignore")
    except Exception as e:
        print(f"ERROR al descargar: {e}")
        sys.exit(1)

    # Extraer texto: eliminar scripts/styles y tags HTML
    raw = re.sub(r'<script[^>]*>.*?</script>', ' ', raw, flags=re.DOTALL|re.IGNORECASE)
    raw = re.sub(r'<style[^>]*>.*?</style>', ' ', raw, flags=re.DOTALL|re.IGNORECASE)
    raw = re.sub(r'<[^>]+>', ' ', raw)
    text = html.unescape(raw)
    text = re.sub(r'\s+', ' ', text).strip()

    # Wikipedia y listas largas necesitan más contexto
    limit = 14000
    if len(text) > limit:
        text = text[:limit] + "..."

    print(f"✓ Texto extraído: {len(text)} caracteres")
    return text


PROMPT_GENERAL = """\
Analiza este artículo sobre turismo en España y extrae los municipios mencionados.

URL del artículo: {url}

TEXTO DEL ARTÍCULO:
{text}

---

INSTRUCCIONES:
1. Identifica todos los municipios de España mencionados (pueblos, ciudades, localidades).
2. Para cada uno, determina:
   - nombre: nombre exacto del municipio tal como aparece
   - provincia: provincia a la que pertenece (si se menciona o se puede deducir)
   - categorias: lista de categorías turísticas relevantes (máximo 3) de esta lista:
{cats_list}
   - razon: frase corta (máximo 60 chars) que explique POR QUÉ destaca en esa categoría según el artículo
   - boost: puntos a sumar a cada categoría (entre 5 y 25 según importancia en el artículo)
   - entidades: lista de recursos concretos mencionados (rutas, monumentos, etc.) con tipo y nombre

3. Solo incluye municipios que el artículo mencione de forma relevante (no de pasada).

Responde ÚNICAMENTE con un JSON válido con este formato exacto:
{{
  "titulo_articulo": "...",
  "municipios": [
    {{
      "nombre": "Trevélez",
      "provincia": "Granada",
      "categorias": ["senderismo", "naturaleza"],
      "razon": "Punto de partida del Mulhacén y rutas de alta montaña",
      "boost": 20,
      "entidades": [
        {{"tipo": "sendero", "nombre": "Ruta al Mulhacén"}},
        {{"tipo": "montaña", "nombre": "Mulhacén"}}
      ]
    }}
  ]
}}"""

PROMPT_HISTORIA = """\
Eres un experto en historia de España. Analiza este texto (puede ser un artículo, lista de Wikipedia \
u otra fuente) y extrae todos los municipios de España con relevancia histórica.

URL de la fuente: {url}

TEXTO:
{text}

---

INSTRUCCIONES:

1. Identifica todos los municipios de España mencionados con contexto histórico relevante.

2. Para cada municipio calcula un BOOST de historia usando este rubric acumulativo \
(suma los puntos que apliquen, sin superar 45):

   ANTIGÜEDAD (elige el máximo que aplique):
   - Origen romano o anterior (s. I a.C. – III d.C.)  → +30
   - Origen visigodo o tardoantiguo (s. IV–VIII)       → +20
   - Fundación medieval temprana (s. IX–XII)           → +15
   - Medieval tardío / Reconquista (s. XIII–XV)        → +10
   - Origen moderno (s. XVI en adelante)               → +5

   HECHOS HISTÓRICOS (acumulables):
   - Batalla histórica relevante tuvo lugar aquí       → +20
   - Fue sede de corte, capital histórica o reino      → +20
   - Acontecimiento clave: firma, tratado, concilio    → +15
   - Plaza fuerte en la Reconquista / cambio de manos  → +10

   PATRIMONIO DECLARADO:
   - BIC Conjunto Histórico-Artístico                  → +15
   - Patrimonio de la Humanidad UNESCO                 → +20
   - Yacimiento arqueológico en el propio municipio    → +12

   PERSONAJES HISTÓRICOS:
   - Cuna de rey, conquistador, político o figura clave → +8

   PENALIZACIÓN:
   - Mención turística genérica sin datos históricos   → -5

   El boost resultante debe estar entre 5 y 45.
   NO des el mismo boost a todos: diferencia con criterio.
   Ejemplos orientativos: Mérida ~45, Toledo ~45, Albarracín ~30,
   pueblo medieval típico ~15, pueblo fundado en el s. XX ~5.

3. Categorías a asignar (sólo las que realmente correspondan):
   - historia      → siempre si tiene relevancia histórica
   - castillos     → si se menciona castillo, alcázar o muralla histórica
   - yacimientos   → si hay yacimiento arqueológico en el municipio
   - museos        → si tiene museo histórico o arqueológico relevante
   - conjuntos     → si está declarado Conjunto Histórico-Artístico

4. razon: frase de máximo 55 caracteres explicando el hecho histórico más relevante.

5. entidades: máximo 2 por municipio (los más relevantes).

6. IMPORTANTE: incluye como máximo los 30 municipios con mayor boost. Si hay más, descarta los de menor puntuación. Prioriza municipios con batallas muy famosas o muy antiguas.

Responde ÚNICAMENTE con un JSON válido (sin bloques markdown):
{{
  "titulo_articulo": "...",
  "municipios": [
    {{
      "nombre": "Itálica",
      "provincia": "Sevilla",
      "categorias": ["historia", "yacimientos"],
      "razon": "Ciudad romana fundada en 206 a.C., cuna de Trajano",
      "boost": 42,
      "entidades": [
        {{"tipo": "yacimiento", "nombre": "Anfiteatro de Itálica"}},
        {{"tipo": "personaje_historico", "nombre": "Emperador Trajano"}}
      ]
    }}
  ]
}}"""


PROMPT_GASTRONOMIA = """\
Eres un experto en gastronomía española. Analiza este texto y extrae todos los municipios \
de España con relevancia gastronómica.

URL de la fuente: {url}

TEXTO:
{text}

---

INSTRUCCIONES:

1. Identifica todos los municipios de España mencionados con contexto gastronómico relevante.

2. Para cada municipio calcula un BOOST de gastronomía usando este rubric acumulativo \
(suma los puntos que apliquen, sin superar 50):

   ESTRELLAS MICHELIN en el municipio (acumulables):
   - Restaurante con 3 estrellas Michelin aquí         → +40 por restaurante (máx 1)
   - Restaurante con 2 estrellas Michelin aquí         → +30 por restaurante (máx 1)
   - Restaurante con 1 estrella Michelin aquí          → +20 (primero), +10 (segundo), +5 (tercero+)

   RECONOCIMIENTO COMO DESTINO:
   - Capital Española de la Gastronomía (designación oficial) → +25
   - Ciudad referente gastronómica nacional (Donostia, Girona, etc.) → +20
   - Mención destacada como destino gastronómico               → +10

   PRODUCTOS DOP/IGP propios:
   - Producto DOP/IGP con origen o sede en este municipio      → +15
     (jamón ibérico, queso, pimentón, embutido, marisco, etc.)
   - Mercado gastronómico famoso o longevo                     → +10

   PENALIZACIÓN:
   - Solo mención de un plato típico genérico sin dato concreto → -5

   El boost debe estar entre 5 y 50. NO des el mismo valor a todos.
   Ejemplos orientativos: San Sebastián ~50, Girona ~45, Denia ~40,
   municipio con 1★ ~25, capital gastronómica regional ~20,
   pueblo con producto DOP conocido ~15, pueblo con cocina típica ~8.

3. Categorías a asignar (solo las que correspondan):
   - gastronomia    → siempre si hay relevancia gastronómica
   - restaurantes_top → si tiene estrella Michelin o sol Repsol destacado
   - productos_locales → si tiene DOP/IGP o producto local reconocido
   - mercados_gastro   → si tiene mercado gastronómico relevante
   - vinos          → si el vino es la señal principal (no acumules con gastronomia si es solo vino)
   - aceite         → si el aceite es la señal principal

4. razon: frase de máximo 55 caracteres con el dato más concreto y diferencial.

5. entidades: máximo 2 por municipio — restaurante con estrella, producto DOP, mercado.

6. Incluye como máximo los 30 municipios con mayor boost. Si hay más, descarta los menores.

Responde ÚNICAMENTE con JSON válido (sin bloques markdown):
{{
  "titulo_articulo": "...",
  "municipios": [
    {{
      "nombre": "San Sebastián",
      "provincia": "Guipúzcoa",
      "categorias": ["gastronomia", "restaurantes_top"],
      "razon": "Mayor densidad de estrellas Michelin del mundo",
      "boost": 50,
      "entidades": [
        {{"tipo": "restaurante", "nombre": "Arzak (3★ Michelin)"}},
        {{"tipo": "restaurante", "nombre": "Martín Berasategui (3★ Michelin)"}}
      ]
    }}
  ]
}}"""


def build_prompt(text: str, url: str, modo: str) -> str:
    cats_list = "\n".join(f"  - {k}: {v}" for k, v in CATEGORIAS.items())
    if modo == "historia":
        return PROMPT_HISTORIA.format(url=url, text=text)
    if modo == "gastronomia":
        return PROMPT_GASTRONOMIA.format(url=url, text=text)
    return PROMPT_GENERAL.format(url=url, text=text, cats_list=cats_list)


def extract_with_claude(text: str, url: str, modo: str = "general") -> dict:
    """Usa Claude para extraer municipios y contexto del artículo."""
    api_key = os.environ.get("ANTHROPIC_API_KEY")
    if not api_key:
        print("ERROR: Necesito la variable ANTHROPIC_API_KEY")
        print("  export ANTHROPIC_API_KEY=sk-ant-...")
        sys.exit(1)

    client = anthropic.Anthropic(api_key=api_key)

    prompt = build_prompt(text, url, modo)

    # Historia y gastronomía necesitan razonamiento → Sonnet; general → Haiku
    model = "claude-sonnet-4-6" if modo in ("historia", "gastronomia") else "claude-haiku-4-5-20251001"
    max_tokens = 8000 if modo in ("historia", "gastronomia") else 2000
    print(f"🤖 Analizando con Claude ({model})...")
    msg = client.messages.create(
        model=model,
        max_tokens=max_tokens,
        messages=[{"role": "user", "content": prompt}]
    )

    raw = msg.content[0].text.strip()

    # Quitar bloque markdown ```json ... ``` si lo hay
    raw = re.sub(r'^```(?:json)?\s*', '', raw)
    raw = re.sub(r'\s*```$', '', raw)

    # Extraer JSON aunque haya texto alrededor
    match = re.search(r'\{[\s\S]*\}', raw)
    if not match:
        print("ERROR: Claude no devolvió JSON válido")
        print(raw[:500])
        sys.exit(1)

    try:
        data = json.loads(match.group())
        print(f"✓ Claude detectó {len(data.get('municipios', []))} municipios")
        return data
    except json.JSONDecodeError as e:
        print(f"ERROR parseando JSON: {e}")
        print(raw[:500])
        sys.exit(1)


# Nombres alternativos / populares que no coinciden con el nombre INE oficial en BD
# Clave: nombre normalizado en minúsculas → código INE
ALIAS_MAP = {
    # Asturias: Arriondas es la capital del concejo de Parres
    "arriondas": "33045",
    # Cataluña: nombre en catalán vs. nombre INE en castellano
    "sant sadurní d'anoia": "08240",
    "sant sadurni d'anoia": "08240",
    "sant sadurní danoia": "08240",
    "vilafranca del penedès": "08305",
    "vilafranca del penedes": "08305",
    # Canarias: DO "Lanzarote" → Teguise (capital histórica; Arrecife no está en BD)
    "lanzarote": "35024",
}


def buscar_codigo_ine(nombre: str, provincia: str):
    """Busca el código INE en la BD local via wrangler."""
    # Comprobar alias antes de ir a la BD
    key = nombre.strip().lower()
    if key in ALIAS_MAP:
        return ALIAS_MAP[key]

    # Normalizar: quitar tildes para búsqueda más flexible
    query = f"""SELECT codigo_ine, nombre, provincia FROM municipios
WHERE nombre LIKE '%{nombre}%'
{f"AND provincia LIKE '%{provincia}%'" if provincia else ""}
LIMIT 3"""

    try:
        result = subprocess.run(
            ["npx", "wrangler", "d1", "execute", "ranking-municipios",
             "--remote", "--command", query, "--json"],
            capture_output=True, text=True, cwd=PROJECT_DIR, timeout=15
        )
        data = json.loads(result.stdout)
        results = data[0].get("results", []) if data else []
        if results:
            if len(results) == 1:
                return results[0]["codigo_ine"]
            # Si hay varios, preferir el que coincide exacto
            for r in results:
                if r["nombre"].lower() == nombre.lower():
                    return r["codigo_ine"]
            return results[0]["codigo_ine"]
    except Exception:
        pass
    return None


def generar_sql(data: dict, url: str, dry_run: bool) -> str:
    """Genera el SQL de enriquecimiento."""
    fecha = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    titulo = data.get("titulo_articulo", url)
    municipios = data.get("municipios", [])

    lines = [
        f"-- Enriquecimiento desde: {url}",
        f"-- Artículo: {titulo}",
        f"-- Generado: {datetime.datetime.now().isoformat()}",
        f"-- Municipios: {len(municipios)}",
        "",
    ]

    encontrados = 0
    no_encontrados = []

    for m in municipios:
        nombre   = m.get("nombre", "")
        provincia= m.get("provincia", "")
        cats     = m.get("categorias", [])
        razon    = m.get("razon", "")
        boost    = min(max(int(m.get("boost", 10)), 1), 45)
        entidades= m.get("entidades", [])

        print(f"\n🔍 Buscando: {nombre} ({provincia})...")
        codigo = buscar_codigo_ine(nombre, provincia)

        if not codigo:
            print(f"  ⚠️  No encontrado en la BD")
            no_encontrados.append(f"{nombre} ({provincia})")
            continue

        print(f"  ✓ Encontrado: {codigo}")
        encontrados += 1

        lines.append(f"-- {nombre} ({provincia}) — {razon}")

        # 1. Registrar mención en entidades (fuente: articulo_web, tipo: mencion)
        #    Esto nos permite contar cuántas veces aparece este municipio en artículos
        for cat in cats:
            if cat in CATEGORIAS:
                lines.append(
                    f"INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) "
                    f"VALUES ('{codigo}', 'mencion', '{cat}', 'articulo_web');"
                )

        # 2. Boost en puntuaciones con techo dinámico según número de menciones:
        #    1 mención  → techo 70
        #    2 menciones → techo 80
        #    3 menciones → techo 88
        #    5+ menciones → techo 95
        #    10+ menciones → techo 100
        for cat in cats:
            if cat in CATEGORIAS:
                lines.append(
                    f"UPDATE puntuaciones SET puntuacion = MIN("
                    f"  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='{codigo}' AND tipo='mencion' AND nombre='{cat}' AND fuente='articulo_web')"
                    f"  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88"
                    f"  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='{codigo}' AND tipo='mencion' AND nombre='{cat}' AND fuente='articulo_web') >= 10 THEN 100"
                    f"  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='{codigo}' AND tipo='mencion' AND nombre='{cat}' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,"
                    f"  puntuacion + {boost}) "
                    f"WHERE codigo_ine = '{codigo}' AND categoria = '{cat}';"
                )
                lines.append(
                    f"INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) "
                    f"VALUES ('{codigo}', '{cat}', {boost});"
                )

        # 2. Actualizar why_json — añadir la razón si no está ya
        for cat in cats[:2]:  # máximo 2 razones nuevas
            emoji_cat = CATEGORIAS.get(cat, "")
            why_item  = f"{emoji_cat}: {razon}" if emoji_cat else razon
            razon_safe = razon[:20].replace("'", "''")
            why_item_safe = why_item.replace("'", "''")
            # Sólo añade si la razón no está ya en el JSON
            lines.append(
                f"UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '{why_item_safe}') "
                f"WHERE codigo_ine = '{codigo}' AND COALESCE(why_json, '[]') NOT LIKE '%{razon_safe}%';"
            )

        # 3. Insertar entidades nuevas mencionadas
        for ent in entidades[:5]:
            tipo  = ent.get("tipo", "otro")
            enombre = ent.get("nombre", "").replace("'", "''")
            if enombre:
                lines.append(
                    f"INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) "
                    f"VALUES ('{codigo}', '{tipo}', '{enombre}', 'articulo_web');"
                )

        lines.append("")

    lines.append(f"-- Resumen: {encontrados}/{len(municipios)} municipios encontrados")
    if no_encontrados:
        lines.append(f"-- No encontrados: {', '.join(no_encontrados)}")

    sql = "\n".join(lines)

    if not dry_run:
        out_path = PROJECT_DIR / "migrations" / f"enriquecimiento_{fecha}.sql"
        out_path.write_text(sql)
        print(f"\n✅ SQL guardado en: {out_path}")
        print(f"   Para aplicar: npx wrangler d1 execute ranking-municipios --remote --file={out_path}")
        return sql, out_path

    return sql, None


def main():
    parser = argparse.ArgumentParser(description="Enriquece municipios desde un artículo web")
    parser.add_argument("url", help="URL del artículo")
    parser.add_argument("--dry-run", action="store_true", help="Solo muestra el SQL, no lo guarda")
    parser.add_argument("--apply", action="store_true", help="Aplica el SQL directamente a D1")
    parser.add_argument("--modo", choices=["general", "historia", "gastronomia"], default="general",
                        help="Modo de extracción: general (turismo) o historia (rubric histórico)")
    args = parser.parse_args()

    print(f"\n🚀 Enriqueciendo desde: {args.url}  [modo={args.modo}]\n")

    # 1. Descargar artículo
    text = fetch_article(args.url)

    # 2. Extraer con Claude
    data = extract_with_claude(text, args.url, modo=args.modo)

    # Mostrar resumen
    print(f"\n📋 Artículo: {data.get('titulo_articulo', '—')}")
    for m in data.get("municipios", []):
        print(f"   • {m['nombre']} ({m.get('provincia','?')}) → {m.get('categorias',[])} +{m.get('boost',10)}pts")
        print(f"     \"{m.get('razon','')}\"")

    print()

    # 3. Generar SQL
    sql, out_path = generar_sql(data, args.url, dry_run=args.dry_run)

    if args.dry_run:
        print("\n--- SQL GENERADO (dry-run) ---")
        print(sql)

    # 4. Aplicar si se pide — usar el archivo recién generado
    if args.apply and not args.dry_run:
        if not out_path or not out_path.exists():
            print("❌ No se encontró el archivo SQL generado")
        else:
            print(f"\n⚡ Aplicando a D1: {out_path.name}...")
            result = subprocess.run(
                ["npx", "wrangler", "d1", "execute", "ranking-municipios",
                 "--remote", f"--file={out_path}"],
                cwd=PROJECT_DIR
            )
            if result.returncode == 0:
                print("✅ Migración aplicada correctamente")
            else:
                print("❌ Error al aplicar la migración")


if __name__ == "__main__":
    main()

# HANDOFF — Cargar una categoría desde PDF en rankingspain.com

> Documento de traspaso para continuar en otra sesión de Claude.
> Caso inmediato: **cargar un PDF de "festivales de España"**. Sirve igual para cualquier categoría.

---

## 1. Lo básico del proyecto

- **Código local:** `/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp`
- **Repo:** `agenciasostenible/ranking-municipios-esp`, rama `main`.
- **Deploy:** Astro SSR + Vercel. **`git push` a `main` = deploy automático** (~2-4 min). Los **datos** (D1) son inmediatos (la web lee D1 en cada request); solo el **código** (frontend) necesita deploy.
- **Base de datos:** Cloudflare D1 `ranking-municipios`, id `d664746a-8439-488d-a42c-73aaf17b2140`.

### Comandos D1
```bash
# Consulta
npx wrangler d1 execute ranking-municipios --remote --command "SELECT ..." --json
# Ejecutar migration (archivo)
npx wrangler d1 execute ranking-municipios --remote --file=migrations/XXXX.sql
```
Límite práctico ~3.500 statements por archivo → trocear migrations grandes.

### Tablas clave
- `municipios(codigo_ine, nombre, provincia, comunidad, poblacion, es_duplicado, ...)`
- `entidades(codigo_ine, tipo, nombre, descripcion, fuente, ...)` — UNIQUE(codigo_ine, tipo, nombre)
- `puntuaciones(codigo_ine, categoria, puntuacion, ranking_provincial, ranking_nacional, ...)` — UNIQUE(codigo_ine, categoria)

---

## 2. Pipeline para cargar una categoría desde un PDF

Scripts reutilizables en **`scripts/pipeline/`** (cópialos a /tmp y ajústalos). Pasos:

1. **Extraer PDF:** `pdftotext "ruta.pdf" /tmp/raw.txt`. Estudiar la estructura (cada PDF de la IA de Google viene en un formato distinto y con basura).

2. **Parsear** a registros `{municipio, provincia, puntuacion, nombre_item, descripcion}`.
   - Anclar en un patrón fiable (en fiestas: `Puntuación: NN / 100`; en monumentos: `Puntuación Nacional/Global: NN/100`).
   - Extraer por etiquetas cuando las haya (`Municipio:`, `Fiestas Mayores:`, `Tipología:`, `Mes de celebración:`).
   - **La basura no contiene el patrón ancla** → así la evitas. Filtra además: "Has dicho", "Wikipedia", "Las respuestas de la IA", "Anexo:", fechas de blog (`DD mmm 20XX —`), títulos ("Qué ver…", "Pueblos en…").

3. **Emparejar municipio → codigo_ine** (`scripts/pipeline/match_fiestas.py`):
   - Usar **`scripts/pipeline/ine_munis.json`** (lista INE oficial, 8.124 municipios) como **validador** (real vs basura) + provincia + grafía castellana.
   - Normalizar nombres: minúsculas, sin acentos, sin espacios; partir bilingües por `/`; fuzzy `difflib` cutoff ~0.86; recorte de sufijos ("de la Vera", "de la Sierra").
   - **SIEMPRE emparejar a la ficha canónica `es_duplicado=0`** (ordenar municipios por es_dup ASC y `setdefault`). Si no, los datos caen en la ficha oculta y NO se ven.
   - Mapeo provincia PDF→BD: La Coruña→A Coruña, Lérida→Lleida, Gerona→Girona, Orense→Ourense, Santander→Cantabria, Oviedo→Asturias, Baleares↔Islas Baleares.

4. **Municipios que falten en la BD:** crear ficha mínima `INSERT OR IGNORE INTO municipios` con código **9xxxx** (siguiente libre — ver §5), nombre, provincia, comunidad, `es_duplicado=0`. NO uses el código INE real (la BD usa un esquema propio que colisiona con INE).

5. **Generar migration** (`scripts/pipeline/gen_fiestas.py` de plantilla):
   - **Entidades:** `fuente='inventario_<cat>_pdf'`, `tipo` adecuado, `INSERT OR IGNORE`. Dedup por (tipo, nombre) dentro del municipio.
   - **Puntuaciones:** `categoria='<cat>'` con `ranking_provincial` y `ranking_nacional` calculados, `ON CONFLICT(codigo_ine,categoria) DO UPDATE`.
   - Capitalizar descripciones que empiecen en minúscula: `UPDATE entidades SET descripcion=UPPER(substr(descripcion,1,1))||substr(descripcion,2) WHERE fuente='inventario_<cat>_pdf' AND descripcion GLOB '[a-z]*'`.

6. **Aplicar**, **recalcular ranking_global** (§6), **verificar en vivo**, **commit + push**.

### Reglas obligatorias (lecciones aprendidas)
- **SOLO datos verificados:** cargar solo con `fuente='inventario_<cat>_pdf'`. Nunca OSM/wikidata/articulo_web.
- **Backup antes de borrar:** dump a `backups/<cat>_antiguas_backup.sql`.
- **Carga aditiva:** si añades otra tanda, inserta solo municipios que NO tengan ya esa categoría (evita duplicar entidades).
- **0 huérfanos / 0 basura:** tras cargar, verifica que no haya puntuaciones sin entidad ni entidades basura (nombre 'Provincia de…', con fecha de blog, etc.).
- **Filtro de basura con acentos:** comparar términos SIN acentos contra texto normalizado SIN acentos (bug que tuvimos).

---

## 3. ESPECÍFICO PARA FESTIVALES

- **Categoría:** key interna `festivales`, tipo de entidad `festival`. Fuente nueva: `inventario_festivales_pdf`.
- Ya existen 18 entidades `tipo='festival'` de fuente `turismo`/`turismo.gob.es` (Festival de Cine de San Sebastián, Etnosur…) — son reales/oficiales, **no las borres**.
- **El parser de fiestas (`parse_fiestas.py`) probablemente sirve casi igual** si el PDF de festivales tiene el mismo formato `Municipio:` / etiquetas. Revisa la estructura primero.
- **La categoría `festivales` está OCULTA en el frontend** (la quitamos por no tener datos). Para reactivarla, en `src/lib/db.ts` añade `festivales` a: `ICONS`, `LABELS` ('Festivales', icono 'festival'), `TABS`, `SIDEBAR_GROUPS` (grupo Fiestas), `FICHA_CATS`, `DETAIL_CATS`; y en `src/pages/index.astro` la chip del hero. CAT_TIPOS de `festivales` en `src/pages/municipio/[codigo].astro` debe incluir `['festival']`.
- **OJO:** `CAT_TIPOS['fiestas'] = ['fiesta','festival']` — los festival entidades también aparecen en la ficha de Fiestas. Si quieres que festivales sea independiente, usa tipo exclusivo `festival` y deja fiestas con tipo `fiesta`.

---

## 4. Frontend: dónde se controlan las categorías

`src/lib/db.ts`:
- `ICONS` (icono Material), `LABELS` (etiqueta visible), `TABS` (barra de pestañas), `SIDEBAR_GROUPS` (menú lateral), `FICHA_CATS` (tarjetas de ranking en la ficha), `DETAIL_CATS` (barras "Puntuaciones detalladas").
`src/pages/index.astro`: chips del hero (array con `{key, emoji, label}`).
`src/pages/municipio/[codigo].astro`: `CAT_TIPOS` (categoría → tipos de entidad que se muestran en "¿Por qué destaca?").
`src/pages/ranking/[categoria].astro`: página de ranking. **OJO normalización:** `playas→Playas`, `campings→Campings`, `turismo_rural→TurismoRural`. **`fiestas`, `monumentos`, `notoriedad_instagram` NO se normalizan** (minúscula tal cual).

**Categorías visibles ahora:** ranking_global, monumentos, castillos, fiestas, gastronomia, senderismo, Playas, Campings, TurismoRural, vinos, pueblo_bonito, notoriedad_instagram ("Popularidad en redes"). El resto (~20) son placeholder y están ocultas.

---

## 5. Estado actual de los datos (jun-2026)

| Categoría | Estado |
|---|---|
| **monumentos** | 5.9k municipios, 12.649 entidades `inventario_monumentos_pdf`. Migrations 0228-0236. |
| **fiestas** | 7.167 municipios, 7.191 entidades `inventario_fiestas_pdf` (3 tandas PDF). Migrations 0242, 0247-0252. |
| **castillos** | 750 entidades `inventario_castillos_pdf`. |
| **playas** | 1.440 entidades `inventario_playas_pdf`. |
| **notoriedad_instagram** ("Popularidad en redes") | 7.5k municipios. Score = blend(posts IG, población, fama=ranking_global). Filtrado de colisiones (apellidos/palabras/lugares extranjeros). Migration 0253. Scripts: `score_popularidad_instagram.py`. |

**Próximo código 9xxxx libre:** consulta `SELECT MAX(CAST(codigo_ine AS INT)) FROM municipios WHERE codigo_ine GLOB '9[0-9][0-9][0-9][0-9]'` y suma 1 (iba por ~90733+; verifícalo).

**Duplicados:** la tabla `municipios` tenía pares del mismo pueblo con `es_duplicado=0` ambos (por nombre exacto distinto: "La Carolina"/"Carolina (La)", "A Coruña"/"La Coruña", acentos…). Se limpiaron (migrations 0240, 0255). Si creas fichas 9xxxx, cuidado de no duplicar una existente con grafía/artículo distinto → empareja con normalización agresiva (sin artículos ni acentos).

---

## 6. Ranking GLOBAL — recalcular tras cualquier cambio de puntuaciones

Fórmula en `scripts/recalcular-rankings.py` (y copia en `scripts/pipeline/recalc_global.py`):
- Media **ponderada** de categorías con dato (monumentos 1.3, pueblo_bonito 1.2, gastronomia 1.1, castillos/conjuntos 1.0, museos/Playas/senderismo/fiestas 0.8-0.9, TurismoRural 0.7, vinos 0.6, festivales 0.5).
- **Amortiguada** (shrinkage K=2, base 28): un sitio necesita destacar en VARIAS categorías para liderar (evita que un pueblo de una sola categoría suba).
- Fama (notoriedad) solo como **desempate mínimo (máx 3 pts)**.

**Recalcular siempre que cambies puntuaciones** (incluido al añadir festivales si lo metes en la fórmula con peso 0.5):
```bash
# descargar scores, recalcular, aplicar (ver recalc_global.py)
```

**Recalcular el ranking de la PROPIA categoría** (ranking_provincial/nacional) tras cargarla — si no, sale "#—". Patrón: ordenar por puntuación desc (nacional global, provincial por provincia normalizada, Baleares↔Islas Baleares).

---

## 7. Scripts guardados en `scripts/pipeline/`

| Script | Para qué |
|---|---|
| `parse_fiestas.py` | Parser PDF fiestas/festivales (etiquetas Municipio:/Fiestas Mayores:/Tipología:/Mes:/Puntuación:). Reutilizable. |
| `match_fiestas.py` | Empareja nombres a codigo_ine vía INE + BD, canónica, fuzzy, bilingüe. |
| `gen_fiestas.py` | Plantilla generador de migration (entidades + puntuaciones + ranking + fichas 9xxxx). |
| `recalc_global.py` | Recalcula ranking_global con la fórmula ponderada+amortiguada. |
| `score_popularidad_instagram.py` | Scoring de Popularidad en redes (blend posts+población+fama, filtro colisiones). |
| `ine_munis.json` | Lista INE oficial (8.124 municipios) para emparejar. |

Los scripts usan rutas `/tmp/...` y leen `/tmp/db_municipios.json` (export de `SELECT codigo_ine,nombre,provincia,COALESCE(es_duplicado,0) es_dup,COALESCE(poblacion,0) pob FROM municipios`) y `/tmp/ine_munis.json`. Cópialos a /tmp y ajusta.

---

## 8. Memoria persistente
El usuario tiene auto-memoria en `~/.claude/projects/.../memory/MEMORY.md` (persiste entre sesiones, mismo usuario): índice de proyectos (monumentos, fiestas, popularidad redes, auditoría, etc.). Léela al empezar.

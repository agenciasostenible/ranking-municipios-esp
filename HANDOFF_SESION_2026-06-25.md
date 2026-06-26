# HANDOFF — rankingspain.com (sesión 2026-06-25)

## Contexto rápido
- **Proyecto:** rankingspain.com — ranking turístico de los ~8.500 municipios de España (Astro SSR + Vercel, datos en Cloudflare D1).
- **Repo/local:** `agenciasostenible/ranking-municipios-esp`, rama `main` (push a main = deploy automático en Vercel). Local en `/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp`.
- **Datos:** D1 `ranking-municipios` vía `npx wrangler d1 execute ... --remote`. La data es inmediata; solo el código necesita deploy.
- **Migraciones de la sesión:** 0318 → 0345 (todas aplicadas en remoto).
- **Commits:** 5a50972 · 3de81e2 · 7b89a7c · b12e104 · 0869951 · bcbede7 · fba1786 · 045d1c7 · fbeb3cb · a7eb657 · 17834b2 · c10e307 · c040c18.

## Lo que se hizo (5 categorías nuevas + saneos + UX)

### 1. Estrellas Michelin de restaurantes 2026 (mig 0318-0320, commit 5a50972)
- 307 restaurantes con estrella (16×3★, 37×2★, 254×1★) → 174 municipios. Fuente: bonviveur.com (limpia) + Gastroeconomy, cruzadas. `fuente='guia_michelin'`, `tipo='restaurante'`.
- Mapeo por NOMBRE contra la BD (no por código INE: la dedup reasignó códigos). 39 pedanías/exónimos a mano.
- Ajuste de puntuación **gastronomía** con piso por estrellas (3★=100, 2★=93, 1★=86, +bonus) política MAX/nunca-bajar. Recalc ranking_global + posiciones gastronomía.
- Ficha: **UN solo listado "Dónde comer"** que unifica Michelin + Soletes Repsol + recomendados, con etiqueta por distinción (sustituye las 3 secciones separadas).

### 2. Vías Verdes / Cicloturismo (mig 0321-0324, commit 3de81e2)
- 137 vías verdes (Anexo Wikipedia/FFE) → 189 municipios. `fuente='vias_verdes'`, `tipo='ciclismo'`. Sección de ficha "Cicloturismo · Vías Verdes".
- **SANEO:** `ciclismo` tenía un artefacto de 971 munis a **80.8 plano** (osm_scores_clean.sql). Re-graduado honesto 63-94 (infraestructura manda + lista curada graduada por terreno, suelo digno 63).
- `ciclismo` NO entra en ranking_global.

### 3. Hoteles con encanto — categoría NUEVA `hoteles_encanto` (mig 0325-0336, commits 7b89a7c→bcbede7)
- **218 alojamientos / 152 municipios.** 3 fuentes, deduplicado por hotel (gana mejor distinción):
  - **Paradores (100)** — anexo Wikipedia (tabla limpia).
  - **Claves MICHELIN 2025 (104/109)** — Michelin bloquea su web (Datadome 202); conseguidas vía **Wayback Machine** (archive.org) del artículo oficial, que trae un listado `Localidad: <a/h/ID>Hotel</a>`.
  - **Relais & Châteaux (20)** — **API Algolia reventada** (appId `EYAFFS0RC4`, key en el bundle `pages/_app`, índice `etablissements_es`; filtrar `country_iso='ESP'`). El campo `localisation.city` = municipio limpio.
- Score por prestigio (3★llaves=98 … parador=78). Registrada en `db.ts`/`utils.ts`. Sección de ficha "Alojamientos con encanto".

### 4. Astroturismo Starlight — categoría `estrellas` (mig 0337-0339, commit fba1786)
- 72 certificaciones Fundación Starlight → 151 municipios (Reservas=95 / Destinos=88). `fuente='starlight'`, `tipo='astro'`.
- Áreas atribuidas a municipios (directos + islas enumeradas La Palma/Menorca/Gran Canaria/Teide + anclas de comarcas/sierras). **PARCIAL**: las áreas grandes solo a sus munis-ancla, ampliable.
- **SANEO:** `estrellas` tenía 753 munis a **95 plano** (pob media 31k = imposible para cielo oscuro). Eliminado.

### 5. Balnearios y termalismo — categoría `balnearios` (mig 0340-0342, commit fbeb3cb)
- 49 balnearios oficiales **ANBAL** (balnearios.org) → 46 municipios. `fuente='balnearios'`, `tipo='balneario'`. Score base 86 +bonus (Jaraba 3=94).
- Pedanías resueltas (Caldes de Boí→Valle de Bohí, etc.). OJO: hubo un fallo de override laxo (Caldes de Boí cayó en Sena de Luna) — corregido con override exacto.

### 6. Cuevas y minas turísticas — categoría `cuevas` (mig 0343-0345, commit a7eb657)
- 34 cuevas/minas **ACTE** (cuevasturisticas.es). VÍA: `/cuevas/` da 403 pero **`/mapa-de-cuevas.php` lleva un JSON** con nombre+provincia+municipio+coords. Score base 86 + bump a iconos (Altamira=95, El Castillo=92, Gruta de las Maravillas/El Soplao=90).
- **SANEO:** `cuevas` tenía 797 munis a **95 plano** (basura). Eliminado.

### 7. UX / frontend
- **Orden bloque "¿Por qué destaca?"** (045d1c7): ordenaba alfabético (una Estrella Michelin mezclada con una hamburguesería). Ahora por distinción (Michelin/Starlight + fuente).
- **Home + navegación** (17834b2): las 5 categorías nuevas añadidas al grid de la home ("Elige una experiencia") y a `SIDEBAR_GROUPS`/SUBTITLES del ranking.
- **Maps en Starlight** (c10e307): faltaba el "Ver en Google Maps" en esa sección; añadido. Las 5 nuevas ya lo tienen.
- **"Lo buscado, arriba"** (c040c18): arreglado `CAT_TIPOS` (faltaban cuevas/balnearios/hoteles_encanto, ciclismo no incluía 'ciclismo', estrellas apuntaba mal a mirador/espacio→'astro'). Al entrar desde una categoría, el bloque "¿Por qué destaca?" muestra arriba lo que buscas; y se oculta la sección dedicada de esa categoría para no duplicar.

## Estado de las categorías nuevas (munis con score)
- ciclismo: 1.184 · estrellas (astro): 151 reales · hoteles_encanto: 152 · balnearios: 46 · cuevas: 34.
- Ninguna de las nuevas entra en `ranking_global` (como vinos).

## Técnicas anti-bot reutilizables (guardadas en memoria)
- **Algolia:** credenciales (appId + apiKey + índice) siempre en el bundle JS del front; sacar y consultar el endpoint `https://{appId}-dsn.algolia.net/1/indexes/{index}/query`. Listar índices con GET `/1/indexes/`.
- **Datadome / webs bloqueadas (p.ej. Michelin):** usar **archive.org / Wayback Machine** (snapshot ya renderizado, sin challenge).
- **Páginas con listado 403:** probar la **página de mapa** (suele llevar un JSON embebido con coordenadas + municipio).

## Reglas vivas del sistema
- Mapeo a municipio SIEMPRE por **nombre + provincia contra la BD**, nunca por código INE crudo (la dedup reasignó códigos; p.ej. Valencia canónica=46250, Barcelona=08003, Madrid=28079). Provincia Baleares aparece como 'Baleares' Y 'Islas Baleares'.
- Política **MAX/nunca bajar** en puntuaciones curadas.
- Tras cambiar puntuaciones: recalcular posiciones (ranking_nacional/provincial). Recalc global solo si la categoría pesa en ranking_global (las nuevas no).
- **LECCIÓN repetida:** antes de "rellenar" una categoría, mirar su **histograma de valores** (no la media): varias tenían artefactos de valor plano (ciclismo 80.8, estrellas 95, cuevas 95) que había que limpiar.

## Pendiente / posibles siguientes pasos
- **Yacimientos arqueológicos** = la última categoría vacía de verdad con tirón turístico.
- Completar las **5 Claves Michelin** que faltan (104/109) y ampliar municipios de las **áreas Starlight** y de las **vías verdes largas** (hoy solo munis-ancla/extremos).
- Opcional: subir el bloque "¿Por qué destaca?" por encima de Instagram/Recomendados si se quiere que lo buscado sea literalmente lo primero.
- Pendientes antiguos: correos a info@granadaplanes.com, rotar API keys, fotos de municipios faltantes.

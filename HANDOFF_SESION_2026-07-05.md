# Handoff — Sesión 2026-07-03 a 07-05

Sesión enorme de curación de datos + funcionalidades. Todo **desplegado en producción** salvo lo marcado como PENDIENTE. Migraciones 0372–0419.

## 1. Curación de TODAS las categorías (con OSM/Wikipedia)
Patrón repetido: descargar de OSM/Wikipedia → asignar al municipio más cercano → dedup contra lo curado → entidades con `fuente` propia + descripción (extracto Wikipedia o plantilla) → puntuación por densidad con `MAX` (nunca baja lo curado) → añadir la `fuente` a `CAT_FUENTES` en `src/pages/entidades/[cat].astro` y `src/pages/ranking/[categoria].astro` + `ENT_PLURAL`.

| Categoría | fuente nueva | Migración | Resultado |
|---|---|---|---|
| Agua dulce (→pozas) | agua_osm | 0382-0383 | 1.845 cascadas/pozas/termas/playas fluviales; 62→1.020 munis |
| Senderismo | senderos_osm | 0384-0385,0390 | 3.991 GR/PR + limpieza relleno; recalc |
| Monumentos | monumentos_osm | 0386-0388 | -1.647 "Núcleos de población" basura; +2.348 BIC/Wikipedia |
| Balnearios+termas | agua_osm(termas) | 0389 | termas incluidas en la categoría |
| Gastronomía (unif. soletes) | restaurantes_osm | 0393 | soletes fusionado; +777 munis con bares OSM |
| Turismo rural | rural_osm | 0394 | 3.619 alojamientos con nombre |
| Solteros | ocio_osm | 0395-0396 | 927 discotecas + 3.064 pubs + 64 beach clubs; 72→688 munis |
| Museos (3ª pasada) | wikidata_museos | 0398 | +341 museos locales |
| Misterio | misterio_osm | 0399 | 1.407 megalitos+leyendas; 202→~700 munis |
| Religioso | religioso_osm | 0400-0401 | 1.070 santuarios/monasterios (984 Wikipedia) |
| Festivales | festivales_wiki | 0402 | +391 de Wikipedia |
| Fiestas | fiestas_wiki | 0403 | +1.744 con sellos Interés Turístico ITI/ITN/regional |
| Oleoturismo | oleo_osm, oleotour_jaen | 0404-0405 | 366 almazaras + 48 empresas Oleotour Jaén (curadas a mano, descripciones propias) |
| Mascotas | mascotas_osm | 0406 | 1.345 dog-friendly (hoteles, playas caninas) |
| LGTBI | lgtbi_osm/wiki/curado | 0397,0407 | locales+playas naturistas + orgullos/barrios icónicos; pisos Madrid 97/Sitges 96 |
| Lujo | lujo_osm | 0408 | hoteles 5*, casinos, boutiques, golf, marinas |
| Activo | activo_osm | 0409 | ferratas, escalada, parapente, buceo, rafting, ESQUÍ |
| Miradores | miradores_osm | 0410 | +4.300 con coords |
| Vinos/Playas/Astro/Camping/Hoteles encanto | *_osm | 0411,0413 | bodegas, playas, observatorios, campings, hoteles con encanto |

**ranking_global recalculado**: mig 0412. Top: Barcelona 86, Córdoba 84,3, Sevilla, Madrid, Granada, Toledo. Fórmula en scratchpad (pesos con soletes 1.0/museos 1.1/hoteles_encanto 0.5, K=2 base 28 fama≤3). Recalcular tras cualquier cambio de scores de las categorías con peso.

**Gotchas OSM**: `out tags` NO da coords de nodos → usar `out qt`/`out center qt`. Overpass necesita User-Agent con contacto (sin él, 406). Alternar espejos (overpass-api.de / kumi.systems / private.coffee) y esperar 20-60s entre queries gordas. Regex complejas o 2 amenities juntas suelen fallar → separar.

## 2. Calidad de datos (importante — a raíz de errores en Maracena)
- **Reasignación de sitios mal ubicados (0415)**: se descargó el GeoJSON de límites municipales del INE (opendatasoft `georef-spain-municipio`, 8.223 polígonos) y se hizo **point-in-polygon** con shapely. **6.331 sitios OSM estaban en el municipio vecino equivocado** (asignados por centroide) → recolocados en el correcto. Comparación por **código INE** (nuestro codigo_ine coincide con INE para 8.130 munis; los 90xxx son internos). Salvaguardas: distancia <20km (descarta coords basura tipo Ceuta→Ávila) + filtro anti-bilingüe (Rianxo/Rianjo = mismo pueblo). Script en scratchpad `reasignar2.py`.
- **Geocodificación del inventario (0416-0417)**: los sitios del inventario PDF no tenían coords (98% sin). Cruzados por nombre+cercanía con 54.724 puntos de patrimonio OSM → **~5.400 patrimoniales ganaron coords reales** (de ~415 a 5.406). Enlaces a Google Maps ahora precisos.
- **Enlace Google Maps** (`gmapsUrlAt` en lib/entidades.ts): `maps/search/NOMBRE/@lat,lng,16z` → abre la ficha real del negocio, no un pin.
- **Casos concretos**: Ingenio de San Juan (era de Granada, no Maracena → movido); Torre de Maracena + 2 torres de Marín (inventadas por IA → borradas); 340 miradores de relleno ("sencilla panorámica de llanuras de secano") borrados (0414).
- **CONCLUSIÓN clave**: no hay filtro automático fiable para separar inventado de real-sin-mapear (el Alcázar de Córdoba estaba en la lista de "sin OSM"). La solución = conocimiento local vía sistema de reportes (abajo).

## 3. Funcionalidades nuevas
- **/campeon** (feature viral): palmarés compartible por municipio. Ver memoria feature_campeon_municipio.
- **Home con carruseles horizontales** (estilo Airbnb): Top España fijo + categorías/zonas que **rotan cada día** (determinista por fecha: `Math.floor(Date.now()/86400000)`). Incluye Top por comunidad y por provincia. Flecha "desliza →" animada + fundido en el borde. Bloque colocado justo tras el hero (máximo protagonismo). En `index.astro`, POOL_CATS + carruseles[].
- **Sistema de reportes de errores** (0418): enlace discreto en cada ficha (`.rep-open`) + página `/revisar/[codigo]` para ayuntamientos (lista todos sus sitios con checkbox) → `/api/reportar` → panel `/admin/reportes?key=Albayda4418`. Aviso por email (Resend). Nada se borra solo.
- **Editor total de fichas en admin** (0419): `/admin/municipio?key=…&codigo=…` (o buscador). Sobre cada entidad: editar nombre/tipo/descripción/enlace/coords, **subir foto propia** (se comprime en navegador, se guarda en `entidades.foto_data BLOB`, se sirve por `/api/entidad-foto?id=X`), eliminar, y **añadir sitios nuevos** (fuente='admin'). API `/api/entidad-admin`. Enlazado desde reportes ("✏️ Editar ficha completa") y panel principal.
- **Fix formulario /anunciate**: la foto se comprime en bucle en el navegador hasta <820KB (antes fallaba con fotos grandes de móvil, no se guardaba ni enviaba email). RESEND_API_KEY y ADMIN_EMAIL sí están en Vercel.

## PENDIENTE (siguiente paso)
- **Mostrar las fotos subidas en la FICHA PÚBLICA**: ahora las fotos que subes en el editor se guardan y se ven en el editor, pero las secciones de la ficha pública (`municipio/[codigo].astro`, tarjetas `.entidad-card`) muestran solo texto, no foto por entidad. Falta: (1) que las queries de secciones traigan `(foto_data IS NOT NULL) AS tiene_foto` y `foto_url`, (2) renderizar `<img src="/api/entidad-foto?id=X">` (o foto_url) en las tarjetas cuando exista foto. Estaba a medias cuando se cortó la sesión — la query general (`entidades`, línea ~48) y las secciones específicas (monumentos, comer, museos, etc.) necesitan el campo + el `<img>`.

## Datos de acceso
- Admin: `/admin?key=Albayda4418`
- D1: `npx wrangler d1 execute ranking-municipios --remote ...`
- Deploy: push a `main` → Vercel auto. Token API Vercel caducado (no se puede consultar estado por API; verificar por curl a producción).

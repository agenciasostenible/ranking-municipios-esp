-- Gastronomía Granada — corrección y ampliación tras revisión Sabor Granada + Michelin/Repsol
-- Fuentes: guiagastronomica.saborgranada.es, guiarepsol.com, guide.michelin.com
--
-- CORRECCIONES:
--   1. Rename Gualchos → Calahonda (nombre reconocible del núcleo costero)
--   2. Monachil: Bib Gourmand Michelin 2026 (La Cantina de Diego, desde 2017) → 65
--   3. Dúrcal: Sol Repsol El Molino del Puente + XChef 2024 → 55
--   4. Huétor Vega: Solete Repsol Los Pinos → 38
--   5. Alhama de Granada: Sabor Granada + balneario + El Ventorro → 28
--   6. La Zubia: Sabor Granada restaurantes documentados → 30
--   7. Cenes de la Vega: Sabor Granada Ruta del Veleta → 28
--   8. Güéjar Sierra: Sabor Granada + cerezas autóctonas documentadas → 28
--   9. Pinos Genil: Sabor Granada La Compuerta + arroz caldoso del Genil → 28
--  10. Cádiar: Sabor Granada Alquería de Morayma + vinos VCPRD Contraviesa → 28
--  11. Pampaneira: Sabor Granada + cocina alpujarreña documentada → 26
--  12. Órgiva: Sabor Granada capital gastronómica de la Alpujarra → 26
--  13. Nigüelas: Sabor Granada Alquería de Los Lentos + almazara → 26
--  14. Villamena: Sabor Granada Hacienda Señorío de Nevada (bodega) → 26
--  15. Atarfe: Sabor Granada La Ermita de los Tres Juanes → 26
--  16. Armilla: Sabor Granada La Cueva de 1900 → 26
--  17. Purullena: Sabor Granada restaurante en cueva real única → 26
--  18. Huétor Santillán: Sabor Granada Taberna Prado Negro → 26
--  19. Las Gabias: Sabor Granada El Portichuelo → 26
--  20. Pinos Puente: Sabor Granada La Casa Grande de Zujaira → 26

-- ── 1. RENAME GUALCHOS → CALAHONDA ──────────────────────────────────────────
UPDATE municipios SET nombre='Calahonda', nombre_search='calahonda'
  WHERE codigo_ine='18093';

-- ── 2. MONACHIL — 65 ─────────────────────────────────────────────────────────
-- Bib Gourmand Michelin 2026 (La Cantina de Diego, reconocimiento ininterrumpido desde 2017)
-- + recomendado Guía Repsol + ruta de tapas "Saborea Monachil" + carne Pajuna de Sierra Nevada
UPDATE puntuaciones SET puntuacion=65
  WHERE codigo_ine='18134' AND categoria='gastronomia';
DELETE FROM entidades WHERE codigo_ine='18134' AND tipo='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18134','gastronomia','La Cantina de Diego — Bib Gourmand Michelin 2026',
  'Chef Diego Higueras. Bib Gourmand Michelin desde 2017, renovado en 2026. Cocina de kilómetro cero con productos de Sierra Nevada: ternera Pajuna autóctona, verduras de huerta propia y aceite de su finca ecológica. Especialidades: revuelto de morcilla de Monachil y la Marcelina (dulce típico local). Reconocida también por la Guía Repsol',
  'Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18134','gastronomia','Saborea Monachil — ruta de tapas de referencia',
  'Ruta de tapas anual de gran prestigio en la provincia: los mejores restaurantes de Monachil compiten con tapas de alta cocina, con votación popular para elegir la mejor tapa del año. Monachil tiene más de 30 restaurantes en un municipio de sierra junto a Sierra Nevada',
  'excel_curado',date('now'));

-- ── 3. DÚRCAL — 55 ───────────────────────────────────────────────────────────
-- Sol Repsol El Molino del Puente (guiarepsol.com/fichas/solete)
-- Chef Miguel Molina ganador XChef 2024: "chef más talentoso y prometedor de España"
UPDATE puntuaciones SET puntuacion=55
  WHERE codigo_ine='18071' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18071','gastronomia','El Molino del Puente — Sol Repsol + XChef 2024',
  'Restaurante en un antiguo molino en las afueras de Dúrcal. Chef Miguel Molina, ganador del XChef 2024 — premio al chef más talentoso y prometedor de España, por su plato de tendones de ternera con ajopollo de pistacho y gambas de Motril. Sol Repsol. Menú degustación a 44€ con producto local ecológico y de temporada',
  'Repsol',date('now'));

-- ── 4. HUÉTOR VEGA — 38 ──────────────────────────────────────────────────────
-- Solete Repsol: Los Pinos Casa de Comidas (guiarepsol.com/fichas/solete/los-pinos-333408)
UPDATE puntuaciones SET puntuacion=38
  WHERE codigo_ine='18101' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18101','gastronomia','Los Pinos Casa de Comidas — Solete Repsol',
  'Cocina de pueblo con alma, a pocos minutos de Granada capital. Solete Guía Repsol. Especialidades en arroces, verduras de temporada del Valle de Monachil y carnes a la brasa en kamado. Terraza con vistas. Producto local de proximidad',
  'Repsol',date('now'));

-- ── 5. LA ZUBIA — 30 ─────────────────────────────────────────────────────────
-- Sabor Granada: Lola Gastroespacio + Asador La Casona de Santiago
UPDATE puntuaciones SET puntuacion=30
  WHERE codigo_ine='18193' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18193','gastronomia','Lola Gastroespacio — restaurante destacado',
  'Restaurante de referencia en La Zubia, incluido en la Guía Gastronómica Sabor Granada. Municipio de la corona metropolitana de Granada con oferta gastronómica consolidada y próximo a Sierra Nevada',
  'excel_curado',date('now'));

-- ── 6. ALHAMA DE GRANADA — 28 ────────────────────────────────────────────────
-- Sabor Granada: El Ventorro (Molino de Santa Ana) + Balneario histórico
-- Roscos de Alhama — repostería típica local documentada
UPDATE puntuaciones SET puntuacion=28
  WHERE codigo_ine='19001' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19001','gastronomia','El Ventorro (Molino de Santa Ana) — Sabor Granada',
  'Restaurante incluido en la Guía Gastronómica Sabor Granada. Alhama de Granada destaca por su balneario histórico de aguas termales, su Tajo espectacular y la repostería local (roscos de Alhama). Cocina tradicional de la comarca de Alhama con productos del entorno',
  'excel_curado',date('now'));

-- ── 7. CENES DE LA VEGA — 28 ────────────────────────────────────────────────
-- Sabor Granada: Ruta del Veleta (referente gastronómico en la ruta Sierra Nevada)
UPDATE puntuaciones SET puntuacion=28
  WHERE codigo_ine='18047' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18047','gastronomia','Ruta del Veleta — restaurante de referencia Sierra Nevada',
  'Restaurante incluido en la Guía Gastronómica Sabor Granada. Cenes de la Vega es la puerta de entrada a Sierra Nevada desde Granada, con restaurantes de referencia en la carretera al Veleta. Cocina tradicional granadina con producto de sierra',
  'excel_curado',date('now'));

-- ── 8. GÜÉJAR SIERRA — 28 ───────────────────────────────────────────────────
-- Sabor Granada: La Hacilla + cerezas de Sierra Güejar documentadas (color rojo intenso, sabor dulce único)
UPDATE puntuaciones SET puntuacion=28
  WHERE codigo_ine='18094' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18094','gastronomia','Cerezas de Sierra Güéjar — producto local documentado',
  'Las cerezas de Güéjar Sierra son reconocidas por la Guía Gastronómica Sabor Granada por su color rojo intenso y sabor dulce único, cultivadas en las laderas de Sierra Nevada. El municipio también destaca por sus truchas del río Genil y la cocina de caza (jabalí, ciervo) en sus restaurantes de sierra',
  'excel_curado',date('now'));

-- ── 9. PINOS GENIL — 28 ─────────────────────────────────────────────────────
-- Sabor Granada: La Compuerta + arroz caldoso del Genil documentado
UPDATE puntuaciones SET puntuacion=28
  WHERE codigo_ine='18157' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18157','gastronomia','Arroz caldoso del Genil — especialidad documentada',
  'Pinos Genil es reconocido por la Guía Gastronómica Sabor Granada por su arroz caldoso como plato estrella, elaborado con agua del Genil. El río Genil fluye por el casco histórico y sus restaurantes a orillas del río ofrecen esta especialidad local. Restaurante La Compuerta como referente',
  'excel_curado',date('now'));

-- ── 10. CÁDIAR — 28 ─────────────────────────────────────────────────────────
-- Sabor Granada: Alquería de Morayma + vinos VCPRD Contraviesa-Alpujarra
UPDATE puntuaciones SET puntuacion=28
  WHERE codigo_ine='18035' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18035','gastronomia','Alquería de Morayma — bodega y restaurante Sabor Granada',
  'Bodega-restaurante de referencia en la Alpujarra incluida en la Guía Gastronómica Sabor Granada. Cádiar es uno de los municipios principales de la zona de producción de vinos VCPRD Contraviesa-Alpujarra — vinos de montaña a más de 1.000m de altitud, producidos con variedades autóctonas como Vigiriega y Montúa',
  'excel_curado',date('now'));

-- ── 11. PAMPANEIRA — 26 ─────────────────────────────────────────────────────
-- Sabor Granada + cocina alpujarreña documentada + Conjunto Histórico Barranco del Poqueira
UPDATE puntuaciones SET puntuacion=26
  WHERE codigo_ine='18151' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18151','gastronomia','Cocina alpujarreña de Pampaneira — Sabor Granada',
  'Pampaneira forma parte del Conjunto Histórico del Barranco del Poqueira (Patrimonio de la Humanidad candidato). La Guía Sabor Granada documenta su cocina alpujarreña tradicional: migas alpujarreñas, gachas, plato alpujarreño y repostería árabe. Casa Julio es referente de la cocina casera del Poqueira',
  'excel_curado',date('now'));

-- ── 12. ÓRGIVA — 26 ─────────────────────────────────────────────────────────
-- Sabor Granada: Hotel Restaurante Puerta Nazarí + capital gastronómica de la Alpujarra
UPDATE puntuaciones SET puntuacion=26
  WHERE codigo_ine='18147' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18147','gastronomia','Órgiva — capital gastronómica de la Alpujarra',
  'Órgiva es la capital administrativa de la Alpujarra granadina e incluida en la Guía Gastronómica Sabor Granada. Hub gastronómico de la comarca con mercado semanal de productos locales (cada jueves), productores ecológicos y restaurantes de cocina alpujarreña. Hotel Restaurante Puerta Nazarí como referente',
  'excel_curado',date('now'));

-- ── 13. NIGÜELAS — 26 ───────────────────────────────────────────────────────
-- Sabor Granada: Alquería de Los Lentos + Centro de Interpretación Almazara
UPDATE puntuaciones SET puntuacion=26
  WHERE codigo_ine='18143' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18143','gastronomia','Alquería de Los Lentos + Almazara de Nigüelas — Sabor Granada',
  'Nigüelas cuenta con la Alquería de Los Lentos (restaurante-spa incluido en Sabor Granada) y el Centro de Interpretación de la Almazara, donde se puede conocer el proceso de elaboración del aceite de oliva virgen extra del Valle de Lecrín con visitas guiadas',
  'excel_curado',date('now'));

-- ── 14. VILLAMENA — 26 ──────────────────────────────────────────────────────
-- Sabor Granada: Hacienda Señorío de Nevada (bodega y restaurante)
UPDATE puntuaciones SET puntuacion=26
  WHERE codigo_ine='18908' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18908','gastronomia','Hacienda Señorío de Nevada — bodega y restaurante',
  'Bodega y restaurante incluido en la Guía Gastronómica Sabor Granada. Villamena alberga esta hacienda vitivinícola que combina producción de vino con gastronomía en el entorno del Valle de Lecrín y Sierra Nevada',
  'excel_curado',date('now'));

-- ── 15. ATARFE — 26 ─────────────────────────────────────────────────────────
-- Sabor Granada: La Ermita de los Tres Juanes + Moma
UPDATE puntuaciones SET puntuacion=26
  WHERE codigo_ine='18022' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18022','gastronomia','La Ermita de los Tres Juanes — Sabor Granada',
  'Restaurante incluido en la Guía Gastronómica Sabor Granada. Atarfe, a orillas del río Cubillas junto a Granada capital, cuenta con restaurantes de referencia comarcal documentados',
  'excel_curado',date('now'));

-- ── 16. ARMILLA — 26 ────────────────────────────────────────────────────────
-- Sabor Granada: La Cueva de 1900
UPDATE puntuaciones SET puntuacion=26
  WHERE codigo_ine='18021' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18021','gastronomia','La Cueva de 1900 — Sabor Granada',
  'Restaurante incluido en la Guía Gastronómica Sabor Granada. Armilla es uno de los municipios del área metropolitana de Granada con restauración consolidada y documentada',
  'excel_curado',date('now'));

-- ── 17. PURULLENA — 26 ──────────────────────────────────────────────────────
-- Sabor Granada: Restaurante La Cueva — experiencia en cueva real única
UPDATE puntuaciones SET puntuacion=26
  WHERE codigo_ine='18167' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18167','gastronomia','Restaurante La Cueva — experiencia gastronómica troglodita',
  'Purullena está en el corazón del Geoparque de Granada y su Restaurante La Cueva ofrece una experiencia gastronómica única: cocina mediterránea tradicional servida en el interior de una auténtica casa-cueva. Incluido en la Guía Gastronómica Sabor Granada',
  'excel_curado',date('now'));

-- ── 18. HUÉTOR SANTILLÁN — 26 ───────────────────────────────────────────────
-- Sabor Granada: Taberna Prado Negro (Montes Orientales)
UPDATE puntuaciones SET puntuacion=26
  WHERE codigo_ine='18099' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18099','gastronomia','Taberna Prado Negro — Sabor Granada',
  'Restaurante incluido en la Guía Gastronómica Sabor Granada (comarca Montes Orientales). Huétor Santillán está en el corazón de la Sierra de Huétor, espacio natural de referencia para el senderismo y la gastronomía de monte',
  'excel_curado',date('now'));

-- ── 19. LAS GABIAS — 26 ─────────────────────────────────────────────────────
-- Sabor Granada: El Portichuelo
UPDATE puntuaciones SET puntuacion=26
  WHERE codigo_ine='18905' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18905','gastronomia','El Portichuelo — Sabor Granada',
  'Restaurante incluido en la Guía Gastronómica Sabor Granada. Las Gabias es un municipio del cinturón metropolitano de Granada con restauración documentada y consolidada',
  'excel_curado',date('now'));

-- ── 20. PINOS PUENTE — 26 ───────────────────────────────────────────────────
-- Sabor Granada: La Casa Grande de Zujaira
UPDATE puntuaciones SET puntuacion=26
  WHERE codigo_ine='18158' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18158','gastronomia','La Casa Grande de Zujaira — Sabor Granada',
  'Restaurante incluido en la Guía Gastronómica Sabor Granada. Pinos Puente está en la Vega de Granada, tierra de huerta y productos frescos de temporada que abastecen a la capital',
  'excel_curado',date('now'));

-- ── SYNC DUPLICADOS ──────────────────────────────────────────────────────────
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18134' AND p2.categoria='gastronomia') WHERE codigo_ine='19016' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18035' AND p2.categoria='gastronomia') WHERE codigo_ine='19008' AND categoria='gastronomia';

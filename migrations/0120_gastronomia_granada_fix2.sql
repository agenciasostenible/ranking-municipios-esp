-- Gastronomía Granada — segunda ampliación con blogs, webs turismo comarcal y fuentes especializadas
-- Fuentes: saborgranada.es, turismovalledelecrin.com, turismosalobrena.com, aldearural.com,
--          turismougijar.es, balcondevalor.com, saboresdelgeoparque.com, Wikipedia

-- ── HUÉNEJA — 28 ──────────────────────────────────────────────────────────────
-- Zalamandroña: plato más icónico de Huéneja, de origen árabe s.IX
-- Documentado en Wikipedia, Guía Repsol (plato típico), saboresdelgeoparque.com
-- "aperitivo obligatorio en todas las reuniones familiares de los vecinos"
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='18097' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18097','gastronomia','Zalamandroña de Huéneja — plato propio de origen árabe s.IX',
  'La zalamandroña es el plato más icónico y propio de Huéneja (comarca de Guadix): ensalada fría de verduras secadas al sol (pimiento, calabacín, tomate), bacalao desalado, aceitunas negras y piñones. De origen árabe del siglo IX, documentada en Wikipedia, Guía Repsol y Sabores del Geoparque. Es el aperitivo obligatorio en todas las reuniones familiares del municipio',
  'excel_curado',date('now'));

-- ── UGÍJAR — 28 ───────────────────────────────────────────────────────────────
-- Capital de la Alpujarra Baja, arroz liberal (propio de Ugíjar) + bizcochada
-- Documentados en web municipal y múltiples fuentes alpujarreñas
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='18182' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18182','gastronomia','Arroz Liberal de Ugíjar — especialidad propia de la Alpujarra Baja',
  'El arroz liberal es el plato más representativo de Ugíjar, capital de la Alpujarra Baja: arroz de caza muy especiado (perdiz, conejo, codorniz) donde cada comensal aporta los ingredientes a su gusto — de ahí "liberal". Documentado en la web municipal de turismo de Ugíjar y en múltiples fuentes de gastronomía alpujarreña',
  'excel_curado',date('now'));

-- ── VÁLOR — 28 ────────────────────────────────────────────────────────────────
-- Perdiz en escabeche: plato propio icónico de Válor muy documentado
-- "El plato por excelencia de la localidad" según fuentes especializadas
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='18183' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18183','gastronomia','Perdiz en Escabeche de Válor — plato por excelencia del municipio',
  'La perdiz en escabeche es el plato más representativo de Válor en la Alpujarra, documentada en balcondevalor.com y múltiples fuentes como plato de identidad local. El escabeche alpujarreño de perdiz de Válor es reconocido en toda la comarca como la preparación más característica de este pueblo',
  'excel_curado',date('now'));

-- ── LECRÍN — 26 ───────────────────────────────────────────────────────────────
-- Capital del Valle de Lecrín, cítricos desde s.XI + remojón de naranja
-- Festival de la Naranja en marzo documentado por turismovalledelecrin.com
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18119' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18119','producto','Cítricos del Valle de Lecrín — naranjas tardías desde el s.XI',
  'Lecrín es la capital del Valle de Lecrín, famoso por sus naranjas tardías (de febrero a junio) introducidas por los árabes en el s.XI. El remojón del Valle (ensalada de naranja con bacalao y aceite) es el plato más representativo de la comarca. Festival de la Naranja en marzo. Documentado en turismovalledelecrin.com y Sabor Granada',
  'excel_curado',date('now'));

-- ── PADUL — 26 ────────────────────────────────────────────────────────────────
-- Choto al ajillo + chuletillas adobadas: platos propios documentados en andaluciarustica.com
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18150' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18150','gastronomia','Choto al Ajillo y Chuletillas Adobadas — cocina propia de Padul',
  'Padul tiene platos propios documentados en andaluciarustica.com: choto al ajillo (cabrito joven guisado con ajo), chuletillas adobadas y tortillas de cebolla y collejas. Municipio del Valle de Lecrín con tradición ganadera caprina y huerta',
  'excel_curado',date('now'));

-- ── SALOBREÑA — sube de 30 a 34 ───────────────────────────────────────────────
-- Espichás (boquerones secos al sol con huevos fritos): plato propio icónico documentado
-- Ron El Mondero: una de las dos destilerías de ron artesanal que sobreviven en la Costa Tropical
-- Ya tiene DOP Chirimoya (30), suma espichás + ron
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='18173' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18173','gastronomia','Espichás — boquerones secos al sol, plato icónico de Salobreña',
  'Las espichás son el plato más representativo de Salobreña: boquerones secados al sol y servidos con huevos fritos y ajos. Receta de pescadores documentada en turismosalobrena.com y Sabor Granada como seña de identidad local. También en DOP Chirimoya Costa Tropical',
  'excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18173','producto','Ron El Mondero — destilería artesanal de caña de azúcar',
  'Ron El Mondero es una de las dos destilerías de ron artesanal que sobreviven en la Costa Tropical de Granada, elaborado con caña de azúcar cultivada localmente. Incluye visitas guiadas a bodega documentadas en turismosalobrena.com',
  'excel_curado',date('now'));

-- ── TORRENUEVA COSTA — 26 ─────────────────────────────────────────────────────
-- Restaurante Cuca: incluido en Guía Gastronómica Sabor Granada
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18916' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18916','gastronomia','Restaurante Cuca — Sabor Granada',
  'Torrenueva Costa alberga el Restaurante Cuca, incluido en la Guía Gastronómica Sabor Granada. Municipio de la Costa Tropical granadina con oferta gastronómica documentada',
  'excel_curado',date('now'));

-- ── PUEBLA DE DON FADRIQUE — 26 ───────────────────────────────────────────────
-- Embutidos artesanales + tradición matancera + cordero segureño
-- Documentados en Sabor Granada y comarcadehuescar.com
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18164' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18164','gastronomia','Embutidos artesanales y Jornadas Matanceras de Puebla de Don Fadrique',
  'Puebla de Don Fadrique destaca por sus embutidos artesanales de cerdo (güeña, patatera, lomo a la tabla) y sus Jornadas Matanceras, referente turístico del Altiplano granadino documentadas en comarcadehuescar.com. El cordero segureño y los andrajos de liebre son platos propios de la comarca',
  'excel_curado',date('now'));

-- ── ORCE — 26 ─────────────────────────────────────────────────────────────────
-- Gastronomía documentada en Sabor Granada: Geoparque, cocina serrana propia
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18146' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18146','gastronomia','Cocina serrana del Geoparque — Orce',
  'Orce, en el corazón del Geoparque de Granada, tiene gastronomía documentada en Sabor Granada: gurupina, gachas tortas y gurullos hechos a mano con conejo propios de la comarca de Baza-Huéscar. El Geoparque es un atractivo turístico que impulsa la gastronomía local',
  'excel_curado',date('now'));

-- ── FUENTE VAQUEROS — 26 ──────────────────────────────────────────────────────
-- Pueblo natal de Federico García Lorca + tradición frutera/horticola Vega de Granada
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18079' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18079','gastronomia','Gastronomía de la Vega de Granada — Fuente Vaqueros',
  'Fuente Vaqueros, pueblo natal de Federico García Lorca, es parte de la fértil Vega de Granada, la huerta más rica de la provincia. Su gastronomía se basa en los productos de temporada de la vega: habas, alcachofas, espárragos y frutas. El turismo lorquiano impulsa la oferta gastronómica local documentada',
  'excel_curado',date('now'));

-- ── MURTAS — 26 ───────────────────────────────────────────────────────────────
-- Alpujarra: gastronomía serrana documentada (jamón, embutidos, miel, vino)
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18141' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18141','gastronomia','Gastronomía alpujarreña de Murtas',
  'Murtas, en la Alpujarra granadina, forma parte de la zona de producción de la IGP Jamón de Trevélez y tiene gastronomía serrana documentada: embutidos artesanales, miel y vino de la comarca Contraviesa-Alpujarra',
  'excel_curado',date('now'));

-- ── SYNC DUPLICADOS actualizados ──────────────────────────────────────────────
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18173' AND p2.categoria='gastronomia') WHERE codigo_ine='19024' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18183' AND p2.categoria='gastronomia') WHERE codigo_ine='19028' AND categoria='gastronomia';

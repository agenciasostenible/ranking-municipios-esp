-- Gastronomía Córdoba — ampliación con datos de blogs, turismo comarcal y webs especializadas
-- Fuentes: turismolospedroches.org, subbetica.com, cordobaturismogastronomico.com,
--          turismodelasubbetica.es, gastronomiacordoba.com, escapadarural.com
--
-- CRITERIO: municipios con plato/producto propio documentado en fuente específica
-- aunque no tengan galardón Michelin/Repsol. El plato debe ser PROPIO del municipio,
-- no genérico de la comarca.

-- ── SUBBÉTICA — platos y productos propios documentados ──────────────────────

-- Cabra (17006) — sube de 30 a 36
-- Gajorros y Bizcotelas: dulces únicos de Cabra documentados en múltiples fuentes
-- Gajorros = fritos en caña, típicos de Semana Santa egabrense, no existen en otros municipios
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='17006' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17006','producto','Gajorros y Bizcotelas de Cabra — dulces únicos egabrenses',
  'Los gajorros son el dulce más representativo de Cabra (Egabro): masa enrollada en cañas y frita, exclusiva de la Semana Santa egabrense. Las bizcotelas son elaboradas por las monjas agustinas de Cabra con receta centenaria. Ambos documentados en Turismo de la Subbética y múltiples blogs gastronómicos como productos propios únicos de Cabra',
  'excel_curado',date('now'));

-- Iznájar (14037) — sube de 28 a 34
-- Salmorejo de Naranjas (remojón iznajeño): plato único documentado, con origen medieval árabe
-- Reivindicado por el municipio, tiene recetario oficial en turismodelasubbetica.es
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='14037' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14037','producto','Salmorejo de Naranjas Iznajeño — plato único medieval',
  'El salmorejo de naranjas (o remojón iznajeño) es el plato más icónico de Iznájar: ensalada fría de bacalao asado y naranja con AOVE, de origen árabe medieval. Único en Córdoba y reivindicado por el municipio como seña de identidad. Documentado en Turismo de la Subbética, Directo al Paladar y Cordobapedia',
  'excel_curado',date('now'));

-- Doña Mencía (14022) — sube de 34 a 36
-- Pollo a la Menciana: plato propio documentado (fuente: subbetica.com)
-- Ya tiene doble DOP (Baena + Montilla-Moriles)
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='14022' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14022','gastronomia','Pollo a la Menciana — plato propio de Doña Mencía',
  'El pollo a la Menciana es el plato más representativo de Doña Mencía, documentado en la web gastronómica de la Subbética cordobesa. El municipio combina esta tradición culinaria con su doble pertenencia a la DOP Aceite de Baena y la DO Montilla-Moriles',
  'excel_curado',date('now'));

-- Lucena (14038) — sube de 40 a 42
-- Naranjas picás en aceite + papas al ajopollo: platos propios documentados
-- Capital de la Subbética, tradición gastronómica muy documentada
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='14038' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14038','gastronomia','Naranjas Picás en Aceite y Papas al Ajopollo — cocina lucentina',
  'Lucena tiene platos propios muy documentados: las naranjas picás en aceite (tapa típica lucentina) y las papas al ajopollo (con almendras, azafrán y AOVE DOP Lucena). Ciudad de referencia gastronómica de la Subbética, también conocida por sus pestiños y sopaipas tradicionales',
  'excel_curado',date('now'));

-- Carcabuey (código a verificar) — potaje de habichuelas Amonás
-- Almedinilla — morcilla de cebolla propia
-- Fuente-Tójar (14031) — morcilla de carne y blanca propia
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='14031' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14031','producto','Morcilla blanca y de carne de Fuente-Tójar',
  'Fuente-Tójar es conocido en la Subbética por su morcilla artesanal, tanto la morcilla de carne como la morcilla blanca, elaboradas con recetas tradicionales propias documentadas en subbetica.com. También integra la DOP Aceite Priego de Córdoba',
  'excel_curado',date('now'));

-- Encinas Reales (14024) — sube de 28 a 30
-- Gachas de cuscurrones: plato propio documentado (fuente: subbetica.com)
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='14024' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14024','producto','Gachas de Cuscurrones — plato propio de Encinas Reales',
  'Las gachas de cuscurrones son el plato más representativo de Encinas Reales, documentado en la web gastronómica de la Subbética. También integra la DOP Aceite de Lucena',
  'excel_curado',date('now'));

-- Palenciana (14048) — sube de 12 a 26
-- Porra de espárragos: plato propio documentado (fuente: subbetica.com)
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='14048' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14048','gastronomia','Porra de Espárragos — plato propio de Palenciana',
  'La porra de espárragos es el plato más característico de Palenciana, documentado en subbetica.com como producto propio de la localidad. Variante local de la porra antequerana elaborada con espárragos trigueros silvestres de la sierra',
  'excel_curado',date('now'));

-- ── LOS PEDROCHES — platos propios por municipio ─────────────────────────────

-- Pozoblanco (14054) — sube de 42 a 44
-- Salchichón de Pozoblanco con DOP Los Pedroches + ternera a la vallesana documentada
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='14054' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14054','gastronomia','Ternera a la Vallesana + Salchichón ibérico de bellota',
  'Pozoblanco es reconocido por la ternera a la vallesana (guiso de ternera con verduras y vino), plato emblema de la capital de Los Pedroches documentado en turismolospedroches.org. Su salchichón ibérico de bellota (DOP Los Pedroches) es referencia nacional, elaborado por Agroibérica de Pozoblanco',
  'excel_curado',date('now'));

-- Villanueva de Córdoba (14069) — sube de 26 a 30
-- Salmorejo jarote: variante propia del salmorejo, plato identitario documentado
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='14069' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14069','gastronomia','Salmorejo Jarote — variante propia de Villanueva de Córdoba',
  'El salmorejo jarote es la versión identitaria del salmorejo elaborada en Villanueva de Córdoba, documentada en turismolospedroches.org como plato propio del municipio. Se diferencia del cordobés clásico por sus matices serranos. También integra la DOP Los Pedroches',
  'excel_curado',date('now'));

-- Hinojosa del Duque (14035) — sube de 38 a 40
-- Relleno de Hinojosa + olla de carnaval: platos propios documentados
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='14035' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14035','gastronomia','Relleno de Hinojosa y Olla de Carnaval — cocina propia serrana',
  'Hinojosa del Duque tiene platos propios documentados en turismolospedroches.org: el relleno de Hinojosa (masa de pan, huevo y carne de cerdo guisada) y la olla de carnaval (potaje festivo). Junto con la DOP Los Pedroches, conforma una de las cocinas serranas más ricas de la provincia',
  'excel_curado',date('now'));

-- Pedroche (14051) — sube de 26 a 30
-- Hojuelas y mantas de viaje: dulces propios de Pedroche documentados
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='14051' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14051','gastronomia','Hojuelas y Mantas de Viaje — repostería propia de Pedroche',
  'Pedroche, que da nombre a la comarca, tiene repostería tradicional propia documentada en turismolospedroches.org: las hojuelas (masa frita con miel) y las mantas de viaje (dulce de camino). El municipio da nombre a la Comarca de Los Pedroches e integra la DOP Los Pedroches',
  'excel_curado',date('now'));

-- El Viso (14074) — sube de 26 a 30
-- Cochifrito de El Viso: plato propio documentado
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='14074' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14074','gastronomia','Cochifrito de El Viso — plato serrano propio',
  'El cochifrito es el plato más representativo de El Viso, documentado en turismolospedroches.org: lechón ibérico troceado y frito con ajo, limón y especias. Plato propio de la tradición matancera del Valle de Los Pedroches',
  'excel_curado',date('now'));

-- Villanueva del Duque (14070) — sube de 26 a 28
-- Rabos de cordero: plato propio documentado
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='14070' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14070','gastronomia','Rabos de Cordero — especialidad propia de Villanueva del Duque',
  'Los rabos de cordero guisados son el plato más representativo de Villanueva del Duque, documentado en turismolospedroches.org. Refleja la tradición ganadera ovina de la comarca de Los Pedroches',
  'excel_curado',date('now'));

-- ── ALTO GUADALQUIVIR — gastronomía documentada ──────────────────────────────

-- Bujalance (17005) — sube de 12 a 30
-- Papas rellenas de Bujalance: plato propio muy documentado, conocido en toda Córdoba
-- AOVE de la campiña
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='17005' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17005','gastronomia','Papas Rellenas de Bujalance — tapa icónica cordobesa',
  'Las papas rellenas de Bujalance son una tapa emblemática reconocida en toda la provincia de Córdoba: ruedas de patata rellenas de carne picada, empanadas y fritas. Documentadas en cordobaturismogastronomico.com y la web municipal de Bujalance como producto gastronómico propio y diferenciador',
  'excel_curado',date('now'));

-- Montoro (14043) — sube de 40 a 42
-- Ajo sopeao + caza del Parque Natural Sierra de Cardeña: gastronomía serrana propia
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='14043' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14043','gastronomia','Ajo Sopeao de Montoro + caza del Parque Natural',
  'Montoro tiene platos propios documentados: el ajo sopeao (pan, bacalao, huevo y AOVE, servido en cazuela de barro) es su plato más representativo. El Parque Natural Sierra de Cardeña y Montoro aporta caza mayor (jabalí, ciervo) a su gastronomía serrana. Sede DOP Montoro-Adamuz',
  'excel_curado',date('now'));

-- Palma del Río (14049) — sube de 12 a 28
-- Naranja de Palma del Río: producción citrícola de referencia, exportada internacionalmente
-- Gastronomía documentada ligada al Guadalquivir
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='14049' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14049','producto','Naranja de Palma del Río — producción citrícola de referencia',
  'Palma del Río es uno de los principales productores de naranjas y cítricos de Andalucía, con exportación internacional. Sus huertas del Guadalquivir producen naranjas de referencia en los mercados europeos. La gastronomía local gira en torno al río y sus productos de huerta documentados en cordobaturismogastronomico.com',
  'excel_curado',date('now'));

-- ── GUADIATO — gastronomía serrana documentada ───────────────────────────────

-- Fuente Obejuna (14029) — sube de 26 a 32
-- Lechón ibérico + quesos artesanos de oveja merina + vino de pitarra propios
-- Documentado en gastronomiacordoba.com y ochosabores.com con gran detalle
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='14029' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14029','gastronomia','Lechón ibérico, queso de oveja merina y vino de pitarra',
  'Fuente Obejuna destaca por su cocina serrana ibérica documentada en gastronomiacordoba.com: lechón ibérico asado, quesos artesanos de oveja merina, lomo de orza y vino de pitarra (elaboración casera tradicional). La caza mayor (jabalí, ciervo) completa una oferta gastronómica propia muy documentada',
  'excel_curado',date('now'));

-- Peñarroya-Pueblonuevo (14052) — sube de 26 a 28
-- Rairrán (variante local de gazpacho) + lechón en adobo: platos propios documentados
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='14052' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14052','gastronomia','Rairrán y Lechón en Adobo — cocina propia del Guadiato',
  'Peñarroya-Pueblonuevo tiene platos propios documentados en andaluciarustica.com: el rairrán (variante local del gazpacho con bacalao) y el lechón en adobo. Capital del Valle del Guadiato e integrante de la DOP Los Pedroches',
  'excel_curado',date('now'));

-- ── CAMPIÑA — gastronomía documentada ────────────────────────────────────────

-- Aguilar de la Frontera (17001) — sube de 28 a 30
-- Merengues de Aguilar: dulce propio documentado + DOP Montilla-Moriles + DOP Lucena
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='17001' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17001','producto','Merengues de Aguilar — dulce propio documentado',
  'Los merengues de Aguilar (claras de huevo batidas con azúcar) son el dulce más representativo de Aguilar de la Frontera, documentado en cordobaturismogastronomico.com. El municipio pertenece parcialmente a la DO Montilla-Moriles y a la DOP Aceite de Lucena',
  'excel_curado',date('now'));

-- La Rambla (14057) — sube de 26 a 28
-- Alfarería de La Rambla: cerámica de cocina con tradición documentada
-- Platos de barro usados en toda Córdoba para guisos, ollas, cazuelas
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='14057' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14057','gastronomia','Tradición alfarera aplicada a la cocina — La Rambla',
  'La Rambla es la capital de la alfarería cordobesa, famosa en toda España. Sus cazuelas, ollas y cántaros de barro son imprescindibles en la cocina tradicional cordobesa. El municipio también pertenece parcialmente a la DO Montilla-Moriles',
  'excel_curado',date('now'));

-- ── SYNC DUPLICADOS actualizados ─────────────────────────────────────────────
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14035' AND p2.categoria='gastronomia') WHERE codigo_ine='17012' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14029' AND p2.categoria='gastronomia') WHERE codigo_ine='17011' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14052' AND p2.categoria='gastronomia') WHERE codigo_ine='17019' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14037' AND p2.categoria='gastronomia') WHERE codigo_ine='17013' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14038' AND p2.categoria='gastronomia') WHERE codigo_ine='17015' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14043' AND p2.categoria='gastronomia') WHERE codigo_ine='17017' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14049' AND p2.categoria='gastronomia') WHERE codigo_ine='17018' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14054' AND p2.categoria='gastronomia') WHERE codigo_ine='17021' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14069' AND p2.categoria='gastronomia') WHERE codigo_ine='17025' AND categoria='gastronomia';

-- Gastronomía Sevilla — curación manual con datos verificados
-- Fuentes: Guía Michelin 2026, Guía Repsol 2025/2026, DOPs oficiales MAPA,
--          visitarsevilla.com, sevilla.cosasdecome.es, andalucia.org,
--          turismo.aljarafe.com, doestepa.com, mantecadosypolvoronesdeestepa.com
--
-- MICHELIN 2026 — Sevilla provincia:
--   Abantal (1★, Sevilla capital), Cañabota (1★, Sevilla capital)
--   Ochando (1★ nueva 2026, Tocina — pedanía Los Rosales)
--   Bib Gourmand: Az-Zait, Lalola de Javi Abascal, Balbuena y Huertas (todos Sevilla capital)
-- REPSOL 2025/2026 — Sevilla provincia:
--   Sevilla capital: Abantal (2 Soles), Cañabota (1), Jaylu (1), Kinu (1), Lalola (1),
--                   Leartá (1), Sobretablas (1), Sr. Cangrejo (1), Tribeca (1) → 9 restaurantes
--   Castilleja de la Cuesta: 12 Tapas (1 Sol)
--   Tocina: Ochando (1 Sol)
-- DOPs/IGPs:
--   IGP Mantecados de Estepa + IGP Polvorones de Estepa → exclusivos de Estepa
--   DOP Aceite Estepa: Badolatosa, Casariche, El Rubio, Estepa, Gilena, Herrera,
--                      La Roda de Andalucía, Lora de Estepa, Marinaleda, Pedrera
--   DOP Sierra de Cádiz (aceite): Coripe, Pruna
--   DOP Vinos de Calidad Lebrija: Lebrija, El Cuervo de Sevilla
--   IGP Sierra Norte de Sevilla (vino): Cazalla de la Sierra, Constantina, Guadalcanal, Alanís
--   IGP Los Palacios (vino): Los Palacios y Villafranca, Utrera, Dos Hermanas, Alcalá de Guadaíra
--   IGP Aceituna Manzanilla/Gordal de Sevilla: toda la provincia
-- PRODUCTOS EMBLEMA:
--   Estepa: capital mundial mantecados/polvorones desde s.XVI (Convento Santa Clara)
--   Alcalá de Guadaíra: "Alcalá de los Panaderos", pan artesano que abastecía Sevilla desde la Edad Media
--   Isla Mayor: capital arrocera de España — 40% de la producción nacional
--   Cazalla de la Sierra: aguardiente anisado "Cazalla" histórico desde el s.XVII
--   Utrera: Mostachón de Utrera, dulce icónico comercializado desde 1880, vendido en los trenes

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Sevilla');

-- 2. Limpiar entidades automáticas
DELETE FROM entidades WHERE tipo IN ('gastronomia','producto')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Sevilla');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Sevilla');

-- ── TIER 1: SEVILLA CAPITAL — múltiples estrellas + soles ──────────────────────
-- Sevilla (41091) — 92
-- Abantal (1★+2Soles), Cañabota (1★+1Sol), más 7 soles adicionales, 3 Bib Gourmand
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='41091' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41091','gastronomia','Abantal — 1 Estrella Michelin + 2 Soles Repsol',
  'Chef Julio Fernández Quintero. 1 Estrella Michelin y 2 Soles Repsol. El restaurante de mayor distinción de Sevilla, con cocina andaluza de autor basada en el producto local',
  'Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41091','gastronomia','Cañabota — 1 Estrella Michelin + 1 Sol Repsol',
  'Estrella Michelin 2026 y 1 Sol Repsol. Referente del pescado y marisco en Sevilla, con producto del Atlántico y cocina de producto sin artificios',
  'Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41091','gastronomia','Az-Zait, Lalola de Javi Abascal, Balbuena y Huertas — Bib Gourmand Michelin',
  'Tres restaurantes con Bib Gourmand Michelin 2026 en Sevilla capital. Az-Zait (plaza San Lorenzo), Lalola de Javi Abascal (barrio Alameda) y Balbuena y Huertas (Triana, nuevo 2026). Cocina de mercado y tapas creativas',
  'Michelin',date('now'));

-- ── TIER 2: TOCINA — 1★ Michelin + 1 Sol Repsol ──────────────────────────────
-- Tocina (41092) — 87
-- Ochando en pedanía Los Rosales, nueva estrella Michelin 2026 + 1 Sol Repsol
UPDATE puntuaciones SET puntuacion=87 WHERE codigo_ine='41092' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41092','gastronomia','Ochando — 1 Estrella Michelin 2026 (nueva) + 1 Sol Repsol',
  'Nueva estrella Michelin en 2026 (primera nueva estrella de la provincia en años) y 1 Sol Repsol. Situado en la pedanía de Los Rosales (Tocina). Chef Fran Carrasco, cocina de producto local del Bajo Guadalquivir',
  'Michelin',date('now'));

-- ── TIER 3: CASTILLEJA DE LA CUESTA — 1 Sol Repsol + ETG Tortas de Aceite ─────
-- Castilleja de la Cuesta (41029) — 58
-- 12 Tapas (1 Sol Repsol) + origen de las Tortas de Aceite Inés Rosales (ETG europea)
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='41029' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41029','gastronomia','12 Tapas — 1 Sol Repsol',
  '1 Sol Repsol. Restaurante de referencia del municipio, cocina de tapas sevillana de calidad',
  'Repsol',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41029','producto','Tortas de Aceite Inés Rosales — origen en Castilleja',
  'Las famosas Tortas de Aceite Inés Rosales nacieron en Castilleja de la Cuesta en 1910, de la receta original de Inés Rosales Cabello. Son Especialidad Tradicional Garantizada (ETG) europea. La producción se trasladó en 1991 a Huévar del Aljarafe, pero el origen histórico es Castilleja',
  'excel_curado',date('now'));

-- ── TIER 4: ESTEPA — capital mundial mantecados/polvorones, 3 denominaciones ──
-- Estepa (41041) — 53
-- IGP Mantecados de Estepa + IGP Polvorones de Estepa + DOP Aceite Estepa
-- Origen documentado en s.XVI en el Convento de Santa Clara
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='41041' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41041','producto','IGP Mantecados de Estepa + IGP Polvorones de Estepa — capital mundial',
  'Estepa es la capital mundial de los mantecados y polvorones navideños. El origen data del s.XVI en el Convento de Santa Clara. Son IGP europeas exclusivas del término municipal. Más de 40 empresas producen en Estepa, que exporta a 60 países. El sector genera el 80% del empleo local',
  'excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41041','producto','DOP Aceite de Oliva Estepa — sede y emblema',
  'Estepa es la sede de la DOP Aceite Estepa, que abarca 10 municipios sevillanos. AOVE de variedades Hojiblanca, Arbequina y Manzanilla. Premios internacionales reiterados. El municipio concentra las dos IGPs de repostería navideña más importantes de España y su propia DOP de aceite',
  'excel_curado',date('now'));

-- ── TIER 5: ISLA MAYOR — capital arrocera de España ──────────────────────────
-- Isla Mayor (41902) — 50
-- Produce el 40% del arroz nacional; arroz con pato y cangrejo rojo como platos emblemáticos
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='41902' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41902','producto','Isla Mayor — capital del arroz en España',
  'Isla Mayor (El Puntal) es la capital arrocera de España: produce el 40% de todo el arroz nacional en las marismas del Guadalquivir. La Cooperativa Arrozúa tiene 800 socios. El arroz con pato y el arroz con cangrejo rojo del Guadalquivir son sus platos emblemáticos más documentados',
  'excel_curado',date('now'));

-- ── TIER 6: ALCALÁ DE GUADAÍRA — Alcalá de los Panaderos ─────────────────────
-- Alcalá de Guadaíra (40002) — 49
-- Pan artesano histórico que abastecía toda Sevilla desde la Edad Media
UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='40002' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40002','producto','Alcalá de los Panaderos — pan artesano histórico de Sevilla',
  'Alcalá de Guadaíra fue conocida durante siglos como "Alcalá de los Panaderos" por ser la proveedora de pan de toda Sevilla desde la Edad Media. En 1873 se construyó el "tren de los panaderos" para abastecer la capital. Variedades propias: picaíto, cuarterón, telera, media boba, regañá. Los conventos de Santa Clara producen tortas y bizcotelas',
  'excel_curado',date('now'));

-- ── TIER 7: LEBRIJA — DOP vinícola propia ────────────────────────────────────
-- Lebrija (41053) — 47
-- DOP Vinos de Calidad Lebrija (denominación propia) + Ajo lebrijano documentado
UPDATE puntuaciones SET puntuacion=47 WHERE codigo_ine='41053' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41053','producto','DOP Vinos de Calidad Lebrija — denominación vinícola propia',
  'Lebrija cuenta con su propia denominación de origen protegida (DOP Vinos de Calidad de Lebrija), la única de la provincia de Sevilla. Produce tintos (Cabernet Sauvignon, Syrah, Tempranillo) y blancos (Moscatel de Alejandría, Sauvignon Blanc) en suelos arcillosos del Bajo Guadalquivir',
  'excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41053','producto','Ajo lebrijano — receta tradicional única',
  'El ajo lebrijano es un plato tradicional exclusivo de Lebrija: pan de telera, pimiento, tomate, ajo y huevo duro. Junto con la puchera lebrijana y la berza gitana, forman el trío gastronómico más documentado del municipio',
  'excel_curado',date('now'));

-- ── TIER 8: CAZALLA Y UTRERA — productos emblema históricos ──────────────────
-- Cazalla de la Sierra (41032) — 46
-- Aguardiente anisado "Cazalla", destilado histórico nacional, Destilerías Anís El Clavel
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='41032' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41032','producto','Aguardiente anisado de Cazalla — licor histórico nacional',
  'El aguardiente de Cazalla es uno de los licores más conocidos de España. La destilación de anís en Cazalla de la Sierra tiene siglos de tradición, con destilerías como Anís El Clavel y Anís Miura. También es reconocida por su licor de guindas y está integrada en la IGP Vinos Sierra Norte de Sevilla',
  'excel_curado',date('now'));

-- Utrera (41095) — 46
-- Mostachón de Utrera: bizcocho de canela y limón icónico, vendido en trenes desde 1880
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='41095' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41095','producto','Mostachón de Utrera — dulce icónico comercializado desde 1880',
  'El Mostachón de Utrera es un bizcocho plano de canela y limón de origen conventual que se hizo famoso por venderse en las estaciones de tren del s.XIX. Comercializado industrialmente desde 1880, es el dulce más representativo de Utrera y uno de los más reconocibles de la provincia de Sevilla',
  'excel_curado',date('now'));

-- ── TIER 9: CARMONA Y ÉCIJA — gastronomía histórica muy documentada ───────────
-- Carmona (41024) — 38
-- Alboronía (herencia árabe), Torta Inglesa, cocina histórica documentada
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='41024' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41024','gastronomia','Alboronía y Torta Inglesa — cocina histórica de Carmona',
  'Carmona conserva platos únicos muy documentados: la Alboronía (plato de herencia árabe: calabaza, calabacín y verduras, variante local del pisto sin tomate) y la Torta Inglesa (hojaldre con cabello de ángel, canela y azúcar glas). También son propios los potajes de chícharos y el cocido con tagarninas. La ruta gastronómica de Carmona es de referencia en Caminos de Pasión',
  'excel_curado',date('now'));

-- Écija (41039) — 38
-- Mollete ecijano, Yemas ecijanas, repostería conventual s.XVIII
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='41039' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41039','gastronomia','Mollete ecijano y Yemas de Écija — repostería conventual',
  'Écija presume de su propio mollete (considerado el mejor de la provincia) y de las Yemas ecijanas (yema y azúcar al baño maría). Sus bizcochos marroquíes de repostería conventual datan del s.XVIII. La "sopa de gato" y las tortas de manteca y aceite completan un recetario propio bien documentado en turismo.ecija.com',
  'excel_curado',date('now'));

-- ── TIER 10: SIERRA NORTE — 2 DOPs + dato específico ─────────────────────────
-- Constantina (41033) — 36
-- Embutidos ibéricos de referencia + IGP Sierra Norte (vino) + feria ibérica
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='41033' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41033','producto','Constantina — referente charcutería ibérica + IGP Sierra Norte',
  'Constantina es el municipio de referencia gastronómica de la Sierra Norte de Sevilla. Famosa por su charcutería ibérica (jamón, lomo, morcón, chorizo) y su Feria del Mosto y Productos Ibéricos en noviembre. Integra la IGP Vinos Sierra Norte de Sevilla. sevilla.cosasdecome.es la señala como uno de los paraísos gastronómicos de la sierra',
  'excel_curado',date('now'));

-- Guadalcanal (41048) — 36
-- IGP Sierra Norte (vino) + embutidos ibéricos documentados
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='41048' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41048','producto','Guadalcanal — IGP Sierra Norte (vino) + embutidos ibéricos',
  'Guadalcanal integra la IGP Vinos Sierra Norte de Sevilla junto a Cazalla, Constantina y Alanís. Sus embutidos ibéricos de cerdo de bellota de la dehesa y su tradición vinícola serrana lo sitúan entre los municipios gastronómicamente más activos del norte de Sevilla',
  'excel_curado',date('now'));

-- ── TIER 11: OSUNA Y LOS PALACIOS — sede/producto propio ─────────────────────
-- Osuna (41068) — 34
-- Ardoria, cocido ursaonés, aceitunas de mesa propias
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='41068' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41068','gastronomia','Ardoria y cocido ursaonés — cocina propia de Osuna',
  'Osuna tiene platos propios bien documentados: la Ardoria (gazpacho espeso local, cocido y con mayor cuerpo que el salmorejo), el cocido ursaonés y las repapalillas de bacalao. También pertenece a la IGP Aceituna Manzanilla y Gordal de Sevilla con producción histórica de aceituna de mesa',
  'excel_curado',date('now'));

-- Los Palacios y Villafranca (41069) — 34
-- Municipio que da nombre a la IGP Los Palacios (vino)
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='41069' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41069','producto','IGP Vinos Los Palacios — municipio que da nombre a la denominación',
  'Los Palacios y Villafranca da nombre a la IGP Vinos Los Palacios, que produce vinos blancos (Airén, Chardonnay, Colombard, Sauvignon Blanc) en el Bajo Guadalquivir. La denominación abarca también Utrera, Dos Hermanas y Alcalá de Guadaíra',
  'excel_curado',date('now'));

-- ── TIER 12: MORÓN, MARCHENA, MARINALEDA, ALANÍS ─────────────────────────────
-- Morón de la Frontera (41065) — 32
-- Aceitunas "partías de Morón" variedad Morona propia
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='41065' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41065','producto','Aceitunas "partías de Morón" — variedad Morona autóctona',
  'Morón de la Frontera es conocida por sus aceitunas aliñadas "partías", elaboradas con la variedad autóctona Morona, propia de este municipio. Las migas de Morón y los dulces conventuales (angelinas, tocinos de cielo, almendrados) completan un repertorio gastronómico local documentado',
  'excel_curado',date('now'));

-- Marchena (41060) — 32
-- Bizcocho marchenero, molletes propios + IGP Aceituna
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='41060' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41060','gastronomia','Bizcocho Marchenero y Molletes de Marchena',
  'Marchena tiene repostería propia bien documentada: el Bizcocho Marchenero y los Molletes marcheneros. Sus conventos de San Andrés y La Concepción son fuente histórica de dulces conventuales. También conocida por sus melones de fama histórica',
  'excel_curado',date('now'));

-- Marinaleda (41061) — 32
-- DOP Estepa aceite + Cooperativa El Humoso ecológica, famosa mundialmente
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='41061' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41061','producto','DOP Aceite Estepa + Cooperativa El Humoso — aceite ecológico',
  'Marinaleda integra la DOP Aceite Estepa y produce aceite de oliva virgen extra ecológico bajo la marca "El Humoso" a través de la Cooperativa San Nicolás de Marinaleda. La cooperativa, símbolo del pueblo de Juan Manuel Sánchez Gordillo, también produce alcachofas, judías verdes y pimientos envasados ecológicos',
  'excel_curado',date('now'));

-- Alanís (40001) — 32
-- IGP Sierra Norte (vino) + zona ibérica sierra norte
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='40001' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40001','producto','IGP Vinos Sierra Norte de Sevilla + gastronomía ibérica de sierra',
  'Alanís integra la IGP Vinos Sierra Norte de Sevilla junto a Cazalla de la Sierra, Constantina y Guadalcanal. La comarca ibérica de la Sierra Norte incluye dehesas de encina y alcornoque con producción artesanal de charcutería y embutidos de cerdo de montanera',
  'excel_curado',date('now'));

-- ── TIER 13: HERRERA Y UMBRETE — DOP + dato documentado ──────────────────────
-- Herrera (41050) — 30
-- DOP Estepa (aceite) + salmorejo campero documentado
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='41050' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41050','producto','DOP Aceite Estepa + salmorejo campero de Herrera',
  'Herrera integra la DOP Aceite Estepa y es conocida por su variante local del salmorejo (salmorejo campero). El restaurante Casa Juan es referencia comarcal de la Sierra Sur para alcachofas y guisos tradicionales',
  'excel_curado',date('now'));

-- Umbrete (41094) — 30
-- "Ciudad del Mosto" del Aljarafe, capital de la ruta del mosto
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='41094' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41094','producto','Umbrete — Ciudad del Mosto del Aljarafe',
  'Umbrete es la capital indiscutible del mosto del Aljarafe sevillano, el vino joven y turbio de 10-12º (variedades Palomino, Zalema, Airén y Pedro Ximénez). La Ruta del Mosto del Aljarafe tiene en Umbrete su municipio de referencia. Bodegas Salado produjo aquí el primer espumoso del Aljarafe en 2006',
  'excel_curado',date('now'));

-- ── TIER 14: DOP ESTEPA miembros (sin dato extra) ────────────────────────────
-- Badolatosa, Casariche, El Rubio, Gilena, La Roda de Andalucía, Lora de Estepa, Pedrera — 28
UPDATE puntuaciones SET puntuacion=28 WHERE categoria='gastronomia'
  AND codigo_ine IN ('41014','41026','41084','41046','41082','41054','41072');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41014','producto','DOP Aceite de Oliva Estepa',
  'Badolatosa integra la DOP Aceite de Oliva Estepa — AOVE de variedades Hojiblanca, Arbequina y Manzanilla en la comarca sevillana homónima','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41026','producto','DOP Aceite de Oliva Estepa',
  'Casariche integra la DOP Aceite de Oliva Estepa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41084','producto','DOP Aceite de Oliva Estepa',
  'El Rubio integra la DOP Aceite de Oliva Estepa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41046','producto','DOP Aceite de Oliva Estepa',
  'Gilena integra la DOP Aceite de Oliva Estepa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41082','producto','DOP Aceite de Oliva Estepa',
  'La Roda de Andalucía integra la DOP Aceite de Oliva Estepa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41054','producto','DOP Aceite de Oliva Estepa',
  'Lora de Estepa integra la DOP Aceite de Oliva Estepa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41072','producto','DOP Aceite de Oliva Estepa',
  'Pedrera integra la DOP Aceite de Oliva Estepa','excel_curado',date('now'));

-- ── TIER 15: DOP SIERRA DE CÁDIZ (aceite) — Coripe y Pruna ───────────────────
-- Coripe (41035) y Pruna (41076) — 28
UPDATE puntuaciones SET puntuacion=28 WHERE categoria='gastronomia'
  AND codigo_ine IN ('41035','41076');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41035','producto','DOP Aceite Sierra de Cádiz',
  'Coripe integra la DOP Aceite Sierra de Cádiz, cuyo principal varietal es la lechín de Sevilla. Municipio en el extremo sur de la Sierra Sur sevillana, limítrofe con Cádiz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41076','producto','DOP Aceite Sierra de Cádiz',
  'Pruna integra la DOP Aceite Sierra de Cádiz en la Sierra Sur sevillana','excel_curado',date('now'));

-- ── TIER 16: DOP VINOS LEBRIJA — El Cuervo ────────────────────────────────────
-- El Cuervo de Sevilla (41903) — 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='41903' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41903','producto','DOP Vinos de Calidad Lebrija',
  'El Cuervo de Sevilla integra la DOP Vinos de Calidad Lebrija junto a Lebrija, la única denominación vinícola de la provincia de Sevilla','excel_curado',date('now'));

-- ── TIER 17: PLATOS PROPIOS DOCUMENTADOS — 28 ────────────────────────────────
-- Las Cabezas de San Juan (41020) — 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='41020' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41020','gastronomia','Pan de kilo y Frijoná de Las Cabezas',
  'Las Cabezas de San Juan tiene su propio "pan de kilo" y la frijoná como potaje local. Los caracoles con mojiganga y los roscos de aguardiente completan su repertorio tradicional bien documentado en visitarsevilla.com','excel_curado',date('now'));

-- La Puebla de Cazalla (41077) — 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='41077' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41077','gastronomia','Entornaos — dulce típico exclusivo de La Puebla de Cazalla',
  'La Puebla de Cazalla elabora los Entornaos, empanadillas de cidra al horno dulces que son su producto típico local exclusivo. También son propios la jarria (variante del salmorejo), el arroz con castañas y el queso de cabra artesano local','excel_curado',date('now'));

-- Lora del Río (41055) — 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='41055' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41055','gastronomia','Acármelas y Cortadillos — repostería artesana de Lora del Río',
  'Lora del Río cuenta con repostería artesana propia: las acármelas (pastelería González) y los cortadillos (pastelería Gálvez) son sus dulces más documentados. También conocida por los espárragos trigueros silvestres del entorno del Guadalquivir y su tradición de guisos de caracoles','excel_curado',date('now'));

-- Dos Hermanas (41038) — 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='41038' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41038','producto','IGP Vinos Los Palacios',
  'Dos Hermanas integra la IGP Vinos Los Palacios (vinos blancos del Bajo Guadalquivir) junto a Los Palacios y Villafranca, Utrera y Alcalá de Guadaíra','excel_curado',date('now'));

-- ── TIER 18: MOSTO DEL ALJARAFE — municipios productores documentados ─────────
-- Score 26 — mosto del Aljarafe documentado en turismo.aljarafe.com
UPDATE puntuaciones SET puntuacion=26 WHERE categoria='gastronomia'
  AND codigo_ine IN ('41016','41015','41040','41047','41067','41075','41087','41096','41098');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41016','producto','Mosto del Aljarafe sevillano',
  'Bollullos de la Mitación es uno de los municipios productores del mosto del Aljarafe, vino joven y turbio de variedades Palomino, Zalema, Airén y Pedro Ximénez. La Ruta del Mosto del Aljarafe está documentada en turismo.aljarafe.com','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41015','producto','Mosto del Aljarafe sevillano',
  'Benacazón es uno de los municipios productores del mosto del Aljarafe','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41040','producto','Mosto del Aljarafe sevillano',
  'Espartinas es uno de los municipios productores del mosto del Aljarafe sevillano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41047','producto','Mosto del Aljarafe sevillano',
  'Gines es uno de los municipios productores del mosto del Aljarafe sevillano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41067','producto','Mosto del Aljarafe sevillano',
  'Olivares es uno de los municipios productores del mosto del Aljarafe sevillano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41075','producto','Mosto del Aljarafe sevillano',
  'Pilas es uno de los municipios productores del mosto del Aljarafe sevillano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41087','producto','Mosto del Aljarafe sevillano',
  'Sanlúcar la Mayor es uno de los municipios productores del mosto del Aljarafe sevillano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41096','producto','Mosto del Aljarafe sevillano',
  'Valencina de la Concepción es uno de los municipios productores del mosto del Aljarafe sevillano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41098','producto','Mosto del Aljarafe sevillano',
  'Villanueva del Ariscal es uno de los municipios productores del mosto del Aljarafe sevillano','excel_curado',date('now'));

-- Huévar del Aljarafe (41051) — 26
-- Producción Tortas de Aceite Inés Rosales (trasladada desde Castilleja en 1991)
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='41051' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41051','producto','Tortas de Aceite Inés Rosales — producción actual',
  'Huévar del Aljarafe alberga desde 1991 la fábrica de Tortas de Aceite Inés Rosales (ETG europea), cuyo origen histórico está en Castilleja de la Cuesta. Es el municipio donde actualmente se elabora este producto icónico sevillano exportado a todo el mundo','excel_curado',date('now'));

-- ── SYNC DUPLICADOS ──────────────────────────────────────────────────────────
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41024' AND p2.categoria='gastronomia') WHERE codigo_ine='40003' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41032' AND p2.categoria='gastronomia') WHERE codigo_ine='40004' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41033' AND p2.categoria='gastronomia') WHERE codigo_ine='40005' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41038' AND p2.categoria='gastronomia') WHERE codigo_ine='40006' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41073' AND p2.categoria='gastronomia') WHERE codigo_ine='40007' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41083' AND p2.categoria='gastronomia') WHERE codigo_ine='40008' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41041' AND p2.categoria='gastronomia') WHERE codigo_ine='40009' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41048' AND p2.categoria='gastronomia') WHERE codigo_ine='40010' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41053' AND p2.categoria='gastronomia') WHERE codigo_ine='40011' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41055' AND p2.categoria='gastronomia') WHERE codigo_ine='40012' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41060' AND p2.categoria='gastronomia') WHERE codigo_ine='40013' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41065' AND p2.categoria='gastronomia') WHERE codigo_ine='40014' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41068' AND p2.categoria='gastronomia') WHERE codigo_ine='40015' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41070' AND p2.categoria='gastronomia') WHERE codigo_ine='40016' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41074' AND p2.categoria='gastronomia') WHERE codigo_ine='40017' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41091' AND p2.categoria='gastronomia') WHERE codigo_ine='40018' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41095' AND p2.categoria='gastronomia') WHERE codigo_ine='40019' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41039' AND p2.categoria='gastronomia') WHERE codigo_ine='40020' AND categoria='gastronomia';

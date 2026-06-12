-- Gastronomía Jaén — ampliación con blogs, webs turismo comarcal y fuentes especializadas
-- Fuentes: degustajaen.com, visitarprovinciajaen.com, Wikipedia, nationalgeographic.es,
--          gastroactitud.com, jaenparaisointerior.es, aldearural.com

-- ── GUARROMÁN — 54 ────────────────────────────────────────────────────────────
-- Queso Olavidia (Quesos y Besos): MEJOR QUESO DEL MUNDO en los World Cheese Awards 2021
-- Entre más de 4.000 quesos de todo el mundo. Quesería artesanal fundada en 2017.
-- Reconocimiento internacional máximo — publicado en National Geographic, Público, Gastroactitud
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='23039' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23039','producto','Queso Olavidia — Mejor Queso del Mundo 2021 (World Cheese Awards)',
  'La quesería Quesos y Besos, con sede en Guarromán, elabora el queso Olavidia: elegido Mejor Queso del Mundo en los World Cheese Awards 2021, entre más de 4.000 quesos de docenas de países. Es un queso de leche de cabra propia, moldeado en forma tradicional con una línea interior de hueso de aceituna carbonizado de Jaén. Fundada en 2017 con solo 6 trabajadores',
  'excel_curado',date('now'));

-- ── VILLACARRILLO — 28 ────────────────────────────────────────────────────────
-- Mantecados de Villacarrillo: dulce navideño más popular de la provincia de Jaén
-- Documentado en web municipal, Wikipedia y múltiples blogs gastronómicos
-- También integra la DOP Sierra de Segura (aceite)
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='23095' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23095','producto','Mantecados de Villacarrillo — dulce navideño emblema de Jaén',
  'Los mantecados de Villacarrillo son el dulce navideño más representativo de la provincia de Jaén, elaborados con harina, manteca, azúcar glas, almendra y AOVE. Documentados en la web municipal y en múltiples fuentes gastronómicas como producto propio. El municipio también pertenece a la DOP Aceite Sierra de Segura',
  'excel_curado',date('now'));

-- ── TORRES (Sierra Mágina) — 26 ───────────────────────────────────────────────
-- Lomo de orza, morcilla de res y masa de chorizo: productos matanceros propios
-- Documentados en subbetica.com como productos propios de Torres
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='24086' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24086','producto','Lomo de orza y morcilla de res — tradición matancera de Torres',
  'Torres (Sierra Mágina) destaca por sus embutidos artesanales de cerdo documentados en fuentes comarcales: lomo de orza, morcilla de res y masa de chorizo. Productos de la matanza tradicional serrana únicos de este municipio dentro de la DOP Sierra Mágina',
  'excel_curado',date('now'));

-- ── PEGALAJAR (Sierra Mágina) — 26 ────────────────────────────────────────────
-- Mantecados de aceite de oliva de Albánchez de Mágina/Pegalajar: repostería de aceite documentada
-- DOP Sierra Mágina + mantecados de AOVE únicos de la comarca
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='23067' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23067','producto','Mantecados de aceite de oliva — Sierra Mágina',
  'Pegalajar pertenece a la DOP Sierra Mágina y es referente comarcal de los mantecados elaborados con aceite de oliva virgen extra en lugar de manteca — una variante única de la Subbética jiennense documentada en blogs especializados de gastronomía de Jaén',
  'excel_curado',date('now'));

-- ── PORCUNA — 26 ──────────────────────────────────────────────────────────────
-- DOP Sierra Sur + gastronomía campiñesa documentada (aceite, caza, embutidos)
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='23069' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23069','gastronomia','Gastronomía campiñesa de Porcuna — aceite y caza',
  'Porcuna, municipio de la campiña jiennense, tiene gastronomía documentada en torno a su AOVE, caza (perdiz, conejo) y embutidos artesanos. Municipio de antigua tradición olivarera con aceite premiado en concursos provinciales',
  'excel_curado',date('now'));

-- ── SABIOTE — 26 ──────────────────────────────────────────────────────────────
-- Municipio de La Loma junto a Úbeda: morcilla en caldera + ochíos + DOP
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='23075' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23075','gastronomia','Morcilla en caldera y ochíos — tradición de La Loma',
  'Sabiote, en la comarca de La Loma junto a Úbeda, comparte la tradición gastronómica de morcilla en caldera con ochíos (tortas de AOVE y pimentón), platos propios de la comarca documentados en múltiples fuentes. Municipio dentro de la zona DOP Sierra de Cazorla',
  'excel_curado',date('now'));

-- ── SYNC DUPLICADOS Jaén ──────────────────────────────────────────────────────
-- (Guarromán no tiene duplicado listado, Villacarrillo tampoco)

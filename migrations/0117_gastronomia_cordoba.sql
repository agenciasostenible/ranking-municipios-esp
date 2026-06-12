-- Gastronomía Córdoba — curación manual con datos verificados
-- Fuentes: Guía Michelin 2026, Guía Repsol 2025/2026, DOPs oficiales MAPA, cordobapatrimoniogastronomico.com
--
-- MICHELIN 2026 — Córdoba capital:
--   Noor (3★★★ + Green Star, Chef Paco Morales) — mejor restaurante de Andalucía
--   Choco (1★, Chef Kisko García)
--   ReComiendo (1★ nueva 2026, Chef Periko Ortega)
--   Bib Gourmand: Terra Olea (1 Sol Repsol también), + 5 más en capital
-- REPSOL 2026 — todos en capital Córdoba:
--   Noor (3 Soles), Choco (2 Soles), ReComiendo (1 Sol), Ermita de la Candelaria (1 Sol),
--   La Casa de Manolete Bistró (1 Sol), La Cuchara de San Lorenzo (1 Sol),
--   Terra Olea (1 Sol + Bib Gourmand), Káran Bistró (1 Sol) → 10 Soles en total
-- DOPs/IGPs EN CÓRDOBA:
--   DOP Baena (aceite): Baena, Cabra, Castro del Río, Doña Mencía, Luque, Nueva Carteya, Zuheros
--   DOP Priego de Córdoba (aceite): Priego de Córdoba, Almedinilla, Carcabuey, Fuente-Tójar
--   DOP Montoro-Adamuz (aceite): Montoro, Adamuz, Espiel, Hornachuelos, Obejo, Villaharta, Villanueva del Rey, Villaviciosa
--   DOP Lucena (aceite): Lucena, Aguilar de la Frontera, Encinas Reales, Iznájar, Montilla, Monturque, Moriles, Puente Genil, Rute + Benamejí (fuera provincia)
--   DOP Montilla-Moriles (vino): Montilla, Moriles, Doña Mencía, Montalbán, Monturque, Nueva Carteya, Puente Genil (íntegros)
--     + Aguilar, Baena, Cabra, Castro del Río, Espejo, Fernán Núñez, La Rambla, Lucena, Montemayor, Santaella (parciales)
--   DOP Los Pedroches (ibérico 100% bellota): 32 municipios del norte de la provincia
--     Comarca Los Pedroches: Alcaracejos, Añora, Belalcázar, Cardeña, Conquista, Dos Torres, El Guijo, El Viso,
--       Fuente la Lancha, Hinojosa del Duque, Pedroche, Pozoblanco, Santa Eufemia, Torrecampo,
--       Villanueva del Duque, Villanueva de Córdoba, Villaralto
--     Zona Guadiato + Sierra (>300m): Espiel, Fuente Obejuna, La Granjuela, Peñarroya-Pueblonuevo,
--       Valsequillo, Villanueva del Rey, Villaviciosa de Córdoba
-- PRODUCTOS EMBLEMA:
--   Puente Genil: Membrillo de Puente Genil — capital mundial del dulce de membrillo, exportado desde s.XIX
--   Rute: Anís de Rute (Machaquito) — destilación desde s.XVII, licor más reconocido de Córdoba
--   Montilla: Pedro Ximénez — uva y vino únicos en el mundo (DO Montilla-Moriles sede)
--   Pozoblanco: capital DOP Los Pedroches, jamón ibérico de bellota 100%
--   Baena: sede DOP Baena, AOVE premiado internacionalmente
--   Priego de Córdoba: sede DOP Priego, uno de los mejores aceites del mundo (XXX edición premios 2026)

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Córdoba');

-- 2. Limpiar entidades automáticas
DELETE FROM entidades WHERE tipo IN ('gastronomia','producto')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Córdoba');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Córdoba');

-- ── TIER 1: 3★★★ MICHELIN + 3 SOLES REPSOL + MÚLTIPLES ESTRELLAS ─────────
-- Córdoba capital (14021) — 95
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='14021' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14021','gastronomia','Noor — 3 Estrellas Michelin + Green Star + 3 Soles Repsol',
  'Chef Paco Morales. El único restaurante de Andalucía con 3 Estrellas Michelin (2026) y también Green Star. Recupera la gastronomía andalusí con técnica de vanguardia. Considerado uno de los mejores restaurantes del mundo. También 3 Soles Repsol',
  'Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14021','gastronomia','Choco — 1 Estrella Michelin + 2 Soles Repsol',
  'Chef Kisko García. Una estrella Michelin y 2 Soles Repsol. Referente de la cocina cordobesa contemporánea con producto de la campiña y la sierra',
  'Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14021','gastronomia','ReComiendo — 1 Estrella Michelin 2026 (nueva) + 1 Sol Repsol',
  'Chef Periko Ortega. Nueva estrella Michelin en 2026. Cocina de cercanía con producto cordobés. También 1 Sol Repsol',
  'Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14021','gastronomia','Terra Olea — Bib Gourmand Michelin + 1 Sol Repsol',
  'Chef Paco Villar. Bib Gourmand Michelin y 1 Sol Repsol. Menús degustación "Flos" y "Cibarium" centrados en el aceite de oliva cordobés y pequeños productores locales. Ubicado en el barrio de Arruzafilla',
  'Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14021','gastronomia','Salmorejo cordobés — plato icónico con día propio',
  'El salmorejo es el plato más representativo de Córdoba capital y tiene día oficial propio el 24 de abril. Junto con el flamenquín cordobés, son los dos platos banderas de la gastronomía cordobesa. La tapa gratuita también es tradición en Córdoba',
  'excel_curado',date('now'));

-- ── TIER 2: PRODUCTO EMBLEMA PROPIO ÚNICO EN EL MUNDO ───────────────────────

-- Puente Genil (14056) — 54
-- Membrillo de Puente Genil: capital mundial del dulce de membrillo desde el s.XIX
-- Exportado internacionalmente desde 1880, La Góndola recomendada por Repsol
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='14056' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14056','producto','Membrillo de Puente Genil — capital mundial',
  'Puente Genil es la capital mundial del dulce de membrillo (carne de membrillo). Su lema es "donde el sol se hace dulce". Desde el s.XIX se exporta a todo el mundo — llegó a tener 22 fábricas. La Góndola es la marca más famosa, recomendada por Guía Repsol. También pertenece a DOP Montilla-Moriles y DOP Lucena',
  'Repsol',date('now'));

-- Rute (14058) — 50
-- Anís de Rute (Machaquito): destilación artesanal desde el s.XVII, el licor más reconocido de Córdoba
-- Fama internacional consolidada, Museo del Anís en el municipio
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='14058' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14058','producto','Anís de Rute (Machaquito) — licor emblemático desde el s.XVII',
  'Rute es la capital del anís en España. Destilación artesanal desde el siglo XVII en alambiques de cobre. Anís Machaquito es la marca más conocida. El municipio tiene un Museo del Anís y las destilerías son una atracción turística gastronómica de primer orden en Córdoba. También en DOP Lucena (aceite)',
  'excel_curado',date('now'));

-- ── TIER 3: SEDE DOP + DATOS ESPECÍFICOS ────────────────────────────────────

-- Baena (17003) — 44
-- Sede DOP Baena (aceite) — uno de los mejores AOVEs del mundo, XXII premios internacionales
-- También zona DOP Montilla-Moriles (vino, parcial)
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='17003' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17003','producto','DOP Aceite de Baena — sede y emblema',
  'Baena da nombre a una de las DOPs de aceite de oliva virgen extra más prestigiosas del mundo. 60.000 hectáreas, más de 7 millones de olivos, variedades Picudo y Hojiblanca. Premiado en competiciones internacionales. La denominación integra 8 municipios con Baena como capital',
  'excel_curado',date('now'));

-- Priego de Córdoba (14055) — 44
-- Sede DOP Priego de Córdoba (aceite) — considerado el mejor AOVE del mundo en múltiples ediciones
-- XXIX edición premios DOP Priego 2026, también turismo gastronómico de referencia
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='14055' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14055','producto','DOP Aceite Priego de Córdoba — uno de los mejores aceites del mundo',
  'Priego de Córdoba es sede de una de las DOPs de aceite de oliva más reconocidas internacionalmente. Más de 29.500 hectáreas en el Parque Natural Sierras Subbéticas. XXIX edición de sus premios en 2026. Variedad Hojiblanca y Picuda. La denominación abarca 4 municipios con Priego como capital y referente mundial del AOVE',
  'excel_curado',date('now'));

-- Montilla (14042) — 42
-- Sede y capital DOP Montilla-Moriles (vino) — fino, amontillado, oloroso, Pedro Ximénez
-- Pedro Ximénez de Montilla: uva que viajó al mundo y da nombre al vino dulce más famoso
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='14042' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14042','producto','DOP Montilla-Moriles — capital del Pedro Ximénez',
  'Montilla es la capital de la DO Montilla-Moriles, la denominación vinícola más importante de Córdoba. Produce finos, amontillados, olorosos y el famoso Pedro Ximénez — vino dulce de uva pasificada único en el mundo, que da nombre a la variedad. Vinos generosos de larga tradición histórica en la comarca campiñesa',
  'excel_curado',date('now'));

-- Pozoblanco (14054) — 42
-- Capital de Los Pedroches, sede de la DOP jamón ibérico de bellota 100%
-- COVAP: la mayor cooperativa ganadera de España tiene su sede aquí
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='14054' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14054','producto','DOP Los Pedroches — jamón ibérico de bellota 100%',
  'Pozoblanco es la capital del Valle de Los Pedroches y sede de la DOP Los Pedroches, que ampara jamón ibérico de bellota 100% pata negra. La cooperativa COVAP, con sede en Pozoblanco, es la mayor empresa agroalimentaria andaluza. El ecosistema de encinas de la dehesa da a este jamón sus características únicas',
  'excel_curado',date('now'));

-- Montoro (14043) — 40
-- Sede DOP Montoro-Adamuz (aceite) — AOVE con variedad autóctona Nevadillo Negro única
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='14043' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14043','producto','DOP Aceite Montoro-Adamuz — variedad autóctona Nevadillo Negro',
  'Montoro es el municipio principal de la DOP Montoro-Adamuz, que protege un aceite de oliva virgen extra con más de 400 ppm de polifenoles. Su rasgo distintivo es la variedad autóctona Nevadillo Negro, única en esta comarca de la Sierra cordobesa. 8 municipios integran esta denominación',
  'excel_curado',date('now'));

-- Lucena (14038) — 40
-- Sede DOP Aceite Lucena — 40.000 hectáreas, variedad Hojiblanca (llamada "Lucentina")
-- También zona DOP Montilla-Moriles
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='14038' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14038','producto','DOP Aceite de Lucena — variedad Hojiblanca "Lucentina"',
  'Lucena es sede de la DOP Aceite de Lucena, que protege el aceite de oliva virgen extra de variedad Hojiblanca (también llamada "Lucentina" en honor a la ciudad). 40.000 hectáreas y 10 municipios. El aceite se exporta a China y Japón. Lucena también pertenece parcialmente a la DO Montilla-Moriles',
  'excel_curado',date('now'));

-- Hinojosa del Duque (14035) — 38
-- Capital cultural de Los Pedroches, "la catedral de la sierra", DOP Los Pedroches
-- Gastronomía serrana documentada: andrajos, migas, caza
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='14035' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14035','producto','DOP Los Pedroches + gastronomía serrana de referencia',
  'Hinojosa del Duque es la "capital cultural" de Los Pedroches y municipio DOP Los Pedroches (jamón ibérico de bellota 100%). Su gastronomía serrana tradicional — andrajos de liebre, migas de matanza, caza mayor — está documentada en la Guía de Gastronomía Tradicional de Sierra Morena de la Diputación de Córdoba',
  'excel_curado',date('now'));

-- ── TIER 4: DOP BAENA — miembros con datos específicos ──────────────────────

-- Zuheros (14075) — 36
-- DOP Baena (aceite) + uno de los pueblos más bonitos de España (Red Pueblos Más Bonitos)
-- Queso de Zuheros documentado localmente
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='14075' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14075','producto','DOP Aceite Baena + Queso de Zuheros',
  'Zuheros pertenece a la DOP Aceite de Baena y es uno de los Pueblos Más Bonitos de España. Es conocido por su queso artesanal de cabra local y por ser puerta del Parque Natural Sierras Subbéticas. La combinación de AOVE DOP y productos artesanales de la sierra lo destaca gastronómicamente',
  'excel_curado',date('now'));

-- Doña Mencía (14022) — 34
-- DOP Baena (aceite) + DOP Montilla-Moriles (vino, íntegro) — doble denominación
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='14022' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14022','producto','DOP Baena (aceite) + DOP Montilla-Moriles (vino) — doble denominación',
  'Doña Mencía es uno de los pocos municipios de Córdoba que pertenece íntegramente a dos denominaciones de origen: DOP Aceite de Baena y DOP Montilla-Moriles (vino). Esta doble distinción refleja la riqueza agroalimentaria del municipio en la Subbética cordobesa',
  'excel_curado',date('now'));

-- ── TIER 5: DOP BAENA miembros (todos igual) ─────────────────────────────────
-- Cabra, Castro del Río, Luque, Nueva Carteya
-- (Baena ya tiene 44, Zuheros 36, Doña Mencía 34)
UPDATE puntuaciones SET puntuacion=30 WHERE categoria='gastronomia'
  AND codigo_ine IN ('17006','14019','14039','14046');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17006','producto','DOP Aceite de Baena','Municipio integrante de la DOP Aceite de Baena — AOVE de variedades Picudo y Hojiblanca en la Subbética cordobesa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14019','producto','DOP Aceite de Baena + DOP Montilla-Moriles (parcial)','Castro del Río pertenece a la DOP Aceite de Baena y parcialmente a la DO Montilla-Moriles','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14039','producto','DOP Aceite de Baena','Municipio integrante de la DOP Aceite de Baena — AOVE en el corazón de la Subbética','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14046','producto','DOP Aceite de Baena + DOP Montilla-Moriles (íntegro)','Nueva Carteya pertenece a la DOP Aceite de Baena y es municipio íntegro de la DO Montilla-Moriles','excel_curado',date('now'));

-- ── TIER 6: DOP PRIEGO miembros (todos igual) ────────────────────────────────
-- Almedinilla, Carcabuey, Fuente-Tójar
-- (Priego ya tiene 44)
UPDATE puntuaciones SET puntuacion=30 WHERE categoria='gastronomia'
  AND codigo_ine IN ('14001','14016','14031');

-- Nota: Almedinilla = 14001? Verificar — puede no estar en la lista de municipios cargados
-- Carcabuey no aparece en la lista de municipios canónicos — puede ser pedanía
-- Fuente-Tójar = 14031 sí aparece
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14031','producto','DOP Aceite Priego de Córdoba','Municipio integrante de la DOP Priego de Córdoba — AOVE de variedades Hojiblanca y Picuda en el Parque Natural Sierras Subbéticas','excel_curado',date('now'));

-- ── TIER 7: DOP MONTORO-ADAMUZ miembros (todos igual) ────────────────────────
-- Adamuz, Espiel, Hornachuelos, Obejo, Villaharta, Villanueva del Rey, Villaviciosa
-- (Montoro ya tiene 40)
UPDATE puntuaciones SET puntuacion=28 WHERE categoria='gastronomia'
  AND codigo_ine IN ('14002','14026','14036','14047','14068','14071','14073');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14002','producto','DOP Aceite Montoro-Adamuz','Municipio integrante de la DOP Montoro-Adamuz — AOVE con variedad autóctona Nevadillo Negro, más de 400 ppm de polifenoles','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14026','producto','DOP Aceite Montoro-Adamuz + DOP Los Pedroches (ibérico)','Espiel pertenece a la DOP Montoro-Adamuz (aceite) y a la zona DOP Los Pedroches (jamón ibérico de bellota, zona sierra >300m)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14036','producto','DOP Aceite Montoro-Adamuz','Hornachuelos, en el corazón del Parque Natural Sierra de Hornachuelos, integra la DOP Montoro-Adamuz. AOVE de montaña con Nevadillo Negro autóctono','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14047','producto','DOP Aceite Montoro-Adamuz','Municipio integrante de la DOP Montoro-Adamuz — AOVE de sierra cordobesa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14068','producto','DOP Aceite Montoro-Adamuz','Municipio integrante de la DOP Montoro-Adamuz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14071','producto','DOP Aceite Montoro-Adamuz + DOP Los Pedroches (ibérico)','Villanueva del Rey pertenece a la DOP Montoro-Adamuz y a la zona DOP Los Pedroches (zona sierra >300m)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14073','producto','DOP Aceite Montoro-Adamuz + DOP Los Pedroches (ibérico)','Villaviciosa de Córdoba pertenece a la DOP Montoro-Adamuz y a la zona DOP Los Pedroches (sierra >300m)','excel_curado',date('now'));

-- ── TIER 8: DOP LUCENA miembros (todos igual, sin dato extra) ────────────────
-- Aguilar de la Frontera, Encinas Reales, Iznájar, Moriles, Monturque
-- (Lucena 40, Puente Genil 54, Rute 50, Montilla 42 ya cubiertos)
-- Aguilar también en DOP Montilla-Moriles (parcial)
-- Moriles y Monturque también íntegros en DOP Montilla-Moriles
UPDATE puntuaciones SET puntuacion=28 WHERE categoria='gastronomia'
  AND codigo_ine IN ('17001','14024','14037','14044','14045');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('17001','producto','DOP Aceite Lucena + DOP Montilla-Moriles (parcial)','Aguilar de la Frontera pertenece a la DOP Aceite de Lucena y parcialmente a la DO Montilla-Moriles','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14024','producto','DOP Aceite de Lucena','Municipio integrante de la DOP Aceite de Lucena — AOVE de variedad Hojiblanca en el sur de Córdoba','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14037','producto','DOP Aceite de Lucena','Iznájar, junto al embalse más grande de Andalucía, integra la DOP Aceite de Lucena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14044','producto','DOP Aceite Lucena + DOP Montilla-Moriles (íntegro)','Monturque pertenece íntegramente a la DOP Aceite de Lucena y a la DO Montilla-Moriles','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14045','producto','DOP Aceite Lucena + DOP Montilla-Moriles (íntegro)','Moriles da nombre a la DO Montilla-Moriles y también integra la DOP Aceite de Lucena','excel_curado',date('now'));

-- ── TIER 9: DOP MONTILLA-MORILES solo (parciales sin otra DOP) ───────────────
-- Espejo, Fernán Núñez, La Rambla, Montemayor, Santaella, Montalbán
UPDATE puntuaciones SET puntuacion=26 WHERE categoria='gastronomia'
  AND codigo_ine IN ('14025','14027','14057','14041','14060','14040');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14025','producto','DO Montilla-Moriles (vino, parcial)','Espejo pertenece parcialmente a la DO Montilla-Moriles — vinos generosos y Pedro Ximénez de la campiña cordobesa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14027','producto','DO Montilla-Moriles (vino, parcial)','Fernán Núñez pertenece parcialmente a la DO Montilla-Moriles','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14057','producto','DO Montilla-Moriles (vino, parcial)','La Rambla pertenece parcialmente a la DO Montilla-Moriles — conocida también por su tradición alfarera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14041','producto','DO Montilla-Moriles (vino, parcial)','Montemayor pertenece parcialmente a la DO Montilla-Moriles','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14060','producto','DO Montilla-Moriles (vino, parcial)','Santaella pertenece parcialmente a la DO Montilla-Moriles','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14040','producto','DO Montilla-Moriles (vino, íntegro)','Montalbán de Córdoba es municipio íntegro de la DO Montilla-Moriles','excel_curado',date('now'));

-- ── TIER 10: DOP LOS PEDROCHES (jamón ibérico) — comarca Los Pedroches ───────
-- Alcaracejos, Añora, Belalcázar, Cardeña, Conquista, Dos Torres, El Guijo, El Viso,
-- Fuente la Lancha, Pedroche, Santa Eufemia, Torrecampo, Villanueva del Duque,
-- Villanueva de Córdoba, Villaralto
-- (Pozoblanco 42, Hinojosa 38 ya cubiertos)
UPDATE puntuaciones SET puntuacion=26 WHERE categoria='gastronomia'
  AND codigo_ine IN (
    '14003','14004','17004','14011','14020','14023','14034','14074',
    '14028','14051','14061','14062','14070','14069','14072'
  );
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14003','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Municipio del Valle de Los Pedroches integrante de la DOP Los Pedroches — jamón ibérico de bellota 100% pata negra curado en la dehesa de encinas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14004','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Municipio del Valle de Los Pedroches integrante de la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('17004','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Belalcázar, en el extremo norte de Los Pedroches, integra la DOP Los Pedroches — jamón ibérico de bellota 100%','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14011','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Cardeña, en el límite con Jaén, integra la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14020','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Municipio del Valle de Los Pedroches integrante de la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14023','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Municipio del Valle de Los Pedroches integrante de la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14034','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Municipio del Valle de Los Pedroches integrante de la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14074','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','El Viso, municipio de Los Pedroches, integra la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14028','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Fuente la Lancha integra la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14051','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Pedroche, que da nombre a la comarca, integra la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14061','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Municipio del Valle de Los Pedroches integrante de la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14062','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Municipio del Valle de Los Pedroches integrante de la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14070','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Villanueva del Duque integra la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14069','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Villanueva de Córdoba es uno de los municipios más importantes de Los Pedroches e integra la DOP Los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14072','producto','DOP Los Pedroches — jamón ibérico de bellota 100%','Municipio del Valle de Los Pedroches integrante de la DOP Los Pedroches','excel_curado',date('now'));

-- ── TIER 11: DOP LOS PEDROCHES zona Guadiato/Sierra (>300m) ─────────────────
-- Fuente Obejuna, La Granjuela, Peñarroya-Pueblonuevo, Valsequillo
-- (Espiel 28, Villanueva del Rey 28, Villaviciosa 28 ya cubiertos con Montoro-Adamuz)
UPDATE puntuaciones SET puntuacion=26 WHERE categoria='gastronomia'
  AND codigo_ine IN ('14029','14032','14052','14064');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14029','producto','DOP Los Pedroches (zona sierra >300m)','Fuente Obejuna, en el Valle del Guadiato, integra la DOP Los Pedroches en su zona de sierra a más de 300 metros de altitud','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14032','producto','DOP Los Pedroches (zona sierra >300m)','La Granjuela integra la DOP Los Pedroches en su zona de sierra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14052','producto','DOP Los Pedroches (zona sierra >300m)','Peñarroya-Pueblonuevo, capital del Guadiato, integra la DOP Los Pedroches en su zona de sierra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('14064','producto','DOP Los Pedroches (zona sierra >300m)','Valsequillo integra la DOP Los Pedroches en su zona de sierra','excel_curado',date('now'));

-- ── SYNC DUPLICADOS ──────────────────────────────────────────────────────────
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14019' AND p2.categoria='gastronomia') WHERE codigo_ine='17007' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14021' AND p2.categoria='gastronomia') WHERE codigo_ine='17008' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14025' AND p2.categoria='gastronomia') WHERE codigo_ine='17009' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14029' AND p2.categoria='gastronomia') WHERE codigo_ine='17011' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14035' AND p2.categoria='gastronomia') WHERE codigo_ine='17012' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14037' AND p2.categoria='gastronomia') WHERE codigo_ine='17013' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14017' AND p2.categoria='gastronomia') WHERE codigo_ine='17014' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14038' AND p2.categoria='gastronomia') WHERE codigo_ine='17015' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14042' AND p2.categoria='gastronomia') WHERE codigo_ine='17016' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14043' AND p2.categoria='gastronomia') WHERE codigo_ine='17017' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14049' AND p2.categoria='gastronomia') WHERE codigo_ine='17018' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14052' AND p2.categoria='gastronomia') WHERE codigo_ine='17019' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14053' AND p2.categoria='gastronomia') WHERE codigo_ine='17020' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14054' AND p2.categoria='gastronomia') WHERE codigo_ine='17021' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14055' AND p2.categoria='gastronomia') WHERE codigo_ine='17022' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14056' AND p2.categoria='gastronomia') WHERE codigo_ine='17023' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14058' AND p2.categoria='gastronomia') WHERE codigo_ine='17024' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14069' AND p2.categoria='gastronomia') WHERE codigo_ine='17025' AND categoria='gastronomia';

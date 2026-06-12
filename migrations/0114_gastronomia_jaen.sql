-- Gastronomía Jaén — curación manual con datos verificados
-- Fuentes: Guía Michelin 2026, Guía Repsol 2025, MAPA DOPs/IGPs, blogs y webs especializadas
--
-- MICHELIN 2026 en Jaén:
--   Jaén capital: Bagá★+GS, Dama Juana★, Malak★, Radis★+GS  (4 estrellas)
--   Baeza: Vandelvira★ + Green Star + Young Chef Award 2026
--   Bailén: Aureum by Picualia (Bib Gourmand)
-- REPSOL 2025:
--   Jaén: Bagá (3 Soles), Casa Antonio, Radis, Dama Juana, Malak (1 Sol cada uno)
--   Linares: Los Sentidos, Canela en Rama (1 Sol cada uno)
--   Bailén: Taberna de Miguel (1 Sol)
--   Alcaudete: Almocadén (1 Sol)
--   Baeza: Vandelvira (1 Sol)
--   Siles: Almoroje (1 Sol — nuevo 2025)
-- DOPs ACEITE: Sierra de Cazorla (9 munis), Sierra de Segura (14 munis), Sierra Mágina (14 munis)
-- IGP Aceite de Jaén: cubre todos los 97 municipios de la provincia
-- IGP Vinos Sierra Sur de Jaén: Alcalá la Real, Castillo de Locubín, Frailes,
--   Fuensanta de Martos, Los Villares, Valdepeñas de Jaén (+ partes Alcaudete y Martos)

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaén');

-- 2. Limpiar entidades de gastronomia de fuentes automáticas
DELETE FROM entidades WHERE tipo IN ('gastronomia','producto')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaén');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaén');

-- ── TIER 1: MICHELIN ★★★ equivalent ─────────────────────────────────────

-- Jaén (23050) — 95
-- 4 estrellas Michelin en la ciudad (Bagá+GS, Dama Juana, Malak, Radis+GS)
-- 3 Soles Repsol en Bagá + 4 Soles adicionales | Única ciudad en España con tapa gratuita
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='23050' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23050','gastronomia','Bagá — 3 Soles Repsol + Estrella Michelin + Green Star','Chef Pedro Sánchez. Cocina de temporada basada en ingredientes locales de Jaén. Máxima distinción Repsol (3 Soles) y Estrella Michelin con Green Star por sostenibilidad','Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23050','gastronomia','Dama Juana — Estrella Michelin','Tres menús degustación (Madre, María, Triana) que narran un viaje gastronómico a través de la memoria del chef. Estrella Michelin en Jaén capital','Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23050','gastronomia','Malak — Estrella Michelin','Chef Javier Jurado. Cocina creativa inspirada en la Sierra del Segura con reinterpretación de recetas tradicionales. Estrella Michelin + Sol Repsol','Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23050','gastronomia','Radis — Estrella Michelin + Green Star','Chef Juanjo Mesa, natural de Pegalajar. Dos menús degustación de cocina de tradición y recuerdos de infancia. Estrella Michelin y Green Star por cocina sostenible','Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23050','gastronomia','Cultura de la tapa gratuita','Jaén es única en España: cada consumición lleva tapa gratuita — tradición que la convierte en referente nacional de la cultura del bar y atrae turismo gastronómico específico','excel_curado',date('now'));

-- ── TIER 2: MICHELIN ★ ──────────────────────────────────────────────────

-- Baeza (24010) — 89
-- 1 estrella Michelin (Vandelvira + Green Star + Young Chef Award 2026) + 1 Sol Repsol
-- Ciudad Patrimonio UNESCO, cocina conventual, menús creativos con huerto propio
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine='24010' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24010','gastronomia','Vandelvira — Estrella Michelin + Green Star + Young Chef 2026','Chef Juan Carlos García, ganador del Young Chef Award Michelin 2026. Cocina creativa en un monasterio del siglo XVI con ingredientes del huerto propio. Estrella Michelin y Green Star por cocina sostenible','Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24010','gastronomia','Cocina conventual de Baeza','Ciudad Patrimonio UNESCO con herencia culinaria de sus conventos: repostería artesana, andrajos, migas y gazpachos de la campiña. Buena oferta de tapas en su casco histórico renacentista','excel_curado',date('now'));

-- ── TIER 3: MULTI-SOL REPSOL ─────────────────────────────────────────────

-- Linares (23055) — 73
-- 2 Soles Repsol: Los Sentidos (chef Juan Pablo Gámez) + Canela en Rama (chef Juan Carlos Trujillo)
-- Ambos chefs premiados con el Premio Internacional de Cocina de AOVE "Jaén Paraíso Interior"
UPDATE puntuaciones SET puntuacion=73 WHERE codigo_ine='23055' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23055','gastronomia','Los Sentidos — Sol Repsol','Chef Juan Pablo Gámez, premiado con el Premio Internacional de Cocina de AOVE. Cocina tradicional andaluza reinventada con técnicas modernas y producto local. Sol Guía Repsol','Repsol',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23055','gastronomia','Canela en Rama — Sol Repsol + Michelin recomendado','Chef Juan Carlos Trujillo, también galardonado con el Premio Internacional AOVE Jaén. Reinterpretación de la cocina andaluza tradicional. Sol Repsol y recomendado por la Guía Michelin','Repsol',date('now'));

-- ── TIER 4: BIB GOURMAND + SOL REPSOL ───────────────────────────────────

-- Bailén (24011) — 68
-- Bib Gourmand Michelin (Aureum by Picualia) + 1 Sol Repsol (Taberna de Miguel)
-- Picualia es una de las almazaras más modernas de Europa, elegida mejor cooperativa de España 2026
-- Aureum: primer restaurante de España ubicado en una cooperativa oleícola
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='24011' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24011','gastronomia','Aureum by Picualia — Bib Gourmand Michelin','Primer restaurante de España ubicado en una cooperativa oleícola. Menú de 7 fases con el AOVE Picualia como hilo conductor. Bib Gourmand Michelin 2025 — mejor relación calidad-precio','Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24011','producto','Picualia — Cooperativa mejor de España 2026','La cooperativa oleícola Picualia de Bailén fue elegida mejor cooperativa de aceite de oliva de España en 2026. Produce AOVE de variedad Picual con reconocimiento nacional e internacional','excel_curado',date('now'));

-- ── TIER 5: SOL REPSOL + DOP ─────────────────────────────────────────────

-- Siles (23082) — 63
-- 1 Sol Repsol (Almoroje, nuevo 2025) + miembro DOP Sierra de Segura
-- Almoroje: cocina serrana con productos de la sierra de Segura como protagonistas
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='23082' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23082','gastronomia','Almoroje — Sol Repsol 2025','Nuevo Sol Repsol en 2025 para este restaurante de cocina serrana en Siles. Cocina de montaña con productos de la sierra de Segura como protagonistas — uno de los nuevos referentes gastronómicos de Jaén','Repsol',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23082','producto','DOP Aceite Sierra de Segura','Siles pertenece a la Denominación de Origen Sierra de Segura — AOVE de cosecha temprana de gran calidad producido en olivares de montaña','excel_curado',date('now'));

-- ── TIER 6: SOL REPSOL ───────────────────────────────────────────────────

-- Alcaudete (24003) — 58
-- 1 Sol Repsol (Almocadén) + forma parte de la zona IGP Vinos Sierra Sur
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='24003' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24003','gastronomia','Almocadén — Sol Repsol','Restaurante con Sol Guía Repsol que destaca por su cocina de campiña. Referente gastronómico de Alcaudete y la comarca','Repsol',date('now'));

-- ── TIER 7: SEDE DOP PRINCIPAL ───────────────────────────────────────────

-- Segura de la Sierra (23081) — 54
-- Sede de la DOP Aceite Sierra de Segura — la denominación de origen de aceite más antigua de España (1993)
-- Chivo Segureño (raza autóctona con identidad gastronómica propia), miel de montaña
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='23081' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23081','producto','DOP Aceite Sierra de Segura — la más antigua de España','Segura de la Sierra es el corazón y referente de la denominación de origen más antigua de España para aceite de oliva (1993). AOVE de variedad Picual con carácter único de alta montaña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23081','producto','Chivo Segureño y miel de montaña','Cabrito lechal de raza segureña criado en pastoreo extensivo en la sierra — producto gastronómico de identidad propia. La miel de la sierra de Segura, producida en el mayor espacio natural de España, es otro producto local reconocido','excel_curado',date('now'));

-- Cazorla (23028) — 52
-- Sede DOP Aceite Sierra de Cazorla (40.000 ha, variedades Picual y Royal)
-- Trucha del río Guadalquivir, perdiz en escabeche, jabalí, setas (níscalos), miel, cocina serrana documentada
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='23028' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23028','producto','DOP Aceite Sierra de Cazorla','40.000 hectáreas de olivar en el mayor espacio natural protegido de España. Variedades Picual y Royal — aceite con notas de hierba fresca, tomate y manzana. Cazorla es la capital de esta denominación','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23028','gastronomia','Cocina de monte y río — trucha, caza y setas','Perdiz en escabeche, trucha del Guadalquivir, jabalí guisado y níscalos de temporada conforman la gastronomía de montaña de Cazorla. Cocina serrana documentada y reconocida en múltiples guías de viaje','excel_curado',date('now'));

-- ── TIER 8: GASTRONOMÍA DOCUMENTADA SIN PREMIO FORMAL ──────────────────

-- Úbeda (23092) — 48
-- Sin Michelin ni Repsol. Cocina propia documentada: ochío, andrajos, lomo de orza,
-- morcilla de caldera, migas, pipirrana. Ciudad UNESCO con oferta hostelera amplia.
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='23092' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23092','gastronomia','Cocina renacentista de Úbeda','Ciudad Patrimonio UNESCO con cocina de interior propia: el ochío (pan con aceite, pimentón y morcilla), andrajos, lomo de orza y morcilla de caldera. El AOVE es protagonista absoluto de todos sus platos','excel_curado',date('now'));

-- Andújar (24005) — 47
-- Sin Michelin ni Repsol. Gastronomía cinegética muy documentada: carne de monte,
-- perdiz, flamenquín originario de Andújar, choto al ajillo, aceitunas aliñás.
UPDATE puntuaciones SET puntuacion=47 WHERE codigo_ine='24005' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24005','gastronomia','Gastronomía cinegética y el flamenquín de Andújar','Andújar reivindica el flamenquín como plato originario de la ciudad. Cocina de Sierra Morena: carne de monte adobada, perdiz en escabeche, choto al ajillo y aceitunas aliñás son sus señas de identidad','excel_curado',date('now'));

-- Alcalá la Real (24002) — 46
-- IGP Vinos Sierra Sur de Jaén (municipio sede principal, bodega Marcelino Serrano activa)
-- Queso de cabra artesanal, Casa Montañés (empresa centenaria de embutidos)
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='24002' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24002','producto','IGP Vinos Sierra Sur de Jaén','Alcalá la Real es la capital de la IGP Vinos Sierra Sur de Jaén. La bodega Marcelino Serrano produce vinos con uva Chardonnay y Tempranillo en este viñedo histórico que recuperó la tradición vitivinícola del siglo XVI','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24002','producto','Queso de cabra y embutidos artesanos','Casa Montañés, empresa familiar centenaria, elabora embutidos con jamón, trufa y especias. El queso de cabra local y el lomo en aceite completan la despensa artesanal de Alcalá la Real','excel_curado',date('now'));

-- Martos (23060) — 45
-- Primer municipio productor de aceite de oliva Picual del mundo (22.000 ha, ~25 millones de kg)
-- En mayo 2026 acogió la reunión de los 5 chefs jiennenses con estrella Michelin
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='23060' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23060','producto','Mayor municipio productor de aceite Picual del mundo','Martos tiene más de 22.000 hectáreas de olivar y produce alrededor de 25 millones de kilos de aceite al año — es el primer municipio productor de aceite de oliva Picual del mundo. Sus cooperativas fueron sede en 2026 de la reunión de los 5 chefs estrella Michelin de Jaén','excel_curado',date('now'));

-- Santiago-Pontones (23904) — 44
-- Municipio más extenso de Jaén, DOP Sierra de Segura
-- 1.400 especies de setas (níscalos, negrillas, boletus), miel de montaña, caza mayor
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='23904' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23904','gastronomia','1.400 especies de setas y productos silvestres','El término municipal de Santiago-Pontones alberga 1.400 especies de hongos, casi todas comestibles — níscalos, negrillas y boletus negros. Junto con la miel de montaña, la caza mayor y el aceite DOP Sierra de Segura, compone una despensa silvestre única','excel_curado',date('now'));

-- La Carolina (23024) — 43
-- Paté de perdiz de La Carolina: producto gastronómico emblema creado en 1967
-- Cocina de caza de Sierra Morena, níscalos, pastelillos de conejo
UPDATE puntuaciones SET puntuacion=43 WHERE codigo_ine='23024' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23024','producto','Paté de perdiz de La Carolina','Producto gastronómico emblema nacido en 1967 en La Carolina — elaborado con carne de perdiz, hígado, tocino, brandy y especias. Su éxito lo convirtió en exportable y referente de la cocina cinegética de Sierra Morena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23024','gastronomia','Cocina de caza de Sierra Morena','Ciudad fundada por Carlos III con colonos alemanes en el siglo XVIII. La caza de Sierra Morena protagoniza su cocina: perdiz escabechada, pastelillos de conejo, carne de monte y níscalos en temporada','excel_curado',date('now'));

-- La Puerta de Segura (23072) — 42
-- Agrosegura: Medalla de Oro Olive Japan 2024, Medalla de Oro Dubai, Medalla de Plata Londres
-- Alquería de Camarillas: Medalla de Oro Dubai (aceite biodinámico DOP Sierra de Segura)
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='23072' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23072','producto','Agrosegura — Medalla de Oro Olive Japan 2024 y Dubái','La cooperativa Agrosegura de La Puerta de Segura ganó la Medalla de Oro en Olive Japan 2024 (800+ muestras de todo el mundo) y la Medalla de Plata en Londres. Alquería de Camarillas del mismo municipio obtuvo el Oro en los Dubai International Taste Awards','excel_curado',date('now'));

-- Marmolejo (23059) — 40
-- Balneario histórico reconocido por la Real Academia de Gastronomía
-- Huéspedes ilustres: Charles Chaplin, Santiago Ramón y Cajal, Imperio Argentina
-- Plato local: cascaflote, pimientos coloraos asados
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='23059' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23059','gastronomia','Balneario histórico y aguas de la Real Academia de Gastronomía','Las aguas mineromedicinales de Marmolejo están recogidas en el catálogo de la Real Academia de Gastronomía. El balneario acogió en el siglo XX a Charles Chaplin, Ramón y Cajal e Imperio Argentina. Su cocina local incluye el cascaflote y los pimientos coloraos asados como platos propios','excel_curado',date('now'));

-- Villanueva del Arzobispo (23097) — 38
-- Múltiples cooperativas AOVE premium reconocidas: Prólogo, Bikurim, Las Villas, Bañón, Molino de Casilda
-- Cocina serrana documentada con embutidos artesanos y platos de caza
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='23097' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23097','producto','Cooperativas AOVE premium (Prólogo, Bikurim, Las Villas)','Villanueva del Arzobispo cuenta con varias cooperativas de aceite de oliva de cosecha temprana con proyección nacional: Prólogo, Bikurim, Las Villas, Bañón y Molino de Casilda — producen AOVE de alta gama reconocidos en ferias especializadas','excel_curado',date('now'));

-- Torredonjimeno (23087) — 36
-- En la Vía Verde del Aceite (ruta gastronómica oficial), cocina de huerta y caza documentada
-- Pipirrana, gazpacho de pimiento rojo, pestillos, gachas
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='23087' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23087','gastronomia','Vía Verde del Aceite y cocina de campiña','Torredonjimeno forma parte de la Vía Verde del Aceite, ruta gastronómica que atraviesa los municipios más olivareros de Jaén. Pipirrana, gazpacho de pimiento rojo y pestillos son sus platos más representativos','excel_curado',date('now'));

-- ── TIER 9: DOP SIERRA DE CAZORLA (mismo score para todos) ───────────────
-- Municipios: Chilluévar, Hinojares, Huesa, La Iruela, Peal de Becerro,
--             Pozo Alcón, Quesada, Santo Tomé
-- Sin datos gastronómicos específicos adicionales verificados
UPDATE puntuaciones SET puntuacion=34 WHERE categoria='gastronomia' AND codigo_ine IN
  ('23030','23042','23045','23047','23066','23070','23073','23080');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23030','producto','DOP Aceite Sierra de Cazorla','Municipio integrante de la Denominación de Origen Sierra de Cazorla — aceite de oliva virgen extra de variedades Picual y Royal producido en el mayor parque natural de España','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23042','producto','DOP Aceite Sierra de Cazorla','Municipio integrante de la Denominación de Origen Sierra de Cazorla — aceite de oliva virgen extra de variedades Picual y Royal producido en el mayor parque natural de España','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23045','producto','DOP Aceite Sierra de Cazorla','Municipio integrante de la Denominación de Origen Sierra de Cazorla — aceite de oliva virgen extra de variedades Picual y Royal producido en el mayor parque natural de España','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23047','producto','DOP Aceite Sierra de Cazorla','Municipio integrante de la Denominación de Origen Sierra de Cazorla — aceite de oliva virgen extra de variedades Picual y Royal producido en el mayor parque natural de España','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23066','producto','DOP Aceite Sierra de Cazorla','Municipio integrante de la Denominación de Origen Sierra de Cazorla — aceite de oliva virgen extra de variedades Picual y Royal producido en el mayor parque natural de España','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23070','producto','DOP Aceite Sierra de Cazorla','Municipio integrante de la Denominación de Origen Sierra de Cazorla — aceite de oliva virgen extra de variedades Picual y Royal producido en el mayor parque natural de España','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23073','producto','DOP Aceite Sierra de Cazorla','Municipio integrante de la Denominación de Origen Sierra de Cazorla — aceite de oliva virgen extra de variedades Picual y Royal producido en el mayor parque natural de España','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23080','producto','DOP Aceite Sierra de Cazorla','Municipio integrante de la Denominación de Origen Sierra de Cazorla — aceite de oliva virgen extra de variedades Picual y Royal producido en el mayor parque natural de España','excel_curado',date('now'));

-- ── TIER 10: DOP SIERRA DE SEGURA — resto (mismo score) ──────────────────
-- Municipios: Arroyo del Ojanco, Beas de Segura, Benatae, Chiclana de Segura,
--   Génave, Hornos, Orcera, Puente de Génave, Torres de Albanchez, Villarrodrigo
-- (Segura, Siles, Santiago-Pontones y La Puerta de Segura ya puntuados arriba)
UPDATE puntuaciones SET puntuacion=32 WHERE categoria='gastronomia' AND codigo_ine IN
  ('23905','24013','24016','23029','23037','23043','23065','23071','23091','23101');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23905','producto','DOP Aceite Sierra de Segura','Municipio integrante de la DOP Sierra de Segura — aceite de oliva virgen extra Picual de montaña con gran estabilidad y alto contenido en antioxidantes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24013','producto','DOP Aceite Sierra de Segura','Municipio integrante de la DOP Sierra de Segura — aceite de oliva virgen extra Picual de montaña con gran estabilidad y alto contenido en antioxidantes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24016','producto','DOP Aceite Sierra de Segura','Municipio integrante de la DOP Sierra de Segura — aceite de oliva virgen extra Picual de montaña con gran estabilidad y alto contenido en antioxidantes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23029','producto','DOP Aceite Sierra de Segura','Municipio integrante de la DOP Sierra de Segura — aceite de oliva virgen extra Picual de montaña con gran estabilidad y alto contenido en antioxidantes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23037','producto','DOP Aceite Sierra de Segura','Municipio integrante de la DOP Sierra de Segura — aceite de oliva virgen extra Picual de montaña con gran estabilidad y alto contenido en antioxidantes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23043','producto','DOP Aceite Sierra de Segura','Municipio integrante de la DOP Sierra de Segura — aceite de oliva virgen extra Picual de montaña con gran estabilidad y alto contenido en antioxidantes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23065','producto','DOP Aceite Sierra de Segura','Municipio integrante de la DOP Sierra de Segura — aceite de oliva virgen extra Picual de montaña con gran estabilidad y alto contenido en antioxidantes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23071','producto','DOP Aceite Sierra de Segura','Municipio integrante de la DOP Sierra de Segura — aceite de oliva virgen extra Picual de montaña con gran estabilidad y alto contenido en antioxidantes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23091','producto','DOP Aceite Sierra de Segura','Municipio integrante de la DOP Sierra de Segura — aceite de oliva virgen extra Picual de montaña con gran estabilidad y alto contenido en antioxidantes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23101','producto','DOP Aceite Sierra de Segura','Municipio integrante de la DOP Sierra de Segura — aceite de oliva virgen extra Picual de montaña con gran estabilidad y alto contenido en antioxidantes','excel_curado',date('now'));

-- ── TIER 11: DOP SIERRA MÁGINA — todos igual ─────────────────────────────
-- Municipios: Albanchez de Mágina, Bedmar y Garcíez, Bélmez de la Moraleda,
--   Cabra del Santo Cristo, Cambil, Campillo de Arenas, Cárcheles,
--   Huelma, Jimena, Jódar, La Guardia de Jaén, Larva, Mancha Real, Noalejo
UPDATE puntuaciones SET puntuacion=30 WHERE categoria='gastronomia' AND codigo_ine IN
  ('24001','23902','24018','23017','23018','23019','23901','23044','23052','23053','23038','23054','23058','23064');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24001','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23902','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24018','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23017','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23018','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23019','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23901','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23044','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23052','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23053','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23038','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23054','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23058','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23064','producto','DOP Aceite Sierra Mágina','Municipio integrante de la DOP Sierra Mágina — 60.000 hectáreas de olivar Picual en la comarca más olivarera de la Sierra Sur de Jaén. Aceite de carácter intenso y frutado verde','excel_curado',date('now'));

-- ── TIER 12: IGP VINOS SIERRA SUR — otros miembros ───────────────────────
-- Castillo de Locubín, Frailes, Fuensanta de Martos, Los Villares, Valdepeñas de Jaén
-- (Alcalá la Real y Alcaudete ya puntuados arriba)
UPDATE puntuaciones SET puntuacion=27 WHERE categoria='gastronomia' AND codigo_ine IN
  ('23026','23033','23034','23099','23093');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23026','producto','IGP Vinos Sierra Sur de Jaén','Municipio integrante de la Indicación Geográfica Protegida Vinos Sierra Sur de Jaén — zona vitivinícola con variedades Tempranillo, Cabernet Sauvignon y Chardonnay en un entorno de olivares','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23033','producto','IGP Vinos Sierra Sur de Jaén','Municipio integrante de la Indicación Geográfica Protegida Vinos Sierra Sur de Jaén. En Frailes se ubica la bodega Campoameno, una de las dos bodegas activas de la denominación','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23034','producto','IGP Vinos Sierra Sur de Jaén','Municipio integrante de la Indicación Geográfica Protegida Vinos Sierra Sur de Jaén — zona vitivinícola con variedades Tempranillo, Cabernet Sauvignon y Chardonnay','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23099','producto','IGP Vinos Sierra Sur de Jaén','Municipio integrante de la Indicación Geográfica Protegida Vinos Sierra Sur de Jaén — zona vitivinícola con variedades Tempranillo, Cabernet Sauvignon y Chardonnay','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23093','producto','IGP Vinos Sierra Sur de Jaén','Municipio integrante de la Indicación Geográfica Protegida Vinos Sierra Sur de Jaén — zona vitivinícola con variedades Tempranillo, Cabernet Sauvignon y Chardonnay','excel_curado',date('now'));

-- ── SYNC DUPLICADOS ──────────────────────────────────────────────────────
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23024' AND p2.categoria='gastronomia') WHERE codigo_ine='24024' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23060' AND p2.categoria='gastronomia') WHERE codigo_ine='24062' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23061' AND p2.categoria='gastronomia') WHERE codigo_ine='24063' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23081' AND p2.categoria='gastronomia') WHERE codigo_ine='24080' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23082' AND p2.categoria='gastronomia') WHERE codigo_ine='24081' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23073' AND p2.categoria='gastronomia') WHERE codigo_ine='24073' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23075' AND p2.categoria='gastronomia') WHERE codigo_ine='24075' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23095' AND p2.categoria='gastronomia') WHERE codigo_ine='24090' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23059' AND p2.categoria='gastronomia') WHERE codigo_ine='24061' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23076' AND p2.categoria='gastronomia') WHERE codigo_ine='24076' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23043' AND p2.categoria='gastronomia') WHERE codigo_ine='24042' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23069' AND p2.categoria='gastronomia') WHERE codigo_ine='24070' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23093' AND p2.categoria='gastronomia') WHERE codigo_ine='24088' AND categoria='gastronomia';

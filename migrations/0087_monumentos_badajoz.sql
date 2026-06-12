-- Monumentos Badajoz
-- Duplicados MIN -> MAX dentro de 06xxx. Badajoz 06006, Alburquerque 06001, Medellin 06080, Feria 06049, Magacela 06075, Hornachos 06069 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Badajoz');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Badajoz');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Badajoz');

-- 4. Scores individuales

-- Merida (06018): conjunto romano UNESCO
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='06018' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06018','yacimiento','Conjunto Arqueologico de Merida','Patrimonio Mundial UNESCO. La antigua Emerita Augusta, con teatro y anfiteatro romanos, el acueducto de los Milagros y el puente, el mayor conjunto romano de Espana.','UNESCO',date('now'));

-- Zafra (06023): Alcazar de los Duques de Feria
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='06023' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06023','castillo','Alcazar de los Duques de Feria','Palacio-fortaleza del s.XV, hoy Parador, en la Sevilla la Chica, con sus plazas Grande y Chica porticadas. BIC.','BIC',date('now'));

-- Jerez de los Caballeros (06014): conjunto templario
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='06014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06014','conjunto_historico','Conjunto Historico de Jerez de los Caballeros','Villa templaria con castillo, murallas y tres esbeltas torres barrocas de iglesias. BIC. Cuna de Vasco Nuñez de Balboa.','BIC',date('now'));

-- Badajoz (06006): Alcazaba almohade
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='06006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06006','castillo','Alcazaba de Badajoz','Una de las mayores alcazabas almohades de Europa, del s.XII. BIC. Junto a la catedral-fortaleza y la Puerta de Palmas.','BIC',date('now'));

-- Olivenza (06019): conjunto manuelino + murallas
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='06019' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06019','conjunto_historico','Conjunto Historico de Olivenza','Villa de pasado portugues con arquitectura manuelina, castillo, murallas abaluartadas e iglesia de la Magdalena. BIC.','BIC',date('now'));

-- Medellin (06080): castillo + teatro romano
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='06080' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06080','castillo','Castillo y teatro romano de Medellin','Fortaleza medieval sobre un cerro junto a un teatro romano recientemente excavado. BIC. Cuna de Hernan Cortes.','BIC',date('now'));

-- Alburquerque (06001): Castillo de Luna
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='06001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06001','castillo','Castillo de Luna','Imponente fortaleza medieval sobre un risco, con la villa amurallada a sus pies, en la raya con Portugal. BIC.','BIC',date('now'));

-- Llerena (06015): Plaza Mayor + iglesia
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='06015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06015','conjunto_historico','Conjunto Historico de Llerena','Capital historica de la Baja Extremadura, con la iglesia de Nuestra Señora de la Granada de doble galeria y plaza Mayor. BIC. Ligada a Zurbaran.','BIC',date('now'));

-- Fregenal de la Sierra (06010): castillo templario
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='06010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06010','castillo','Castillo Templario de Fregenal','Fortaleza templaria del s.XIII cuyo interior alberga la plaza de toros y el mercado. BIC. Cuna de Bravo Murillo.','BIC',date('now'));

-- Feria (06049): castillo
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='06049' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06049','castillo','Castillo de Feria','Fortaleza del s.XV con una de las torres del homenaje mas altas de Extremadura, sobre la sierra. BIC.','BIC',date('now'));

-- Magacela (06075): alcazaba + dolmen
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='06075' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06075','castillo','Alcazaba de Magacela','Fortaleza arabe y de la Orden de Alcantara sobre un cerro, junto a un dolmen y restos romanos. BIC.','BIC',date('now'));

-- Hornachos (06069): conjunto morisco
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='06069' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06069','conjunto_historico','Casco morisco de Hornachos','Pueblo de fuerte raigambre morisca con fortaleza arabe en lo alto y trazado andalusi. ','excel_curado',date('now'));

-- Azuaga (06005): castillo + iglesia
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='06005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06005','iglesia','Iglesia de Nuestra Señora de la Consolacion','Templo gotico-mudejar monumental, junto al castillo de Miramontes, en la Campiña Sur. BIC.','BIC',date('now'));

-- Almendralejo (06004): patrimonio del vino
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='06004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('06004','monumento','Casco de Almendralejo','Capital del vino y el cava de Extremadura, con la iglesia de la Purificacion y casas-bodega. Cuna de Espronceda y Carolina Coronado. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06008' AND p2.categoria='monumentos') WHERE codigo_ine='06042' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06009' AND p2.categoria='monumentos') WHERE codigo_ine='06044' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06010' AND p2.categoria='monumentos') WHERE codigo_ine='06050' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06011' AND p2.categoria='monumentos') WHERE codigo_ine='06052' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06012' AND p2.categoria='monumentos') WHERE codigo_ine='06060' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06013' AND p2.categoria='monumentos') WHERE codigo_ine='06063' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06014' AND p2.categoria='monumentos') WHERE codigo_ine='06070' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06015' AND p2.categoria='monumentos') WHERE codigo_ine='06074' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06016' AND p2.categoria='monumentos') WHERE codigo_ine='06085' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06017' AND p2.categoria='monumentos') WHERE codigo_ine='06088' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06018' AND p2.categoria='monumentos') WHERE codigo_ine='06083' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06019' AND p2.categoria='monumentos') WHERE codigo_ine='06095' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06020' AND p2.categoria='monumentos') WHERE codigo_ine='06129' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06022' AND p2.categoria='monumentos') WHERE codigo_ine='06153' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06023' AND p2.categoria='monumentos') WHERE codigo_ine='06158' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='06024' AND p2.categoria='monumentos') WHERE codigo_ine='06159' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Badajoz)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Badajoz'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

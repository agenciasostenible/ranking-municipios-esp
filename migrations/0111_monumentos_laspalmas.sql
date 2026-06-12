-- Monumentos Las Palmas
-- Duplicados MIN 25xxx -> MAX 35xxx. Teror 35027, Betancuria 25004, Galdar 25005, Arucas 25003, Teguise 35024, Yaiza 35034 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Las Palmas');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Las Palmas');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Las Palmas');

-- 4. Scores individuales

-- Las Palmas de Gran Canaria (25007): Vegueta + Catedral + Casa de Colon
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='25007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25007','conjunto_historico','Barrio de Vegueta','Casco fundacional de la ciudad con la Catedral de Santa Ana y la Casa de Colon, donde recalo el navegante rumbo a America. BIC.','BIC',date('now'));

-- Teror (35027): Basilica del Pino
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='35027' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('35027','iglesia','Basilica de Nuestra Señora del Pino','Santuario de la patrona de Gran Canaria, en un casco de casas con balcones canarios de madera. BIC.','BIC',date('now'));

-- Teguise (35024): antigua capital de Lanzarote
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='35024' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('35024','conjunto_historico','Villa de Teguise','Antigua capital de Lanzarote, con palacios, conventos y el castillo de Santa Barbara sobre un volcan. BIC.','BIC',date('now'));

-- Betancuria (25004): antigua capital de Fuerteventura
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='25004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25004','conjunto_historico','Conjunto Historico de Betancuria','Primera capital de Fuerteventura, fundada en 1404, con iglesia de Santa Maria y restos del convento de San Buenaventura. BIC.','BIC',date('now'));

-- Galdar (25005): Cueva Pintada
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='25005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25005','yacimiento','Cueva Pintada de Galdar','Poblado aborigen canario con pinturas geometricas, el mejor yacimiento prehispanico de Gran Canaria. BIC. Antigua corte de los guanartemes.','BIC',date('now'));

-- Arucas (25003): iglesia de San Juan
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='25003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25003','iglesia','Iglesia de San Juan Bautista de Arucas','Templo neogotico de piedra azul, llamado la catedral de Arucas, monumental para la villa. BIC.','BIC',date('now'));

-- Telde (25013): barrio de San Juan
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='25013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25013','conjunto_historico','Barrio de San Juan de Telde','Casco fundacional con la basilica de San Juan Bautista y su retablo flamenco, y el barrio de San Francisco. BIC.','BIC',date('now'));

-- Tejeda (25012): pueblo bonito + Roque Nublo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='25012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25012','conjunto_historico','Casco de Tejeda','Pueblo de montaña entre el Roque Nublo y el Roque Bentayga, paisaje sagrado aborigen. Uno de los pueblos mas bonitos de España. ','excel_curado',date('now'));

-- Yaiza (35034): pueblo blanco + Timanfaya
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='35034' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('35034','conjunto_historico','Casco de Yaiza','Pueblo blanco a las puertas del Parque Nacional de Timanfaya, uno de los mas cuidados de Lanzarote. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25006' AND p2.categoria='monumentos') WHERE codigo_ine='35014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25007' AND p2.categoria='monumentos') WHERE codigo_ine='35016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25009' AND p2.categoria='monumentos') WHERE codigo_ine='35012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25010' AND p2.categoria='monumentos') WHERE codigo_ine='35017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25011' AND p2.categoria='monumentos') WHERE codigo_ine='35015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25012' AND p2.categoria='monumentos') WHERE codigo_ine='35025' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25013' AND p2.categoria='monumentos') WHERE codigo_ine='35026' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25014' AND p2.categoria='monumentos') WHERE codigo_ine='35030' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Las Palmas)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Las Palmas'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

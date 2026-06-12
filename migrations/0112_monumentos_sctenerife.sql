-- Monumentos Santa Cruz de Tenerife
-- Duplicados dentro de 38xxx. La Laguna 38008 / San Cristobal de La Laguna 38023 (ambos). La Orotava 38026, Vilaflor 38014, Adeje 38001, Güimar 38020 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Santa Cruz de Tenerife');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Santa Cruz de Tenerife');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Santa Cruz de Tenerife');

-- 4. Scores individuales

-- La Laguna (38008) / San Cristobal de La Laguna (38023): casco UNESCO
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine IN ('38008','38023') AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('38008','conjunto_historico','Casco Historico de La Laguna','Patrimonio Mundial UNESCO. Primera ciudad colonial sin murallas, su trazado en damero fue modelo de muchas ciudades de America.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('38023','conjunto_historico','Casco Historico de La Laguna','Patrimonio Mundial UNESCO. Primera ciudad colonial sin murallas, su trazado en damero fue modelo de muchas ciudades de America.','UNESCO',date('now'));

-- La Orotava (38026): casco historico
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='38026' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('38026','conjunto_historico','Conjunto Historico de La Orotava','El casco mejor conservado de Canarias, con las Casas de los Balcones, la iglesia de la Concepcion y palacios canarios. BIC.','BIC',date('now'));

-- Garachico (38005): conjunto + castillo San Miguel
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='38005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('38005','conjunto_historico','Conjunto Historico de Garachico','Villa portuaria arrasada por un volcan en 1706, con el castillo de San Miguel, conventos y los charcos de lava. BIC.','BIC',date('now'));

-- Icod de los Vinos (38006): Drago + casco
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='38006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('38006','conjunto_historico','Casco de Icod y Drago Milenario','Junto al Drago Milenario, simbolo vegetal de Canarias, un casco con la iglesia de San Marcos y plazas historicas. BIC.','BIC',date('now'));

-- Santa Cruz de Tenerife (38012): iglesia Concepcion + casco
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='38012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('38012','iglesia','Iglesia de la Concepcion de Santa Cruz','Templo con la torre mas emblematica de la ciudad, junto al casco historico, el palacio de Carta y el Auditorio de Calatrava. BIC.','BIC',date('now'));

-- Güimar (38020): Piramides de Güimar
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='38020' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('38020','yacimiento','Piramides de Güimar','Conjunto de estructuras escalonadas de piedra estudiadas por Thor Heyerdahl, en un parque etnografico. ','excel_curado',date('now'));

-- Vilaflor (38014): pueblo mas alto de España
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='38014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('38014','iglesia','Iglesia de San Pedro de Vilaflor','Templo del pueblo mas alto de España, a 1.400 m, puerta del Teide. ','excel_curado',date('now'));

-- Adeje (38001): Casa Fuerte
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='38001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('38001','monumento','Casa Fuerte de Adeje','Antigua fortaleza señorial de los señores de Adeje, junto al casco y el barranco del Infierno. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38005' AND p2.categoria='monumentos') WHERE codigo_ine='38015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38006' AND p2.categoria='monumentos') WHERE codigo_ine='38022' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38010' AND p2.categoria='monumentos') WHERE codigo_ine='38031' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38011' AND p2.categoria='monumentos') WHERE codigo_ine='38028' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38012' AND p2.categoria='monumentos') WHERE codigo_ine='38038' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38013' AND p2.categoria='monumentos') WHERE codigo_ine='38040' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (S.C. Tenerife)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Santa Cruz de Tenerife'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

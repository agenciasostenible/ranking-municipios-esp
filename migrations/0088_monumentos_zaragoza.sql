-- Monumentos Zaragoza
-- Duplicados MIN 49xxx -> MAX 50xxx. Resto singles en 50xxx (y Veruela 49012).

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Zaragoza');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Zaragoza');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Zaragoza');

-- 4. Scores individuales

-- Zaragoza (49013): Pilar + Aljaferia + mudejar UNESCO
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='49013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49013','palacio','Palacio de la Aljaferia','Palacio islamico del s.XI, unico ejemplo de gran arquitectura del esplendor taifa. Patrimonio Mundial UNESCO como Arte Mudejar de Aragon.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49013','catedral','Basilica del Pilar y La Seo','El Pilar, primer templo mariano de la cristiandad, y la catedral de La Seo, con su muro mudejar UNESCO. Frescos de Goya en las cupulas.','UNESCO',date('now'));

-- Sos del Rey Catolico (49010): conjunto medieval
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='49010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49010','conjunto_historico','Conjunto Historico de Sos del Rey Catolico','Villa medieval amurallada de las Cinco Villas, con castillo e iglesia romanica. BIC. Cuna de Fernando el Catolico. Uno de los pueblos mas bonitos de Espana.','BIC',date('now'));

-- Tarazona (49011): catedral mudejar
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='49011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49011','catedral','Catedral de Tarazona','Catedral con cimborrio y torre mudejares, Patrimonio Mundial UNESCO. La Zaragoza la Vieja, con plaza de toros octogonal y barrio judio. BIC.','UNESCO',date('now'));

-- Daroca (49006): recinto amurallado
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='49006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49006','conjunto_historico','Murallas de Daroca','Mas de 4 km de murallas medievales con torres y puertas monumentales, de las mas extensas de Espana. BIC. Colegiata de los Corporales.','BIC',date('now'));

-- Calatayud (49004): colegiatas mudejares + Bilbilis
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='49004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49004','conjunto_historico','Conjunto mudejar de Calatayud','Torres y colegiatas mudejares Patrimonio Mundial UNESCO, castillo arabe y la cercana ciudad romana de Bilbilis, patria de Marcial. BIC.','UNESCO',date('now'));

-- Veruela (49012): Monasterio cisterciense
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='49012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49012','monumento','Monasterio de Veruela','Gran abadia cisterciense del s.XII al pie del Moncayo, donde Becquer escribio las Cartas desde mi celda. BIC.','BIC',date('now'));

-- Uncastillo (50267): conjunto medieval + romanico
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='50267' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('50267','conjunto_historico','Conjunto Historico de Uncastillo','Villa de las Cinco Villas con castillo, seis iglesias romanicas y la portada de Santa Maria, joya del romanico aragones. BIC.','BIC',date('now'));

-- Belchite (49002): pueblo viejo en ruinas
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='49002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49002','conjunto_historico','Pueblo Viejo de Belchite','Pueblo en ruinas conservado como memorial de la Guerra Civil tras la batalla de 1937. BIC. Uno de los lugares mas evocadores de Espana.','BIC',date('now'));

-- Sadaba (50230): castillo + ruinas romanas
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='50230' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('50230','castillo','Castillo de Sadaba','Fortaleza del s.XIII de planta cuadrada con siete torres, muy bien conservada. BIC. Cerca, el mausoleo romano de los Atilios.','BIC',date('now'));

-- Fuendetodos (49008): casa natal de Goya
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='49008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49008','monumento','Casa Natal de Goya','Casa humilde donde nacio Francisco de Goya en 1746, hoy museo, junto al Museo del Grabado. BIC.','BIC',date('now'));

-- Caspe (49005): Compromiso de Caspe
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='49005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49005','iglesia','Colegiata de Santa Maria la Mayor','Templo gotico donde se proclamo en 1412 el Compromiso de Caspe, que dio la Corona de Aragon a los Trastamara. BIC.','BIC',date('now'));

-- Borja (49003): colegiata
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='49003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49003','conjunto_historico','Casco de Borja','Cuna de los Borgia, con colegiata, casa de las Conchas y el celebre Ecce Homo restaurado del santuario de la Misericordia. ','excel_curado',date('now'));

-- Mequinenza (50165): castillo + pueblo viejo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='50165' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('50165','castillo','Castillo de Mequinenza','Castillo-palacio medieval sobre la confluencia del Ebro, Segre y Cinca, restaurado. Cerca, el pueblo viejo sumergido de la obra de Moncada.','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49002' AND p2.categoria='monumentos') WHERE codigo_ine='50045' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49003' AND p2.categoria='monumentos') WHERE codigo_ine='50055' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49004' AND p2.categoria='monumentos') WHERE codigo_ine='50067' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49005' AND p2.categoria='monumentos') WHERE codigo_ine='50074' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49006' AND p2.categoria='monumentos') WHERE codigo_ine='50094' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49007' AND p2.categoria='monumentos') WHERE codigo_ine='50095' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49008' AND p2.categoria='monumentos') WHERE codigo_ine='50114' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49009' AND p2.categoria='monumentos') WHERE codigo_ine='50181' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49010' AND p2.categoria='monumentos') WHERE codigo_ine='50248' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49011' AND p2.categoria='monumentos') WHERE codigo_ine='50251' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='49013' AND p2.categoria='monumentos') WHERE codigo_ine='50297' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Zaragoza)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Zaragoza'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

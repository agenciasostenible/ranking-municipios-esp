-- Monumentos Asturias
-- Duplicados MIN 05xxx -> MAX 33xxx. Aviles 05002, Cangas de Onis 05005, Cudillero 05008, Villaviciosa 33076, Salas 33059, Pravia 33051 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Asturias');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Asturias');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Asturias');

-- 4. Scores individuales

-- Oviedo (05013): prerromanico UNESCO + catedral
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='05013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05013','monumento','Prerromanico de Santa Maria del Naranco','Patrimonio Mundial UNESCO. Palacio-iglesia de Ramiro I (s.IX), joya del arte asturiano, junto a San Miguel de Lillo. Cumbre del prerromanico.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05013','catedral','Catedral de Oviedo','Catedral gotica con la Camara Santa prerromanica Patrimonio Mundial UNESCO, que guarda la Cruz de los Angeles y el Sudario. BIC.','UNESCO',date('now'));

-- Cangas de Onis (05005): Covadonga + puente romano
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='05005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05005','monumento','Santuario de Covadonga y Puente Romano','Cuna de la Reconquista, con la Santa Cueva y la basilica, en los Picos de Europa. El Puenton medieval con la cruz de la Victoria es simbolo de la villa. BIC.','BIC',date('now'));

-- Ribadesella (05020): Cueva de Tito Bustillo
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='05020' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05020','yacimiento','Cueva de Tito Bustillo','Arte rupestre paleolitico Patrimonio Mundial UNESCO, con pinturas de hace 30.000 anos. Junto a la villa marinera del Sella.','UNESCO',date('now'));

-- Aviles (05002): casco historico
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='05002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05002','conjunto_historico','Casco Historico de Aviles','Uno de los conjuntos medievales mejor conservados de Asturias, con la calle Galiana soportalada, palacios e iglesias. BIC.','BIC',date('now'));

-- Cudillero (05008): pueblo pesquero anfiteatro
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='05008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05008','conjunto_historico','Conjunto Historico de Cudillero','Pueblo marinero de casas de colores en anfiteatro sobre el puerto, uno de los mas pintorescos de Asturias. BIC.','BIC',date('now'));

-- Llanes (05010): casco medieval + basilica
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='05010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05010','conjunto_historico','Conjunto Historico de Llanes','Villa medieval amurallada con basilica gotica, torre y puerto, junto a los Cubos de la Memoria. BIC.','BIC',date('now'));

-- Villaviciosa (33076): Valdedios + prerromanico
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='33076' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('33076','monumento','San Salvador de Valdedios','Iglesia prerromanica del s.IX llamada El Conventin, junto al monasterio cisterciense, en la villa de la sidra. BIC.','BIC',date('now'));

-- Gijon (05009): Cimadevilla + termas romanas
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='05009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05009','conjunto_historico','Cimadevilla y Termas Romanas','Barrio historico sobre el cerro de Santa Catalina, con las termas romanas de Campo Valdes y el palacio de Revillagigedo. ','excel_curado',date('now'));

-- Salas (33059): castillo-torre + colegiata
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='33059' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('33059','castillo','Castillo-Palacio de Salas','Torre medieval unida a un palacio renacentista, hoy hotel y museo prerromanico. BIC. Junto a la colegiata con el mausoleo de Valdes Salas.','BIC',date('now'));

-- Cangas del Narcea (05006): Monasterio de Corias
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='05006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05006','monumento','Monasterio de Corias','Gran monasterio benedictino llamado el Escorial asturiano, hoy Parador, junto al rio Narcea. BIC.','BIC',date('now'));

-- Pravia (33051): Santianes prerromanico
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='33051' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('33051','iglesia','San Juan de Santianes','La iglesia prerromanica mas antigua de Asturias, del s.VIII, en la primera capital del Reino de Asturias. BIC.','BIC',date('now'));

-- Tineo (05024): Camino Primitivo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='05024' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05024','monumento','Monasterio de Obona','Cenobio medieval en el Camino Primitivo de Santiago, en la villa de Tineo. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05009' AND p2.categoria='monumentos') WHERE codigo_ine='33024' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05010' AND p2.categoria='monumentos') WHERE codigo_ine='33036' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05012' AND p2.categoria='monumentos') WHERE codigo_ine='33043' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05013' AND p2.categoria='monumentos') WHERE codigo_ine='33044' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05014' AND p2.categoria='monumentos') WHERE codigo_ine='33045' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05015' AND p2.categoria='monumentos') WHERE codigo_ine='33046' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05016' AND p2.categoria='monumentos') WHERE codigo_ine='33047' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05018' AND p2.categoria='monumentos') WHERE codigo_ine='33053' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05019' AND p2.categoria='monumentos') WHERE codigo_ine='33055' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05020' AND p2.categoria='monumentos') WHERE codigo_ine='33056' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05021' AND p2.categoria='monumentos') WHERE codigo_ine='33068' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05022' AND p2.categoria='monumentos') WHERE codigo_ine='33071' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05023' AND p2.categoria='monumentos') WHERE codigo_ine='33072' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05024' AND p2.categoria='monumentos') WHERE codigo_ine='33073' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Asturias)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Asturias'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

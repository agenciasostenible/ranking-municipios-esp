-- Monumentos Ourense
-- Duplicados: Ribadavia 32069->34009, Verin 32085->34011, Manzaneda 32044->34005, Montederramo 32049->34006.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ourense');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ourense');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ourense');

-- 4. Scores individuales

-- Ribadavia (32069): barrio judio + castillo
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='32069' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('32069','conjunto_historico','Conjunto Historico de Ribadavia','Capital del Ribeiro con uno de los barrios judios mejor conservados de Galicia y el castillo de los Sarmiento. BIC.','BIC',date('now'));

-- Ourense (34008): catedral + puente romano + As Burgas
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='34008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34008','catedral','Catedral de Ourense','Catedral romanico-gotica con el Portico do Paraiso policromado, junto al puente romano y las termas de As Burgas. BIC.','BIC',date('now'));

-- Celanova (34004): Monasterio + capilla mozarabe
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='34004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34004','monumento','Monasterio de San Salvador de Celanova','Gran monasterio benedictino barroco con dos claustros, junto a la diminuta capilla mozarabe de San Miguel del s.X. BIC.','BIC',date('now'));

-- Allariz (34002): conjunto historico
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='34002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34002','conjunto_historico','Conjunto Historico de Allariz','Villa medieval a orillas del Arnoia con iglesias romanicas, premio europeo de urbanismo. BIC. Uno de los pueblos mas bonitos de Galicia.','BIC',date('now'));

-- Monterrey (32050): castillo
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='32050' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('32050','castillo','Castillo de Monterrei','Uno de los mayores conjuntos fortificados de Galicia, con tres recintos, iglesia y hospital de peregrinos sobre un alto. BIC.','BIC',date('now'));

-- Castro Caldelas (34003): castillo
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='34003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34003','castillo','Castillo de Castro Caldelas','Fortaleza medieval de los condes de Lemos sobre la Ribeira Sacra, con vistas al canon del Sil. BIC.','BIC',date('now'));

-- Verin (32085): conjunto
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='32085' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('32085','conjunto_historico','Casco historico de Verin','Villa termal con casco de soportales y casas blasonadas, a los pies del castillo de Monterrei. Famosa por su carnaval, el Entroido. ','excel_curado',date('now'));

-- Maceda (32043): castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='32043' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('32043','castillo','Castillo de Maceda','Fortaleza medieval donde se educo el rey Alfonso X el Sabio, con torre del homenaje. BIC.','BIC',date('now'));

-- O Carballiño (34007): Templo da Veracruz
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='34007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34007','iglesia','Templo da Veracruz','Singular iglesia del s.XX en granito, obra del arquitecto Palacios, monumental para la villa del pulpo. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32044' AND p2.categoria='monumentos') WHERE codigo_ine='34005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32049' AND p2.categoria='monumentos') WHERE codigo_ine='34006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32069' AND p2.categoria='monumentos') WHERE codigo_ine='34009' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32085' AND p2.categoria='monumentos') WHERE codigo_ine='34011' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Ourense)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Ourense'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

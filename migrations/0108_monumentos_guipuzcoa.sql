-- Monumentos Guipuzcoa
-- Duplicado Tolosa 20071->21017. Nombres dobles: Hondarribia 21011 / Fuenterrabia 20036; Oñati 21014 / Oñate 20059; Arrasate/Mondragon 21002 / Mondragon 20055 (puntuo ambos).

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Guipúzcoa');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Guipúzcoa');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Guipúzcoa');

-- 4. Scores individuales

-- Hondarribia (21011) / Fuenterrabia (20036): casco amurallado
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='21011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21011','conjunto_historico','Casco amurallado de Hondarribia','Villa medieval amurallada con el castillo de Carlos V (Parador), la puerta de Santa Maria y el colorido barrio de la Marina. BIC.','BIC',date('now'));
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='20036' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('20036','conjunto_historico','Casco amurallado de Hondarribia','Villa medieval amurallada con el castillo de Carlos V (Parador), la puerta de Santa Maria y el colorido barrio de la Marina. BIC.','BIC',date('now'));

-- San Sebastian (20069): Casco Viejo + La Concha
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='20069' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('20069','conjunto_historico','Parte Vieja y Monte Urgull','Casco antiguo al pie del monte Urgull con la basilica de Santa Maria y la iglesia de San Vicente, junto a la bahia de La Concha. ','excel_curado',date('now'));

-- Oñati (21014) / Oñate (20059): Universidad + Arantzazu
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='21014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21014','monumento','Universidad Sancti Spiritus de Oñati','Primera universidad del Pais Vasco, joya del Renacimiento del s.XVI. BIC. Cerca, el santuario de Arantzazu de arte contemporaneo.','BIC',date('now'));
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='20059' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('20059','monumento','Universidad Sancti Spiritus de Oñati','Primera universidad del Pais Vasco, joya del Renacimiento del s.XVI. BIC. Cerca, el santuario de Arantzazu de arte contemporaneo.','BIC',date('now'));

-- Azpeitia (21004): Santuario de Loyola
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='21004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21004','monumento','Santuario de Loyola','Gran basilica barroca de planta circular en torno a la casa-torre natal de San Ignacio de Loyola, fundador de los jesuitas. BIC.','BIC',date('now'));

-- Getaria (21010): iglesia gotica + Elcano/Balenciaga
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='21010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21010','iglesia','Iglesia de San Salvador de Getaria','Singular iglesia gotica de suelo inclinado, en la villa marinera de Juan Sebastian Elcano y el modisto Balenciaga. BIC.','BIC',date('now'));

-- Segura (20070): conjunto medieval
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='20070' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('20070','conjunto_historico','Conjunto Historico de Segura','Villa medieval del Camino con calle Mayor de palacios goticos y renacentistas e iglesia fortaleza. BIC.','BIC',date('now'));

-- Bergara (21006): conjunto de palacios
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='21006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21006','conjunto_historico','Conjunto Historico de Bergara','Uno de los mejores conjuntos monumentales de Guipuzcoa, con palacios barrocos y el Real Seminario donde se aislo el wolframio. BIC.','BIC',date('now'));

-- Zumaia (21019): flysch + ermita San Telmo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='21019' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21019','ermita','Ermita de San Telmo','Ermita sobre los acantilados del flysch de Zumaia, escenario de Juego de Tronos. Junto al casco con la iglesia gotica de San Pedro. ','excel_curado',date('now'));

-- Zarautz (21018): torre Luzea + palacio Narros
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='21018' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21018','torre','Torre Luzea','Casa-torre gotica del s.XV en el casco de la villa, junto al palacio Narros frente a la playa. BIC.','BIC',date('now'));

-- Arrasate/Mondragon (21002) / Mondragon (20055): casco
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='21002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21002','conjunto_historico','Casco Historico de Arrasate','Villa con la casa consistorial barroca y la iglesia de San Juan Bautista, cuna del cooperativismo vasco. ','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='20055' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('20055','conjunto_historico','Casco Historico de Mondragon','Villa con la casa consistorial barroca y la iglesia de San Juan Bautista, cuna del cooperativismo vasco. ','excel_curado',date('now'));

-- Tolosa (20071): casco + mercado
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='20071' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('20071','conjunto_historico','Casco Historico de Tolosa','Antigua capital de Guipuzcoa, con casco amurallado, la iglesia de Santa Maria y el mercado del Tinglado. Famosa por su carnaval. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20071' AND p2.categoria='monumentos') WHERE codigo_ine='21017' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Guipuzcoa)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Guipúzcoa'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

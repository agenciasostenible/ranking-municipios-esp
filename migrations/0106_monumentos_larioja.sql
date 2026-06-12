-- Monumentos La Rioja
-- Sin duplicados (codigos unicos 26xxx).

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='La Rioja');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='La Rioja');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='La Rioja');

-- 4. Scores individuales

-- San Millan de la Cogolla (26130): Suso y Yuso UNESCO
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='26130' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26130','monumento','Monasterios de Suso y Yuso','Patrimonio Mundial UNESCO. Cuna del castellano: aqui se escribieron las Glosas Emilianenses, primeras palabras en lengua romance. Conjunto del s.VI al XVIII.','UNESCO',date('now'));

-- Santo Domingo de la Calzada (26138): catedral + Camino
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='26138' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26138','catedral','Catedral de Santo Domingo de la Calzada','Catedral romanico-gotica famosa por el gallinero con un gallo y una gallina vivos, ligados al milagro del Camino. BIC.','BIC',date('now'));

-- Najera (26102): Santa Maria la Real
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='26102' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26102','monumento','Monasterio de Santa Maria la Real','Panteon de los reyes de Navarra excavado junto a una cueva, con claustro gotico de los Caballeros. BIC. Hito del Camino.','BIC',date('now'));

-- Briones (26034): conjunto historico
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='26034' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26034','conjunto_historico','Conjunto Historico de Briones','Villa medieval amurallada sobre un cerro dominando el Ebro y los viñedos de Rioja, con palacios barrocos. BIC. Uno de los pueblos mas bonitos de España.','BIC',date('now'));

-- Calahorra (26036): catedral + Calagurris
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='26036' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26036','catedral','Catedral de Calahorra','Catedral a orillas del Cidacos en la antigua Calagurris romana, cuna del orador Quintiliano. BIC.','BIC',date('now'));

-- Haro (26071): barrio de la Estacion + casco
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='26071' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26071','conjunto_historico','Casco historico de Haro','Capital del vino de Rioja con la iglesia de Santo Tomas de portada plateresca y el celebre Barrio de la Estacion de bodegas centenarias. BIC.','BIC',date('now'));

-- Logroño (26089): catedral + Camino
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='26089' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26089','catedral','Concatedral de Santa Maria de la Redonda','Templo con sus gemelas torres barrocas en el casco antiguo jacobeo, junto a la calle Laurel. BIC.','BIC',date('now'));

-- Ezcaray (26061): conjunto serrano
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='26061' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26061','conjunto_historico','Casco de Ezcaray','Villa serrana de soportales de madera e iglesia-fortaleza, junto a la Real Fabrica de tejidos. ','excel_curado',date('now'));

-- Clavijo (26051): castillo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='26051' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26051','castillo','Castillo de Clavijo','Fortaleza sobre un risco ligada a la legendaria batalla de Clavijo y la aparicion de Santiago Matamoros. BIC.','BIC',date('now'));

-- Sajazarra (26128): castillo + pueblo bonito
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='26128' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26128','castillo','Castillo de Sajazarra','Castillo medieval del s.XV muy bien conservado, en uno de los pueblos mas bonitos de España. BIC.','BIC',date('now'));

-- Casalarreina (26042): monasterio
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='26042' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26042','monumento','Monasterio de Nuestra Señora de la Piedad','Monasterio dominico con portada del gotico isabelino, en una villa de palacios blasonados. BIC.','BIC',date('now'));

-- Cuzcurrita de Rio Tiron (26056): castillo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='26056' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26056','castillo','Castillo de Cuzcurrita','Castillo medieval junto al rio Tiron, hoy bodega, en plena Rioja Alta. ','excel_curado',date('now'));

-- 6. Sync entidades monumentos entre ambos codigos del par (La Rioja, por si hay alguno)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='La Rioja'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

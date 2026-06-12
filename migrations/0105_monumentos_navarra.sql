-- Monumentos Navarra
-- Duplicados MIN 31xxx -> MAX 33xxx. Estella 31097 y Estella-Lizarra 33007 (nombres distintos, ambos). Olite 31191, Pamplona 31201, Javier 31135, Viana 31251, Puente la Reina 31206, Los Arcos 31029 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Navarra');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Navarra');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Navarra');

-- 4. Scores individuales

-- Olite (31191): Palacio Real
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='31191' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31191','castillo','Palacio Real de Olite','Castillo-palacio gotico del s.XV de los reyes de Navarra, uno de los mas espectaculares de Europa, con torres y jardines colgantes. BIC.','BIC',date('now'));

-- Pamplona (31201): catedral + murallas
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='31201' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31201','catedral','Catedral y Murallas de Pamplona','Catedral gotica con claustro de los mejores de Europa, junto al gran recinto amurallado renacentista de la ciudad de los Sanfermines. BIC.','BIC',date('now'));

-- Tudela (31232): catedral + conjunto
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='31232' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31232','catedral','Catedral de Tudela','Catedral del s.XII con la Puerta del Juicio y claustro romanico, en la ciudad de las tres culturas a orillas del Ebro. BIC.','BIC',date('now'));

-- Estella (31097) y Estella-Lizarra (33007): conjunto romanico
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='31097' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31097','conjunto_historico','Conjunto Historico de Estella','La Toledo del Norte, hito del Camino con el Palacio de los Reyes de Navarra romanico e iglesias monumentales. BIC.','BIC',date('now'));
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='33007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('33007','conjunto_historico','Conjunto Historico de Estella-Lizarra','La Toledo del Norte, hito del Camino con el Palacio de los Reyes de Navarra romanico e iglesias monumentales. BIC.','BIC',date('now'));

-- Ujue (31235): santuario-fortaleza
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='31235' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31235','iglesia','Santuario-Fortaleza de Ujue','Iglesia-fortaleza medieval sobre un cerro, una de las mas impresionantes de Navarra, sobre el pueblo de calles empinadas. BIC.','BIC',date('now'));

-- Roncesvalles (31211): Real Colegiata
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='31211' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31211','monumento','Real Colegiata de Roncesvalles','Conjunto gotico que acoge a los peregrinos desde el s.XII, inicio del Camino Frances en España. Ligado a la leyenda de Roldan. BIC.','BIC',date('now'));

-- Javier (31135): Castillo de Javier
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='31135' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31135','castillo','Castillo de Javier','Fortaleza medieval donde nacio San Francisco Javier, patron de Navarra. BIC. Meta de las Javieradas.','BIC',date('now'));

-- Sangüesa (31216): Santa Maria la Real
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='31216' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31216','iglesia','Santa Maria la Real de Sangüesa','Iglesia romanica con una de las portadas escultoricas mas ricas del Camino de Santiago. BIC.','BIC',date('now'));

-- Yesa (31261): Monasterio de Leyre
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='31261' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31261','monumento','Monasterio de San Salvador de Leyre','Panteon de los reyes de Navarra, con cripta romanica del s.XI, una de las mas antiguas de España. BIC. Famoso por su canto gregoriano.','BIC',date('now'));

-- Puente la Reina (31206): puente romanico
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='31206' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31206','monumento','Puente romanico de Puente la Reina','Emblematico puente del s.XI sobre el Arga, donde confluyen los caminos jacobeos. BIC.','BIC',date('now'));

-- Artajona (31038): El Cerco
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='31038' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31038','conjunto_historico','El Cerco de Artajona','Recinto amurallado medieval con nueve torres almenadas e iglesia-fortaleza, uno de los mas espectaculares de Navarra. BIC.','BIC',date('now'));

-- Viana (31251): murallas + tumba Cesar Borgia
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='31251' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31251','conjunto_historico','Conjunto Historico de Viana','Villa amurallada del Camino con la iglesia de Santa Maria de gran portada, ante la que esta la tumba de Cesar Borgia. BIC.','BIC',date('now'));

-- Los Arcos (31029): iglesia Santa Maria
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='31029' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('31029','iglesia','Iglesia de Santa Maria de Los Arcos','Templo con espectacular interior barroco y claustro gotico, hito del Camino de Santiago. BIC.','BIC',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31038' AND p2.categoria='monumentos') WHERE codigo_ine='33004' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31128' AND p2.categoria='monumentos') WHERE codigo_ine='33008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31159' AND p2.categoria='monumentos') WHERE codigo_ine='33010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31167' AND p2.categoria='monumentos') WHERE codigo_ine='33011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31185' AND p2.categoria='monumentos') WHERE codigo_ine='33012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31210' AND p2.categoria='monumentos') WHERE codigo_ine='33016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31211' AND p2.categoria='monumentos') WHERE codigo_ine='33017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31216' AND p2.categoria='monumentos') WHERE codigo_ine='33018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31232' AND p2.categoria='monumentos') WHERE codigo_ine='33019' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31235' AND p2.categoria='monumentos') WHERE codigo_ine='33020' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Navarra)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Navarra'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

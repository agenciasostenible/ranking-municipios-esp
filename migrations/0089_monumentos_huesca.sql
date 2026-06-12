-- Monumentos Huesca
-- Duplicados MIN 22xxx -> MAX 23xxx. Ainsa en 22907 y 23001 (tildes distintas, ambos). Loarre 22149, Graus 22117, Hecho 23009 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Huesca');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Huesca');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Huesca');

-- 4. Scores individuales

-- Loarre (22149): Castillo romanico
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='22149' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22149','castillo','Castillo de Loarre','El castillo romanico mejor conservado de Europa, del s.XI, sobre un promontorio con vistas a la Hoya de Huesca. BIC. Escenario de El Reino de los Cielos.','BIC',date('now'));

-- Jaca (22130): Catedral romanica + ciudadela
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='22130' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22130','catedral','Catedral de San Pedro de Jaca','Una de las primeras catedrales romanicas de Espana, del s.XI, modelo del romanico jaques. BIC. Junto a la Ciudadela pentagonal del s.XVI.','BIC',date('now'));

-- Ainsa-Sobrarbe (22907 y 23001): conjunto medieval
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='22907' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22907','conjunto_historico','Conjunto Historico de Ainsa','Villa medieval con una de las plazas porticadas mas bellas de Espana y castillo, sobre el Sobrarbe pirenaico. BIC. Uno de los pueblos mas bonitos.','BIC',date('now'));
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='23001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23001','conjunto_historico','Conjunto Historico de Ainsa','Villa medieval con una de las plazas porticadas mas bellas de Espana y castillo, sobre el Sobrarbe pirenaico. BIC. Uno de los pueblos mas bonitos.','BIC',date('now'));

-- Huesca (22125): Catedral + San Pedro el Viejo
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='22125' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22125','catedral','Catedral de Huesca y San Pedro el Viejo','Catedral gotica con retablo de Damian Forment y el claustro romanico de San Pedro el Viejo, panteon de reyes de Aragon. BIC.','BIC',date('now'));

-- Barbastro (22048): catedral + conjunto
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='22048' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22048','catedral','Catedral de Barbastro','Catedral renacentista del s.XVI de tres naves a la misma altura, capital del Somontano y del vino. BIC.','BIC',date('now'));

-- Anso (22028): conjunto pirenaico
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='22028' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22028','conjunto_historico','Conjunto Historico de Anso','Pueblo pirenaico de casas de piedra y traje tradicional, en el valle mas occidental del Pirineo aragones. BIC.','BIC',date('now'));

-- Hecho (23009): conjunto cheso
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='23009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('23009','conjunto_historico','Conjunto Historico de Hecho','Pueblo cheso de arquitectura pirenaica con grandes casonas y chimeneas troncoconicas. Cerca, la cuna del Reino de Aragon en San Pedro de Siresa.','excel_curado',date('now'));

-- Benasque (22054): conjunto pirenaico
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='22054' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22054','conjunto_historico','Casco de Benasque','Villa pirenaica de casas-palacio de piedra, a los pies del Aneto, con casa Juste y casa Faure. ','excel_curado',date('now'));

-- Torla-Ordesa (22230): puerta de Ordesa
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='22230' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22230','conjunto_historico','Casco de Torla','Pueblo de piedra y pizarra ante el Mondarruego, puerta del Parque Nacional de Ordesa y Monte Perdido. ','excel_curado',date('now'));

-- Graus (22117): Plaza Mayor
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='22117' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22117','conjunto_historico','Plaza Mayor de Graus','Plaza porticada con casas de fachadas pintadas y la basilica de la Peña, en la Ribagorza. BIC.','BIC',date('now'));

-- Bielsa (22057): conjunto + valle de Pineta
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='22057' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22057','conjunto_historico','Casco de Bielsa','Villa pirenaica reconstruida tras la Guerra Civil, con ayuntamiento renacentista, puerta del valle de Pineta. ','excel_curado',date('now'));

-- Biescas (22059): conjunto + Serrablo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='22059' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22059','conjunto_historico','Casco de Biescas','Villa del valle de Tena, puerta de las iglesias mozarabes del Serrablo. ','excel_curado',date('now'));

-- Boltaña (22066): conjunto
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='22066' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22066','conjunto_historico','Casco de Boltaña','Villa del Sobrarbe con casco antiguo, restos del castillo e iglesia de San Pedro. ','excel_curado',date('now'));

-- Sabiñanigo (22199): iglesias del Serrablo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='22199' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22199','iglesia','Iglesias mozarabes del Serrablo','Conjunto de iglesias de los s.X-XI de estilo mozarabe-lombardo unicas en el Alto Gallego. BIC.','BIC',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22028' AND p2.categoria='monumentos') WHERE codigo_ine='23002' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22048' AND p2.categoria='monumentos') WHERE codigo_ine='23003' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22054' AND p2.categoria='monumentos') WHERE codigo_ine='23004' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22057' AND p2.categoria='monumentos') WHERE codigo_ine='23005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22066' AND p2.categoria='monumentos') WHERE codigo_ine='23006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22069' AND p2.categoria='monumentos') WHERE codigo_ine='23007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22114' AND p2.categoria='monumentos') WHERE codigo_ine='23008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22125' AND p2.categoria='monumentos') WHERE codigo_ine='23010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22130' AND p2.categoria='monumentos') WHERE codigo_ine='23011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22158' AND p2.categoria='monumentos') WHERE codigo_ine='23012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22170' AND p2.categoria='monumentos') WHERE codigo_ine='23013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22182' AND p2.categoria='monumentos') WHERE codigo_ine='23014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22199' AND p2.categoria='monumentos') WHERE codigo_ine='23015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='22230' AND p2.categoria='monumentos') WHERE codigo_ine='23016' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Huesca)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Huesca'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

-- Monumentos Valladolid
-- Duplicados MIN 46xxx -> MAX 47xxx. Resto singles en 47xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Valladolid');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Valladolid');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Valladolid');

-- 4. Scores individuales

-- Valladolid (46010): Catedral + San Pablo + Museo Escultura
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='46010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46010','iglesia','Iglesia de San Pablo','Espectacular fachada del gotico isabelino, una de las mas ricas de Espana. BIC. Junto al Museo Nacional de Escultura y la catedral inacabada de Herrera.','BIC',date('now'));

-- Peñafiel (46007): Castillo + Museo del Vino
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='46007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46007','castillo','Castillo de Peñafiel','Castillo del s.X-XV con forma de barco de piedra de 200 metros de eslora, uno de los mas singulares de Espana. BIC. Alberga el Museo Provincial del Vino.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46007','conjunto_historico','Plaza del Coso','Plaza medieval de balcones de madera usada como coso taurino, unica en Espana. ','excel_curado',date('now'));

-- Tordesillas (46009): Monasterio de Santa Clara + Tratado
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='46009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46009','monumento','Real Monasterio de Santa Clara','Palacio mudejar del s.XIV convertido en convento, con baños arabes y patio. BIC. Aqui se firmo en 1494 el Tratado de Tordesillas que repartio el mundo.','BIC',date('now'));

-- Medina del Campo (46004): Castillo de la Mota + Palacio Testamentario
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='46004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46004','castillo','Castillo de la Mota','Imponente fortaleza de ladrillo del s.XV, simbolo de Medina. BIC. En el Palacio Real Testamentario murio Isabel la Catolica en 1504.','BIC',date('now'));

-- Urueña (47178): villa amurallada
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='47178' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47178','conjunto_historico','Villa amurallada de Urueña','Recinto medieval integro con castillo, la primera Villa del Libro de Espana. BIC. Junto a la ermita romanica de la Anunciada.','BIC',date('now'));

-- Medina de Rioseco (46003): ciudad de los almirantes
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='46003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46003','conjunto_historico','Conjunto Historico de Medina de Rioseco','La ciudad de los Almirantes de Castilla, con iglesias-museo como Santa Maria y la Capilla de los Benavente, la capilla sixtina de Castilla. BIC. En el Canal de Castilla.','BIC',date('now'));

-- Simancas (46008): Castillo-Archivo
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='46008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46008','castillo','Castillo-Archivo de Simancas','Fortaleza del s.XV convertida por Felipe II en el Archivo General del Reino, primer archivo de Estado de Europa. BIC.','BIC',date('now'));

-- Olmedo (46005): murallas + mudejar
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='46005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46005','conjunto_historico','Conjunto mudejar de Olmedo','La villa de los siete sietes, con murallas, iglesias mudejares de ladrillo y el parque tematico del mudejar. BIC.','BIC',date('now'));

-- Torrelobaton (47171): castillo
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='47171' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47171','castillo','Castillo de Torrelobaton','Gran fortaleza del s.XV de los Almirantes, tomada por los Comuneros antes de Villalar. BIC. Una de las mejor conservadas de la Tierra de Campos.','BIC',date('now'));

-- Montealegre de Campos (47092): castillo
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='47092' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47092','castillo','Castillo de Montealegre','Fortaleza del s.XIII de aspecto macizo y muy bien conservada en la Tierra de Campos. BIC.','BIC',date('now'));

-- Wamba (47230): iglesia mozarabe
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='47230' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47230','iglesia','Iglesia de Santa Maria de Wamba','Templo mozarabe y romanico del s.X con un impresionante osario medieval. BIC. Aqui abdico el rey visigodo Wamba.','BIC',date('now'));

-- Villalba de los Alcores (47212): castillo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='47212' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47212','castillo','Castillo de Villalba de los Alcores','Fortaleza de transicion romanico-gotica del s.XIII, de planta cuadrada y origen templario. BIC.','BIC',date('now'));

-- Tiedra (47163): castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='47163' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47163','castillo','Castillo de Tiedra','Torre del homenaje del s.XII-XV sobre un alto, con amplias vistas a los Montes Torozos. BIC.','BIC',date('now'));

-- Iscar (47075): castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='47075' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47075','castillo','Castillo de Iscar','Fortaleza del s.XV sobre un cerro, con torre del homenaje, en la frontera historica con Segovia. BIC.','BIC',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='46001' AND p2.categoria='monumentos') WHERE codigo_ine='47050' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='46002' AND p2.categoria='monumentos') WHERE codigo_ine='47076' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='46003' AND p2.categoria='monumentos') WHERE codigo_ine='47086' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='46004' AND p2.categoria='monumentos') WHERE codigo_ine='47085' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='46005' AND p2.categoria='monumentos') WHERE codigo_ine='47104' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='46006' AND p2.categoria='monumentos') WHERE codigo_ine='47116' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='46007' AND p2.categoria='monumentos') WHERE codigo_ine='47114' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='46008' AND p2.categoria='monumentos') WHERE codigo_ine='47161' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='46009' AND p2.categoria='monumentos') WHERE codigo_ine='47165' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='46010' AND p2.categoria='monumentos') WHERE codigo_ine='47186' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Valladolid)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Valladolid'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

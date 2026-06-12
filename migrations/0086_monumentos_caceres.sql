-- Monumentos Caceres
-- Duplicados MIN 10xxx -> MAX 15xxx. Galisteo 10076, Garganta la Olla 10079, Valencia de Alcantara 10203 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cáceres');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cáceres');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cáceres');

-- 4. Scores individuales

-- Caceres (10037): ciudad vieja UNESCO
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='10037' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10037','conjunto_historico','Ciudad Vieja de Caceres','Patrimonio Mundial UNESCO. Uno de los conjuntos urbanos medievales y renacentistas mejor conservados de Europa, con murallas, torres y palacios. Escenario de Juego de Tronos.','UNESCO',date('now'));

-- Guadalupe (10087): Real Monasterio UNESCO
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='10087' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10087','monumento','Real Monasterio de Guadalupe','Patrimonio Mundial UNESCO. Gran cenobio gotico-mudejar, simbolo de la hispanidad, ligado al descubrimiento de America. Patrona de Extremadura.','UNESCO',date('now'));

-- Trujillo (10195): Plaza Mayor + palacios conquistadores
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='10195' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10195','conjunto_historico','Conjunto Historico de Trujillo','Cuna de Pizarro y Orellana, con una de las plazas mayores mas monumentales de Espana, palacios de indianos y castillo arabe. BIC.','BIC',date('now'));

-- Plasencia (10148): catedral + murallas
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='10148' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10148','conjunto_historico','Conjunto Historico de Plasencia','Ciudad amurallada con dos catedrales unidas (Vieja y Nueva), Plaza Mayor y palacios renacentistas. BIC. Puerta del valle del Jerte.','BIC',date('now'));

-- Cuacos de Yuste (10068): Monasterio de Yuste
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='10068' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10068','monumento','Monasterio de Yuste','Cenobio jeronimo donde el emperador Carlos V paso sus ultimos anos y murio en 1558. BIC. En plena comarca de La Vera.','BIC',date('now'));

-- Coria (10067): catedral + murallas romanas
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='10067' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10067','conjunto_historico','Conjunto Historico de Coria','Ciudad rodeada por una muralla romana casi integra, con catedral gotico-plateresca y castillo de los duques de Alba. BIC.','BIC',date('now'));

-- Hervas (10096): barrio judio
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='10096' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10096','conjunto_historico','Barrio Judio de Hervas','Una de las juderias medievales mejor conservadas de Espana, de calles estrechas y casas de entramado, en el valle del Ambroz. BIC.','BIC',date('now'));

-- Jarandilla de la Vera (10105): castillo de los Condes (Parador)
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='10105' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10105','castillo','Castillo de los Condes de Oropesa','Fortaleza del s.XV, hoy Parador, donde se alojo Carlos V mientras se construia Yuste. BIC.','BIC',date('now'));

-- Galisteo (10076): recinto amurallado almohade
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='10076' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10076','conjunto_historico','Murallas de Galisteo','Singular recinto amurallado almohade de cantos rodados de los s.XII-XIII, unico en Extremadura. BIC.','BIC',date('now'));

-- Valencia de Alcantara (10203): conjunto gotico-portugues + dolmenes
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='10203' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10203','conjunto_historico','Barrio Gotico de Valencia de Alcantara','Barrio gotico-portugues con la mayor concentracion de dolmenes de la Peninsula en su entorno. BIC. Villa fronteriza con Portugal.','BIC',date('now'));

-- Montanchez (10126): castillo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='10126' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10126','castillo','Castillo de Montanchez','Fortaleza arabe sobre un cerro con vistas inmensas, en la sierra famosa por su jamon. BIC.','BIC',date('now'));

-- Garrovillas de Alconetar (10082): Plaza Mayor porticada
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='10082' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10082','conjunto_historico','Plaza Mayor de Garrovillas','Una de las plazas porticadas mas bellas de Extremadura, del s.XV, de planta irregular y soportales desiguales. BIC.','BIC',date('now'));

-- Garganta la Olla (10079): conjunto serrano de La Vera
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='10079' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10079','conjunto_historico','Casco de Garganta la Olla','Pueblo serrano de La Vera de arquitectura tradicional de entramado, con la Casa de las Munecas. BIC.','BIC',date('now'));

-- Brozas (10032): iglesia + conjunto
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='10032' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10032','iglesia','Iglesia de los Santos Martires','Gran templo del s.XVI llamado la catedral de los Llanos, en una villa de la Orden de Alcantara. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10032' AND p2.categoria='monumentos') WHERE codigo_ine='15001' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10067' AND p2.categoria='monumentos') WHERE codigo_ine='15003' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10068' AND p2.categoria='monumentos') WHERE codigo_ine='15004' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10037' AND p2.categoria='monumentos') WHERE codigo_ine='15005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10082' AND p2.categoria='monumentos') WHERE codigo_ine='15006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10087' AND p2.categoria='monumentos') WHERE codigo_ine='15007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10096' AND p2.categoria='monumentos') WHERE codigo_ine='15008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10105' AND p2.categoria='monumentos') WHERE codigo_ine='15009' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10104' AND p2.categoria='monumentos') WHERE codigo_ine='15010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10110' AND p2.categoria='monumentos') WHERE codigo_ine='15011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10126' AND p2.categoria='monumentos') WHERE codigo_ine='15013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10128' AND p2.categoria='monumentos') WHERE codigo_ine='15014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10131' AND p2.categoria='monumentos') WHERE codigo_ine='15015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10148' AND p2.categoria='monumentos') WHERE codigo_ine='15016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10180' AND p2.categoria='monumentos') WHERE codigo_ine='15017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10195' AND p2.categoria='monumentos') WHERE codigo_ine='15018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10212' AND p2.categoria='monumentos') WHERE codigo_ine='15019' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10218' AND p2.categoria='monumentos') WHERE codigo_ine='15021' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Caceres)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Cáceres'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

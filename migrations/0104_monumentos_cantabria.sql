-- Monumentos Cantabria
-- Duplicados MIN 10xxx -> MAX 39xxx. Cartes 39018, Lierganes 39037, Puente Viesgo 39056, Ramales 39057 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cantabria');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cantabria');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cantabria');

-- 4. Scores individuales

-- Santillana del Mar (10017): conjunto + Altamira + colegiata
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='10017' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10017','yacimiento','Cueva de Altamira','Patrimonio Mundial UNESCO. La Capilla Sixtina del arte rupestre, con bisontes policromos de hace 36.000 anos. La cueva mas famosa del mundo.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10017','conjunto_historico','Villa medieval de Santillana del Mar','Uno de los conjuntos medievales mas bellos de Espana, con la Colegiata romanica y calles de casonas blasonadas. BIC.','BIC',date('now'));

-- Comillas (10007): El Capricho de Gaudi + Universidad
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='10007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10007','monumento','El Capricho de Gaudi','Villa modernista de Antoni Gaudi, una de sus pocas obras fuera de Cataluña. BIC. Junto a la Universidad Pontificia y el palacio de Sobrellano.','BIC',date('now'));

-- Castro-Urdiales (10006): iglesia gotica + castillo
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='10006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10006','iglesia','Santa Maria de la Asuncion','El mayor templo gotico de Cantabria, llamado la catedral, junto al castillo-faro medieval sobre el puerto. BIC.','BIC',date('now'));

-- San Vicente de la Barquera (10015): puebla vieja + castillo
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='10015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10015','conjunto_historico','Puebla Vieja de San Vicente de la Barquera','Villa medieval con castillo del s.XIII e iglesia de Santa Maria de los Angeles, entre rias y los Picos de Europa al fondo. BIC.','BIC',date('now'));

-- Puente Viesgo (39056): Cueva de El Castillo
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='39056' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39056','yacimiento','Cuevas de Monte Castillo','Arte rupestre Patrimonio Mundial UNESCO, con la Cueva de El Castillo y sus manos en negativo de mas de 40.000 anos, de las mas antiguas del mundo.','UNESCO',date('now'));

-- Potes (10012): conjunto + Torre del Infantado
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='10012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10012','conjunto_historico','Conjunto Historico de Potes','Villa de los Picos de Europa con la Torre del Infantado y casas de piedra entre rios. BIC. Cerca, el monasterio de Santo Toribio de Liebana.','BIC',date('now'));

-- Lierganes (39037): conjunto historico
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='39037' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39037','conjunto_historico','Conjunto Historico de Lierganes','Pueblo de casonas barrocas de piedra a orillas del Miera, uno de los mas bonitos de Espana. BIC.','BIC',date('now'));

-- Santander (10016): Magdalena + casco
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='10016' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10016','palacio','Palacio de la Magdalena','Palacio real de principios del s.XX sobre una peninsula, simbolo de Santander, junto a la catedral y el Centro Botin. BIC.','BIC',date('now'));

-- Ramales de la Victoria (39057): Cueva de Covalanas
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='39057' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39057','yacimiento','Cueva de Covalanas','Arte rupestre Patrimonio Mundial UNESCO, con ciervas pintadas con la tecnica del tamponado de hace 20.000 anos.','UNESCO',date('now'));

-- Laredo (10009): Puebla Vieja
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='10009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10009','conjunto_historico','Puebla Vieja de Laredo','Casco medieval con la iglesia de Santa Maria de la Asuncion gotica, sobre la villa marinera. BIC.','BIC',date('now'));

-- Santoña (10018): fuertes + iglesia
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='10018' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10018','iglesia','Santa Maria del Puerto','Iglesia gotica monumental, la mayor de Cantabria tras Santander, en la villa de las anchoas, junto a los fuertes defensivos del monte Buciero. BIC.','BIC',date('now'));

-- Cartes (39018): conjunto medieval
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='39018' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39018','conjunto_historico','Conjunto Historico de Cartes','Villa medieval de una sola calle soportalada con torre defensiva, en el Camino Real. BIC.','BIC',date('now'));

-- Reinosa (10013): Juliobriga cerca + conjunto
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='10013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('10013','conjunto_historico','Casco de Reinosa','Villa campurriana de casonas blasonadas, junto a la ciudad romana de Juliobriga y el nacimiento del Ebro en Fontibre. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10003' AND p2.categoria='monumentos') WHERE codigo_ine='39012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10004' AND p2.categoria='monumentos') WHERE codigo_ine='39016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10005' AND p2.categoria='monumentos') WHERE codigo_ine='39027' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10006' AND p2.categoria='monumentos') WHERE codigo_ine='39020' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10007' AND p2.categoria='monumentos') WHERE codigo_ine='39024' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10008' AND p2.categoria='monumentos') WHERE codigo_ine='39032' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10009' AND p2.categoria='monumentos') WHERE codigo_ine='39035' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10010' AND p2.categoria='monumentos') WHERE codigo_ine='39025' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10011' AND p2.categoria='monumentos') WHERE codigo_ine='39051' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10012' AND p2.categoria='monumentos') WHERE codigo_ine='39055' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10013' AND p2.categoria='monumentos') WHERE codigo_ine='39059' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10014' AND p2.categoria='monumentos') WHERE codigo_ine='39068' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10015' AND p2.categoria='monumentos') WHERE codigo_ine='39080' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10016' AND p2.categoria='monumentos') WHERE codigo_ine='39075' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10017' AND p2.categoria='monumentos') WHERE codigo_ine='39076' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10018' AND p2.categoria='monumentos') WHERE codigo_ine='39079' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10019' AND p2.categoria='monumentos') WHERE codigo_ine='39087' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10020' AND p2.categoria='monumentos') WHERE codigo_ine='39102' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Cantabria)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Cantabria'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

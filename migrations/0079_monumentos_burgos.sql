-- Monumentos Burgos
-- Duplicados MIN -> MAX dentro de 09xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Burgos');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Burgos');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Burgos');

-- 4. Scores individuales

-- Burgos (09003): Catedral UNESCO + Cartuja + Las Huelgas
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='09003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09003','catedral','Catedral de Burgos','Patrimonio Mundial UNESCO. Obra cumbre del gotico espanol, del s.XIII, con sus agujas caladas y el Papamoscas. Sepulcro del Cid.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09003','monumento','Cartuja de Miraflores y Las Huelgas','Cartuja con los sepulcros reales de Gil de Siloe y el Monasterio de Las Huelgas, panteon real, joyas del gotico burgales. BIC.','BIC',date('now'));

-- Atapuerca (09029): yacimientos UNESCO
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='09029' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09029','yacimiento','Sierra de Atapuerca','Patrimonio Mundial UNESCO. Los yacimientos de homininos mas importantes de Europa, con restos de hace 1,2 millones de anos y el Homo antecessor.','UNESCO',date('now'));

-- Frias (09007): ciudad mas pequeña de Espana + castillo
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='09007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09007','conjunto_historico','Ciudad de Frias','La ciudad mas pequeña de Espana, con castillo roquero, casas colgadas sobre la peña y puente medieval fortificado sobre el Ebro. BIC.','BIC',date('now'));

-- Santo Domingo de Silos (09018): Monasterio + claustro romanico
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='09018' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09018','monumento','Monasterio de Santo Domingo de Silos','Su claustro romanico del s.XI-XII es uno de los mas bellos del mundo. BIC. Famoso por el canto gregoriano de sus monjes.','BIC',date('now'));

-- Covarrubias (09005): conjunto medieval
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='09005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09005','conjunto_historico','Conjunto Historico de Covarrubias','Villa medieval de casas de entramado con el Torreon de Fernan Gonzalez del s.X y la colegiata. BIC. Cuna de Castilla.','BIC',date('now'));

-- Lerma (09008): conjunto ducal barroco
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='09008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09008','conjunto_historico','Conjunto Ducal de Lerma','Villa barroca creada por el Duque de Lerma en el s.XVII, con uno de los mayores palacios ducales de Espana y plaza Mayor monumental. BIC.','BIC',date('now'));

-- Peñaranda de Duero (09013): castillo + palacio de Avellaneda
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09013','conjunto_historico','Conjunto Historico de Peñaranda de Duero','Villa medieval con castillo en lo alto, palacio renacentista de Avellaneda y plaza porticada con rollo gotico. BIC.','BIC',date('now'));

-- Castrojeriz (09091): castillo + Camino de Santiago
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='09091' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09091','conjunto_historico','Conjunto Historico de Castrojeriz','Larga villa jacobea a los pies de un cerro coronado por el castillo, con colegiata e iglesias en el Camino de Santiago. BIC.','BIC',date('now'));

-- Oña (09011): Monasterio de San Salvador
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='09011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09011','monumento','Monasterio de San Salvador de Oña','Cenobio benedictino del s.XI con panteon real y condal, joya en el desfiladero del Oca. BIC.','BIC',date('now'));

-- Ibeas de Juarros (09177): yacimientos de Atapuerca
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='09177' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09177','yacimiento','Yacimientos de la Sierra de Atapuerca','Parte del conjunto Patrimonio Mundial UNESCO, con la Trinchera del Ferrocarril y la Gran Dolina. Restos de los primeros europeos.','UNESCO',date('now'));

-- Medina de Pomar (09009): Alcazar de los Velasco
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='09009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09009','castillo','Alcazar de los Velasco','Fortaleza-palacio del s.XIV de los condestables de Castilla, con las Torres en la capital de las Merindades. BIC.','BIC',date('now'));

-- Poza de la Sal (09014): castillo + salinas
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='09014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09014','conjunto_historico','Conjunto Historico de Poza de la Sal','Villa salinera con castillo de los Rojas, barrio judio y las historicas salinas. BIC. Cuna del naturalista Felix Rodriguez de la Fuente.','BIC',date('now'));

-- Pancorbo (09012): desfiladero + conjunto
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='09012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09012','conjunto_historico','Conjunto Historico de Pancorbo','Villa encajada en un espectacular desfiladero rocoso, paso historico hacia la Meseta, con iglesias barrocas. BIC.','BIC',date('now'));

-- Aranda de Duero (09001): Santa Maria la Real + bodegas
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='09001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09001','iglesia','Iglesia de Santa Maria la Real','Templo gotico con una de las mejores portadas del gotico isabelino de Espana. BIC. Bajo la villa, una red de bodegas subterraneas medievales.','BIC',date('now'));

-- Caleruega (09004): cuna de Santo Domingo
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='09004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09004','monumento','Conjunto dominico de Caleruega','Cuna de Santo Domingo de Guzman, fundador de la Orden de Predicadores, con el Torreon de los Guzman y el convento. BIC.','BIC',date('now'));

-- Briviesca (09002): conjunto renacentista
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='09002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09002','conjunto_historico','Casco de Briviesca','Una de las primeras ciudades de trazado en cuadricula de Espana, con la colegiata de Santa Maria y el convento de Santa Clara. ','excel_curado',date('now'));

-- Sasamon (09363): iglesia la catedral de la campiña
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='09363' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('09363','iglesia','Iglesia de Santa Maria la Real de Sasamon','Templo gotico de aire catedralicio, llamado la catedral de la campiña, con portada inspirada en la de Burgos. BIC.','BIC',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09002' AND p2.categoria='monumentos') WHERE codigo_ine='09056' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09003' AND p2.categoria='monumentos') WHERE codigo_ine='09059' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09004' AND p2.categoria='monumentos') WHERE codigo_ine='09064' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09005' AND p2.categoria='monumentos') WHERE codigo_ine='09113' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09006' AND p2.categoria='monumentos') WHERE codigo_ine='09124' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09007' AND p2.categoria='monumentos') WHERE codigo_ine='09134' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09008' AND p2.categoria='monumentos') WHERE codigo_ine='09194' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09009' AND p2.categoria='monumentos') WHERE codigo_ine='09209' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09010' AND p2.categoria='monumentos') WHERE codigo_ine='09219' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09011' AND p2.categoria='monumentos') WHERE codigo_ine='09238' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09012' AND p2.categoria='monumentos') WHERE codigo_ine='09251' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09013' AND p2.categoria='monumentos') WHERE codigo_ine='09261' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09014' AND p2.categoria='monumentos') WHERE codigo_ine='09272' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09016' AND p2.categoria='monumentos') WHERE codigo_ine='09321' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09017' AND p2.categoria='monumentos') WHERE codigo_ine='09330' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09018' AND p2.categoria='monumentos') WHERE codigo_ine='09358' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='09019' AND p2.categoria='monumentos') WHERE codigo_ine='09394' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Burgos)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Burgos'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

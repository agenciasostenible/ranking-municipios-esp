-- Monumentos Sevilla
-- Duplicados: MIN 40xxx -> MAX 41xxx. Resto canonicos en 41xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Sevilla');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Sevilla');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Sevilla');

-- 4. Scores individuales (codigo canonico)

-- Sevilla (40018): Catedral+Giralda UNESCO + Alcazar UNESCO + Archivo de Indias UNESCO
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='40018' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40018','catedral','Catedral de Sevilla y Giralda','Patrimonio Mundial UNESCO. La mayor catedral gotica del mundo. La Giralda es el antiguo alminar almohade convertido en campanario.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40018','palacio','Real Alcazar de Sevilla','Patrimonio Mundial UNESCO. Palacio mudejar en uso real mas antiguo de Europa. Escenario de Juego de Tronos (Dorne).','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40018','monumento','Archivo de Indias','Patrimonio Mundial UNESCO. Lonja renacentista de Juan de Herrera que custodia la documentacion de la administracion espanola en America.','UNESCO',date('now'));

-- Santiponce (41089): Italica, ciudad romana de Trajano y Adriano
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='41089' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41089','yacimiento','Conjunto Arqueologico de Italica','Primera ciudad romana fundada en Hispania (206 a.C.) y cuna de los emperadores Trajano y Adriano. Su anfiteatro fue escenario de Juego de Tronos. BIC.','BIC',date('now'));

-- Carmona (40003): Alcazar, necropolis romana, conjunto historico
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='40003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40003','conjunto_historico','Conjunto Historico de Carmona','Una de las ciudades habitadas mas antiguas de Europa. Puerta de Sevilla, Alcazar del Rey Don Pedro y barrio amurallado. BIC.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40003','yacimiento','Necropolis Romana de Carmona','Conjunto funerario romano del s.I-II d.C. con tumbas excavadas en la roca y el Mausoleo del Elefante. BIC.','BIC',date('now'));

-- Ecija (40020): la ciudad de las torres, barroco
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='40020' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40020','conjunto_historico','Ecija, la ciudad de las torres','Once torres y campanarios barrocos sobre el caserio. Palacios como el de Peñaflor y el de Benameji. Mosaico romano del Museo Historico. BIC.','BIC',date('now'));

-- Osuna (40015): Colegiata, Universidad, palacios, Juego de Tronos
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='40015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40015','conjunto_historico','Conjunto Historico de Osuna','Colegiata renacentista, antigua Universidad y calle de palacios barrocos de los duques de Osuna. Su plaza de toros fue escenario de Juego de Tronos. BIC.','BIC',date('now'));

-- Lebrija (40011): iglesia mudejar con giraldilla
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='40011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40011','iglesia','Iglesia de Santa Maria de la Oliva','Antigua mezquita almohade del s.XII con torre mudejar inspirada en la Giralda. BIC.','BIC',date('now'));

-- Marchena (40013): Arco de la Rosa, murallas, iglesia San Juan
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='40013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40013','conjunto_historico','Conjunto Historico de Marchena','Murallas almohades con el Arco de la Rosa e iglesia de San Juan Bautista, con tablas de Zurbaran. BIC.','BIC',date('now'));

-- Estepa (40009): Cerro San Cristobal, Balcon de Andalucia, torre de la Victoria
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='40009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40009','conjunto_historico','Cerro de San Cristobal','Recinto amurallado medieval con la torre del homenaje y la torre barroca de la Victoria. Mirador conocido como el Balcon de Andalucia. BIC.','BIC',date('now'));

-- Alcala de Guadaira (40002, codigo unico): castillo almohade
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='40002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40002','castillo','Castillo de Alcala de Guadaira','Gran fortaleza almohade del s.XII con once torres y tres recintos. BIC. Uno de los mayores castillos de Andalucia.','BIC',date('now'));

-- Moron de la Frontera (40014): castillo y conjunto
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='40014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40014','castillo','Castillo de Moron de la Frontera','Fortaleza medieval en lo alto del cerro. BIC. Iglesia de San Miguel de aire catedralicio.','BIC',date('now'));

-- Valencina de la Concepcion (41096, codigo unico): dolmenes megaliticos
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='41096' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41096','yacimiento','Dolmenes de La Pastora y Matarrubilla','Grandes tumbas megaliticas de hace 5.000 anos, entre las mas monumentales de Europa. BIC.','BIC',date('now'));

-- Utrera (40019): castillo y conjunto historico
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='40019' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40019','castillo','Castillo de Utrera','Fortaleza medieval del s.XIII junto al casco historico. BIC. Cuna del flamenco y del mostachon.','BIC',date('now'));

-- Sanlucar la Mayor (41087, codigo unico): iglesias mudejares
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='41087' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41087','iglesia','Iglesias mudejares de Sanlucar la Mayor','Conjunto de templos mudejares (San Eustaquio, Santa Maria) sobre antiguas mezquitas. BIC.','excel_curado',date('now'));

-- Cazalla de la Sierra (40004): cartuja y conjunto sierra norte
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='40004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40004','conjunto_historico','Conjunto Historico de Cazalla de la Sierra','Capital de la Sierra Norte con la Cartuja de la Inmaculada y la iglesia de la Consolacion. BIC.','BIC',date('now'));

-- El Coronil (41036, codigo unico): Castillo de las Aguzaderas
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='41036' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41036','castillo','Castillo de las Aguzaderas','Singular fortaleza del s.XIV construida en una hondonada en torno a un manantial. BIC.','BIC',date('now'));

-- Mairena del Alcor (41058, codigo unico): Castillo de Luna
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='41058' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41058','castillo','Castillo de Luna','Fortaleza medieval que alberga la coleccion arqueologica de Bonsor. BIC.','BIC',date('now'));

-- Constantina (40005): castillo y conjunto sierra
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='40005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40005','conjunto_historico','Conjunto Historico de Constantina','Castillo de la Armada en lo alto, barrio de la Moreria e iglesia de la Encarnacion con torre de Hernan Ruiz. BIC.','BIC',date('now'));

-- El Real de la Jara (41080, codigo unico): castillo en la Via de la Plata
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='41080' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41080','castillo','Castillo del Real de la Jara','Fortaleza del s.XIII en la frontera con Extremadura, junto a la Via de la Plata. BIC.','BIC',date('now'));

-- Las Cabezas de San Juan (41020, codigo unico): conjunto y torre
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='41020' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41020','iglesia','Iglesia de San Juan Bautista','Templo barroco sobre cerro donde Riego proclamo la Constitucion en 1820. Hito de la historia liberal espanola.','excel_curado',date('now'));

-- La Puebla de Cazalla (41077, codigo unico)
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='41077' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41077','iglesia','Iglesia de Nuestra Señora de las Virtudes','Templo del s.XVI con portada renacentista. Cuna del cante flamenco moronero.','excel_curado',date('now'));

-- Coria del Rio (41034, codigo unico): cerro de San Juan, raices japonesas
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='41034' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41034','yacimiento','Cerro de San Juan (Caura)','Antiguo asentamiento tartesico y fenicio sobre el Guadalquivir. Vinculado al origen del apellido Japon en Espana.','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40003' AND p2.categoria='monumentos') WHERE codigo_ine='41024' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40004' AND p2.categoria='monumentos') WHERE codigo_ine='41032' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40005' AND p2.categoria='monumentos') WHERE codigo_ine='41033' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40006' AND p2.categoria='monumentos') WHERE codigo_ine='41038' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40007' AND p2.categoria='monumentos') WHERE codigo_ine='41073' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40008' AND p2.categoria='monumentos') WHERE codigo_ine='41083' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40009' AND p2.categoria='monumentos') WHERE codigo_ine='41041' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40010' AND p2.categoria='monumentos') WHERE codigo_ine='41048' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40011' AND p2.categoria='monumentos') WHERE codigo_ine='41053' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40012' AND p2.categoria='monumentos') WHERE codigo_ine='41055' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40013' AND p2.categoria='monumentos') WHERE codigo_ine='41060' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40014' AND p2.categoria='monumentos') WHERE codigo_ine='41065' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40015' AND p2.categoria='monumentos') WHERE codigo_ine='41068' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40016' AND p2.categoria='monumentos') WHERE codigo_ine='41070' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40017' AND p2.categoria='monumentos') WHERE codigo_ine='41074' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40018' AND p2.categoria='monumentos') WHERE codigo_ine='41091' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40019' AND p2.categoria='monumentos') WHERE codigo_ine='41095' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='40020' AND p2.categoria='monumentos') WHERE codigo_ine='41039' AND categoria='monumentos';

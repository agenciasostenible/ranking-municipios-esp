-- Monumentos Huelva
-- Duplicados: MIN 21xxx -> MAX 22xxx. Singles en 22xxx: Almonaster 22001, Almonte 22002, Alajar 22003, Aracena 22004, Aroche 22005, Ayamonte 22006.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Huelva');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Huelva');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Huelva');

-- 4. Scores individuales

-- Palos de la Frontera (21055): La Rabida, puerto de salida de Colon
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='21055' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21055','monumento','Monasterio de La Rabida','Convento franciscano del s.XV donde Colon preparo el viaje a America. BIC. Uno de los Lugares Colombinos.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21055','monumento','Muelle de las Carabelas','Del puerto de Palos zarparon las tres carabelas el 3 de agosto de 1492. Iglesia de San Jorge y casa de los Pinzon.','excel_curado',date('now'));

-- Niebla (21053): recinto amurallado almohade integro
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='21053' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21053','conjunto_historico','Murallas de Niebla','Recinto amurallado almohade de mas de 2 km casi integro, de los mejor conservados de Espana. Castillo de los Guzman y puertas monumentales. BIC.','BIC',date('now'));

-- Moguer (21050): Lugares Colombinos + Juan Ramon Jimenez
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='21050' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21050','monumento','Monasterio de Santa Clara','Cenobio gotico-mudejar del s.XIV donde Colon velo tras volver de America. BIC. Casa natal de Juan Ramon Jimenez, Nobel de Literatura.','BIC',date('now'));

-- Aracena (22004): Castillo + Gruta de las Maravillas
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='22004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22004','castillo','Castillo y Gruta de las Maravillas','Fortaleza templaria del s.XIII junto a la iglesia del Castillo. Bajo el cerro, la Gruta de las Maravillas, primera cueva turistica de Espana. BIC.','BIC',date('now'));

-- Almonaster la Real (22001): mezquita rural unica del s.X
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='22001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22001','monumento','Mezquita de Almonaster la Real','Mezquita rural del s.X unica en Espana, conservada integra dentro del castillo. BIC. Joya del arte califal en la Sierra de Huelva.','BIC',date('now'));

-- Almonte (22002): El Rocio + Doñana
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='22002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22002','ermita','Ermita de El Rocio','Santuario de la Virgen del Rocio, meta de la mayor romeria de Espana, con cerca de un millon de peregrinos. A las puertas de Doñana.','excel_curado',date('now'));

-- Minas de Riotinto (21049): paisaje minero historico
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='21049' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21049','monumento','Cuenca Minera de Riotinto','Paisaje minero explotado desde epoca tartesica y romana. Ferrocarril historico, Corta Atalaya y el rio rojo que la NASA estudia como analogo de Marte.','excel_curado',date('now'));

-- Cumbres Mayores (21029): Castillo de Sancho IV
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='21029' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21029','castillo','Castillo de Sancho IV el Bravo','Fortaleza del s.XIII en la frontera con Extremadura, muy bien conservada. BIC. Domina la Sierra de Huelva.','BIC',date('now'));

-- Cortegana (21025): Castillo medieval
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='21025' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21025','castillo','Castillo de Cortegana','Fortaleza del s.XIII de la Banda Gallega, linea defensiva frente a Portugal. BIC.','BIC',date('now'));

-- Aroche (22005): Castillo-plaza de toros + Turobriga
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='22005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22005','castillo','Castillo de Aroche','Fortaleza almohade cuyo interior alberga una curiosa plaza de toros. Junto a la ciudad romana de Turobriga. BIC.','BIC',date('now'));

-- Huelva (21041): Muelle del Tinto, barrio Reina Victoria
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='21041' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21041','monumento','Muelle del Tinto','Muelle-cargadero de mineral de hierro forjado del s.XIX, obra de la Rio Tinto Company. BIC. Junto al barrio ingles Reina Victoria.','BIC',date('now'));

-- Alajar (22003): Peña de Arias Montano + pueblo serrano
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='22003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22003','ermita','Peña de Arias Montano','Ermita de la Reina de los Angeles en un risco con vistas a la Sierra, retiro del humanista Arias Montano. Conjunto historico.','excel_curado',date('now'));

-- Zufre (21079): pueblo blanco colgado
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='21079' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21079','conjunto_historico','Conjunto Historico de Zufre','Pueblo blanco colgado sobre un risco, con murallas, iglesia mudejar y el peculiar paseo del Cabildo sobre el barranco. BIC.','BIC',date('now'));

-- Santa Olalla del Cala (21069): Castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='21069' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21069','castillo','Castillo de Santa Olalla del Cala','Fortaleza del s.XIII de la Banda Gallega en la Via de la Plata. BIC.','BIC',date('now'));

-- Gibraleon (21035): castillo y conjunto
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='21035' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21035','castillo','Castillo de Gibraleon','Recinto fortificado de origen islamico sobre el rio Odiel. BIC.','BIC',date('now'));

-- Encinasola (21031): fortificaciones de frontera
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='21031' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21031','fortaleza','Fuertes de Encinasola','Fortines abaluartados de los s.XVII-XVIII en la raya con Portugal, junto al castillo medieval. ','excel_curado',date('now'));

-- Linares de la Sierra (21045): pueblo serrano con llanos empedrados
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='21045' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('21045','conjunto_historico','Casco de Linares de la Sierra','Pueblo serrano con sus caracteristicos llanos empedrados a las puertas de las casas y plaza de toros cuadrada. ','excel_curado',date('now'));

-- Ayamonte (22006): casco e iglesias
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='22006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('22006','conjunto_historico','Casco de Ayamonte','Villa marinera en la desembocadura del Guadiana, frente a Portugal, con iglesias mudejares y el convento de San Francisco. ','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21021' AND p2.categoria='monumentos') WHERE codigo_ine='22007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21022' AND p2.categoria='monumentos') WHERE codigo_ine='22008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21025' AND p2.categoria='monumentos') WHERE codigo_ine='22009' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21029' AND p2.categoria='monumentos') WHERE codigo_ine='22010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21033' AND p2.categoria='monumentos') WHERE codigo_ine='22012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21041' AND p2.categoria='monumentos') WHERE codigo_ine='22013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21042' AND p2.categoria='monumentos') WHERE codigo_ine='22014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21043' AND p2.categoria='monumentos') WHERE codigo_ine='22015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21054' AND p2.categoria='monumentos') WHERE codigo_ine='22016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21044' AND p2.categoria='monumentos') WHERE codigo_ine='22017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21050' AND p2.categoria='monumentos') WHERE codigo_ine='22020' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21055' AND p2.categoria='monumentos') WHERE codigo_ine='22021' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21060' AND p2.categoria='monumentos') WHERE codigo_ine='22022' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21072' AND p2.categoria='monumentos') WHERE codigo_ine='22023' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='21079' AND p2.categoria='monumentos') WHERE codigo_ine='22024' AND categoria='monumentos';

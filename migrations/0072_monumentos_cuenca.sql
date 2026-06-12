-- Monumentos Cuenca
-- Duplicados MIN 14xxx -> MAX 16xxx. Resto canonicos en 16xxx (y Alarcon 14001, Valeria 14015).

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cuenca');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cuenca');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cuenca');

-- 4. Scores individuales

-- Cuenca (14004): casco antiguo UNESCO
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='14004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14004','conjunto_historico','Ciudad Historica Fortificada de Cuenca','Patrimonio Mundial UNESCO. Las Casas Colgadas asomadas a la hoz del Huecar y la primera catedral gotica de Castilla. Ciudad medieval entre dos rios.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14004','monumento','Casas Colgadas','Casas medievales suspendidas sobre el precipicio de la hoz del Huecar, simbolo de la ciudad. Albergan el Museo de Arte Abstracto Espanol.','BIC',date('now'));

-- Belmonte (16033): Castillo + colegiata + murallas
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='16033' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16033','castillo','Castillo de Belmonte','Fortaleza-palacio gotico-mudejar del s.XV del marques de Villena, de los mejor conservados de Espana. BIC. Escenario de El Cid y multiples peliculas.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16033','conjunto_historico','Villa amurallada de Belmonte','Recinto medieval con la Colegiata de San Bartolome, donde fue bautizado Fray Luis de Leon. BIC.','BIC',date('now'));

-- Uclés (16218): Monasterio El Escorial de la Mancha
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='16218' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16218','monumento','Monasterio de Ucles','Casa matriz de la Orden de Santiago, llamado el Escorial de la Mancha por su fachada herreriana del s.XVI-XVII. BIC.','BIC',date('now'));

-- Alarcon (14001): castillo sobre meandro del Jucar
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='14001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14001','castillo','Castillo y villa de Alarcon','Fortaleza del s.VIII-XII sobre un meandro cerrado del Jucar, hoy Parador. Recinto amurallado intacto. BIC. Una de las villas medievales mejor conservadas.','BIC',date('now'));

-- Segobriga (Saelices 16186): ciudad romana
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='16186' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16186','yacimiento','Parque Arqueologico de Segobriga','Ciudad romana con teatro, anfiteatro, termas y foro, uno de los conjuntos mejor conservados de la Meseta. BIC. Capital del lapis specularis (yeso espejo).','BIC',date('now'));

-- Cañete (16052): murallas y castillo
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='16052' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16052','conjunto_historico','Villa amurallada de Cañete','Recinto fortificado medieval con castillo, murallas y puertas, cuna del marques de Villena. BIC.','BIC',date('now'));

-- Huete (16112): conjunto historico de conventos
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='16112' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16112','conjunto_historico','Conjunto Historico de Huete','Ciudad de conventos e iglesias sobre el cerro del castillo, con el convento de la Merced barroco. BIC.','BIC',date('now'));

-- Moya (16135): villa fortificada despoblada
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='16135' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16135','conjunto_historico','Villa de Moya','Antiguo marquesado hoy despoblado, con castillo, murallas e iglesias en lo alto de un cerro. Conjunto medieval evocador. BIC.','BIC',date('now'));

-- Castillo de Garcimuñoz (16072): castillo de Jorge Manrique
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='16072' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16072','castillo','Castillo de Garcimuñoz','Fortaleza del s.XV con iglesia gotica en su interior. BIC. Ante sus muros murio el poeta Jorge Manrique en 1479.','BIC',date('now'));

-- San Clemente (14011): conjunto renacentista
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='14011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14011','conjunto_historico','Conjunto Historico de San Clemente','Villa renacentista con Plaza Mayor monumental, ayuntamiento plateresco e iglesia de Santiago. BIC.','BIC',date('now'));

-- Valeria (14015): ciudad romana
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='14015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14015','yacimiento','Ciudad romana de Valeria','Una de las tres ciudades romanas de la provincia junto a Segobriga y Ercavica, con foro colgante y ninfeo. BIC.','BIC',date('now'));

-- Priego (14010): conjunto y conventos en las hoces
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='14010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14010','conjunto_historico','Casco de Priego','Villa serrana en las hoces del Escabas, con torre de los Donceles, convento del Rosal e iglesia de San Nicolas. ','excel_curado',date('now'));

-- Las Pedroñeras (16154): patrimonio del ajo morado
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='16154' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16154','iglesia','Iglesia de la Asuncion','Templo del s.XVI en la capital del ajo morado, con interesante portada renacentista. ','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14002' AND p2.categoria='monumentos') WHERE codigo_ine='16035' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14003' AND p2.categoria='monumentos') WHERE codigo_ine='16048' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14004' AND p2.categoria='monumentos') WHERE codigo_ine='16078' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14006' AND p2.categoria='monumentos') WHERE codigo_ine='16091' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14007' AND p2.categoria='monumentos') WHERE codigo_ine='16125' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14008' AND p2.categoria='monumentos') WHERE codigo_ine='16133' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14009' AND p2.categoria='monumentos') WHERE codigo_ine='16134' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14010' AND p2.categoria='monumentos') WHERE codigo_ine='16170' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14011' AND p2.categoria='monumentos') WHERE codigo_ine='16190' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14012' AND p2.categoria='monumentos') WHERE codigo_ine='16203' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14013' AND p2.categoria='monumentos') WHERE codigo_ine='16215' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14014' AND p2.categoria='monumentos') WHERE codigo_ine='16219' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14016' AND p2.categoria='monumentos') WHERE codigo_ine='16245' AND categoria='monumentos';

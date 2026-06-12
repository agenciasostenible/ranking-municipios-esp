-- Monumentos Albacete
-- Duplicados MIN -> MAX dentro de 02xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Albacete');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Albacete');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Albacete');

-- 4. Scores individuales

-- Almansa (02005): Castillo sobre peñon
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='02005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02005','castillo','Castillo de Almansa','Fortaleza del s.XV de los Pacheco encaramada en un peñon calizo, una de las imagenes mas espectaculares de Castilla-La Mancha. BIC.','BIC',date('now'));

-- Alcala del Jucar (02003): pueblo en la hoz del Jucar
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='02003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02003','conjunto_historico','Conjunto Historico de Alcala del Jucar','Casas escalonadas y casas-cueva en la hoz del rio Jucar, coronadas por el castillo almohade. BIC. Uno de los pueblos mas bonitos de Espana.','BIC',date('now'));

-- Chinchilla de Montearagon (02010): conjunto historico + castillo
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='02010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02010','conjunto_historico','Conjunto Historico de Chinchilla','Antigua capital de la comarca, con castillo del s.XV, iglesia de Santa Maria gotica y casas-cueva. BIC.','BIC',date('now'));

-- Alcaraz (02004): Plaza Mayor renacentista + Torres del Tardon
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='02004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02004','conjunto_historico','Conjunto Historico de Alcaraz','Plaza Mayor renacentista con las Torres del Tardon y la Trinidad, obra de Andres de Vandelvira. BIC.','BIC',date('now'));

-- Jorquera (02041): villa amurallada sobre meandro del Jucar
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='02041' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02041','conjunto_historico','Villa de Jorquera','Recinto amurallado almohade sobre un meandro cerrado del Jucar, con puerta y torres conservadas. BIC.','BIC',date('now'));

-- Letur (02016): pueblo morisco
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='02016' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02016','conjunto_historico','Casco morisco de Letur','Laberinto de callejones de origen andalusi con acequias y rincones de agua, uno de los cascos moriscos mejor conservados de la Sierra del Segura. ','excel_curado',date('now'));

-- Lietor (02044): pueblo morisco en la sierra
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='02044' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02044','conjunto_historico','Conjunto Historico de Lietor','Pueblo de trazado andalusi colgado sobre el rio Mundo, con iglesia barroca y miradores. BIC.','BIC',date('now'));

-- Yeste (02030): castillo
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='02030' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02030','castillo','Castillo de Yeste','Fortaleza de la Orden de Santiago del s.XIII sobre la villa serrana. BIC.','BIC',date('now'));

-- Riopar (02023): Riopar Viejo + Reales Fabricas
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='02023' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02023','conjunto_historico','Riopar Viejo y Reales Fabricas','Aldea medieval sobre un cerro junto al nacimiento del rio Mundo, y las Reales Fabricas de Bronce del s.XVIII, primer complejo industrial de Espana. ','excel_curado',date('now'));

-- Hellin (02014): Tolmo de Minateda + tambores
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='02014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02014','yacimiento','El Tolmo de Minateda','Cerro habitado desde la prehistoria hasta epoca visigoda, con basilica y palacio episcopal. BIC. Junto a abrigos de arte rupestre.','BIC',date('now'));

-- Montealegre del Castillo (02017): Cerro de los Santos + castillo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='02017' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02017','yacimiento','Santuario iberico del Cerro de los Santos','Importante santuario ibero-romano que aporto cientos de exvotos al Museo Arqueologico Nacional. Junto al castillo medieval. BIC.','BIC',date('now'));

-- Nerpio (02018): arte rupestre
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='02018' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02018','yacimiento','Abrigos rupestres de Nerpio','Arte rupestre levantino Patrimonio Mundial UNESCO, con escenas de caza de hace miles de anos en plena Sierra del Segura.','UNESCO',date('now'));

-- Ayna (02006): la Suiza manchega
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='02006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02006','conjunto_historico','Casco de Ayna','Pueblo encajonado en la hoz del rio Mundo, conocido como la Suiza manchega, con restos del castillo del Almenara y ermitas rupestres. ','excel_curado',date('now'));

-- Caudete (02009): castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='02009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02009','castillo','Castillo de Caudete','Fortaleza medieval de origen almohade restaurada, junto a la iglesia de Santa Catalina. ','excel_curado',date('now'));

-- Tobarra (02025): conjunto y tambores
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='02025' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02025','iglesia','Iglesia de la Asuncion de Tobarra','Templo del s.XVI sobre el cerro, en la villa famosa por sus tamboradas, Patrimonio Inmaterial UNESCO. ','excel_curado',date('now'));

-- Albacete (02001): Pasaje de Lodares + catedral
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='02001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('02001','monumento','Pasaje de Lodares','Galeria comercial modernista de 1925, unica en Castilla-La Mancha, inspirada en las de Italia. Junto a la catedral de San Juan.','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02013' AND p2.categoria='monumentos') WHERE codigo_ine='02031' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02014' AND p2.categoria='monumentos') WHERE codigo_ine='02037' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02015' AND p2.categoria='monumentos') WHERE codigo_ine='02069' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02016' AND p2.categoria='monumentos') WHERE codigo_ine='02042' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02017' AND p2.categoria='monumentos') WHERE codigo_ine='02051' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02018' AND p2.categoria='monumentos') WHERE codigo_ine='02055' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02019' AND p2.categoria='monumentos') WHERE codigo_ine='02057' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02020' AND p2.categoria='monumentos') WHERE codigo_ine='02058' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02021' AND p2.categoria='monumentos') WHERE codigo_ine='02059' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02022' AND p2.categoria='monumentos') WHERE codigo_ine='02063' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02023' AND p2.categoria='monumentos') WHERE codigo_ine='02067' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02024' AND p2.categoria='monumentos') WHERE codigo_ine='02072' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02025' AND p2.categoria='monumentos') WHERE codigo_ine='02074' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02026' AND p2.categoria='monumentos') WHERE codigo_ine='02079' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02027' AND p2.categoria='monumentos') WHERE codigo_ine='02081' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02028' AND p2.categoria='monumentos') WHERE codigo_ine='02083' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02029' AND p2.categoria='monumentos') WHERE codigo_ine='02085' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='02030' AND p2.categoria='monumentos') WHERE codigo_ine='02086' AND categoria='monumentos';

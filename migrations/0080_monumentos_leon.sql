-- Monumentos Leon
-- Duplicados MIN 24xxx -> MAX 26xxx. Leon 26010, Astorga 26002 (singles).

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='León');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='León');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='León');

-- 4. Scores individuales

-- Leon (26010): Catedral + San Isidoro + Casa Botines
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='26010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26010','catedral','Catedral de Leon','La Pulchra Leonina, catedral gotica del s.XIII con la mayor superficie de vidrieras medievales de Europa, casi 1.800 metros cuadrados. BIC.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26010','monumento','Basilica de San Isidoro','Panteon real de los reyes de Leon con frescos romanicos llamados la Capilla Sixtina del romanico. Junto a la Casa Botines de Gaudi. BIC.','BIC',date('now'));

-- Astorga (26002): Catedral + Palacio de Gaudi + murallas romanas
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='26002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26002','palacio','Palacio Episcopal de Astorga','Obra modernista de Antoni Gaudi, uno de los pocos edificios del arquitecto fuera de Cataluna. BIC. Junto a la catedral y las murallas romanas.','BIC',date('now'));

-- Ponferrada (24115): Castillo de los Templarios
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='24115' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24115','castillo','Castillo de los Templarios','Gran fortaleza templaria del s.XII-XIII en el Camino de Santiago, una de las mejores de Castilla y Leon. BIC.','BIC',date('now'));

-- Villafranca del Bierzo (24209): conjunto + Camino
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='24209' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24209','conjunto_historico','Conjunto Historico de Villafranca del Bierzo','Villa jacobea con castillo-palacio, la Puerta del Perdon y calle del Agua de palacios. BIC. Hito del Camino de Santiago.','BIC',date('now'));

-- Sahagun (24139): mudejar leones + Camino
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24139' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24139','conjunto_historico','Conjunto mudejar de Sahagun','Cuna del mudejar de ladrillo leones, con las iglesias de San Tirso y San Lorenzo. BIC. Gran villa del Camino Frances.','BIC',date('now'));

-- Valencia de Don Juan (24188): Castillo de Coyanza
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='24188' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24188','castillo','Castillo de Coyanza','Fortaleza gotica del s.XV de perfil escenografico sobre el rio Esla. BIC.','BIC',date('now'));

-- Molinaseca (24100): conjunto + Camino + puente
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='24100' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('24100','conjunto_historico','Conjunto Historico de Molinaseca','Pueblo jacobeo con el puente medieval del Peregrino sobre el rio Meruelo y la calle Real de casas blasonadas. BIC.','BIC',date('now'));

-- Mansilla de las Mulas (26011): murallas medievales
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='26011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26011','conjunto_historico','Murallas de Mansilla de las Mulas','Recinto amurallado medieval de los mejor conservados de la provincia, en pleno Camino de Santiago. BIC.','BIC',date('now'));

-- Cacabelos (26007): Camino + vino Bierzo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='26007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26007','iglesia','Santuario de las Angustias','Capilla jacobea con curiosos exvotos, en la capital del vino del Bierzo. Junto al yacimiento romano de Castro Ventosa. ','excel_curado',date('now'));

-- La Bañeza (26009): conjunto
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='26009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('26009','iglesia','Iglesia de Santa Maria de la Bañeza','Templo del s.XVI en la villa famosa por su carnaval y su circuito de motociclismo. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='24115' AND p2.categoria='monumentos') WHERE codigo_ine='26012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='24130' AND p2.categoria='monumentos') WHERE codigo_ine='26014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='24139' AND p2.categoria='monumentos') WHERE codigo_ine='26015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='24142' AND p2.categoria='monumentos') WHERE codigo_ine='26016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='24188' AND p2.categoria='monumentos') WHERE codigo_ine='26017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='24189' AND p2.categoria='monumentos') WHERE codigo_ine='26018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='24209' AND p2.categoria='monumentos') WHERE codigo_ine='26019' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Leon)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='León'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

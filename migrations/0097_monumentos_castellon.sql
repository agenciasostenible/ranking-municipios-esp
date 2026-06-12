-- Monumentos Castellon
-- Duplicados MIN 11xxx -> MAX 12xxx. Sant Mateu 11014, Ares 11002, Cati 12042, Forcall 12061, Onda 12084 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Castellón');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Castellón');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Castellón');

-- 4. Scores individuales

-- Morella (11010): conjunto amurallado + castillo
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='11010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11010','conjunto_historico','Conjunto Historico de Morella','Ciudad medieval amurallada coronada por un castillo roquero, con la basilica de Santa Maria y acueducto. BIC. Uno de los pueblos mas bonitos de Espana.','BIC',date('now'));

-- Peñiscola (11013): castillo del Papa Luna
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='11013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11013','castillo','Castillo del Papa Luna','Fortaleza templaria sobre un peñon en el mar, residencia del Papa Luna. BIC. Ciudad amurallada escenario de Juego de Tronos y El Cid.','BIC',date('now'));

-- Sant Mateu (11014): conjunto Maestrazgo
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='11014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11014','conjunto_historico','Conjunto Historico de Sant Mateu','Capital historica del Maestrazgo, con plaza porticada, palacios goticos e iglesia arciprestal. BIC.','BIC',date('now'));

-- Segorbe (11015): catedral + murallas
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='11015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11015','conjunto_historico','Conjunto Historico de Segorbe','Ciudad episcopal con catedral, torres y lienzos de muralla medieval, en el valle del Palancia. BIC. Famosa por la Entrada de Toros y Caballos.','BIC',date('now'));

-- Ares del Maestrat (11002): pueblo sobre roca
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='11002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11002','conjunto_historico','Conjunto de Ares del Maestrat','Pueblo encaramado bajo la Mola de Ares, con restos del castillo y casco medieval. BIC. Junto a abrigos de arte rupestre UNESCO.','BIC',date('now'));

-- Culla (11006): conjunto medieval
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='11006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11006','conjunto_historico','Conjunto Historico de Culla','Pueblo medieval en lo alto de un cerro del Maestrazgo, con restos del castillo templario. BIC. Uno de los pueblos mas bonitos de Espana.','BIC',date('now'));

-- Onda (12084): castillo de las 300 torres
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='12084' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('12084','castillo','Castillo de Onda','Gran fortaleza andalusi llamada el castillo de las 300 torres, uno de los mayores recintos de la Comunidad Valenciana. BIC.','BIC',date('now'));

-- Castellon de la Plana (11005): Concatedral + Fadri
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='11005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11005','conjunto_historico','Concatedral y El Fadri','Concatedral de Santa Maria y su campanario exento El Fadri, simbolos de la capital de la Plana. BIC.','BIC',date('now'));

-- Cati (12042): conjunto gotico
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='12042' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('12042','conjunto_historico','Conjunto Historico de Cati','Villa del Maestrazgo con casas-palacio goticas y la lonja medieval, una de las mejores muestras de la arquitectura gotica civil rural. BIC.','BIC',date('now'));

-- Alcala de Xivert (11001): campanario + castillo templario
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='11001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11001','torre','Campanario de Alcala de Xivert','Una de las torres barrocas mas altas de la Comunidad Valenciana, junto al castillo templario de Xivert. BIC.','BIC',date('now'));

-- Forcall (12061): plaza porticada
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='12061' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('12061','conjunto_historico','Plaza Mayor de Forcall','Plaza porticada renacentista con palacios goticos en los Puertos de Morella. BIC.','BIC',date('now'));

-- Vinaros (11018): iglesia-fortaleza
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='11018' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11018','iglesia','Arciprestal de Vinaros','Iglesia-fortaleza barroca con portada monumental, en la villa marinera famosa por su langostino. ','excel_curado',date('now'));

-- Montanejos (11009): patrimonio termal
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='11009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11009','monumento','Fuente de los Baños','Manantial termal de aguas a 25 grados conocido desde epoca andalusi, junto al castillo de la villa. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11003' AND p2.categoria='monumentos') WHERE codigo_ine='12027' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11005' AND p2.categoria='monumentos') WHERE codigo_ine='12040' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11006' AND p2.categoria='monumentos') WHERE codigo_ine='12051' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11008' AND p2.categoria='monumentos') WHERE codigo_ine='12072' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11009' AND p2.categoria='monumentos') WHERE codigo_ine='12079' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11010' AND p2.categoria='monumentos') WHERE codigo_ine='12080' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11012' AND p2.categoria='monumentos') WHERE codigo_ine='12085' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11013' AND p2.categoria='monumentos') WHERE codigo_ine='12089' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11015' AND p2.categoria='monumentos') WHERE codigo_ine='12104' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11016' AND p2.categoria='monumentos') WHERE codigo_ine='12121' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11017' AND p2.categoria='monumentos') WHERE codigo_ine='12129' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Castellon)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Castellón'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

-- Monumentos Tarragona
-- Duplicados MIN 42xxx -> MAX 43xxx. Montblanc 42009, Poblet 42010, Miravet 43084, Prades 43116, El Vendrell 42005 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Tarragona');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Tarragona');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Tarragona');

-- 4. Scores individuales

-- Tarragona (42013): Tarraco UNESCO
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='42013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42013','yacimiento','Conjunto Arqueologico de Tarraco','Patrimonio Mundial UNESCO. La antigua capital romana de Hispania, con anfiteatro junto al mar, circo, murallas, foro y el acueducto de les Ferreres.','UNESCO',date('now'));

-- Poblet (42010): Monasterio UNESCO
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='42010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42010','monumento','Monasterio de Poblet','Patrimonio Mundial UNESCO. La mayor abadia cisterciense habitada de Europa, panteon real de la Corona de Aragon. Ruta del Cister.','UNESCO',date('now'));

-- Montblanc (42009): villa amurallada
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='42009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42009','conjunto_historico','Conjunto Historico de Montblanc','Villa medieval amurallada con iglesia de Santa Maria gotica y torres, escenario de la leyenda de Sant Jordi y el dragon. BIC.','BIC',date('now'));

-- Tortosa (42014): catedral + castillo de la Suda
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='42014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42014','conjunto_historico','Conjunto Historico de Tortosa','Ciudad del Ebro con catedral gotica, el castillo de la Suda (Parador) de origen andalusi y los Reales Colegios renacentistas. BIC.','BIC',date('now'));

-- Miravet (43084): castillo templario
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='43084' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43084','castillo','Castillo de Miravet','Una de las mejores fortalezas templarias de Europa, del s.XII, sobre un meandro del Ebro. BIC. Estampa iconica de Cataluña.','BIC',date('now'));

-- Reus (42011): modernismo
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='42011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42011','conjunto_historico','Ruta del Modernismo de Reus','Ciudad natal de Gaudi con mas de 20 edificios modernistas, entre ellos la Casa Navas de Domenech i Montaner. BIC.','BIC',date('now'));

-- Prades (43116): villa roja medieval
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='43116' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43116','conjunto_historico','Conjunto Historico de Prades','La Vila Vermella, pueblo medieval de piedra rojiza con plaza porticada y fuente renacentista esferica. BIC.','BIC',date('now'));

-- Valls (42015): castells + conjunto
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='42015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42015','conjunto_historico','Casco de Valls','Cuna de los castells, torres humanas Patrimonio Inmaterial UNESCO, con barrio judio y la iglesia de Sant Joan. ','excel_curado',date('now'));

-- El Vendrell (42005): patrimonio musical
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='42005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42005','iglesia','Iglesia de Sant Salvador del Vendrell','Templo barroco de gran organo, en la villa natal del violonchelista Pau Casals. ','excel_curado',date('now'));

-- Cambrils (42003): torre + patrimonio marinero
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='42003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42003','torre','Torre del Port de Cambrils','Torre de defensa del s.XVII frente a los piratas, simbolo del puerto pesquero de la Costa Daurada. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42001' AND p2.categoria='monumentos') WHERE codigo_ine='43014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42002' AND p2.categoria='monumentos') WHERE codigo_ine='43037' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42003' AND p2.categoria='monumentos') WHERE codigo_ine='43038' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42004' AND p2.categoria='monumentos') WHERE codigo_ine='43901' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42006' AND p2.categoria='monumentos') WHERE codigo_ine='43055' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42007' AND p2.categoria='monumentos') WHERE codigo_ine='43064' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42011' AND p2.categoria='monumentos') WHERE codigo_ine='43123' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42012' AND p2.categoria='monumentos') WHERE codigo_ine='43905' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42013' AND p2.categoria='monumentos') WHERE codigo_ine='43148' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42014' AND p2.categoria='monumentos') WHERE codigo_ine='43155' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='42015' AND p2.categoria='monumentos') WHERE codigo_ine='43161' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Tarragona)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Tarragona'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

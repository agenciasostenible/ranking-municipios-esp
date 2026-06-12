-- Monumentos Pontevedra
-- Duplicados: Marin 36007->36026, Moaña 36008->36029, Pontevedra 36011->36038, Redondela 36012->36045, Sanxenxo 36013->36051, Vigo 36015->36057.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Pontevedra');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Pontevedra');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Pontevedra');

-- 4. Scores individuales

-- Pontevedra (36011): casco historico + basilica peregrina
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='36011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('36011','conjunto_historico','Conjunto Historico de Pontevedra','Uno de los cascos historicos mejor conservados de Galicia, con la basilica de Santa Maria, la capilla de la Peregrina y plazas soportaladas. BIC.','BIC',date('now'));

-- Tui (36014): catedral-fortaleza
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='36014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('36014','catedral','Catedral de Tui','Catedral-fortaleza romanico-gotica del s.XII sobre el Miño, frente a Portugal. BIC. Inicio del Camino Portugues.','BIC',date('now'));

-- Combarro (36006): horreos junto al mar
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='36006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('36006','conjunto_historico','Conjunto Historico de Combarro','Aldea marinera con su celebre hilera de horreos y cruceiros junto al mar, simbolo de Galicia. BIC.','BIC',date('now'));

-- Cambados (36004): Pazo de Fefiñans
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='36004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('36004','conjunto_historico','Conjunto Historico de Cambados','Capital del albariño con la monumental plaza de Fefiñans y su pazo, y las ruinas de Santa Mariña Dozo. BIC.','BIC',date('now'));

-- Baiona (36002): Monterreal
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='36002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('36002','castillo','Fortaleza de Monterreal','Recinto amurallado sobre una peninsula, hoy Parador. BIC. A Baiona llego en 1493 la carabela La Pinta con la noticia del descubrimiento de America.','BIC',date('now'));

-- A Guarda (36001): Castro de Santa Trega
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='36001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('36001','yacimiento','Castro de Santa Trega','Gran poblado castreño galaico-romano con casas circulares reconstruidas, sobre un monte en la desembocadura del Miño. BIC.','BIC',date('now'));

-- Vigo (36015): casco vello + Castro
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='36015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('36015','conjunto_historico','Casco Vello y Monte do Castro','Barrio historico del Berbes y la concatedral, junto al parque del Castro con fortaleza del s.XVII sobre la ria. ','excel_curado',date('now'));

-- Mondariz (36030): balneario
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='36030' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('36030','monumento','Balneario de Mondariz','Gran balneario decimononico, simbolo del termalismo gallego, que llego a tener estafeta y moneda propias. ','excel_curado',date('now'));

-- Redondela (36012): viaductos
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='36012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('36012','monumento','Viaductos de Redondela','La villa de los viaductos, con dos grandes puentes ferroviarios del s.XIX sobre la ria. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36007' AND p2.categoria='monumentos') WHERE codigo_ine='36026' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36008' AND p2.categoria='monumentos') WHERE codigo_ine='36029' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36011' AND p2.categoria='monumentos') WHERE codigo_ine='36038' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36012' AND p2.categoria='monumentos') WHERE codigo_ine='36045' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36013' AND p2.categoria='monumentos') WHERE codigo_ine='36051' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36015' AND p2.categoria='monumentos') WHERE codigo_ine='36057' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Pontevedra)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Pontevedra'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

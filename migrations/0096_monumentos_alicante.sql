-- Monumentos Alicante
-- Duplicados MIN -> MAX dentro de 03xxx. Alicante 03003, Elche 03065, Biar 03043, Altea 03004, Javea 03082 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Alicante');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Alicante');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Alicante');

-- 4. Scores individuales

-- Elche (03065): Palmeral UNESCO + Misteri + Dama
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='03065' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03065','monumento','Palmeral de Elche','Patrimonio Mundial UNESCO. El mayor palmeral de Europa, herencia de la agricultura andalusi. Cuna del Misteri d''Elx y de la Dama de Elche.','UNESCO',date('now'));

-- Alicante (03003): Castillo de Santa Barbara
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='03003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03003','castillo','Castillo de Santa Barbara','Gran fortaleza sobre el monte Benacantil dominando la bahia, una de las mayores de Espana. BIC. Junto al casco antiguo del Barrio de Santa Cruz.','BIC',date('now'));

-- Orihuela (03027): catedral + conjunto
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='03027' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03027','conjunto_historico','Conjunto Historico de Orihuela','Ciudad episcopal con catedral gotica, colegio de Santo Domingo (el Escorial de Levante) y palacios. BIC. Cuna de Miguel Hernandez.','BIC',date('now'));

-- Guadalest (03019): castillo sobre roca
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='03019' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03019','castillo','Castell de Guadalest','Fortaleza encaramada en un risco con campanario sobre la roca, una de las estampas mas fotografiadas de Espana. BIC. Uno de los pueblos mas bonitos.','BIC',date('now'));

-- Villena (03040): Castillo de la Atalaya + Tesoro
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='03040' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03040','castillo','Castillo de la Atalaya','Fortaleza medieval de doble muralla. BIC. En Villena se hallo el Tesoro de Villena, el mayor conjunto de orfebreria de la Edad del Bronce de Europa.','BIC',date('now'));

-- Biar (03043): castillo
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='03043' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03043','castillo','Castillo de Biar','Fortaleza almohade y cristiana con una de las torres del homenaje con boveda almohade mejor conservadas de Espana. BIC.','BIC',date('now'));

-- Denia (03014): castillo
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='03014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03014','castillo','Castillo de Denia','Fortaleza sobre la ciudad de origen islamico, antigua taifa de Denia, con el Palau del Governador. BIC.','BIC',date('now'));

-- Cocentaina (03012): Palau Comtal + castillo
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='03012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03012','palacio','Palau Comtal de Cocentaina','Palacio señorial de los s.XV-XVI con artesonados mudejares, junto al castillo medieval sobre la villa. BIC.','BIC',date('now'));

-- Novelda (03026): Santuario modernista + Castillo de la Mola
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='03026' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03026','iglesia','Santuario de Santa Maria Magdalena','Templo modernista de inspiracion gaudiniana, junto al Castillo de la Mola de singular torre triangular. BIC.','BIC',date('now'));

-- Altea (03004): casco blanco
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='03004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03004','conjunto_historico','Casco antiguo de Altea','Pueblo blanco sobre una colina coronado por la iglesia de cupula azul de Nuestra Señora del Consuelo, simbolo de la Costa Blanca. ','excel_curado',date('now'));

-- Castalla (03011): castillo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='03011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03011','castillo','Castillo de Castalla','Fortaleza medieval sobre un cerro con el Palau dels Vilanova de aire gotico. BIC.','BIC',date('now'));

-- Javea (03082): iglesia-fortaleza + casco
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='03082' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03082','iglesia','Iglesia-fortaleza de San Bartolome','Templo gotico fortificado del s.XVI para defenderse de los piratas, corazon del casco antiguo de Javea. BIC.','BIC',date('now'));

-- Santa Pola (03035): castillo-fortaleza
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='03035' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03035','castillo','Castillo-Fortaleza de Santa Pola','Fortaleza renacentista del s.XVI frente a los piratas berberiscos, en el centro de la villa marinera. BIC.','BIC',date('now'));

-- Calpe (03010): Peñon + baños romanos
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='03010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('03010','yacimiento','Baños de la Reina','Yacimiento romano de villa y piscifactoria al pie del Peñon de Ifach, simbolo de la Costa Blanca. BIC.','BIC',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03010' AND p2.categoria='monumentos') WHERE codigo_ine='03047' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03011' AND p2.categoria='monumentos') WHERE codigo_ine='03053' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03012' AND p2.categoria='monumentos') WHERE codigo_ine='03056' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03014' AND p2.categoria='monumentos') WHERE codigo_ine='03063' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03015' AND p2.categoria='monumentos') WHERE codigo_ine='03050' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03017' AND p2.categoria='monumentos') WHERE codigo_ine='03066' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03018' AND p2.categoria='monumentos') WHERE codigo_ine='03069' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03019' AND p2.categoria='monumentos') WHERE codigo_ine='03075' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03020' AND p2.categoria='monumentos') WHERE codigo_ine='03076' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03021' AND p2.categoria='monumentos') WHERE codigo_ine='03079' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03024' AND p2.categoria='monumentos') WHERE codigo_ine='03092' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03026' AND p2.categoria='monumentos') WHERE codigo_ine='03093' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03027' AND p2.categoria='monumentos') WHERE codigo_ine='03099' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03028' AND p2.categoria='monumentos') WHERE codigo_ine='03102' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03030' AND p2.categoria='monumentos') WHERE codigo_ine='03106' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03031' AND p2.categoria='monumentos') WHERE codigo_ine='03107' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03032' AND p2.categoria='monumentos') WHERE codigo_ine='03112' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03033' AND p2.categoria='monumentos') WHERE codigo_ine='03113' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03034' AND p2.categoria='monumentos') WHERE codigo_ine='03122' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03035' AND p2.categoria='monumentos') WHERE codigo_ine='03121' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03036' AND p2.categoria='monumentos') WHERE codigo_ine='03124' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03037' AND p2.categoria='monumentos') WHERE codigo_ine='03128' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03038' AND p2.categoria='monumentos') WHERE codigo_ine='03133' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03040' AND p2.categoria='monumentos') WHERE codigo_ine='03140' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Alicante)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Alicante'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

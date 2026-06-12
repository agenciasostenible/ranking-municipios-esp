-- Monumentos Soria
-- Duplicados MIN 41xxx -> MAX 42xxx. Resto singles en 42xxx (y Burgo de Osma 41004, Agreda 41011).

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Soria');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Soria');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Soria');

-- 4. Scores individuales

-- El Burgo de Osma (41004): catedral + conjunto amurallado
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='41004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41004','conjunto_historico','Conjunto Historico de El Burgo de Osma','Villa episcopal amurallada con catedral gotica de esbelta torre barroca, calles porticadas y la antigua Universidad de Santa Catalina. BIC.','BIC',date('now'));

-- Medinaceli (42113): arco romano + conjunto
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='42113' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42113','monumento','Arco Romano de Medinaceli','Unico arco romano de triple vano conservado en Espana, del s.I d.C. BIC. Simbolo de la villa que corona un alto sobre el Jalon.','BIC',date('now'));

-- Soria (41009): San Juan de Duero + San Saturio
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='41009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41009','monumento','San Juan de Duero','Claustro romanico unico con arcos entrelazados de influencia oriental. BIC. Junto a la ermita de San Saturio y los paisajes de Machado y Becquer.','BIC',date('now'));

-- Calatañazor (42046): villa medieval intacta
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='42046' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42046','conjunto_historico','Villa medieval de Calatañazor','Pueblo medieval intacto de calles de tierra y casas de adobe, con castillo en ruinas. BIC. Donde la tradicion dice que Almanzor perdio el tambor.','BIC',date('now'));

-- Berlanga de Duero (41002): castillo + colegiata + San Baudelio
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='41002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41002','castillo','Castillo y colegiata de Berlanga','Fortaleza renacentista con doble muralla y colegiata gotica. BIC. Cerca, la ermita mozarabe de San Baudelio, la capilla sixtina del mozarabe.','BIC',date('now'));

-- Gormaz (42097): fortaleza califal
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='42097' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42097','castillo','Fortaleza Califal de Gormaz','La mayor fortaleza de Europa en su epoca, del s.X, con casi un kilometro de murallas sobre el Duero. BIC.','BIC',date('now'));

-- Garray (42094): Numancia
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='42094' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42094','yacimiento','Yacimiento de Numancia','Mitica ciudad celtibera simbolo de la resistencia frente a Roma, que se inmolo en el 133 a.C. BIC. Uno de los yacimientos mas emblematicos de Espana.','BIC',date('now'));

-- Agreda (41011): villa de las tres culturas
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='41011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41011','conjunto_historico','Conjunto Historico de Agreda','La villa de las tres culturas, con murallas, puerta califal, iglesias y barrio judio, a los pies del Moncayo. BIC.','BIC',date('now'));

-- San Esteban de Gormaz (41008): iglesias romanicas
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='41008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41008','iglesia','Iglesias romanicas de San Esteban','San Miguel y El Rivero, de los porticos romanicos mas antiguos de Castilla, del s.XI-XII. BIC. Villa ligada al Cantar de Mio Cid.','BIC',date('now'));

-- Almazan (41001): conjunto amurallado
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='41001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41001','conjunto_historico','Conjunto Historico de Almazan','Villa amurallada sobre el Duero con tres puertas, el palacio de los Hurtado de Mendoza y la iglesia romanica de San Miguel. BIC.','BIC',date('now'));

-- Yanguas (42218): villa medieval + castillo
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='42218' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42218','conjunto_historico','Conjunto Historico de Yanguas','Villa medieval en las Tierras Altas con torre romanica, castillo y casonas, junto al rio Cidacos. BIC.','BIC',date('now'));

-- Caracena (42052): castillo + iglesia romanica
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='42052' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('42052','castillo','Castillo e iglesia de Caracena','Castillo del s.XV y dos iglesias romanicas en un pueblo casi despoblado de gran valor monumental. BIC.','BIC',date('now'));

-- Vinuesa (41010): conjunto pinariego
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='41010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41010','conjunto_historico','Casco de Vinuesa','La Corte de Pinares, con casonas blasonadas de indianos y ganaderos de la Mesta, puerta de la Laguna Negra. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41001' AND p2.categoria='monumentos') WHERE codigo_ine='42020' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41002' AND p2.categoria='monumentos') WHERE codigo_ine='42035' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41003' AND p2.categoria='monumentos') WHERE codigo_ine='42069' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41006' AND p2.categoria='monumentos') WHERE codigo_ine='42129' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41008' AND p2.categoria='monumentos') WHERE codigo_ine='42162' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41009' AND p2.categoria='monumentos') WHERE codigo_ine='42173' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41010' AND p2.categoria='monumentos') WHERE codigo_ine='42215' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Soria)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Soria'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

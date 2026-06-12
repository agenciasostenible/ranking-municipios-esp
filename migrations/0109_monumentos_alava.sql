-- Monumentos Alava
-- Duplicados MIN 01xxx -> MAX 50xxx. Vitoria 01059 / Vitoria-Gasteiz 50039 (ambos). Salvatierra 01051, Añana 01049, Oyon 01043, Salinas de Añana 50034 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Álava');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Álava');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Álava');

-- 4. Scores individuales

-- Laguardia (01031): villa amurallada Rioja Alavesa
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='01031' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01031','conjunto_historico','Villa amurallada de Laguardia','Villa medieval intacta sobre un cerro de la Rioja Alavesa, con murallas, el portico policromado de Santa Maria de los Reyes y bodegas subterraneas. BIC.','BIC',date('now'));

-- Vitoria (01059) / Vitoria-Gasteiz (50039): casco medieval + catedral
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='01059' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01059','catedral','Catedral de Santa Maria de Vitoria','Catedral gotica del s.XIV que inspiro a Ken Follett, en el casco medieval en forma de almendra con murallas y palacios. BIC.','BIC',date('now'));
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='50039' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('50039','catedral','Catedral de Santa Maria de Vitoria','Catedral gotica del s.XIV que inspiro a Ken Follett, en el casco medieval en forma de almendra con murallas y palacios. BIC.','BIC',date('now'));

-- Salinas de Añana (50034): Valle Salado
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='50034' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('50034','monumento','Valle Salado de Añana','Salinas de montaña en explotacion desde hace mas de 6.500 anos, espectacular paisaje de eras de sal en terrazas. BIC.','BIC',date('now'));

-- Elciego (01022): Marques de Riscal + conjunto
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='01022' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01022','conjunto_historico','Casco de Elciego y Marques de Riscal','Pueblo vinatero de la Rioja Alavesa con la iglesia de San Andres y la espectacular bodega-hotel de Frank Gehry. ','excel_curado',date('now'));

-- Salvatierra / Agurain (01051): casco amurallado
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='01051' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01051','conjunto_historico','Conjunto Historico de Salvatierra-Agurain','Villa medieval amurallada con dos iglesias-fortaleza, San Juan y Santa Maria, en la Llanada Alavesa. BIC.','BIC',date('now'));

-- Labastida (01028): conjunto Rioja Alavesa
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='01028' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01028','conjunto_historico','Conjunto Historico de Labastida','Villa vinatera con casas blasonadas, ermita del Cristo y restos de muralla, en la Rioja Alavesa. BIC.','BIC',date('now'));

-- Peñacerrada (01044): recinto amurallado
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='01044' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01044','conjunto_historico','Recinto amurallado de Peñacerrada','Villa medieval que conserva sus murallas y puertas con casas adosadas al adarve, caso singular en Alava. BIC.','BIC',date('now'));

-- Añana (01049): conjunto
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='01049' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01049','conjunto_historico','Casco de Añana','Villa historica de la cuadrilla de Añana, junto al famoso Valle Salado de salinas milenarias. ','excel_curado',date('now'));

-- Oyon (01043): conjunto vinatero
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='01043' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01043','iglesia','Iglesia de San Vicente de Oyon','Templo con esbelta torre en la villa vinatera de la Rioja Alavesa, junto a la torre de Doña Otxanda. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01022' AND p2.categoria='monumentos') WHERE codigo_ine='50014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01027' AND p2.categoria='monumentos') WHERE codigo_ine='50017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01901' AND p2.categoria='monumentos') WHERE codigo_ine='50018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01028' AND p2.categoria='monumentos') WHERE codigo_ine='50021' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01030' AND p2.categoria='monumentos') WHERE codigo_ine='50022' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01031' AND p2.categoria='monumentos') WHERE codigo_ine='50023' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01032' AND p2.categoria='monumentos') WHERE codigo_ine='50024' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01902' AND p2.categoria='monumentos') WHERE codigo_ine='50025' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01033' AND p2.categoria='monumentos') WHERE codigo_ine='50026' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01036' AND p2.categoria='monumentos') WHERE codigo_ine='50027' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01039' AND p2.categoria='monumentos') WHERE codigo_ine='50028' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01041' AND p2.categoria='monumentos') WHERE codigo_ine='50029' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01044' AND p2.categoria='monumentos') WHERE codigo_ine='50032' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01046' AND p2.categoria='monumentos') WHERE codigo_ine='50033' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01057' AND p2.categoria='monumentos') WHERE codigo_ine='50038' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01060' AND p2.categoria='monumentos') WHERE codigo_ine='50040' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Alava)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Álava'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

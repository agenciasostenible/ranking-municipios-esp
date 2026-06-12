-- Monumentos Girona
-- Duplicados MIN 17xxx -> MAX 18xxx. L'Escala en 18006 y 17062 (nombres distintos). Girona 18005, Besalu 18002, Peratallada 18011 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Girona');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Girona');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Girona');

-- 4. Scores individuales

-- Girona (18005): catedral + Call + casas del Onyar
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='18005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18005','conjunto_historico','Conjunto Historico de Girona','Catedral con la nave gotica mas ancha del mundo, la judería (Call) mejor conservada de Europa, murallas y las casas de colores del Onyar. BIC. Escenario de Juego de Tronos.','BIC',date('now'));

-- Besalu (18002): villa medieval + puente romanico
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='18002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18002','conjunto_historico','Conjunto Historico de Besalu','Una de las villas medievales mejor conservadas de Cataluña, con puente romanico fortificado, miqve (baño judio) e iglesias romanicas. BIC.','BIC',date('now'));

-- Ripoll (17147): Monasterio de Santa Maria
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='17147' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17147','monumento','Monasterio de Santa Maria de Ripoll','Cuna de Cataluña, con la portada romanica esculpida mas importante de la Peninsula, una biblia en piedra del s.XII. BIC. Panteon de los condes.','BIC',date('now'));

-- Peratallada (18011): conjunto medieval petreo
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='18011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18011','conjunto_historico','Conjunto Historico de Peratallada','Uno de los nucleos medievales con mayor caracter del Emporda, todo en piedra, con castillo, foso excavado en roca y murallas. BIC.','BIC',date('now'));

-- L'Escala / Empuries (18006 y 17062): yacimiento greco-romano
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='18006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18006','yacimiento','Ruinas de Empuries','Unico yacimiento de la Peninsula donde conviven una ciudad griega y una romana. BIC. Puerta de entrada de la cultura clasica a Iberia.','BIC',date('now'));
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='17062' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17062','yacimiento','Ruinas de Empuries','Unico yacimiento de la Peninsula donde conviven una ciudad griega y una romana. BIC. Puerta de entrada de la cultura clasica a Iberia.','BIC',date('now'));

-- Pals (17124): conjunto medieval gotico
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='17124' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17124','conjunto_historico','Conjunto Historico de Pals','Nucleo gotico sobre una colina con la torre de las Horas romanica y calles empedradas, mirador del Baix Emporda. BIC.','BIC',date('now'));

-- Tossa de Mar (18017): Vila Vella amurallada
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='18017' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18017','conjunto_historico','Vila Vella de Tossa de Mar','Unico ejemplo de villa medieval fortificada conservada en la costa catalana, con murallas y torres sobre el mar. BIC.','BIC',date('now'));

-- Cadaques (17032): pueblo de Dali
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='17032' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17032','conjunto_historico','Casco de Cadaques','Pueblo blanco de calles de pizarra con la iglesia de Santa Maria sobre la bahia. Junto a la casa-museo de Dali en Portlligat. ','excel_curado',date('now'));

-- Santa Pau (17184): conjunto medieval en la Garrotxa
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='17184' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17184','conjunto_historico','Conjunto Historico de Santa Pau','Villa medieval con plaza porticada (Firal dels Bous) y castillo de los baroness, en plena zona volcanica de la Garrotxa. BIC.','BIC',date('now'));

-- Torroella de Montgri (17199): castillo + conjunto
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='17199' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17199','castillo','Castillo del Montgri','Fortaleza real del s.XIII de planta cuadrada sobre un monte aislado, simbolo del Baix Emporda, junto al casco medieval. BIC.','BIC',date('now'));

-- Lloret de Mar (17095): castillo + modernismo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='17095' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17095','castillo','Castell de Sant Joan y modernismo','Restos del castillo medieval sobre el mar, los jardines de Santa Clotilde y el cementerio modernista. ','excel_curado',date('now'));

-- Palamos (17118): patrimonio marinero
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='17118' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17118','iglesia','Iglesia de Santa Maria de Palamos','Templo gotico-marinero del s.XIV en la villa pesquera, junto al castillo de Sant Esteve de Mar. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='17032' AND p2.categoria='monumentos') WHERE codigo_ine='18003' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='17095' AND p2.categoria='monumentos') WHERE codigo_ine='18007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='17118' AND p2.categoria='monumentos') WHERE codigo_ine='18009' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='17124' AND p2.categoria='monumentos') WHERE codigo_ine='18010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='17043' AND p2.categoria='monumentos') WHERE codigo_ine='18013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='17199' AND p2.categoria='monumentos') WHERE codigo_ine='18016' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Girona)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Girona'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

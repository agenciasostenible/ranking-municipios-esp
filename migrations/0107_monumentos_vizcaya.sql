-- Monumentos Vizcaya
-- Duplicados: Bermeo 47003->48017, Bilbao 47004->48020, Ea 47005->48028. Resto singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Vizcaya');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Vizcaya');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Vizcaya');

-- 4. Scores individuales

-- Portugalete (48078): Puente Bizkaia UNESCO
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='48078' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48078','monumento','Puente de Vizcaya (Puente Colgante)','Patrimonio Mundial UNESCO. Primer puente transbordador del mundo, de 1893, simbolo de la arquitectura del hierro de la Revolucion Industrial.','UNESCO',date('now'));

-- Bilbao (47004): Guggenheim + Casco Viejo
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='47004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47004','conjunto_historico','Casco Viejo y Catedral de Santiago','Las Siete Calles medievales con la catedral gotica de Santiago, junto al museo Guggenheim que transformo la ciudad. BIC.','BIC',date('now'));

-- Gernika-Lumo (47007): Casa de Juntas + Arbol
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='47007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47007','monumento','Casa de Juntas y Arbol de Gernika','Sede historica de las Juntas Generales de Vizcaya junto al Arbol de Gernika, simbolo de las libertades vascas. BIC.','BIC',date('now'));

-- Balmaseda (47001): puente medieval + casco
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='47001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47001','conjunto_historico','Conjunto Historico de Balmaseda','La villa mas antigua de Vizcaya, con su puente medieval fortificado y casco historico. BIC. Famosa por su Via Crucis viviente.','BIC',date('now'));

-- Elorrio (48032): conjunto de palacios
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='48032' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48032','conjunto_historico','Conjunto Historico de Elorrio','Villa con la mayor concentracion de palacios y casas-torre de Vizcaya y la basilica de la Purisima. BIC.','BIC',date('now'));

-- Durango (48027): Arco de Santa Ana + basilica
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='48027' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48027','conjunto_historico','Casco Historico de Durango','Villa medieval con el Arco de Santa Ana barroco, la basilica de Santa Maria y el palacio Etxezarreta. BIC.','BIC',date('now'));

-- Lekeitio (47010): basilica gotica + puerto
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='47010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47010','iglesia','Basilica de la Asuncion de Lekeitio','Templo gotico con uno de los mejores retablos goticos de España, sobre el pintoresco puerto pesquero y la isla de San Nicolas. BIC.','BIC',date('now'));

-- Bermeo (47003): puerto viejo + torre Ercilla
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='47003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47003','torre','Torre Ercilla y Puerto Viejo','Casa-torre medieval gotica sobre el pintoresco Puerto Viejo de casas apiñadas, en la capital pesquera de Vizcaya. BIC.','BIC',date('now'));

-- Orduña (48074): plaza + aduana
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='48074' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48074','conjunto_historico','Casco Historico de Orduña','Unica ciudad de Vizcaya, con una monumental plaza porticada y la antigua Aduana, al pie del Salto del Nervion. BIC.','BIC',date('now'));

-- Ondarroa (47012): puente + casco marinero
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='47012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('47012','iglesia','Iglesia de Santa Maria de Ondarroa','Templo gotico con singulares figuras en la cornisa, en el casco marinero mas apiñado de Euskadi. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47003' AND p2.categoria='monumentos') WHERE codigo_ine='48017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47004' AND p2.categoria='monumentos') WHERE codigo_ine='48020' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47005' AND p2.categoria='monumentos') WHERE codigo_ine='48028' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Vizcaya)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Vizcaya'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

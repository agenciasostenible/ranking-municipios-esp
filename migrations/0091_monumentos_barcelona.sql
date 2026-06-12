-- Monumentos Barcelona
-- Duplicados MIN -> MAX dentro de 08xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Barcelona');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Barcelona');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Barcelona');

-- 4. Scores individuales

-- Barcelona (08003): obras de Gaudi UNESCO + casco gotico
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='08003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08003','monumento','Obras de Antoni Gaudi','Patrimonio Mundial UNESCO. La Sagrada Familia, el Park Guell, la Casa Mila (La Pedrera) y la Casa Batllo, obras maestras del modernismo.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08003','monumento','Palau de la Musica y Hospital de Sant Pau','Patrimonio Mundial UNESCO. Dos joyas del modernismo de Domenech i Montaner. Junto al Barrio Gotico y la catedral de Santa Eulalia.','UNESCO',date('now'));

-- Montserrat (08014): Monasterio
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='08014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08014','monumento','Monasterio de Montserrat','Abadia benedictina enclavada en una espectacular montaña de roca, santuario de la Moreneta, patrona de Cataluña. BIC.','BIC',date('now'));

-- Cardona (08009): Castillo + colegiata
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='08009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08009','castillo','Castillo de Cardona','Fortaleza medieval de los señores de Cardona, hoy Parador, con la colegiata romanico-gotica de Sant Vicenç. BIC. Junto a la Montaña de Sal.','BIC',date('now'));

-- Vic (08026): Plaza Mayor + catedral
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='08026' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08026','conjunto_historico','Conjunto Historico de Vic','Ciudad con una de las mayores plazas porticadas de Cataluña, catedral con murales de Sert, templo romano y muralla medieval. BIC.','BIC',date('now'));

-- Manresa (08113): Basilica de la Seu + Cova de Sant Ignasi
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='08113' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08113','iglesia','Basilica de la Seu de Manresa','Gran iglesia gotica sobre el rio Cardener, junto a la Cova de Sant Ignasi y el medieval Pont Vell. BIC.','BIC',date('now'));

-- Sitges (08023): conjunto modernista
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='08023' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08023','conjunto_historico','Conjunto Historico de Sitges','Villa marinera con la iglesia de Sant Bartomeu sobre el mar, museos modernistas (Cau Ferrat) y casas de indianos. BIC.','BIC',date('now'));

-- Monistrol de Montserrat (08127): pueblo a los pies de Montserrat
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='08127' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08127','conjunto_historico','Casco de Monistrol de Montserrat','Pueblo medieval a los pies de Montserrat con puente gotico sobre el Llobregat, punto de partida del cremallera. ','excel_curado',date('now'));

-- Berga (08005): conjunto + Patum
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='08005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08005','conjunto_historico','Casco de Berga','Capital del Bergueda con el santuario de Queralt y la Patum, fiesta Patrimonio Inmaterial UNESCO. ','excel_curado',date('now'));

-- Igualada (08102): barrio del Rec + modernismo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='08102' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08102','conjunto_historico','Barrio del Rec de Igualada','Antiguo barrio de curtidores con mas de 100 adoberias, conjunto industrial unico, junto al Museo de la Piel. ','excel_curado',date('now'));

-- Castelldefels (08056): castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='08056' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08056','castillo','Castillo de Castelldefels','Fortaleza medieval sobre un cerro junto al mar, levantada sobre restos iberos y romanos. BIC.','BIC',date('now'));

-- Mataro (08121): vila romana Iluro + modernismo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='08121' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('08121','yacimiento','Iluro y modernismo de Mataro','Restos de la ciudad romana de Iluro y obras tempranas de Puig i Cadafalch en la capital del Maresme. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08007' AND p2.categoria='monumentos') WHERE codigo_ine='08035' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08008' AND p2.categoria='monumentos') WHERE codigo_ine='08040' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08009' AND p2.categoria='monumentos') WHERE codigo_ine='08047' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08011' AND p2.categoria='monumentos') WHERE codigo_ine='08079' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08012' AND p2.categoria='monumentos') WHERE codigo_ine='08110' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08013' AND p2.categoria='monumentos') WHERE codigo_ine='08112' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08016' AND p2.categoria='monumentos') WHERE codigo_ine='08163' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08023' AND p2.categoria='monumentos') WHERE codigo_ine='08270' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08024' AND p2.categoria='monumentos') WHERE codigo_ine='08280' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08025' AND p2.categoria='monumentos') WHERE codigo_ine='08285' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='08026' AND p2.categoria='monumentos') WHERE codigo_ine='08298' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Barcelona)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Barcelona'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

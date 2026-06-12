-- Monumentos Madrid
-- Duplicados MIN 28xxx -> MAX 29xxx. Alcala 29001, Aranjuez 29003 singles en 29xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Madrid');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Madrid');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Madrid');

-- 4. Scores individuales

-- San Lorenzo de El Escorial (28131): Monasterio UNESCO
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='28131' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28131','monumento','Monasterio de El Escorial','Patrimonio Mundial UNESCO. Monasterio-palacio de Felipe II del s.XVI, obra cumbre del Renacimiento espanol, con basilica, biblioteca y panteon real.','UNESCO',date('now'));

-- Madrid (28079): Palacio Real + Plaza Mayor + Prado
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='28079' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28079','palacio','Palacio Real de Madrid','El mayor palacio real de Europa Occidental por superficie, del s.XVIII. BIC. Junto a la catedral de la Almudena.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28079','conjunto_historico','Paisaje de la Luz (Prado-Retiro)','Patrimonio Mundial UNESCO. El eje del Paseo del Prado y el Retiro, con el Museo del Prado y los grandes jardines historicos.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28079','conjunto_historico','Plaza Mayor de Madrid','Plaza porticada del s.XVII, corazon del Madrid de los Austrias. BIC.','BIC',date('now'));

-- Alcala de Henares (29001): Universidad UNESCO
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='29001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29001','conjunto_historico','Universidad y recinto historico de Alcala','Patrimonio Mundial UNESCO. Primera ciudad universitaria planificada del mundo, con la fachada plateresca de la Universidad Cisneriana. Cuna de Cervantes.','UNESCO',date('now'));

-- Aranjuez (29003): Paisaje Cultural UNESCO
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='29003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29003','palacio','Palacio Real y Jardines de Aranjuez','Paisaje Cultural Patrimonio Mundial UNESCO. Real Sitio con palacio borbonico y jardines historicos junto al Tajo, inmortalizado por Rodrigo.','UNESCO',date('now'));

-- Chinchon (28052): Plaza Mayor
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='28052' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28052','conjunto_historico','Plaza Mayor de Chinchon','Plaza medieval irregular de balconadas de madera, usada como coso taurino y teatro, una de las mas famosas de Espana. BIC.','BIC',date('now'));

-- Manzanares el Real (28082): Castillo de los Mendoza
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='28082' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28082','castillo','Castillo de los Mendoza','Castillo-palacio del s.XV al pie de La Pedriza, uno de los mejor conservados de la Comunidad de Madrid. BIC.','BIC',date('now'));

-- Buitrago del Lozoya (28027): recinto amurallado
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='28027' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28027','conjunto_historico','Recinto amurallado de Buitrago','Unica muralla medieval integra de la Comunidad de Madrid, del s.XI-XV, sobre un meandro del Lozoya. BIC. Alberga el Museo Picasso.','BIC',date('now'));

-- Rascafria (28120): Monasterio de El Paular
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='28120' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28120','monumento','Monasterio de Santa Maria de El Paular','Primera cartuja de Castilla, del s.XIV, en pleno valle del Lozoya, con retablo gotico y claustro. BIC.','BIC',date('now'));

-- Nuevo Baztan (28100): conjunto barroco de Churriguera
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='28100' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28100','conjunto_historico','Conjunto de Nuevo Baztan','Poblado industrial barroco del s.XVIII proyectado por Jose de Churriguera, pionero del urbanismo planificado. BIC.','BIC',date('now'));

-- Colmenar de Oreja (28043): Plaza Mayor
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='28043' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28043','conjunto_historico','Plaza Mayor de Colmenar de Oreja','Plaza porticada del s.XVII-XVIII sobre grandes bodegas, escenario de cine. Junto a la iglesia de Santa Maria la Mayor. BIC.','BIC',date('now'));

-- Torrelaguna (28151): conjunto
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='28151' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28151','conjunto_historico','Conjunto Historico de Torrelaguna','Villa natal del Cardenal Cisneros, con plaza porticada e iglesia de Santa Maria Magdalena de aire catedralicio. BIC.','BIC',date('now'));

-- Patones (28107): Patones de Arriba, arquitectura negra
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='28107' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28107','conjunto_historico','Patones de Arriba','Pueblo de arquitectura negra de pizarra, ejemplo unico en Madrid, ligado a la leyenda del Rey de Patones. ','excel_curado',date('now'));

-- Navalcarnero (28096): Plaza de Segovia
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='28096' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28096','conjunto_historico','Plaza de Segovia de Navalcarnero','Plaza porticada del s.XVII con entramado de madera, donde se celebro la boda de Felipe IV. BIC.','BIC',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28027' AND p2.categoria='monumentos') WHERE codigo_ine='29004' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28038' AND p2.categoria='monumentos') WHERE codigo_ine='29005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28052' AND p2.categoria='monumentos') WHERE codigo_ine='29006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28045' AND p2.categoria='monumentos') WHERE codigo_ine='29007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28054' AND p2.categoria='monumentos') WHERE codigo_ine='29008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28058' AND p2.categoria='monumentos') WHERE codigo_ine='29010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28065' AND p2.categoria='monumentos') WHERE codigo_ine='29011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28074' AND p2.categoria='monumentos') WHERE codigo_ine='29012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28087' AND p2.categoria='monumentos') WHERE codigo_ine='29013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28079' AND p2.categoria='monumentos') WHERE codigo_ine='29014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28082' AND p2.categoria='monumentos') WHERE codigo_ine='29015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28092' AND p2.categoria='monumentos') WHERE codigo_ine='29016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28093' AND p2.categoria='monumentos') WHERE codigo_ine='29017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28107' AND p2.categoria='monumentos') WHERE codigo_ine='29018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28120' AND p2.categoria='monumentos') WHERE codigo_ine='29019' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='28131' AND p2.categoria='monumentos') WHERE codigo_ine='29020' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Madrid)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Madrid'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

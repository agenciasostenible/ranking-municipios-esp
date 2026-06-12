-- Monumentos Palencia
-- Duplicados MIN 34xxx -> MAX 35xxx. Aguilar 35001, Astudillo 34017, Paredes 34123, Tamara 34180 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Palencia');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Palencia');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Palencia');

-- 4. Scores individuales

-- Fromista (34074): San Martin de Tours
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='34074' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34074','iglesia','Iglesia de San Martin de Tours','Obra maestra del romanico europeo, del s.XI, de proporciones perfectas. BIC. Hito del Camino de Santiago.','BIC',date('now'));

-- Aguilar de Campoo (35001): conjunto + romanico palentino
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='35001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('35001','conjunto_historico','Conjunto Historico de Aguilar de Campoo','Villa medieval con castillo, colegiata y el monasterio de Santa Maria la Real, sede del romanico palentino. BIC.','BIC',date('now'));

-- Palencia (34120): Catedral la Bella Desconocida
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='34120' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34120','catedral','Catedral de Palencia','Catedral gotica del s.XIV-XVI llamada la Bella Desconocida, con cripta visigoda y obras de Berruguete. BIC.','BIC',date('now'));

-- Carrion de los Condes (34047): Camino + monasterios
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='34047' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34047','conjunto_historico','Conjunto Historico de Carrion de los Condes','Villa jacobea con la iglesia de Santiago de portada romanica, San Zoilo y el monasterio. BIC.','BIC',date('now'));

-- Villalcazar de Sirga (34215): iglesia templaria
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='34215' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34215','iglesia','Iglesia de Santa Maria la Blanca','Templo-fortaleza de origen templario del s.XIII, con sepulcros policromados, en el Camino de Santiago. BIC.','BIC',date('now'));

-- Saldaña (34157): villa romana La Olmeda (museo)
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='34157' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34157','yacimiento','Villa Romana La Olmeda','Gran villa romana del s.IV con uno de los mejores conjuntos de mosaicos de Hispania. BIC. Su museo esta en Saldaña.','BIC',date('now'));

-- Paredes de Nava (34123): iglesia + cuna de Berruguete
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='34123' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34123','iglesia','Iglesia de Santa Eulalia','Templo con torre romanica y museo con obras de Berruguete y Pedro Berruguete, naturales de la villa, cuna tambien de Jorge Manrique. BIC.','BIC',date('now'));

-- Astudillo (34017): conjunto + monasterio
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='34017' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34017','conjunto_historico','Conjunto Historico de Astudillo','Villa con el monasterio de Santa Clara, antiguo palacio mudejar de Pedro I, e iglesias de aire fortificado. BIC.','BIC',date('now'));

-- Dueñas (34069): conjunto + iglesia
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='34069' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34069','conjunto_historico','Conjunto Historico de Dueñas','Villa de bodegas subterraneas con la iglesia de Santa Maria gotica y restos del castillo. BIC.','BIC',date('now'));

-- Tamara de Campos (34180): iglesia monumental
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='34180' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34180','iglesia','Iglesia de San Hipolito el Real','Imponente templo gotico llamado la catedral de los Campos, desproporcionado para el pequeño pueblo. BIC.','BIC',date('now'));

-- Becerril de Campos (34029): iglesias
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='34029' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34029','iglesia','Iglesia de Santa Maria de Becerril','Templo reconvertido en planetario y museo (San Pedro Cultural), simbolo de la recuperacion del patrimonio de Tierra de Campos. ','excel_curado',date('now'));

-- Cervera de Pisuerga (34056): conjunto de montaña
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='34056' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('34056','iglesia','Iglesia de Santa Maria del Castillo','Templo gotico con el retablo de Juan de Flandes, en la villa serrana de la Montaña Palentina. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='34029' AND p2.categoria='monumentos') WHERE codigo_ine='35002' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='34047' AND p2.categoria='monumentos') WHERE codigo_ine='35003' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='34056' AND p2.categoria='monumentos') WHERE codigo_ine='35004' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='34069' AND p2.categoria='monumentos') WHERE codigo_ine='35005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='34074' AND p2.categoria='monumentos') WHERE codigo_ine='35006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='34080' AND p2.categoria='monumentos') WHERE codigo_ine='35007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='34120' AND p2.categoria='monumentos') WHERE codigo_ine='35008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='34157' AND p2.categoria='monumentos') WHERE codigo_ine='35009' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='34215' AND p2.categoria='monumentos') WHERE codigo_ine='35010' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Palencia)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Palencia'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

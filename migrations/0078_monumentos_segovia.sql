-- Monumentos Segovia
-- Duplicados MIN 39xxx -> MAX 40xxx. La Granja en 39008 y 40181 (nombres distintos, ambos puntuados).

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Segovia');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Segovia');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Segovia');

-- 4. Scores individuales

-- Segovia (39009): Acueducto + Alcazar + casco UNESCO
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='39009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39009','monumento','Acueducto de Segovia','Patrimonio Mundial UNESCO. El acueducto romano mejor conservado del mundo, del s.I-II d.C., con 167 arcos y 28 metros de altura sin argamasa.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39009','castillo','Alcazar de Segovia','Palacio-fortaleza sobre un espolon rocoso, modelo del castillo de cuento. BIC. Junto a la ultima gran catedral gotica de Espana. Conjunto UNESCO.','UNESCO',date('now'));

-- La Granja / San Ildefonso (39008 y 40181): Palacio Real + jardines
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='39008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39008','palacio','Palacio Real de La Granja de San Ildefonso','Palacio del s.XVIII de Felipe V, el Versalles espanol, con jardines de fuentes monumentales. BIC.','BIC',date('now'));
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='40181' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40181','palacio','Palacio Real de La Granja de San Ildefonso','Palacio del s.XVIII de Felipe V, el Versalles espanol, con jardines de fuentes monumentales. BIC.','BIC',date('now'));

-- Coca (40057): Castillo mudejar
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='40057' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40057','castillo','Castillo de Coca','Obra cumbre del gotico-mudejar en ladrillo, del s.XV, de la familia Fonseca. BIC. Uno de los castillos mas bellos de Espana.','BIC',date('now'));

-- Pedraza (40156): villa medieval amurallada + castillo
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='40156' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40156','conjunto_historico','Villa medieval de Pedraza','Conjunto amurallado con unica puerta de acceso, plaza Mayor porticada y castillo donde estuvo el pintor Zuloaga. BIC. Uno de los pueblos mas bonitos de Espana.','BIC',date('now'));

-- Sepulveda (39010): conjunto medieval + romanico
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='39010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39010','conjunto_historico','Conjunto Historico de Sepulveda','Villa medieval sobre las hoces del Duraton, con iglesias romanicas, restos de muralla y plaza del Trigo. BIC.','BIC',date('now'));

-- Cuellar (39003): Castillo + recinto mudejar
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='39003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39003','castillo','Castillo de los Duques de Alburquerque','Gran fortaleza-palacio del s.XV sobre la villa, con murallas y iglesias mudejares de ladrillo. BIC.','BIC',date('now'));

-- Turegano (39011): Castillo-iglesia
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='39011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39011','castillo','Castillo de Turegano','Singular fortaleza que envuelve una iglesia romanica del s.XIII en su interior, caso unico en Espana. BIC.','BIC',date('now'));

-- Ayllon (39001): conjunto medieval
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='39001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39001','conjunto_historico','Conjunto Historico de Ayllon','Villa medieval con arco de entrada, palacio de Contreras gotico-mudejar y plaza porticada. BIC.','BIC',date('now'));

-- Maderuelo (40115): villa amurallada + frescos romanicos
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='40115' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40115','conjunto_historico','Villa amurallada de Maderuelo','Pueblo medieval sobre el embalse de Linares, de cuya ermita de la Vera Cruz proceden frescos romanicos hoy en el Museo del Prado. BIC.','BIC',date('now'));

-- Riaza (39007): plaza Mayor porticada
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='39007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('39007','conjunto_historico','Plaza Mayor de Riaza','Plaza porticada circular del s.XVIII usada como coso taurino, una de las mas bellas de la sierra de Ayllon. ','excel_curado',date('now'));

-- Fuentiduena (40092): conjunto + abside romanico (Cloisters NY)
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='40092' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40092','conjunto_historico','Villa de Fuentiduena','Recinto medieval con murallas e iglesia de San Martin, cuyo abside romanico se exhibe en The Cloisters de Nueva York. BIC.','BIC',date('now'));

-- Sotosalbos (40199): iglesia romanica
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='40199' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('40199','iglesia','Iglesia de San Miguel de Sotosalbos','Templo romanico del s.XII con galeria porticada, joya del romanico segoviano. BIC.','BIC',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='39001' AND p2.categoria='monumentos') WHERE codigo_ine='40024' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='39002' AND p2.categoria='monumentos') WHERE codigo_ine='40043' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='39003' AND p2.categoria='monumentos') WHERE codigo_ine='40063' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='39005' AND p2.categoria='monumentos') WHERE codigo_ine='40904' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='39007' AND p2.categoria='monumentos') WHERE codigo_ine='40170' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='39009' AND p2.categoria='monumentos') WHERE codigo_ine='40194' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='39010' AND p2.categoria='monumentos') WHERE codigo_ine='40195' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='39011' AND p2.categoria='monumentos') WHERE codigo_ine='40208' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Segovia)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Segovia'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

-- Monumentos Valencia
-- Duplicados MIN 45xxx -> MAX 46xxx. Ontinyent en 45010 y Onteniente 46184. Sagunto 46220, Xativa 45017 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Valencia');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Valencia');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Valencia');

-- 4. Scores individuales

-- Valencia (45015): Lonja UNESCO + catedral + Torres de Serranos
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='45015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45015','monumento','La Lonja de la Seda','Patrimonio Mundial UNESCO. Obra maestra del gotico civil del s.XV, con su sala de columnas helicoidales. Simbolo del esplendor mercantil valenciano.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45015','catedral','Catedral de Valencia y el Miguelete','Catedral gotica que custodia el Santo Caliz, junto a las Torres de Serranos y de Quart y el Tribunal de las Aguas, Patrimonio Inmaterial UNESCO. BIC.','BIC',date('now'));

-- Sagunto (46220): teatro romano + castillo
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='46220' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46220','yacimiento','Teatro Romano y Castillo de Sagunto','Teatro romano del s.I y un extenso castillo de mas de un kilometro sobre el cerro, simbolo de la resistencia ante Anibal. BIC.','BIC',date('now'));

-- Xativa (45017): castillo doble + colegiata
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='45017' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45017','castillo','Castillo de Xativa','Doble castillo sobre la sierra, uno de los mas extensos de Valencia. BIC. Cuna de los papas Borgia, con colegiata y casco historico.','BIC',date('now'));

-- Gandia (45006): Palacio Ducal de los Borja
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='45006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45006','palacio','Palacio Ducal de los Borja','Palacio gotico-renacentista de los duques de Gandia, donde nacio San Francisco de Borja. BIC.','BIC',date('now'));

-- Requena (45012): barrio de la Villa
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45012','conjunto_historico','Barrio de la Villa de Requena','Nucleo medieval con cuevas subterraneas, la Alcazaba y portadas goticas, en la capital del vino de la meseta valenciana. BIC.','BIC',date('now'));

-- Lliria (45007): patrimonio romano-iberico
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='45007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45007','yacimiento','Conjunto monumental de Lliria','Antigua Edeta ibero-romana, con termas, santuario y mausoleo, mas iglesias medievales. BIC. Ciudad Creativa de la Musica UNESCO.','BIC',date('now'));

-- Chelva (46106): acueducto Peña Cortada
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='46106' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46106','yacimiento','Acueducto de Peña Cortada','Espectacular acueducto romano con tramos excavados en la roca y arcadas, uno de los mejores de la Comunidad Valenciana. BIC.','BIC',date('now'));

-- Cullera (46105): castillo sobre el mar
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='46105' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46105','castillo','Castillo de Cullera','Fortaleza medieval sobre el monte de los Zorros, con vistas a la desembocadura del Jucar y el Mediterraneo. BIC.','BIC',date('now'));

-- Buñol (46077): castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='46077' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46077','castillo','Castillo de Buñol','Fortaleza medieval bien conservada con dos recintos e iglesia en su interior, en la villa de la Tomatina. BIC.','BIC',date('now'));

-- Ayora (46044): castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='46044' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46044','castillo','Castillo de Ayora','Fortaleza de origen islamico sobre un cerro rocoso que domina el valle. BIC.','BIC',date('now'));

-- Ontinyent / Onteniente (45010 y 46184): conjunto + Pou Clar
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='45010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45010','conjunto_historico','Casco antiguo de Ontinyent','La Vila, barrio medieval sobre un acantilado, con la iglesia de Santa Maria de alta torre campanario. ','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='46184' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('46184','conjunto_historico','Casco antiguo de Ontinyent','La Vila, barrio medieval sobre un acantilado, con la iglesia de Santa Maria de alta torre campanario. ','excel_curado',date('now'));

-- Oliva (45009): conjunto
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='45009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45009','conjunto_historico','Vila y Raval de Oliva','Cascos medievales con palacio de los Centelles e iglesias, junto a la playa, cuna del escritor Gregori Maians. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45005' AND p2.categoria='monumentos') WHERE codigo_ine='46204' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45006' AND p2.categoria='monumentos') WHERE codigo_ine='46131' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45008' AND p2.categoria='monumentos') WHERE codigo_ine='46169' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45009' AND p2.categoria='monumentos') WHERE codigo_ine='46181' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45011' AND p2.categoria='monumentos') WHERE codigo_ine='46190' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45012' AND p2.categoria='monumentos') WHERE codigo_ine='46213' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45015' AND p2.categoria='monumentos') WHERE codigo_ine='46250' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Valencia)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Valencia'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

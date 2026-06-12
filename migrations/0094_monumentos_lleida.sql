-- Monumentos Lleida
-- Duplicados MIN 25xxx -> MAX 27xxx. Lleida 27008, La Seu d'Urgell 27006, Vall de Boi (Valle de Bohi) 25043 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Lleida');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Lleida');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Lleida');

-- 4. Scores individuales

-- Vall de Boi / Valle de Bohi (25043): iglesias romanicas UNESCO
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='25043' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25043','iglesia','Iglesias romanicas de la Vall de Boi','Patrimonio Mundial UNESCO. Conjunto de iglesias romanicas lombardas de los s.XI-XII, entre ellas Sant Climent de Taull con su celebre Pantocrator.','UNESCO',date('now'));

-- Lleida (27008): La Seu Vella
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='27008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('27008','catedral','La Seu Vella de Lleida','Catedral vieja gotica del s.XIII sobre un cerro dominando la ciudad, con uno de los claustros mas singulares de Europa. BIC.','BIC',date('now'));

-- La Seu d'Urgell (27006): catedral romanica
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='27006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('27006','catedral','Catedral de Santa Maria de la Seu d''Urgell','La unica catedral romanica de Cataluña, del s.XII. BIC. Conserva el celebre Beato de Liebana en su museo diocesano.','BIC',date('now'));

-- Cervera (25072): Universidad + conjunto medieval
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='25072' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25072','conjunto_historico','Conjunto Historico de Cervera','Villa medieval con la monumental Universidad barroca de Felipe V, la Paeria y la calle de las Brujas. BIC.','BIC',date('now'));

-- Solsona (25207): catedral + conjunto
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='25207' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25207','conjunto_historico','Conjunto Historico de Solsona','Ciudad episcopal con catedral, palacio episcopal y fuentes, en el centro del Solsones. BIC.','BIC',date('now'));

-- Balaguer (25040): Sant Crist + conjunto
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='25040' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25040','conjunto_historico','Conjunto Historico de Balaguer','Capital de la Noguera con una de las plazas porticadas mas grandes de Cataluña, el Sant Crist y restos de la zuda andalusi. BIC.','BIC',date('now'));

-- Bellpuig (25050): mausoleo renacentista
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='25050' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25050','monumento','Convento de Sant Bartomeu de Bellpuig','Alberga el mausoleo de Ramon Folc de Cardona, obra maestra del Renacimiento italiano en Cataluña. BIC.','BIC',date('now'));

-- Ager (27015): colegiata
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='27015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('27015','monumento','Colegiata de Sant Pere d''Ager','Conjunto canonical romanico sobre el pueblo, en el Montsec, junto a uno de los mejores cielos para observacion astronomica. BIC.','BIC',date('now'));

-- Verdu (25242): castillo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='25242' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25242','castillo','Castillo de Verdu','Fortaleza medieval con torre del homenaje cilindrica, en la villa de la ceramica negra y patria de Sant Pere Claver. BIC.','BIC',date('now'));

-- Os de Balaguer (25156): castillo + monasterio
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='25156' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25156','monumento','Monasterio de les Avellanes','Cenobio premostratense del s.XII con claustro romanico y sepulcros de los condes de Urgell. BIC.','BIC',date('now'));

-- Vallbona de las Monjas (25238): monasterio Ruta del Cister
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='25238' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('25238','monumento','Monasterio de Vallbona','Uno de los tres grandes monasterios de la Ruta del Cister, cenobio femenino habitado desde el s.XII. BIC.','BIC',date('now'));

-- Tarrega (27013): conjunto
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='27013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('27013','conjunto_historico','Casco de Tarrega','Capital del Urgell con el palacio dels Marquesos de la Floresta y casas modernistas. Sede del festival FiraTarrega. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25040' AND p2.categoria='monumentos') WHERE codigo_ine='27001' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25072' AND p2.categoria='monumentos') WHERE codigo_ine='27003' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25082' AND p2.categoria='monumentos') WHERE codigo_ine='27004' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25207' AND p2.categoria='monumentos') WHERE codigo_ine='27010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25209' AND p2.categoria='monumentos') WHERE codigo_ine='27011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25234' AND p2.categoria='monumentos') WHERE codigo_ine='27012' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Lleida)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Lleida'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

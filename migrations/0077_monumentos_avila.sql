-- Monumentos Avila
-- Duplicados MIN 05xxx -> MAX 51xxx. Avila ciudad 51025, Arenas 51001, Arevalo 51002, Barco 51009 (singles en 51xxx).

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ávila');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ávila');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ávila');

-- 4. Scores individuales

-- Avila (51025): ciudad amurallada UNESCO
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='51025' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('51025','conjunto_historico','Murallas de Avila','Patrimonio Mundial UNESCO. La muralla medieval mejor conservada de Espana y una de las mas completas del mundo, con 2,5 km, 87 torreones y 9 puertas.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('51025','catedral','Catedral de Avila','Primera catedral gotica de Espana, integrada en la muralla como fortaleza. BIC. Ciudad de Santa Teresa de Jesus.','BIC',date('now'));

-- Arevalo (51002): conjunto mudejar + castillo
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='51002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('51002','conjunto_historico','Conjunto Historico de Arevalo','Una de las mejores muestras del mudejar castellano, con la Plaza de la Villa porticada, iglesias de ladrillo y castillo. BIC.','BIC',date('now'));

-- Madrigal de las Altas Torres (05114): murallas + cuna de Isabel la Catolica
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='05114' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05114','conjunto_historico','Villa amurallada de Madrigal','Recinto medieval con mas de 80 torres donde nacio Isabel la Catolica. BIC. El palacio-monasterio conserva su sala natal.','BIC',date('now'));

-- Mombeltran (05132): Castillo de los duques de Alburquerque
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='05132' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05132','castillo','Castillo de Mombeltran','Fortaleza del s.XV de los duques de Alburquerque, de las mejor conservadas de Gredos. BIC.','BIC',date('now'));

-- Arenas de San Pedro (51001): Castillo del Condestable Davalos
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='51001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('51001','castillo','Castillo del Condestable Davalos','Fortaleza gotica del s.XIV en el valle del Tietar, junto al palacio del Infante Don Luis. BIC.','BIC',date('now'));

-- El Barco de Avila (51009): Castillo de Valdecorneja
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='51009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('51009','castillo','Castillo de Valdecorneja','Fortaleza de los duques de Alba sobre el rio Tormes, junto al puente medieval y la basilica. BIC.','BIC',date('now'));

-- Las Navas del Marques (05168): Castillo-palacio Magalia
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='05168' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05168','castillo','Castillo-Palacio de Magalia','Castillo renacentista del s.XVI con patio palaciego, en plena tierra de pinares. BIC.','BIC',date('now'));

-- Piedrahita (05186): Palacio de los Duques de Alba
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='05186' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05186','palacio','Palacio de los Duques de Alba','Palacio del s.XVIII con jardines a la francesa, donde Goya fue huesped de la Duquesa de Alba. BIC.','BIC',date('now'));

-- Bonilla de la Sierra (05038): conjunto amurallado + castillo
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='05038' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05038','conjunto_historico','Villa amurallada de Bonilla de la Sierra','Antigua corte de los obispos de Avila, con murallas, castillo y colegiata gotica. BIC.','BIC',date('now'));

-- Candeleda (05047): castro celta El Raso
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='05047' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05047','yacimiento','Castro de El Raso','Poblado fortificado veton del s.II a.C. con casas reconstruidas, uno de los mejor estudiados de la Meseta. BIC.','BIC',date('now'));

-- El Tiemblo (05241): Toros de Guisando
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='05241' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05241','yacimiento','Toros de Guisando','Cuatro verracos vetones de granito, los mas famosos de Espana. BIC. Aqui se firmo en 1468 el pacto que reconocio a Isabel como heredera de Castilla.','BIC',date('now'));

-- Pedro Bernardo (05182): pueblo balcon del Tietar
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='05182' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05182','conjunto_historico','Casco de Pedro Bernardo','Pueblo serrano de arquitectura tradicional escalonado en la ladera de Gredos, llamado el balcon del Tietar. ','excel_curado',date('now'));

-- Sotillo de la Adrada (05240): castillo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='05240' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('05240','castillo','Castillo de Sotillo de la Adrada','Fortaleza del s.XV en el valle del Tietar, restaurada y visitable. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05037' AND p2.categoria='monumentos') WHERE codigo_ine='51004' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05047' AND p2.categoria='monumentos') WHERE codigo_ine='51005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05057' AND p2.categoria='monumentos') WHERE codigo_ine='51006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05058' AND p2.categoria='monumentos') WHERE codigo_ine='51007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05241' AND p2.categoria='monumentos') WHERE codigo_ine='51011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05074' AND p2.categoria='monumentos') WHERE codigo_ine='51012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05089' AND p2.categoria='monumentos') WHERE codigo_ine='51013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05105' AND p2.categoria='monumentos') WHERE codigo_ine='51014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05114' AND p2.categoria='monumentos') WHERE codigo_ine='51016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05165' AND p2.categoria='monumentos') WHERE codigo_ine='51017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05167' AND p2.categoria='monumentos') WHERE codigo_ine='51018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05182' AND p2.categoria='monumentos') WHERE codigo_ine='51019' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05184' AND p2.categoria='monumentos') WHERE codigo_ine='51020' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05186' AND p2.categoria='monumentos') WHERE codigo_ine='51021' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05187' AND p2.categoria='monumentos') WHERE codigo_ine='51022' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05207' AND p2.categoria='monumentos') WHERE codigo_ine='51023' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05240' AND p2.categoria='monumentos') WHERE codigo_ine='51024' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Avila)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Ávila'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

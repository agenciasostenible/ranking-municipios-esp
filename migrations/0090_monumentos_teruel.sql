-- Monumentos Teruel
-- Duplicados MIN 43xxx -> MAX 44xxx. Albarracin 43001, Alcañiz 43002, Mirambel 44149, Cantavieja 44059, Rubielos de Mora 44201 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Teruel');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Teruel');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Teruel');

-- 4. Scores individuales

-- Albarracin (43001): conjunto medieval
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='43001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43001','conjunto_historico','Conjunto Historico de Albarracin','Uno de los pueblos mas bonitos de Espana, de casas rojizas colgadas sobre el rio Guadalaviar, con murallas y catedral. BIC. Arte rupestre UNESCO en su entorno.','BIC',date('now'));

-- Teruel (43011): torres mudejares UNESCO
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='43011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43011','monumento','Torres mudejares de Teruel','Las torres de San Martin, El Salvador y la catedral son Patrimonio Mundial UNESCO como Arte Mudejar de Aragon. Ciudad de los Amantes.','UNESCO',date('now'));

-- Valderrobres (43012): castillo-palacio + Matarraña
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='43012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43012','castillo','Castillo-Palacio de Valderrobres','Fortaleza gotica de los arzobispos de Zaragoza sobre el pueblo, junto a la iglesia de Santa Maria. BIC. Capital del Matarraña, uno de los pueblos mas bonitos.','BIC',date('now'));

-- Alcañiz (43002): castillo calatravo + Lonja
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='43002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43002','castillo','Castillo Calatravo de Alcañiz','Convento-castillo de la Orden de Calatrava con pinturas murales goticas, hoy Parador. BIC. Junto a la Lonja y la colegiata en la plaza de España.','BIC',date('now'));

-- Mirambel (44149): conjunto medieval intacto
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='44149' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44149','conjunto_historico','Conjunto Historico de Mirambel','Villa medieval amurallada intacta del Maestrazgo, premio Europa Nostra, con las celosias de yeso del convento de las Agustinas. BIC.','BIC',date('now'));

-- Mora de Rubielos (43007): castillo + colegiata
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='43007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43007','castillo','Castillo de Mora de Rubielos','Gran castillo-palacio gotico del s.XIV, uno de los mas monumentales de Aragon, junto a la ex colegiata. BIC.','BIC',date('now'));

-- Rubielos de Mora (44201): conjunto
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='44201' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44201','conjunto_historico','Conjunto Historico de Rubielos de Mora','Villa de palacios y portales medievales, premio Europa Nostra por su restauracion. BIC. Uno de los pueblos mas bonitos de Espana.','BIC',date('now'));

-- Cantavieja (44059): conjunto Maestrazgo
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='44059' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44059','conjunto_historico','Conjunto Historico de Cantavieja','Villa del Maestrazgo sobre un cerro, con plaza porticada gotica y pasado templario y carlista. BIC.','BIC',date('now'));

-- Calaceite (43004): conjunto Matarraña
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='43004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43004','conjunto_historico','Conjunto Historico de Calaceite','Capital cultural del Matarraña, con plaza porticada, casonas señoriales y el poblado iberico de San Antonio. BIC.','BIC',date('now'));

-- La Iglesuela del Cid (44126): conjunto Maestrazgo
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='44126' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44126','conjunto_historico','Conjunto Historico de La Iglesuela del Cid','Villa del Maestrazgo con casonas blasonadas, ayuntamiento renacentista y torre templaria. BIC.','BIC',date('now'));

-- Puertomingalvo (43010): conjunto Maestrazgo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='43010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43010','conjunto_historico','Conjunto Historico de Puertomingalvo','Pueblo medieval encaramado a 1.450 m con castillo y murallas, uno de los mas altos de Aragon. BIC.','BIC',date('now'));

-- Beceite (43003): conjunto Matarraña + parrizales
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='43003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43003','conjunto_historico','Casco de Beceite','Pueblo del Matarraña de calles empedradas y antiguas fabricas de papel, puerta de los Parrizales. ','excel_curado',date('now'));

-- Molinos (43006): conjunto + grutas
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='43006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('43006','iglesia','Iglesia de las Tablas de Molinos','Templo gotico monumental junto a las Grutas de Cristal, en el Maestrazgo turolense. ','excel_curado',date('now'));

-- Montalban (44155): iglesia mudejar
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='44155' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44155','iglesia','Iglesia de Santiago de Montalban','Iglesia-fortaleza mudejar del s.XIV, una de las cumbres del mudejar turolense. BIC.','BIC',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='43003' AND p2.categoria='monumentos') WHERE codigo_ine='44037' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='43004' AND p2.categoria='monumentos') WHERE codigo_ine='44049' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='43005' AND p2.categoria='monumentos') WHERE codigo_ine='44086' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='43006' AND p2.categoria='monumentos') WHERE codigo_ine='44151' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='43007' AND p2.categoria='monumentos') WHERE codigo_ine='44158' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='43009' AND p2.categoria='monumentos') WHERE codigo_ine='44179' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='43010' AND p2.categoria='monumentos') WHERE codigo_ine='44193' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='43011' AND p2.categoria='monumentos') WHERE codigo_ine='44216' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='43012' AND p2.categoria='monumentos') WHERE codigo_ine='44246' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='43013' AND p2.categoria='monumentos') WHERE codigo_ine='44260' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Teruel)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Teruel'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

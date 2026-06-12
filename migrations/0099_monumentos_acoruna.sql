-- Monumentos A Coruña
-- Duplicados MIN 01xxx -> MAX 15xxx. A Coruña 01001, Betanzos 01003, Noia 01014, Pontedeume 01017, Fisterra 01011 singles. Finisterre 15037 aparte.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='A Coruña');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='A Coruña');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='A Coruña');

-- 4. Scores individuales

-- Santiago de Compostela (01020): casco UNESCO
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='01020' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01020','conjunto_historico','Casco Historico de Santiago de Compostela','Patrimonio Mundial UNESCO. Meta del Camino de Santiago, con la catedral romanico-barroca que guarda el sepulcro del Apostol y el Portico de la Gloria.','UNESCO',date('now'));

-- A Coruña (01001): Torre de Hercules
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='01001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01001','torre','Torre de Hercules','Patrimonio Mundial UNESCO. Unico faro romano del mundo aun en funcionamiento, del s.I-II d.C. Simbolo de A Coruña.','UNESCO',date('now'));

-- Betanzos (01003): conjunto historico
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='01003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01003','conjunto_historico','Conjunto Historico de Betanzos','Una de las siete capitales del antiguo Reino de Galicia, con iglesias goticas como San Francisco y el parque del Pasatiempo. BIC.','BIC',date('now'));

-- Ferrol (01010): barrio de la Magdalena + arsenal
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='01010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01010','conjunto_historico','Barrio de la Magdalena y Arsenal','Barrio ilustrado del s.XVIII en cuadricula y el Arsenal Militar, conjunto unico de la arquitectura naval de la Ilustracion. BIC.','BIC',date('now'));

-- Noia (01014): iglesia Santa Maria a Nova
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='01014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01014','iglesia','Iglesia de Santa Maria a Nova','Templo gotico con un singular museo de laudas gremiales, lapidas medievales unicas en Europa. BIC.','BIC',date('now'));

-- Pontedeume (01017): torre dos Andrade + conjunto
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='01017' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01017','conjunto_historico','Conjunto Historico de Pontedeume','Villa medieval con la torre del homenaje de los Andrade, calles soportaladas y puente sobre el Eume. BIC.','BIC',date('now'));

-- Fisterra / Finisterre (01011 y 15037): faro fin del Camino
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='01011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01011','monumento','Faro de Fisterra','El fin de la tierra para los romanos y meta final del Camino de Santiago, sobre los acantilados de la Costa da Morte. ','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='15037' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('15037','monumento','Faro de Finisterre','El fin de la tierra para los romanos y meta final del Camino de Santiago, sobre los acantilados de la Costa da Morte. ','excel_curado',date('now'));

-- Padron (01016): tradicion jacobea + Rosalia
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='01016' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01016','monumento','Conjunto jacobeo de Padron','Lugar de llegada del cuerpo del Apostol segun la tradicion, con el Pedron bajo el altar. Casa-museo de Rosalia de Castro. ','excel_curado',date('now'));

-- Muros (01012): villa marinera gotica
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='01012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01012','conjunto_historico','Conjunto Historico de Muros','Villa marinera con soportales goticos y casas de pescadores escalonadas sobre la ria. BIC.','BIC',date('now'));

-- Corcubion (01009): conjunto
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='01009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01009','conjunto_historico','Conjunto Historico de Corcubion','Villa marinera de casas señoriales con galerias, en la Costa da Morte. BIC.','BIC',date('now'));

-- Ribeira (01019): Castro de Baroña
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='01019' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01019','yacimiento','Castro de Baroña','Poblado fortificado castreño sobre una peninsula rocosa en el mar, uno de los castros mas espectaculares de Galicia. BIC.','BIC',date('now'));

-- Ortigueira (01015): conjunto + Estaca de Bares
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='01015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('01015','conjunto_historico','Casco de Ortigueira','Villa marinera de las Rias Altas famosa por su festival celta, junto a la Estaca de Bares, punto mas al norte de la peninsula. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01008' AND p2.categoria='monumentos') WHERE codigo_ine='15022' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01009' AND p2.categoria='monumentos') WHERE codigo_ine='15028' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01010' AND p2.categoria='monumentos') WHERE codigo_ine='15036' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01012' AND p2.categoria='monumentos') WHERE codigo_ine='15053' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01015' AND p2.categoria='monumentos') WHERE codigo_ine='15061' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01016' AND p2.categoria='monumentos') WHERE codigo_ine='15065' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01019' AND p2.categoria='monumentos') WHERE codigo_ine='15073' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01020' AND p2.categoria='monumentos') WHERE codigo_ine='15078' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (A Coruña)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='A Coruña'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

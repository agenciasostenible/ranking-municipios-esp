-- Monumentos Lugo
-- Duplicados MIN 27xxx -> MAX 28xxx. Mondoñedo 27030, Samos 27055, Pedrafita 28009, Vilalba 28012, Viveiro 28013 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Lugo');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Lugo');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Lugo');

-- 4. Scores individuales

-- Lugo (27028): Muralla romana UNESCO
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='27028' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('27028','conjunto_historico','Muralla Romana de Lugo','Patrimonio Mundial UNESCO. La unica muralla romana del mundo conservada integra en todo su perimetro, mas de 2 km del s.III. Junto a la catedral.','UNESCO',date('now'));

-- Mondoñedo (27030): catedral + conjunto
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='27030' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('27030','catedral','Catedral de Mondoñedo','Catedral romanico-gotica llamada la Catedral arrodillada por su baja silueta, en una de las capitales del antiguo Reino de Galicia. BIC.','BIC',date('now'));

-- Monforte de Lemos (27031): Colegio del Cardenal
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='27031' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('27031','monumento','Colegio del Cardenal y Torre','Colegio renacentista llamado el Escorial gallego, con cuadros del Greco, junto a la torre del homenaje medieval. BIC.','BIC',date('now'));

-- Samos (27055): Monasterio benedictino
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='27055' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('27055','monumento','Monasterio de Samos','Una de las abadias benedictinas mas antiguas y grandes de España, en el Camino de Santiago. BIC.','BIC',date('now'));

-- Pedrafita do Cebreiro (28009): O Cebreiro
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='28009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28009','conjunto_historico','O Cebreiro','Aldea de montaña con pallozas de origen prerromano y el santuario donde ocurrio el Milagro Eucaristico. Puerta del Camino en Galicia. BIC.','BIC',date('now'));

-- Ribadeo (27051): conjunto indiano
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='27051' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('27051','conjunto_historico','Casco indiano de Ribadeo','Villa de la ria con casas indianas y la torre de los Moreno modernista, junto a la Playa de las Catedrales. ','excel_curado',date('now'));

-- Viveiro (28013): conjunto + puertas medievales
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='28013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28013','conjunto_historico','Conjunto Historico de Viveiro','Villa medieval de las Rias Altas con la Puerta de Carlos V y casco amurallado. BIC. Famosa por su Semana Santa.','BIC',date('now'));

-- Vilalba (28012): torre de los Andrade
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='28012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('28012','torre','Torre dos Andrade','Imponente torre del homenaje octogonal del s.XV, hoy Parador, unico resto del castillo de los Andrade. BIC.','BIC',date('now'));

-- Sarria (27057): Camino
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='27057' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('27057','conjunto_historico','Casco historico de Sarria','Villa jacobea con la torre del castillo, el convento de la Magdalena y la rua Maior, inicio de los ultimos 100 km del Camino Frances. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27902' AND p2.categoria='monumentos') WHERE codigo_ine='28002' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27016' AND p2.categoria='monumentos') WHERE codigo_ine='28003' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27019' AND p2.categoria='monumentos') WHERE codigo_ine='28005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27028' AND p2.categoria='monumentos') WHERE codigo_ine='28006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27031' AND p2.categoria='monumentos') WHERE codigo_ine='28007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27034' AND p2.categoria='monumentos') WHERE codigo_ine='28008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27051' AND p2.categoria='monumentos') WHERE codigo_ine='28010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27057' AND p2.categoria='monumentos') WHERE codigo_ine='28011' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Lugo)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Lugo'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

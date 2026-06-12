-- Monumentos Zamora
-- Duplicados MIN 48xxx -> MAX 49xxx. Resto singles en 49xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Zamora');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Zamora');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Zamora');

-- 4. Scores individuales

-- Zamora (48008): conjunto romanico + catedral
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='48008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48008','conjunto_historico','Conjunto romanico de Zamora','La mayor concentracion de iglesias romanicas de Europa, 24 templos, mas la catedral con su cupula de escamas y el castillo. BIC.','BIC',date('now'));

-- Toro (48005): Colegiata romanica
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='48005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48005','iglesia','Colegiata de Santa Maria la Mayor','Templo romanico del s.XII con el Portico de la Majestad policromado y la tabla de la Virgen de la Mosca. BIC. Domina la vega del Duero.','BIC',date('now'));

-- Puebla de Sanabria (49166): castillo + conjunto serrano
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='49166' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49166','conjunto_historico','Conjunto Historico de Puebla de Sanabria','Villa medieval sobre un cerro con el castillo de los condes de Benavente y casas de piedra y pizarra. BIC. Uno de los pueblos mas bonitos de Espana.','BIC',date('now'));

-- Benavente (48002): Torre del Caracol
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='48002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48002','castillo','Torre del Caracol','Unico resto del palacio-fortaleza de los condes de Benavente, hoy Parador. BIC. Junto a la iglesia de Santa Maria del Azogue.','BIC',date('now'));

-- Fermoselle (48003): conjunto Arribes + castillo
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='48003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48003','conjunto_historico','Conjunto Historico de Fermoselle','Pueblo de piedra horadado por cientos de bodegas subterraneas, asomado a los Arribes del Duero, con restos del castillo del Marques de Alcañices. BIC.','BIC',date('now'));

-- Villalpando (48007): murallas
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='48007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48007','conjunto_historico','Murallas de Villalpando','Recinto amurallado medieval con las puertas de San Andres y Santiago, en la Tierra de Campos. BIC.','BIC',date('now'));

-- Tabara (49214): iglesia mozarabe + scriptorium
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='49214' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('49214','iglesia','Iglesia de Santa Maria de Tabara','Templo mozarabe ligado al scriptorium medieval donde se ilustraron los Beatos, codices miniados de fama mundial. BIC.','BIC',date('now'));

-- Alcañices (48001): conjunto fronterizo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='48001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48001','conjunto_historico','Casco de Alcañices','Villa fronteriza donde se firmo en 1297 el Tratado de Alcañices, que fijo la frontera con Portugal, la mas antigua de Europa. ','excel_curado',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='48002' AND p2.categoria='monumentos') WHERE codigo_ine='49021' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='48003' AND p2.categoria='monumentos') WHERE codigo_ine='49065' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='48005' AND p2.categoria='monumentos') WHERE codigo_ine='49219' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='48006' AND p2.categoria='monumentos') WHERE codigo_ine='49242' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='48007' AND p2.categoria='monumentos') WHERE codigo_ine='49250' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='48008' AND p2.categoria='monumentos') WHERE codigo_ine='49275' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Zamora)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Zamora'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

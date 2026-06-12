-- Monumentos Baleares (provincia 'Baleares' e 'Islas Baleares')
-- Gemelos por nombre/codigo: Palma 07015 / Palma de Mallorca 07040; Mao 07013 / Mahon 07032; Ibiza 07010/07026; Soller 07023/07061; Petra 07016/07041; Manacor 07012/07033.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Baleares','Islas Baleares'));

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Baleares','Islas Baleares'));

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Baleares','Islas Baleares'));

-- 4. Scores individuales

-- Palma (07015 / 07040): Catedral + Almudaina + Bellver
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine IN ('07015','07040') AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07015','catedral','Catedral de Mallorca (La Seu)','Catedral gotica a orillas del mar con el mayor roseton gotico del mundo y reformas de Gaudi. BIC. Junto al palacio de la Almudaina y el castillo de Bellver.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07040','catedral','Catedral de Mallorca (La Seu)','Catedral gotica a orillas del mar con el mayor roseton gotico del mundo y reformas de Gaudi. BIC. Junto al palacio de la Almudaina y el castillo de Bellver.','BIC',date('now'));

-- Ibiza (07010 / 07026): Dalt Vila UNESCO
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine IN ('07010','07026') AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07010','conjunto_historico','Dalt Vila de Ibiza','Patrimonio Mundial UNESCO. Ciudad alta amurallada renacentista con la catedral y la necropolis fenicio-punica de Puig des Molins. Biodiversidad y cultura.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07026','conjunto_historico','Dalt Vila de Ibiza','Patrimonio Mundial UNESCO. Ciudad alta amurallada renacentista con la catedral y la necropolis fenicio-punica de Puig des Molins. Biodiversidad y cultura.','UNESCO',date('now'));

-- Ciutadella de Menorca (07006): casco historico
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='07006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07006','conjunto_historico','Conjunto Historico de Ciutadella','Antigua capital de Menorca con catedral gotica, palacios señoriales y puerto historico. BIC. Rodeada de yacimientos talayoticos UNESCO.','BIC',date('now'));

-- Pollença (07017): Calvari + conjunto
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='07017' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07017','conjunto_historico','Conjunto Historico de Pollença','Villa con la escalinata del Calvari de 365 escalones, el puente romano y el oratorio del Puig. BIC.','BIC',date('now'));

-- Alcudia (07001): murallas + Pollentia
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='07001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07001','conjunto_historico','Murallas de Alcudia y Pollentia','Recinto amurallado medieval junto a la ciudad romana de Pollentia, con teatro y foro. BIC.','BIC',date('now'));

-- Mao / Mahon (07013 / 07032): puerto + casco georgiano
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN ('07013','07032') AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07013','conjunto_historico','Puerto y casco de Mao','Uno de los mayores puertos naturales del mundo, con casco de influencia georgiana britanica y la fortaleza de la Mola. ','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07032','conjunto_historico','Puerto y casco de Mahon','Uno de los mayores puertos naturales del mundo, con casco de influencia georgiana britanica y la fortaleza de la Mola. ','excel_curado',date('now'));

-- Arta (07004): Sant Salvador + Ses Paisses
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='07004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07004','conjunto_historico','Santuario de Sant Salvador de Arta','Recinto amurallado-santuario sobre el pueblo, junto al poblado talayotico de Ses Paisses. BIC.','BIC',date('now'));

-- Soller (07023 / 07061): modernismo + tren
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine IN ('07023','07061') AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07023','conjunto_historico','Casco modernista de Soller','Villa de la Serra de Tramuntana con la iglesia de Sant Bartomeu y el banco de fachadas modernistas, y su tren historico de madera. ','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07061','conjunto_historico','Casco modernista de Soller','Villa de la Serra de Tramuntana con la iglesia de Sant Bartomeu y el banco de fachadas modernistas, y su tren historico de madera. ','excel_curado',date('now'));

-- Felanitx (07008): Sant Salvador
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='07008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07008','ermita','Santuario de Sant Salvador','Santuario sobre un puig con vistas a toda la isla, junto al castillo de Santueri. ','excel_curado',date('now'));

-- Sineu (07022): conjunto + mercado
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='07022' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07022','conjunto_historico','Casco de Sineu','Villa del centro de Mallorca con el palacio de los reyes de Mallorca y el mercado mas antiguo de la isla. ','excel_curado',date('now'));

-- Manacor (07012 / 07033): torre + Coves
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine IN ('07012','07033') AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07012','torre','Torre dels Enagistes','Casa-torre medieval que alberga el museo de Manacor, junto a la basilica paleocristiana y las Coves del Drac. ','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07033','torre','Torre dels Enagistes','Casa-torre medieval que alberga el museo de Manacor, junto a la basilica paleocristiana y las Coves del Drac. ','excel_curado',date('now'));

-- Petra (07016 / 07041): Fray Junipero Serra
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine IN ('07016','07041') AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07016','conjunto_historico','Casco de Petra','Villa natal de Fray Junipero Serra, fundador de las misiones de California, con casa-museo y convento de Sant Bernadi. ','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('07041','conjunto_historico','Casco de Petra','Villa natal de Fray Junipero Serra, fundador de las misiones de California, con casa-museo y convento de Sant Bernadi. ','excel_curado',date('now'));

-- 5. Sync entidades monumentos entre ambos codigos del par (Baleares)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia IN ('Baleares','Islas Baleares')
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

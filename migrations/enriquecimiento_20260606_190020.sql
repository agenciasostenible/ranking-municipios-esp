-- Enriquecimiento desde: https://milyunarutas.com/tag/jaen
-- Artículo: Jaén: Las mejores rutas y senderos
-- Generado: 2026-06-06T19:00:20.292265
-- Municipios: 3

-- Jimena (Jaén) — Punto de partida para explorar el Parque Natural Sierra Mágina
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24050', 'mencion', 'senderismo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24050', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24050' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24050' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24050' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '24050' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24050', 'senderismo', 15);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24050' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24050' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24050' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '24050' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24050', 'naturaleza', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Punto de partida para explorar el Parque Natural Sierra Mágina') WHERE codigo_ine = '24050' AND COALESCE(why_json, '[]') NOT LIKE '%Punto de partida par%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Punto de partida para explorar el Parque Natural Sierra Mágina') WHERE codigo_ine = '24050' AND COALESCE(why_json, '[]') NOT LIKE '%Punto de partida par%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24050', 'parque_natural', 'Parque Natural Sierra Mágina', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24050', 'ruta', 'Ruta a la Cueva de la Graja – Los Caracoles – Pinar de Cánava', 'articulo_web');

-- Alcalá la Real (Jaén) — Ciudad fortaleza con imponente Fortaleza de la Mota dominando el paisaje
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24002', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24002', 'mencion', 'castillos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '24002' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24002', 'historia', 18);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '24002' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24002', 'castillos', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Ciudad fortaleza con imponente Fortaleza de la Mota dominando el paisaje') WHERE codigo_ine = '24002' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad fortaleza con%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Ciudad fortaleza con imponente Fortaleza de la Mota dominando el paisaje') WHERE codigo_ine = '24002' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad fortaleza con%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24002', 'fortaleza', 'Fortaleza de la Mota', 'articulo_web');

-- Cazorla (Jaén) — Acceso principal al Parque Natural Sierras de Cazorla, Segura y Las Villas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24028', 'mencion', 'senderismo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24028', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24028' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24028' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24028' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '24028' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24028', 'senderismo', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24028' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24028' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24028' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '24028' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24028', 'naturaleza', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Acceso principal al Parque Natural Sierras de Cazorla, Segura y Las Villas') WHERE codigo_ine = '24028' AND COALESCE(why_json, '[]') NOT LIKE '%Acceso principal al %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Acceso principal al Parque Natural Sierras de Cazorla, Segura y Las Villas') WHERE codigo_ine = '24028' AND COALESCE(why_json, '[]') NOT LIKE '%Acceso principal al %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24028', 'parque_natural', 'Parque Natural de las Sierras de Cazorla, Segura y Las Villas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24028', 'sendero', 'Sendero Río Borosa', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24028', 'sendero', 'Sendero del río Cerezuelo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24028', 'ruta', 'Las mejores rutas de senderismo en Cazorla', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24028', 'sendero', 'Sendero Cerrada del Utrero', 'articulo_web');

-- Resumen: 3/3 municipios encontrados
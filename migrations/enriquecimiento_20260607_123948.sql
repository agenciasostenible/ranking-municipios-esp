-- Enriquecimiento desde: https://viajar.elperiodico.com/viajeros/lugar-crecio-rosalia-cerca-barcelona-130988114
-- Artículo: El lugar donde creció Rosalía sigue rodeado de viñedos y paisajes rurales a pocos kilómetros de Barcelona
-- Generado: 2026-06-07T12:39:48.379157
-- Municipios: 3

-- Barcelona (Barcelona) — Ciudad referencia a 30 km de Sant Esteve, con gastronomía y patrimonio destacado
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '08003' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08003', 'historia', 15);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '08003' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08003', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Ciudad referencia a 30 km de Sant Esteve, con gastronomía y patrimonio destacado') WHERE codigo_ine = '08003' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad referencia a %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Ciudad referencia a 30 km de Sant Esteve, con gastronomía y patrimonio destacado') WHERE codigo_ine = '08003' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad referencia a %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'referencia', 'Restaurantes favoritos de Rosalía', 'articulo_web');

-- Montserrat (Barcelona) — Macizo montañoso cercano, accesible desde Sant Esteve Sesrovires
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08014', 'mencion', 'naturaleza', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08014', 'mencion', 'senderismo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08014', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08014' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08014' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08014' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 12) WHERE codigo_ine = '08014' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08014', 'naturaleza', 12);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08014' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08014' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08014' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 12) WHERE codigo_ine = '08014' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08014', 'senderismo', 12);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08014' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08014' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08014' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 12) WHERE codigo_ine = '08014' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08014', 'historia', 12);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Macizo montañoso cercano, accesible desde Sant Esteve Sesrovires') WHERE codigo_ine = '08014' AND COALESCE(why_json, '[]') NOT LIKE '%Macizo montañoso cer%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Macizo montañoso cercano, accesible desde Sant Esteve Sesrovires') WHERE codigo_ine = '08014' AND COALESCE(why_json, '[]') NOT LIKE '%Macizo montañoso cer%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08014', 'macizo', 'Macizo de Montserrat', 'articulo_web');

-- Resumen: 2/3 municipios encontrados
-- No encontrados: Sant Esteve Sesrovires (Barcelona)
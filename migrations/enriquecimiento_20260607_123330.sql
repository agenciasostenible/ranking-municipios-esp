-- Enriquecimiento desde: https://viajar.elperiodico.com/escapate_cerca/parque-acuatico-10-veces-elegido-mejor-mundo-espana-131017887
-- Artículo: El parque acuático 10 veces elegido como el mejor del mundo está en España
-- Generado: 2026-06-07T12:33:30.729446
-- Municipios: 1

-- Santa Cruz de Tenerife (Tenerife) — Ubicación del Siam Park, parque acuático más grande de Europa
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'mencion', 'agua', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'mencion', 'aventura', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'mencion', 'ninos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '38012' AND categoria = 'agua';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38012', 'agua', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '38012' AND categoria = 'aventura';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38012', 'aventura', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='ninos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='ninos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='ninos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '38012' AND categoria = 'ninos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38012', 'ninos', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '💧 Agua: Ubicación del Siam Park, parque acuático más grande de Europa') WHERE codigo_ine = '38012' AND COALESCE(why_json, '[]') NOT LIKE '%Ubicación del Siam P%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🧗 Aventura: Ubicación del Siam Park, parque acuático más grande de Europa') WHERE codigo_ine = '38012' AND COALESCE(why_json, '[]') NOT LIKE '%Ubicación del Siam P%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'parque acuático', 'Siam Park', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'atracción', 'Tower of Power', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'atracción', 'Singha', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'atracción', 'The Dragon', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'zona temática', 'Siam Beach', 'articulo_web');

-- Resumen: 1/1 municipios encontrados
-- Enriquecimiento desde: https://viajar.elperiodico.com/planes/gastro/entramos-templo-mundial-patatas-bravas-taberna-generaciones-salsa-denominacion-origen-130881364
-- Artículo: Entramos en el templo mundial de las patatas bravas, una taberna de tres generaciones con una salsa denominación de origen
-- Generado: 2026-06-07T12:29:25.915681
-- Municipios: 2

-- Madrid (Madrid) — Docamar: bravas con D.O. propia desde 1963, Ciudad Lineal
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '29014' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('29014', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Docamar: bravas con D.O. propia desde 1963, Ciudad Lineal') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%Docamar: bravas con %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Docamar: bravas con D.O. propia desde 1963, Ciudad Lineal') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%Docamar: bravas con %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'restaurante', 'Docamar (Mejor Tapa de Madrid 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'producto_local', 'Salsa brava Docamar (D.O. propia, comercializada mundialmente)', 'articulo_web');

-- Barcelona (Barcelona) — Mencionada por sus mejores bravas en bodega referente
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '08003' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08003', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Mencionada por sus mejores bravas en bodega referente') WHERE codigo_ine = '08003' AND COALESCE(why_json, '[]') NOT LIKE '%Mencionada por sus m%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Mencionada por sus mejores bravas en bodega referente') WHERE codigo_ine = '08003' AND COALESCE(why_json, '[]') NOT LIKE '%Mencionada por sus m%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'restaurante', 'Bodega de bravas referenciada (sin nombre explícito)', 'articulo_web');

-- Resumen: 2/2 municipios encontrados
-- Enriquecimiento desde: https://www.origenoliva.com/en/blogs/noticias-aceite-de-oliva/premio-mario-solinas-2026-los-mejores-aove-del-mundo-y-que-significan
-- Artículo: Premio Mario Solinas 2026: los mejores AOVE del mundo y qué significan
-- Generado: 2026-06-06T23:14:50.487525
-- Municipios: 3

-- Cambrils (Tarragona) — 1er premio frutado maduro Mario Solinas 2026
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('42003', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='42003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='42003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='42003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 28) WHERE codigo_ine = '42003' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('42003', 'gastronomia', 28);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: 1er premio frutado maduro Mario Solinas 2026') WHERE codigo_ine = '42003' AND COALESCE(why_json, '[]') NOT LIKE '%1er premio frutado m%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '1er premio frutado maduro Mario Solinas 2026') WHERE codigo_ine = '42003' AND COALESCE(why_json, '[]') NOT LIKE '%1er premio frutado m%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('42003', 'productor', 'Cooperativa Agrícola de Cambrils', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('42003', 'producto', 'AOVE frutado maduro premiado COI', 'articulo_web');

-- Estepa (Sevilla) — Oleoestepa, 1er premio frutado verde medio Solinas 2026
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '40009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('40009', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Oleoestepa, 1er premio frutado verde medio Solinas 2026') WHERE codigo_ine = '40009' AND COALESCE(why_json, '[]') NOT LIKE '%Oleoestepa, 1er prem%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Oleoestepa, 1er premio frutado verde medio Solinas 2026') WHERE codigo_ine = '40009' AND COALESCE(why_json, '[]') NOT LIKE '%Oleoestepa, 1er prem%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40009', 'productor', 'S.C.A. Nuestra Señora de la Fuensanta (Oleoestepa)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40009', 'producto', 'AOVE DOP Estepa frutado verde medio', 'articulo_web');

-- Andújar (Jaén) — Sede OrigenOliva, referente comercial AOVE Jaén
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24005', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '24005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24005', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede OrigenOliva, referente comercial AOVE Jaén') WHERE codigo_ine = '24005' AND COALESCE(why_json, '[]') NOT LIKE '%Sede OrigenOliva, re%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Sede OrigenOliva, referente comercial AOVE Jaén') WHERE codigo_ine = '24005' AND COALESCE(why_json, '[]') NOT LIKE '%Sede OrigenOliva, re%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24005', 'empresa', 'OrigenOliva.com (ADJ Online S.L.)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24005', 'producto', 'AOVE picual DOP Sierra Mágina', 'articulo_web');

-- Resumen: 3/3 municipios encontrados
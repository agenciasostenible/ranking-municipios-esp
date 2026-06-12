-- Enriquecimiento desde: https://www.saboraextremadura.es/cosas-tipicas-de-extremadura/
-- Artículo: Cosas típicas de Extremadura – Los mejores productos con DOP
-- Generado: 2026-06-06T23:07:13.435335
-- Municipios: 2

-- Casar de Cáceres (Cáceres) — Origen de la Torta del Casar DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10049', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10049' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10049' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10049' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '10049' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('10049', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Origen de la Torta del Casar DOP') WHERE codigo_ine = '10049' AND COALESCE(why_json, '[]') NOT LIKE '%Origen de la Torta d%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Origen de la Torta del Casar DOP') WHERE codigo_ine = '10049' AND COALESCE(why_json, '[]') NOT LIKE '%Origen de la Torta d%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10049', 'producto_dop', 'Torta del Casar DOP', 'articulo_web');

-- Cáceres (Cáceres) — Comarca Llanos de Cáceres, zona Torta del Casar DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 10) WHERE codigo_ine = '15005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15005', 'gastronomia', 10);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Comarca Llanos de Cáceres, zona Torta del Casar DOP') WHERE codigo_ine = '15005' AND COALESCE(why_json, '[]') NOT LIKE '%Comarca Llanos de Cá%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Comarca Llanos de Cáceres, zona Torta del Casar DOP') WHERE codigo_ine = '15005' AND COALESCE(why_json, '[]') NOT LIKE '%Comarca Llanos de Cá%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'producto_dop', 'Torta del Casar DOP', 'articulo_web');

-- Resumen: 2/2 municipios encontrados
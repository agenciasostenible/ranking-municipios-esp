-- Enriquecimiento desde: https://capitalespanoladelagastronomia.es/
-- Artículo: Municipios de España con relevancia gastronómica — Capital Española de la Gastronomía
-- Generado: 2026-06-06T22:55:16.471984
-- Municipios: 3

-- Jerez de la Frontera (Cádiz) — Capital Española de la Gastronomía 2026; DO Jerez-Xérès-Sherry
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '16012' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16012', 'gastronomia', 45);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '16012' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16012', 'vinos', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Capital Española de la Gastronomía 2026; DO Jerez-Xérès-Sherry') WHERE codigo_ine = '16012' AND COALESCE(why_json, '[]') NOT LIKE '%Capital Española de %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Capital Española de la Gastronomía 2026; DO Jerez-Xérès-Sherry') WHERE codigo_ine = '16012' AND COALESCE(why_json, '[]') NOT LIKE '%Capital Española de %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'denominacion_origen', 'DO Jerez-Xérès-Sherry y Manzanilla', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'mercado', 'Mercado de Abastos de Jerez', 'articulo_web');

-- Murcia (Murcia) — Capital Española de la Gastronomía 2021-2022
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31015', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '31015' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('31015', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Capital Española de la Gastronomía 2021-2022') WHERE codigo_ine = '31015' AND COALESCE(why_json, '[]') NOT LIKE '%Capital Española de %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Capital Española de la Gastronomía 2021-2022') WHERE codigo_ine = '31015' AND COALESCE(why_json, '[]') NOT LIKE '%Capital Española de %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31015', 'reconocimiento', 'Capital Española de la Gastronomía 2021 y 2022', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31015', 'producto', 'Pimentón de Murcia DOP y huerta murciana', 'articulo_web');

-- Santa Cruz de Tenerife (Santa Cruz de Tenerife) — Candidata CEG 2027; gastronomía canaria de producto único
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '38012' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38012', 'gastronomia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Candidata CEG 2027; gastronomía canaria de producto único') WHERE codigo_ine = '38012' AND COALESCE(why_json, '[]') NOT LIKE '%Candidata CEG 2027; %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Candidata CEG 2027; gastronomía canaria de producto único') WHERE codigo_ine = '38012' AND COALESCE(why_json, '[]') NOT LIKE '%Candidata CEG 2027; %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'reconocimiento', 'Candidatura Capital Española Gastronomía 2027', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38012', 'producto', 'Papa canaria y caldos tradicionales isleños', 'articulo_web');

-- Resumen: 3/3 municipios encontrados
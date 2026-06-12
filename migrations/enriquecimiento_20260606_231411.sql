-- Enriquecimiento desde: https://blog.olivaoliva.com/mejores-aceites-de-oliva-virgen-extra-del-mundo-mario-solinas-2025/
-- Artículo: Mejores Aceites de Oliva Virgen Extra del Mundo Mario Solinas 2025
-- Generado: 2026-06-06T23:14:11.272608
-- Municipios: 4

-- Valdepeñas (Ciudad Real) — Cuna del Valdenvero Hojiblanco, 1er Premio Mario Solinas 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13018', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13018' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13018' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13018' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '13018' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('13018', 'gastronomia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Cuna del Valdenvero Hojiblanco, 1er Premio Mario Solinas 2025') WHERE codigo_ine = '13018' AND COALESCE(why_json, '[]') NOT LIKE '%Cuna del Valdenvero %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Cuna del Valdenvero Hojiblanco, 1er Premio Mario Solinas 2025') WHERE codigo_ine = '13018' AND COALESCE(why_json, '[]') NOT LIKE '%Cuna del Valdenvero %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13018', 'aceite', 'Valdenvero Hojiblanco (1er Premio Mario Solinas 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13018', 'producto_local', 'DOP Valdepeñas (vino)', 'articulo_web');

-- Los Villares (Jaén) — Jabalcuz Gran Selección, 1er Premio Mario Solinas 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('23099', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23099' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23099' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23099' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '23099' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('23099', 'gastronomia', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Jabalcuz Gran Selección, 1er Premio Mario Solinas 2025') WHERE codigo_ine = '23099' AND COALESCE(why_json, '[]') NOT LIKE '%Jabalcuz Gran Selecc%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Jabalcuz Gran Selección, 1er Premio Mario Solinas 2025') WHERE codigo_ine = '23099' AND COALESCE(why_json, '[]') NOT LIKE '%Jabalcuz Gran Selecc%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('23099', 'aceite', 'Jabalcuz Gran Selección Picual (1er Premio Mario Solinas 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('23099', 'producto_local', 'DOP Aceite Sierra Mágina (Jaén)', 'articulo_web');

-- Los Navalmorales (Toledo) — 5 Elementos Hojiblanca, Premio Mario Solinas Pequeños Productores
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('45112', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='45112' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='45112' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='45112' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 16) WHERE codigo_ine = '45112' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('45112', 'gastronomia', 16);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: 5 Elementos Hojiblanca, Premio Mario Solinas Pequeños Productores') WHERE codigo_ine = '45112' AND COALESCE(why_json, '[]') NOT LIKE '%5 Elementos Hojiblan%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '5 Elementos Hojiblanca, Premio Mario Solinas Pequeños Productores') WHERE codigo_ine = '45112' AND COALESCE(why_json, '[]') NOT LIKE '%5 Elementos Hojiblan%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('45112', 'aceite', '5 Elementos Gran Selección Hojiblanca (Mario Solinas 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('45112', 'producto_local', 'DOP Aceite Montes de Toledo', 'articulo_web');

-- Madrid (Madrid) — Sede de Oliva Oliva, hub gastronómico y comercial del AOVE
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '29014' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('29014', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede de Oliva Oliva, hub gastronómico y comercial del AOVE') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%Sede de Oliva Oliva,%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Sede de Oliva Oliva, hub gastronómico y comercial del AOVE') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%Sede de Oliva Oliva,%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'tienda_especializada', 'Oliva Oliva (Pechuán 10, Madrid)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'mercado', 'Mercado de San Miguel', 'articulo_web');

-- Resumen: 4/4 municipios encontrados
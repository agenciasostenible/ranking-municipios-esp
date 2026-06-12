-- Enriquecimiento desde: https://viajar.elperiodico.com/escapate_cerca/pueblo-come-mejor-pisto-manchego-joyas-siglo-oro-expertos-lugar-de-la-mancha-cervantes-131045719
-- Artículo: El pueblo donde se come el mejor pisto manchego es 'el lugar de La Mancha de cuyo nombre no quiero acordarme': una de las joyas del Siglo de Oro español
-- Generado: 2026-06-07T12:32:54.351118
-- Municipios: 1

-- Villanueva de los Infantes (Ciudad Real) — Joya del Siglo de Oro con patrimonio renacentista y barroco, mejor pisto manchego
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13019', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13019', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13019', 'mencion', 'pueblo_bonito', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13019' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13019' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13019' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '13019' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('13019', 'historia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13019' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13019' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13019' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '13019' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('13019', 'gastronomia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13019' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13019' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13019' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '13019' AND categoria = 'pueblo_bonito';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('13019', 'pueblo_bonito', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Joya del Siglo de Oro con patrimonio renacentista y barroco, mejor pisto manchego') WHERE codigo_ine = '13019' AND COALESCE(why_json, '[]') NOT LIKE '%Joya del Siglo de Or%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Joya del Siglo de Oro con patrimonio renacentista y barroco, mejor pisto manchego') WHERE codigo_ine = '13019' AND COALESCE(why_json, '[]') NOT LIKE '%Joya del Siglo de Or%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13019', 'iglesia', 'Iglesia de San Andrés', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13019', 'plaza', 'Plaza Mayor', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13019', 'palacio', 'Palacio de Rebuelta', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13019', 'casa_histórica', 'Casa del Arco', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13019', 'casa_histórica', 'Casa de Rueda', 'articulo_web');

-- Resumen: 1/1 municipios encontrados
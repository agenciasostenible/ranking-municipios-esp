-- Enriquecimiento desde: https://viajar.elperiodico.com/escapate_cerca/lugar-espana-mejor-lluvia-estrellas-perseidas-130986765
-- Artículo: El lugar de España donde mejor se ve la lluvia de estrellas de agosto está protegido por una de las leyes contra la contaminación lumínica más avanzadas del mundo
-- Generado: 2026-06-07T12:27:28.167508
-- Municipios: 1

-- La Palma (Santa Cruz de Tenerife) — Mejor observatorio natural de Europa para ver las Perseidas con Ley del Cielo pionera
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38009', 'mencion', 'estrellas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38009', 'mencion', 'naturaleza', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38009', 'mencion', 'miradores', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38009' AND tipo='mencion' AND nombre='estrellas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38009' AND tipo='mencion' AND nombre='estrellas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38009' AND tipo='mencion' AND nombre='estrellas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '38009' AND categoria = 'estrellas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38009', 'estrellas', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38009' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38009' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38009' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '38009' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38009', 'naturaleza', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38009' AND tipo='mencion' AND nombre='miradores' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38009' AND tipo='mencion' AND nombre='miradores' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38009' AND tipo='mencion' AND nombre='miradores' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '38009' AND categoria = 'miradores';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38009', 'miradores', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌌 Astroturismo: Mejor observatorio natural de Europa para ver las Perseidas con Ley del Cielo pionera') WHERE codigo_ine = '38009' AND COALESCE(why_json, '[]') NOT LIKE '%Mejor observatorio n%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Mejor observatorio natural de Europa para ver las Perseidas con Ley del Cielo pionera') WHERE codigo_ine = '38009' AND COALESCE(why_json, '[]') NOT LIKE '%Mejor observatorio n%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38009', 'observatorio', 'Observatorio del Roque de los Muchachos', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38009', 'telescopio', 'Gran Telescopio Canarias (GTC)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38009', 'mirador', 'Mirador Astronómico de Llano del Jable', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38009', 'mirador', 'Mirador Astronómico del Llano de las Ventas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38009', 'accidente geográfico', 'Caldera de Taburiente', 'articulo_web');

-- Resumen: 1/1 municipios encontrados
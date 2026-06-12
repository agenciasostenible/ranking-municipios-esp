-- Enriquecimiento desde: https://www.sensacionrural.es/blog/castillos-de-jaen/
-- Artículo: 14 Castillos de Jaén que visitar
-- Generado: 2026-06-06T19:31:09.016968
-- Municipios: 4

-- La Guardia de Jaén (Jaén) — Castillo defensivo del siglo XIII-XVI con Alcázar y Alcazaba
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24053', 'mencion', 'castillos', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24053', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24053', 'mencion', 'yacimientos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24053' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24053' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24053' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '24053' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24053', 'castillos', 22);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24053' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24053' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24053' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '24053' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24053', 'historia', 22);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24053' AND tipo='mencion' AND nombre='yacimientos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24053' AND tipo='mencion' AND nombre='yacimientos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24053' AND tipo='mencion' AND nombre='yacimientos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '24053' AND categoria = 'yacimientos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24053', 'yacimientos', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Castillo defensivo del siglo XIII-XVI con Alcázar y Alcazaba') WHERE codigo_ine = '24053' AND COALESCE(why_json, '[]') NOT LIKE '%Castillo defensivo d%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Castillo defensivo del siglo XIII-XVI con Alcázar y Alcazaba') WHERE codigo_ine = '24053' AND COALESCE(why_json, '[]') NOT LIKE '%Castillo defensivo d%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24053', 'castillo', 'Castillo de La Guardia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24053', 'edificio', 'Alcázar', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24053', 'edificio', 'Alcazaba', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24053', 'iglesia', 'Iglesia parroquial de Santa María', 'articulo_web');

-- Alcalá la Real (Jaén) — Fortaleza medieval en cerro estratégico con tres recintos defensivos
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24002', 'mencion', 'castillos', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24002', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 23) WHERE codigo_ine = '24002' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24002', 'castillos', 23);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24002' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 23) WHERE codigo_ine = '24002' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24002', 'historia', 23);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Fortaleza medieval en cerro estratégico con tres recintos defensivos') WHERE codigo_ine = '24002' AND COALESCE(why_json, '[]') NOT LIKE '%Fortaleza medieval e%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Fortaleza medieval en cerro estratégico con tres recintos defensivos') WHERE codigo_ine = '24002' AND COALESCE(why_json, '[]') NOT LIKE '%Fortaleza medieval e%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24002', 'castillo', 'Castillo de La Mota', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24002', 'estructura', 'Alcazaba', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24002', 'estructura', 'Alcázar', 'articulo_web');

-- Alcaudete (Jaén) — Castillo restaurado de la Orden de Calatrava con centro de interpretación
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24003', 'mencion', 'castillos', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24003', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24003', 'mencion', 'museos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24003' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24003' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24003' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 24) WHERE codigo_ine = '24003' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24003', 'castillos', 24);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 24) WHERE codigo_ine = '24003' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24003', 'historia', 24);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24003' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24003' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24003' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 24) WHERE codigo_ine = '24003' AND categoria = 'museos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24003', 'museos', 24);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Castillo restaurado de la Orden de Calatrava con centro de interpretación') WHERE codigo_ine = '24003' AND COALESCE(why_json, '[]') NOT LIKE '%Castillo restaurado %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Castillo restaurado de la Orden de Calatrava con centro de interpretación') WHERE codigo_ine = '24003' AND COALESCE(why_json, '[]') NOT LIKE '%Castillo restaurado %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24003', 'castillo', 'Castillo de Alcaudete', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24003', 'museo', 'Centro de interpretación del Castillo', 'articulo_web');

-- Resumen: 3/4 municipios encontrados
-- No encontrados: Baños de Encina (Jaén)
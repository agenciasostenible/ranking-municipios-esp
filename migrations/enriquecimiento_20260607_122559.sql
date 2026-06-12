-- Enriquecimiento desde: https://viajar.elperiodico.com/escapate_cerca/carretera-panoramica-35-kilometros-desfiladero-cantabria-130987217
-- Artículo: Carretera panorámica de 35 kilómetros que atraviesa el desfiladero de La Hermida en Cantabria
-- Generado: 2026-06-07T12:25:59.155356
-- Municipios: 4

-- Potes (Cantabria) — Capital histórica de Liébana con casco medieval bien conservado
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10012', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10012', 'mencion', 'pueblo_bonito', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '10012' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('10012', 'historia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10012' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10012' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10012' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '10012' AND categoria = 'pueblo_bonito';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('10012', 'pueblo_bonito', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Capital histórica de Liébana con casco medieval bien conservado') WHERE codigo_ine = '10012' AND COALESCE(why_json, '[]') NOT LIKE '%Capital histórica de%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌸 Pueblo bonito: Capital histórica de Liébana con casco medieval bien conservado') WHERE codigo_ine = '10012' AND COALESCE(why_json, '[]') NOT LIKE '%Capital histórica de%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10012', 'monumento', 'Monasterio de Santo Toribio de Liébana', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10012', 'atracción', 'Teleférico de Fuente Dé', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10012', 'parque_nacional', 'Picos de Europa', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10012', 'arquitectura', 'Casco antiguo medieval', 'articulo_web');

-- Resumen: 1/4 municipios encontrados
-- No encontrados: Unquera (Cantabria), La Hermida (Cantabria), Lebeña (Cantabria)
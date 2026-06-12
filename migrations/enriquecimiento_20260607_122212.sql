-- Enriquecimiento desde: https://viajar.elperiodico.com/escapate_cerca/castillos-templarios-grandes-conservados-espana-camino-santiago-maravilla-romana-patrimonio-humanidad-131011688
-- Artículo: El Castillo Templario de Ponferrada: uno de los más grandes y mejor conservados de España
-- Generado: 2026-06-07T12:22:12.973274
-- Municipios: 2

-- Ponferrada (León) — Castillo templario del s. XIII, clave en el Camino de Santiago
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'mencion', 'castillos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '26012' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26012', 'historia', 45);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '26012' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26012', 'castillos', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Castillo templario del s. XIII, clave en el Camino de Santiago') WHERE codigo_ine = '26012' AND COALESCE(why_json, '[]') NOT LIKE '%Castillo templario d%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Castillo templario del s. XIII, clave en el Camino de Santiago') WHERE codigo_ine = '26012' AND COALESCE(why_json, '[]') NOT LIKE '%Castillo templario d%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'castillo', 'Castillo de los Templarios de Ponferrada', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'orden_militar', 'Orden del Temple', 'articulo_web');

-- Resumen: 1/2 municipios encontrados
-- No encontrados: Las Médulas (León)
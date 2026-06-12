-- Enriquecimiento desde: https://tacadevi.com/mejores-bodegas-visitar-priorat/
-- Artículo: Las 6 mejores bodegas para visitar en el Priorat
-- Generado: 2026-06-06T23:19:45.700063
-- Municipios: 3

-- Gratallops (Tarragona) — Km0 del renacimiento del Priorat; bodegas En Números Vermells y Cal Batllet
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43069', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43069' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43069' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43069' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '43069' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('43069', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: Km0 del renacimiento del Priorat; bodegas En Números Vermells y Cal Batllet') WHERE codigo_ine = '43069' AND COALESCE(why_json, '[]') NOT LIKE '%Km0 del renacimiento%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Km0 del renacimiento del Priorat; bodegas En Números Vermells y Cal Batllet') WHERE codigo_ine = '43069' AND COALESCE(why_json, '[]') NOT LIKE '%Km0 del renacimiento%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43069', 'bodega', 'En Números Vermells (Silvia Puig)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43069', 'bodega', 'Cal Batllet (Marc Ripoll)', 'articulo_web');

-- Porrera (Tarragona) — Más de 20 bodegas en 400 hab.; Cal Pla y Sangenís i Vaqué
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43114', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43114' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43114' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43114' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '43114' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('43114', 'vinos', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: Más de 20 bodegas en 400 hab.; Cal Pla y Sangenís i Vaqué') WHERE codigo_ine = '43114' AND COALESCE(why_json, '[]') NOT LIKE '%Más de 20 bodegas en%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Más de 20 bodegas en 400 hab.; Cal Pla y Sangenís i Vaqué') WHERE codigo_ine = '43114' AND COALESCE(why_json, '[]') NOT LIKE '%Más de 20 bodegas en%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43114', 'bodega', 'Cal Pla (Joan Sangenís)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43114', 'bodega', 'Sangenís i Vaqué', 'articulo_web');

-- Resumen: 2/3 municipios encontrados
-- No encontrados: La Vilella Alta (Tarragona)
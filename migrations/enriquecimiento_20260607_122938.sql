-- Enriquecimiento desde: https://viajar.elperiodico.com/planes/dabiz-munoz-recomienda-puesto-mercado-madrid-barato-130750412
-- Artículo: Dabiz Muñoz recomienda el puesto Gustoo en el Mercado de San Antón de Madrid para comer bien por menos de 20 euros
-- Generado: 2026-06-07T12:29:38.772484
-- Municipios: 2

-- Madrid (Madrid) — DiverXO 3★, Mercado San Antón y San Miguel
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '29014' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('29014', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DiverXO 3★, Mercado San Antón y San Miguel') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%DiverXO 3★, Mercado %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DiverXO 3★, Mercado San Antón y San Miguel') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%DiverXO 3★, Mercado %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'restaurante', 'DiverXO (3★ Michelin, Dabiz Muñoz)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'mercado', 'Mercado de San Antón', 'articulo_web');

-- Granada (Granada) — Capital mundial de las tapas, cocina árabe-tropical
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '19009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19009', 'gastronomia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Capital mundial de las tapas, cocina árabe-tropical') WHERE codigo_ine = '19009' AND COALESCE(why_json, '[]') NOT LIKE '%Capital mundial de l%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19009', 'destino', 'Capital mundial de las tapas', 'articulo_web');

-- Resumen: 2/2 municipios encontrados
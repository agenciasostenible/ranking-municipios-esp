-- Enriquecimiento desde: https://viajar.elperiodico.com/escapate_cerca/monasterio-medieval-historiadores-consideran-cuna-reino-aragon-130986470
-- Artículo: El monasterio medieval que muchos historiadores consideran una de las cunas del Reino de Aragón: Monasterio de San Juan de la Peña
-- Generado: 2026-06-07T12:23:29.632007
-- Municipios: 2

-- Jaca (Huesca) — Primera capital del Reino de Aragón medieval
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('23011', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23011' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23011' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23011' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '23011' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('23011', 'historia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Primera capital del Reino de Aragón medieval') WHERE codigo_ine = '23011' AND COALESCE(why_json, '[]') NOT LIKE '%Primera capital del %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('23011', 'hecho_historico', 'Origen del Reino de Aragón', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('23011', 'personaje_historico', 'Sancho III el Mayor', 'articulo_web');

-- Resumen: 1/2 municipios encontrados
-- No encontrados: Botaya (Huesca)
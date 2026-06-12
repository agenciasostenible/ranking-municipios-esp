-- Enriquecimiento desde: https://www.publico.es/cp/catalunya-comerte-el-territorio/todas-dop-e-igp-catalunya-comarcas.html
-- Artículo: Todas las DOP e IGP de Catalunya por comarcas
-- Generado: 2026-06-06T23:08:03.472053
-- Municipios: 6

-- Agramunt (Lleida) — IGP Turrón de Agramunt, único municipio zona
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('25181', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25181' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25181' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25181' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '25181' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('25181', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Turrón de Agramunt, único municipio zona') WHERE codigo_ine = '25181' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Turrón de Agramu%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Turrón de Agramunt, único municipio zona') WHERE codigo_ine = '25181' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Turrón de Agramu%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('25181', 'producto_dop', 'IGP Turrón de Agramunt', 'articulo_web');

-- Valls (Tarragona) — IGP Calçots de Valls, producto emblemático
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('42015', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='42015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='42015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='42015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '42015' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('42015', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Calçots de Valls, producto emblemático') WHERE codigo_ine = '42015' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Calçots de Valls%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Calçots de Valls, producto emblemático') WHERE codigo_ine = '42015' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Calçots de Valls%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('42015', 'producto_dop', 'IGP Calçots de Valls', 'articulo_web');

-- Vic (Barcelona) — IGP Llonganissa de Vic, embutido icónico catalán
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08026', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08026' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08026' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08026' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '08026' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08026', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Llonganissa de Vic, embutido icónico catalán') WHERE codigo_ine = '08026' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Llonganissa de V%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Llonganissa de Vic, embutido icónico catalán') WHERE codigo_ine = '08026' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Llonganissa de V%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08026', 'producto_dop', 'IGP Llonganissa de Vic', 'articulo_web');

-- El Prat de Llobregat (Barcelona) — IGP Pollo del Prat, raza autóctona protegida
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08169', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08169' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08169' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08169' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '08169' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08169', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Pollo del Prat, raza autóctona protegida') WHERE codigo_ine = '08169' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Pollo del Prat, %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Pollo del Prat, raza autóctona protegida') WHERE codigo_ine = '08169' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Pollo del Prat, %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08169', 'producto_dop', 'IGP Pollo del Prat', 'articulo_web');

-- Resumen: 4/6 municipios encontrados
-- No encontrados: La Seu d'Urgell (Lleida), Siurana (Tarragona)
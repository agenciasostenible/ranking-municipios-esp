-- Enriquecimiento desde: https://bonviveur.com/es/noticias/restaurantes-con-3-estrellas-michelin
-- Artículo: Los 16 restaurantes con 3 estrellas Michelin 2026 en España
-- Generado: 2026-06-06T22:47:40.699932
-- Municipios: 12

-- San Sebastián (Guipúzcoa) — Arzak y Akelarre, dos templos de 3★ Michelin
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20069', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20069' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20069' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20069' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '20069' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('20069', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Arzak y Akelarre, dos templos de 3★ Michelin') WHERE codigo_ine = '20069' AND COALESCE(why_json, '[]') NOT LIKE '%Arzak y Akelarre, do%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Arzak y Akelarre, dos templos de 3★ Michelin') WHERE codigo_ine = '20069' AND COALESCE(why_json, '[]') NOT LIKE '%Arzak y Akelarre, do%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20069', 'restaurante', 'Arzak (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20069', 'restaurante', 'Akelarre (3★ Michelin)', 'articulo_web');

-- Barcelona (Barcelona) — Cuatro restaurantes 3★ Michelin en la ciudad
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '08003' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08003', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Cuatro restaurantes 3★ Michelin en la ciudad') WHERE codigo_ine = '08003' AND COALESCE(why_json, '[]') NOT LIKE '%Cuatro restaurantes %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Cuatro restaurantes 3★ Michelin en la ciudad') WHERE codigo_ine = '08003' AND COALESCE(why_json, '[]') NOT LIKE '%Cuatro restaurantes %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'restaurante', 'Disfrutar (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'restaurante', 'El Celler de Can Roca (3★ Michelin)', 'articulo_web');

-- Girona (Girona) — El Celler de Can Roca, mejor restaurante del mundo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18005', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '18005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18005', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: El Celler de Can Roca, mejor restaurante del mundo') WHERE codigo_ine = '18005' AND COALESCE(why_json, '[]') NOT LIKE '%El Celler de Can Roc%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'El Celler de Can Roca, mejor restaurante del mundo') WHERE codigo_ine = '18005' AND COALESCE(why_json, '[]') NOT LIKE '%El Celler de Can Roc%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18005', 'restaurante', 'El Celler de Can Roca (3★ Michelin)', 'articulo_web');

-- Lasarte-Oria (Guipúzcoa) — Martín Berasategui, 99,5/100 en La Liste 2026
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20902', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20902' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20902' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20902' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '20902' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('20902', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Martín Berasategui, 99,5/100 en La Liste 2026') WHERE codigo_ine = '20902' AND COALESCE(why_json, '[]') NOT LIKE '%Martín Berasategui, %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Martín Berasategui, 99,5/100 en La Liste 2026') WHERE codigo_ine = '20902' AND COALESCE(why_json, '[]') NOT LIKE '%Martín Berasategui, %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20902', 'restaurante', 'Martín Berasategui (3★ Michelin)', 'articulo_web');

-- Madrid (Madrid) — DiverXO, único 3★ Michelin de Madrid
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 44) WHERE codigo_ine = '29014' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('29014', 'gastronomia', 44);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DiverXO, único 3★ Michelin de Madrid') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%DiverXO, único 3★ Mi%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DiverXO, único 3★ Michelin de Madrid') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%DiverXO, único 3★ Mi%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'restaurante', 'DiverXO (3★ Michelin)', 'articulo_web');

-- El Puerto de Santa María (Cádiz) — Aponiente 3★, cocina del océano de Ángel León
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16010', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 42) WHERE codigo_ine = '16010' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16010', 'gastronomia', 42);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Aponiente 3★, cocina del océano de Ángel León') WHERE codigo_ine = '16010' AND COALESCE(why_json, '[]') NOT LIKE '%Aponiente 3★, cocina%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Aponiente 3★, cocina del océano de Ángel León') WHERE codigo_ine = '16010' AND COALESCE(why_json, '[]') NOT LIKE '%Aponiente 3★, cocina%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16010', 'restaurante', 'Aponiente (3★ Michelin)', 'articulo_web');

-- Cáceres (Cáceres) — Atrio: único con 3★ Michelin y 3 llaves Michelin
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 42) WHERE codigo_ine = '15005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15005', 'gastronomia', 42);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Atrio: único con 3★ Michelin y 3 llaves Michelin') WHERE codigo_ine = '15005' AND COALESCE(why_json, '[]') NOT LIKE '%Atrio: único con 3★ %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Atrio: único con 3★ Michelin y 3 llaves Michelin') WHERE codigo_ine = '15005' AND COALESCE(why_json, '[]') NOT LIKE '%Atrio: único con 3★ %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'restaurante', 'Atrio (3★ Michelin y 3 llaves Michelin)', 'articulo_web');

-- Córdoba (Córdoba) — Noor 3★ Michelin, cocina de Al-Ándalus de Paco Morales
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17008', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 42) WHERE codigo_ine = '17008' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17008', 'gastronomia', 42);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Noor 3★ Michelin, cocina de Al-Ándalus de Paco Morales') WHERE codigo_ine = '17008' AND COALESCE(why_json, '[]') NOT LIKE '%Noor 3★ Michelin, co%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Noor 3★ Michelin, cocina de Al-Ándalus de Paco Morales') WHERE codigo_ine = '17008' AND COALESCE(why_json, '[]') NOT LIKE '%Noor 3★ Michelin, co%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17008', 'restaurante', 'Noor (3★ Michelin)', 'articulo_web');

-- Resumen: 8/12 municipios encontrados
-- No encontrados: Dénia (Alicante), Larrabetzu (Vizcaya), Villaverde de Pontones (Cantabria), Arriondas (Asturias)
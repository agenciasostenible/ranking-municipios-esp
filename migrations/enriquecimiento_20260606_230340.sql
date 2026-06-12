-- Enriquecimiento desde: https://es.wikipedia.org/wiki/Anexo:Alimentos_protegidos_de_Castilla_y_Le%C3%B3n
-- Artículo: Anexo:Alimentos protegidos de Castilla y León
-- Generado: 2026-06-06T23:03:40.949378
-- Municipios: 30

-- Guijuelo (Salamanca) — DOP Jamón de Guijuelo desde 1986
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37156', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37156' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37156' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37156' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '37156' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37156', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Jamón de Guijuelo desde 1986') WHERE codigo_ine = '37156' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Jamón de Guijuel%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Jamón de Guijuelo desde 1986') WHERE codigo_ine = '37156' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Jamón de Guijuel%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37156', 'producto', 'Jamón de Guijuelo (DOP 1986)', 'articulo_web');

-- Ponferrada (León) — IGP Botillo del Bierzo e IGP Pimiento Asado del Bierzo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 28) WHERE codigo_ine = '26012' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26012', 'gastronomia', 28);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Botillo del Bierzo e IGP Pimiento Asado del Bierzo') WHERE codigo_ine = '26012' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Botillo del Bier%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Botillo del Bierzo e IGP Pimiento Asado del Bierzo') WHERE codigo_ine = '26012' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Botillo del Bier%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'producto', 'Botillo del Bierzo (IGP 2000)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'producto', 'Pimiento Asado del Bierzo (IGP 2004)', 'articulo_web');

-- Ávila (Ávila) — IGP Carne de Ávila desde 1988
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '51025' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('51025', 'gastronomia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Carne de Ávila desde 1988') WHERE codigo_ine = '51025' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Carne de Ávila d%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Carne de Ávila desde 1988') WHERE codigo_ine = '51025' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Carne de Ávila d%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'producto', 'Carne de Ávila (IGP 1988)', 'articulo_web');

-- Zamora (Zamora) — DOP Queso Zamorano y Marca Chorizo Zamorano
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('48008', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '48008' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('48008', 'gastronomia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Queso Zamorano y Marca Chorizo Zamorano') WHERE codigo_ine = '48008' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Queso Zamorano y%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Queso Zamorano y Marca Chorizo Zamorano') WHERE codigo_ine = '48008' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Queso Zamorano y%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('48008', 'producto', 'Queso Zamorano (DOP 1993)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('48008', 'producto', 'Chorizo Zamorano (MG 2005)', 'articulo_web');

-- Salamanca (Salamanca) — IGP Carne de Morucha y sede Ternera Charra
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37011', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '37011' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37011', 'gastronomia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Carne de Morucha y sede Ternera Charra') WHERE codigo_ine = '37011' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Carne de Morucha%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Carne de Morucha y sede Ternera Charra') WHERE codigo_ine = '37011' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Carne de Morucha%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37011', 'producto', 'Carne de Morucha de Salamanca (IGP 1995)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37011', 'producto', 'Ternera Charra (MG 2000)', 'articulo_web');

-- Astorga (León) — IGP Cecina de León e IGP Mantecadas de Astorga
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26002', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '26002' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26002', 'gastronomia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Cecina de León e IGP Mantecadas de Astorga') WHERE codigo_ine = '26002' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Cecina de León e%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Cecina de León e IGP Mantecadas de Astorga') WHERE codigo_ine = '26002' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Cecina de León e%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26002', 'producto', 'Cecina de León (IGP 1994)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26002', 'producto', 'Mantecadas de Astorga (IGP 2004)', 'articulo_web');

-- Valladolid (Valladolid) — DO Rueda, DO Cigales y MG Pan de Valladolid
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('46010', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('46010', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '46010' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('46010', 'gastronomia', 22);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46010' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46010' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46010' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '46010' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('46010', 'vinos', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DO Rueda, DO Cigales y MG Pan de Valladolid') WHERE codigo_ine = '46010' AND COALESCE(why_json, '[]') NOT LIKE '%DO Rueda, DO Cigales%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Rueda, DO Cigales y MG Pan de Valladolid') WHERE codigo_ine = '46010' AND COALESCE(why_json, '[]') NOT LIKE '%DO Rueda, DO Cigales%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('46010', 'producto', 'Pan de Valladolid (MG 2004)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('46010', 'vino', 'DO Rueda (sede) / DO Cigales (sede)', 'articulo_web');

-- Segovia (Segovia) — MG Cochinillo de Segovia e IGP Chorizo de Cantimpalos
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('39009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='39009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='39009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='39009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '39009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('39009', 'gastronomia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: MG Cochinillo de Segovia e IGP Chorizo de Cantimpalos') WHERE codigo_ine = '39009' AND COALESCE(why_json, '[]') NOT LIKE '%MG Cochinillo de Seg%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'MG Cochinillo de Segovia e IGP Chorizo de Cantimpalos') WHERE codigo_ine = '39009' AND COALESCE(why_json, '[]') NOT LIKE '%MG Cochinillo de Seg%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('39009', 'producto', 'Cochinillo de Segovia (MG 2002)', 'articulo_web');

-- Soria (Soria) — DOP Mantequilla de Soria desde 2004
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('41009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='41009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='41009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='41009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '41009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('41009', 'gastronomia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Mantequilla de Soria desde 2004') WHERE codigo_ine = '41009' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Mantequilla de S%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Mantequilla de Soria desde 2004') WHERE codigo_ine = '41009' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Mantequilla de S%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('41009', 'producto', 'Mantequilla de Soria (DOP 2004)', 'articulo_web');

-- Aranda de Duero (Burgos) — Sede IGP Lechazo de Castilla y León desde 1997
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09001', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09001' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09001' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09001' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '09001' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09001', 'gastronomia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede IGP Lechazo de Castilla y León desde 1997') WHERE codigo_ine = '09001' AND COALESCE(why_json, '[]') NOT LIKE '%Sede IGP Lechazo de %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Sede IGP Lechazo de Castilla y León desde 1997') WHERE codigo_ine = '09001' AND COALESCE(why_json, '[]') NOT LIKE '%Sede IGP Lechazo de %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09001', 'producto', 'Lechazo de Castilla y León (IGP 1997)', 'articulo_web');

-- León (León) — MG Chorizo de León y sede provincial de cecina
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26010', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '26010' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26010', 'gastronomia', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: MG Chorizo de León y sede provincial de cecina') WHERE codigo_ine = '26010' AND COALESCE(why_json, '[]') NOT LIKE '%MG Chorizo de León y%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'MG Chorizo de León y sede provincial de cecina') WHERE codigo_ine = '26010' AND COALESCE(why_json, '[]') NOT LIKE '%MG Chorizo de León y%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26010', 'producto', 'Chorizo de León (MG 2012)', 'articulo_web');

-- Roa (Burgos) — Sede DO Ribera del Duero desde 1982
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09016', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09016', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '09016' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09016', 'gastronomia', 18);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09016' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09016' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09016' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '09016' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09016', 'vinos', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede DO Ribera del Duero desde 1982') WHERE codigo_ine = '09016' AND COALESCE(why_json, '[]') NOT LIKE '%Sede DO Ribera del D%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: Sede DO Ribera del Duero desde 1982') WHERE codigo_ine = '09016' AND COALESCE(why_json, '[]') NOT LIKE '%Sede DO Ribera del D%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09016', 'vino', 'DO Ribera del Duero (1982)', 'articulo_web');

-- Toro (Zamora) — DO Toro, vino con gran prestigio nacional desde 1989
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('48005', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('48005', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '48005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('48005', 'gastronomia', 18);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48005' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48005' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48005' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '48005' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('48005', 'vinos', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DO Toro, vino con gran prestigio nacional desde 1989') WHERE codigo_ine = '48005' AND COALESCE(why_json, '[]') NOT LIKE '%DO Toro, vino con gr%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Toro, vino con gran prestigio nacional desde 1989') WHERE codigo_ine = '48005' AND COALESCE(why_json, '[]') NOT LIKE '%DO Toro, vino con gr%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('48005', 'vino', 'DO Toro (1989)', 'articulo_web');

-- Cacabelos (León) — Sede DO Bierzo desde 1989
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26007', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26007', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '26007' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26007', 'gastronomia', 18);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26007' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26007' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26007' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '26007' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26007', 'vinos', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede DO Bierzo desde 1989') WHERE codigo_ine = '26007' AND COALESCE(why_json, '[]') NOT LIKE '%Sede DO Bierzo desde%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: Sede DO Bierzo desde 1989') WHERE codigo_ine = '26007' AND COALESCE(why_json, '[]') NOT LIKE '%Sede DO Bierzo desde%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26007', 'vino', 'DO Bierzo (1989)', 'articulo_web');

-- Rueda (Valladolid) — DO Rueda, vino blanco referente nacional desde 1989
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47139', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47139' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47139' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47139' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 17) WHERE codigo_ine = '47139' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('47139', 'vinos', 17);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Rueda, vino blanco referente nacional desde 1989') WHERE codigo_ine = '47139' AND COALESCE(why_json, '[]') NOT LIKE '%DO Rueda, vino blanc%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47139', 'vino', 'DO Rueda (1989)', 'articulo_web');

-- Cigales (Valladolid) — Municipio sede y nombre de la DO Cigales desde 1991
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('46001', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46001' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46001' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46001' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 17) WHERE codigo_ine = '46001' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('46001', 'vinos', 17);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: Municipio sede y nombre de la DO Cigales desde 1991') WHERE codigo_ine = '46001' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio sede y nom%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('46001', 'vino', 'DO Cigales (1991)', 'articulo_web');

-- Cantimpalos (Segovia) — IGP Chorizo de Cantimpalos desde 2008
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40041', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40041' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40041' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40041' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 17) WHERE codigo_ine = '40041' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('40041', 'gastronomia', 17);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Chorizo de Cantimpalos desde 2008') WHERE codigo_ine = '40041' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Chorizo de Canti%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Chorizo de Cantimpalos desde 2008') WHERE codigo_ine = '40041' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Chorizo de Canti%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40041', 'producto', 'Chorizo de Cantimpalos (IGP 2008)', 'articulo_web');

-- El Barco de Ávila (Ávila) — IGP Judías de El Barco de Ávila desde 1989
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 17) WHERE codigo_ine = '51009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('51009', 'gastronomia', 17);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Judías de El Barco de Ávila desde 1989') WHERE codigo_ine = '51009' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Judías de El Bar%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Judías de El Barco de Ávila desde 1989') WHERE codigo_ine = '51009' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Judías de El Bar%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51009', 'producto', 'Judías de El Barco de Ávila (IGP 1989)', 'articulo_web');

-- Lerma (Burgos) — Sede DO Arlanza desde 2007
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09008', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09008', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '09008' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09008', 'gastronomia', 15);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09008' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09008' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09008' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '09008' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09008', 'vinos', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede DO Arlanza desde 2007') WHERE codigo_ine = '09008' AND COALESCE(why_json, '[]') NOT LIKE '%Sede DO Arlanza desd%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: Sede DO Arlanza desde 2007') WHERE codigo_ine = '09008' AND COALESCE(why_json, '[]') NOT LIKE '%Sede DO Arlanza desd%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09008', 'vino', 'DO Arlanza (2007)', 'articulo_web');

-- La Bañeza (León) — IGP Alubia de La Bañeza desde 2005
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '26009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26009', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Alubia de La Bañeza desde 2005') WHERE codigo_ine = '26009' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Alubia de La Bañ%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Alubia de La Bañeza desde 2005') WHERE codigo_ine = '26009' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Alubia de La Bañ%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26009', 'producto', 'Alubia de La Bañeza (IGP 2005)', 'articulo_web');

-- Posada de Valdeón (León) — IGP Queso de Valdeón, queso azul singular desde 1996
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24116', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24116' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24116' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24116' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '24116' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24116', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Queso de Valdeón, queso azul singular desde 1996') WHERE codigo_ine = '24116' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Queso de Valdeón%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Queso de Valdeón, queso azul singular desde 1996') WHERE codigo_ine = '24116' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Queso de Valdeón%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24116', 'producto', 'Queso de Valdeón (IGP 1996)', 'articulo_web');

-- Vegacervera (León) — MG Cecina de Chivo de Vegacervera desde 2005
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24194', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24194' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24194' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24194' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '24194' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24194', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: MG Cecina de Chivo de Vegacervera desde 2005') WHERE codigo_ine = '24194' AND COALESCE(why_json, '[]') NOT LIKE '%MG Cecina de Chivo d%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'MG Cecina de Chivo de Vegacervera desde 2005') WHERE codigo_ine = '24194' AND COALESCE(why_json, '[]') NOT LIKE '%MG Cecina de Chivo d%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24194', 'producto', 'Cecina de Chivo de Vegacervera (MG 2005)', 'articulo_web');

-- Cebreros (Ávila) — DO Vinos de Cebreros desde 2018
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51006', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51006' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51006' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51006' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '51006' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('51006', 'vinos', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Vinos de Cebreros desde 2018') WHERE codigo_ine = '51006' AND COALESCE(why_json, '[]') NOT LIKE '%DO Vinos de Cebreros%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51006', 'vino', 'DO Vinos de Cebreros (2018)', 'articulo_web');

-- Villares de la Reina (Salamanca) — Sede IGP Garbanzo de Fuentesaúco y Lenteja Armuña
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37362', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37362' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37362' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37362' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '37362' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37362', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede IGP Garbanzo de Fuentesaúco y Lenteja Armuña') WHERE codigo_ine = '37362' AND COALESCE(why_json, '[]') NOT LIKE '%Sede IGP Garbanzo de%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Sede IGP Garbanzo de Fuentesaúco y Lenteja Armuña') WHERE codigo_ine = '37362' AND COALESCE(why_json, '[]') NOT LIKE '%Sede IGP Garbanzo de%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37362', 'producto', 'Garbanzo de Fuentesaúco (IGP 2003)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37362', 'producto', 'Lenteja de la Armuña (IGP 1993)', 'articulo_web');

-- Vitigudino (Salamanca) — Sede MG Queso Arribes de Salamanca desde 2002
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37013', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37013' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37013' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37013' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 12) WHERE codigo_ine = '37013' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37013', 'gastronomia', 12);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede MG Queso Arribes de Salamanca desde 2002') WHERE codigo_ine = '37013' AND COALESCE(why_json, '[]') NOT LIKE '%Sede MG Queso Arribe%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Sede MG Queso Arribes de Salamanca desde 2002') WHERE codigo_ine = '37013' AND COALESCE(why_json, '[]') NOT LIKE '%Sede MG Queso Arribe%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37013', 'producto', 'Queso Arribes de Salamanca (MG 2002)', 'articulo_web');

-- Pereña de la Ribera (Salamanca) — Sede DO Arribes desde 2007
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37250', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37250' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37250' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37250' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 12) WHERE codigo_ine = '37250' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37250', 'vinos', 12);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: Sede DO Arribes desde 2007') WHERE codigo_ine = '37250' AND COALESCE(why_json, '[]') NOT LIKE '%Sede DO Arribes desd%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37250', 'vino', 'DO Arribes (2007)', 'articulo_web');

-- Salas de Bureba (Burgos) — MG Cereza y Manzana Reineta de las Caderechas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09329', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09329' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09329' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09329' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 12) WHERE codigo_ine = '09329' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09329', 'gastronomia', 12);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: MG Cereza y Manzana Reineta de las Caderechas') WHERE codigo_ine = '09329' AND COALESCE(why_json, '[]') NOT LIKE '%MG Cereza y Manzana %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'MG Cereza y Manzana Reineta de las Caderechas') WHERE codigo_ine = '09329' AND COALESCE(why_json, '[]') NOT LIKE '%MG Cereza y Manzana %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09329', 'producto', 'Cereza de las Caderechas (MG 2004)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09329', 'producto', 'Manzana Reineta de las Caderechas (MG 2004)', 'articulo_web');

-- Mayorga (Valladolid) — Sede IGP Lenteja Pardina de Tierra de Campos 2004
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47084', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47084' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47084' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47084' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 12) WHERE codigo_ine = '47084' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('47084', 'gastronomia', 12);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede IGP Lenteja Pardina de Tierra de Campos 2004') WHERE codigo_ine = '47084' AND COALESCE(why_json, '[]') NOT LIKE '%Sede IGP Lenteja Par%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Sede IGP Lenteja Pardina de Tierra de Campos 2004') WHERE codigo_ine = '47084' AND COALESCE(why_json, '[]') NOT LIKE '%Sede IGP Lenteja Par%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47084', 'producto', 'Lenteja Pardina de Tierra de Campos (IGP 2004)', 'articulo_web');

-- Val de San Lorenzo (León) — Sede MG Carne Vacuno y Lechazo Montañas del Teleno
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24185', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24185' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24185' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24185' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 10) WHERE codigo_ine = '24185' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24185', 'gastronomia', 10);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede MG Carne Vacuno y Lechazo Montañas del Teleno') WHERE codigo_ine = '24185' AND COALESCE(why_json, '[]') NOT LIKE '%Sede MG Carne Vacuno%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Sede MG Carne Vacuno y Lechazo Montañas del Teleno') WHERE codigo_ine = '24185' AND COALESCE(why_json, '[]') NOT LIKE '%Sede MG Carne Vacuno%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24185', 'producto', 'Carne Vacuno Montañas del Teleno (MG 2000)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24185', 'producto', 'Lechazo Montañas del Teleno (MG 1999)', 'articulo_web');

-- Resumen: 29/30 municipios encontrados
-- No encontrados: Carracedelo (León)
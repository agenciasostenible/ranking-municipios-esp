-- Enriquecimiento desde: https://www.sentiroliva.com/blog/descubre-los-aceites-con-denominacion-de-origen-protegida-en-espana/
-- Artículo: Descubre los aceites con Denominación de Origen Protegida en España
-- Generado: 2026-06-06T23:13:22.374004
-- Municipios: 30

-- Priego de Córdoba (Córdoba) — DOP Priego de Córdoba, uno de los AOVEs más premiados del mundo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17022', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17022' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17022' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17022' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '17022' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17022', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Priego de Córdoba, uno de los AOVEs más premiados del mundo') WHERE codigo_ine = '17022' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Priego de Córdob%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Priego de Córdoba, uno de los AOVEs más premiados del mundo') WHERE codigo_ine = '17022' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Priego de Córdob%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17022', 'dop', 'DOP Priego de Córdoba (Picuda, Hojiblanca, Picual)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17022', 'entorno', 'Parque Natural Sierras Subbéticas', 'articulo_web');

-- Baena (Córdoba) — Municipio sede de la DOP Baena, AOVE de frutado intenso
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17003', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '17003' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17003', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Municipio sede de la DOP Baena, AOVE de frutado intenso') WHERE codigo_ine = '17003' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio sede de la%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Municipio sede de la DOP Baena, AOVE de frutado intenso') WHERE codigo_ine = '17003' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio sede de la%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17003', 'dop', 'DOP Baena (variedad Picuda)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17003', 'municipio_dop', 'Municipio principal de la DOP Baena', 'articulo_web');

-- Estepa (Sevilla) — DOP Estepa, referente nacional e internacional en AOVE
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '40009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('40009', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Estepa, referente nacional e internacional en AOVE') WHERE codigo_ine = '40009' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Estepa, referent%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Estepa, referente nacional e internacional en AOVE') WHERE codigo_ine = '40009' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Estepa, referent%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40009', 'dop', 'DOP Estepa (Hojiblanca, Arbequina)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40009', 'comarca', 'Comarca de Estepa y Puente Genil', 'articulo_web');

-- Antequera (Málaga) — DOP Antequera, 80.000 ha y 10 millones de olivos Hojiblanca
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32002', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 28) WHERE codigo_ine = '32002' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('32002', 'gastronomia', 28);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Antequera, 80.000 ha y 10 millones de olivos Hojiblanca') WHERE codigo_ine = '32002' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Antequera, 80.00%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Antequera, 80.000 ha y 10 millones de olivos Hojiblanca') WHERE codigo_ine = '32002' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Antequera, 80.00%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32002', 'dop', 'DOP Antequera (90% Hojiblanca)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32002', 'dato', '80.000 hectáreas de olivar certificado', 'articulo_web');

-- Puente Genil (Córdoba) — Comarca DOP Estepa, referente del AOVE andaluz
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17023', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17023' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17023' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17023' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '17023' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17023', 'gastronomia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Comarca DOP Estepa, referente del AOVE andaluz') WHERE codigo_ine = '17023' AND COALESCE(why_json, '[]') NOT LIKE '%Comarca DOP Estepa, %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Comarca DOP Estepa, referente del AOVE andaluz') WHERE codigo_ine = '17023' AND COALESCE(why_json, '[]') NOT LIKE '%Comarca DOP Estepa, %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17023', 'dop', 'DOP Estepa (Comarca Estepa-Puente Genil)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17023', 'variedad', 'Variedad Hojiblanca y Arbequina', 'articulo_web');

-- Lucena (Córdoba) — DOP Lucena, AOVE sur de Córdoba con 90% Hojiblanca
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17015', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '17015' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17015', 'gastronomia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Lucena, AOVE sur de Córdoba con 90% Hojiblanca') WHERE codigo_ine = '17015' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Lucena, AOVE sur%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Lucena, AOVE sur de Córdoba con 90% Hojiblanca') WHERE codigo_ine = '17015' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Lucena, AOVE sur%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17015', 'dop', 'DOP Lucena (90% Hojiblanca)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17015', 'variedad', 'Arbequina, Picual, Lechín, Ocal', 'articulo_web');

-- Castro del Río (Córdoba) — Municipio integrado en la DOP Baena
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17007', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '17007' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17007', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Municipio integrado en la DOP Baena') WHERE codigo_ine = '17007' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio integrado %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Municipio integrado en la DOP Baena') WHERE codigo_ine = '17007' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio integrado %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17007', 'dop', 'DOP Baena', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17007', 'variedad', 'Variedad Picuda', 'articulo_web');

-- Luque (Córdoba) — Municipio de la DOP Baena, olivar subbético cordobés
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14039', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14039' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14039' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14039' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 14) WHERE codigo_ine = '14039' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('14039', 'gastronomia', 14);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Municipio de la DOP Baena, olivar subbético cordobés') WHERE codigo_ine = '14039' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio de la DOP %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Municipio de la DOP Baena, olivar subbético cordobés') WHERE codigo_ine = '14039' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio de la DOP %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14039', 'dop', 'DOP Baena', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14039', 'entorno', 'Zona sureste de Córdoba', 'articulo_web');

-- Nueva Carteya (Córdoba) — Municipio de la DOP Baena, variedad Picuda
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14046', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14046' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14046' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14046' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 13) WHERE codigo_ine = '14046' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('14046', 'gastronomia', 13);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Municipio de la DOP Baena, variedad Picuda') WHERE codigo_ine = '14046' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio de la DOP %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Municipio de la DOP Baena, variedad Picuda') WHERE codigo_ine = '14046' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio de la DOP %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14046', 'dop', 'DOP Baena', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14046', 'variedad', 'Aceituna Picuda', 'articulo_web');

-- Zuheros (Córdoba) — Municipio DOP Baena en plena Subbética cordobesa
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14075', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14075' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14075' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14075' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 13) WHERE codigo_ine = '14075' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('14075', 'gastronomia', 13);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Municipio DOP Baena en plena Subbética cordobesa') WHERE codigo_ine = '14075' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio DOP Baena %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Municipio DOP Baena en plena Subbética cordobesa') WHERE codigo_ine = '14075' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio DOP Baena %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14075', 'dop', 'DOP Baena', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14075', 'entorno', 'Sierras Subbéticas, Córdoba', 'articulo_web');

-- Montoro (Córdoba) — DOP Montoro-Adamuz, AOVE intenso del Valle del Guadalquivir
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17017', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '17017' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17017', 'gastronomia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Montoro-Adamuz, AOVE intenso del Valle del Guadalquivir') WHERE codigo_ine = '17017' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Montoro-Adamuz, %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Montoro-Adamuz, AOVE intenso del Valle del Guadalquivir') WHERE codigo_ine = '17017' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Montoro-Adamuz, %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17017', 'dop', 'DOP Montoro-Adamuz (Picual y Nevadillo Negro)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17017', 'entorno', 'Cuenca del Guadalquivir, norte de Córdoba', 'articulo_web');

-- Alcañiz (Teruel) — DOP Bajo Aragón, capital comarcal del Empeltre en Teruel
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43002', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '43002' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('43002', 'gastronomia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Bajo Aragón, capital comarcal del Empeltre en Teruel') WHERE codigo_ine = '43002' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Bajo Aragón, cap%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Bajo Aragón, capital comarcal del Empeltre en Teruel') WHERE codigo_ine = '43002' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Bajo Aragón, cap%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43002', 'dop', 'DOP Bajo Aragón (variedad Empeltre)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43002', 'dato', '77 municipios en Zaragoza y Teruel', 'articulo_web');

-- Mallorca (Islas Baleares) — DOP Mallorca, AOVE de variedades Mallorquina, Arbequina y Picual
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07040', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07040' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07040' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07040' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 28) WHERE codigo_ine = '07040' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07040', 'gastronomia', 28);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Mallorca, AOVE de variedades Mallorquina, Arbequina y Picual') WHERE codigo_ine = '07040' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Mallorca, AOVE d%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Mallorca, AOVE de variedades Mallorquina, Arbequina y Picual') WHERE codigo_ine = '07040' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Mallorca, AOVE d%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07040', 'dop', 'DOP Mallorca (Mallorquina, Arbequina, Picual)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07040', 'dato', 'Aceite de temporada: verde frutado o dorado dulce', 'articulo_web');

-- Cazorla (Jaén) — DOP Sierra de Cazorla, 9 municipios con Picual y Royal autóctona
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24028', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24028' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24028' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24028' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 26) WHERE codigo_ine = '24028' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24028', 'gastronomia', 26);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Sierra de Cazorla, 9 municipios con Picual y Royal autóctona') WHERE codigo_ine = '24028' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Sierra de Cazorl%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Sierra de Cazorla, 9 municipios con Picual y Royal autóctona') WHERE codigo_ine = '24028' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Sierra de Cazorl%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24028', 'dop', 'DOP Sierra de Cazorla (Picual y Royal)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24028', 'entorno', 'Sierra de Cazorla, Cordillera Bética', 'articulo_web');

-- Calatrava (Ciudad Real) — DOP Campo de Calatrava, 16 localidades y 22.073 ha de olivar
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13012', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '13012' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('13012', 'gastronomia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Campo de Calatrava, 16 localidades y 22.073 ha de olivar') WHERE codigo_ine = '13012' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Campo de Calatra%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Campo de Calatrava, 16 localidades y 22.073 ha de olivar') WHERE codigo_ine = '13012' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Campo de Calatra%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13012', 'dop', 'DOP Campo de Calatrava (Cornicabra, Picual)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13012', 'dato', '22.073 hectáreas en 16 localidades', 'articulo_web');

-- Gata (Cáceres) — DOP Gata-Hurdes, 9 millones de olivos Manzanilla Cacereña
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10084', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10084' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10084' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10084' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '10084' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('10084', 'gastronomia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Gata-Hurdes, 9 millones de olivos Manzanilla Cacereña') WHERE codigo_ine = '10084' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Gata-Hurdes, 9 m%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Gata-Hurdes, 9 millones de olivos Manzanilla Cacereña') WHERE codigo_ine = '10084' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Gata-Hurdes, 9 m%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10084', 'dop', 'DOP Gata-Hurdes (Manzanilla Cacereña)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10084', 'dato', '9 millones de olivos en la provincia de Cáceres', 'articulo_web');

-- Resumen: 16/30 municipios encontrados
-- No encontrados: Adamuz (Córdoba), Siurana (Tarragona), Les Garrigues (Lleida), Alcarria (Guadalajara/Cuenca), Campo de Montiel (Ciudad Real), Montes de Toledo (Toledo), Sierra de Cádiz (Cádiz), Montes de Granada (Granada), Poniente de Granada (Granada), Terra Alta (Tarragona), Baix Ebre (Tarragona), La Rioja (La Rioja), Navarra (Navarra), Comunidad Valenciana (Valencia/Alicante/Castellón)
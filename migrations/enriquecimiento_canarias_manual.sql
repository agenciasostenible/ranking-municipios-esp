-- Enriquecimiento manual: Playas Lanzarote y Fuerteventura
-- 2026-06-06

-- La Oliva (35014) — Corralejo, Dunas, parque natural
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35014', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35014', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35014' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35014' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35014' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 22) WHERE codigo_ine = '35014' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('35014', 'playas', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Grandes Playas de Corralejo, 9km de arena blanca junto al Parque Natural de las Dunas') WHERE codigo_ine = '35014' AND COALESCE(why_json, '[]') NOT LIKE '%Corralejo%';

-- Pájara (35015) — Cofete, Sotavento kitesurf
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35015', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35015', 'mencion', 'aventura', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35015' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35015' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35015' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 24) WHERE codigo_ine = '35015' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('35015', 'playas', 24);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Playa de Cofete (12km virgen) y Playa del Sotavento, meca del kitesurf y windsurf') WHERE codigo_ine = '35015' AND COALESCE(why_json, '[]') NOT LIKE '%Cofete%';

-- Puerto del Rosario (35017) — capital Fuerteventura
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35017', 'mencion', 'playas', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35017' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35017' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35017' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 12) WHERE codigo_ine = '35017' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('35017', 'playas', 12);

-- Teguise (35024) — Famara, 6km con acantilado de 600m
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35024', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35024', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35024' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35024' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35024' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 22) WHERE codigo_ine = '35024' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('35024', 'playas', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Playa Famara, 6km de arena con acantilado Risco de Famara de 600m y pueblo marinero') WHERE codigo_ine = '35024' AND COALESCE(why_json, '[]') NOT LIKE '%Famara%';

-- Tías (35028) — Costa Teguise, windsurf
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35028', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35028', 'mencion', 'aventura', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35028' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35028' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35028' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 16) WHERE codigo_ine = '35028' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('35028', 'playas', 16);

-- Yaiza (35034) — Papagayo, Playa Blanca, aguas cristalinas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35034', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('35034', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35034' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35034' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35034' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 24) WHERE codigo_ine = '35034' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('35034', 'playas', 24);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Playas del Papagayo, calas paradisíacas protegidas en Monumento Natural con aguas cristalinas') WHERE codigo_ine = '35034' AND COALESCE(why_json, '[]') NOT LIKE '%Papagayo%';

-- Tenerife: Puerto de la Cruz (38028) — Playa Jardín diseñada por Manrique
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38028', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38028', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38028' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38028' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38028' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 20) WHERE codigo_ine = '38028' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38028', 'playas', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Playa Jardín de arena negra volcánica, diseñada por César Manrique con jardines tropicales') WHERE codigo_ine = '38028' AND COALESCE(why_json, '[]') NOT LIKE '%Playa Jardín%';

-- Garachico (38015) — piscinas naturales El Caletón
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38015', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38015', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38015' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38015' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38015' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 22) WHERE codigo_ine = '38015' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38015', 'playas', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Piscinas naturales El Caletón formadas por erupción volcánica, única experiencia de baño en roca') WHERE codigo_ine = '38015' AND COALESCE(why_json, '[]') NOT LIKE '%Caletón%';

-- Guía de Isora (38019) — Playa San Juan y Alcalá
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38019', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38019', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38019' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38019' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38019' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 18) WHERE codigo_ine = '38019' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38019', 'playas', 18);

-- San Miguel de Abona (38035) — Playa Los Abrigos y El Médano
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38035', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38035', 'mencion', 'aventura', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='35035' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38035' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38035' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 18) WHERE codigo_ine = '38035' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38035', 'playas', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: El Médano, pueblo favorito de surfistas y kitesurfers con viento constante del Sáhara') WHERE codigo_ine = '38035' AND COALESCE(why_json, '[]') NOT LIKE '%Médano%';

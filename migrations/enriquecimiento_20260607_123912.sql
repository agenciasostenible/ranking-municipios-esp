-- Enriquecimiento desde: https://viajar.elperiodico.com/viajeros/refugio-joan-manuel-serrat-isla-calas-bahias-mediterraneo-131045529
-- Artículo: El refugio de Joan Manuel Serrat (82 años) es una isla de calas azul turquesa y bahías naturales del Mediterráneo
-- Generado: 2026-06-07T12:39:12.926306
-- Municipios: 2

-- Mahón (Baleares) — Refugio secreto de Serrat con puerto natural más grande del Mediterráneo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07032', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07032', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07032', 'mencion', 'agua', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07032' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07032' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07032' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '07032' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07032', 'playas', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07032' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07032' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07032' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '07032' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07032', 'historia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07032' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07032' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07032' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '07032' AND categoria = 'agua';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07032', 'agua', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Refugio secreto de Serrat con puerto natural más grande del Mediterráneo') WHERE codigo_ine = '07032' AND COALESCE(why_json, '[]') NOT LIKE '%Refugio secreto de S%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Refugio secreto de Serrat con puerto natural más grande del Mediterráneo') WHERE codigo_ine = '07032' AND COALESCE(why_json, '[]') NOT LIKE '%Refugio secreto de S%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07032', 'puerto', 'Puerto natural de Mahón', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07032', 'fortaleza', 'Fortaleza de la Mola', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07032', 'fortaleza', 'Fuerte de San Felipe', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07032', 'arquitectura', 'Murallas medievales', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07032', 'monumento', 'Reloj británico del Ayuntamiento', 'articulo_web');

-- Resumen: 1/2 municipios encontrados
-- No encontrados: Calella de Palafrugell (Girona)
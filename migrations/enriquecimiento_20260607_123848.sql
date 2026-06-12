-- Enriquecimiento desde: https://viajar.elperiodico.com/viajeros/refugio-candela-pena-52-anos-canarias-130962755
-- Artículo: El refugio de Candela Peña (52 años) es la isla más desconocida de Canarias
-- Generado: 2026-06-07T12:38:48.597206
-- Municipios: 2

-- Valverde (Santa Cruz de Tenerife) — Capital de El Hierro con arquitectura tradicional canaria y calles adoquinadas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38048', 'mencion', 'pueblo_bonito', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38048', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38048' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38048' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38048' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '38048' AND categoria = 'pueblo_bonito';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38048', 'pueblo_bonito', 15);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38048' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38048' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38048' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '38048' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38048', 'historia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌸 Pueblo bonito: Capital de El Hierro con arquitectura tradicional canaria y calles adoquinadas') WHERE codigo_ine = '38048' AND COALESCE(why_json, '[]') NOT LIKE '%Capital de El Hierro%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Capital de El Hierro con arquitectura tradicional canaria y calles adoquinadas') WHERE codigo_ine = '38048' AND COALESCE(why_json, '[]') NOT LIKE '%Capital de El Hierro%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38048', 'ciudad', 'Valverde', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38048', 'festival', 'Festival Insularia', 'articulo_web');

-- El Hierro (Santa Cruz de Tenerife) — Reserva de la Biosfera con paisajes volcánicos, buceo de clase mundial y autosuficiencia energética
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38004', 'mencion', 'naturaleza', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38004', 'mencion', 'agua', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38004', 'mencion', 'aventura', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38004' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38004' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38004' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '38004' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38004', 'naturaleza', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38004' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38004' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38004' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '38004' AND categoria = 'agua';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38004', 'agua', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38004' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38004' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38004' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '38004' AND categoria = 'aventura';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38004', 'aventura', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Reserva de la Biosfera con paisajes volcánicos, buceo de clase mundial y autosuficiencia energética') WHERE codigo_ine = '38004' AND COALESCE(why_json, '[]') NOT LIKE '%Reserva de la Biosfe%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '💧 Agua: Reserva de la Biosfera con paisajes volcánicos, buceo de clase mundial y autosuficiencia energética') WHERE codigo_ine = '38004' AND COALESCE(why_json, '[]') NOT LIKE '%Reserva de la Biosfe%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38004', 'reserva', 'Reserva de la Biosfera de El Hierro', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38004', 'infraestructura', 'Central hidroeólica Gorona del Viento', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38004', 'bosque', 'Sabinar de La Dehesa', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38004', 'árbol', 'Garoé - Árbol Santo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38004', 'monumento natural', 'Monumento Natural de Las Playas', 'articulo_web');

-- Resumen: 2/2 municipios encontrados
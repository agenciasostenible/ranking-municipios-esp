-- Enriquecimiento desde: https://viajar.elperiodico.com/escapate_cerca/primer-pueblo-espana-conjunto-historico-artistico-130985796
-- Artículo: El primer pueblo de España declarado Conjunto Histórico-Artístico: La Alberca
-- Generado: 2026-06-07T12:22:16.512494
-- Municipios: 4

-- La Alberca (Salamanca) — Primer pueblo español declarado Conjunto Histórico-Artístico en 1940
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37005', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37005' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37005' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37005' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '37005' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37005', 'historia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Primer pueblo español declarado Conjunto Histórico-Artístico en 1940') WHERE codigo_ine = '37005' AND COALESCE(why_json, '[]') NOT LIKE '%Primer pueblo españo%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Primer pueblo español declarado Conjunto Histórico-Artístico en 1940') WHERE codigo_ine = '37005' AND COALESCE(why_json, '[]') NOT LIKE '%Primer pueblo españo%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37005', 'declaracion', 'Conjunto Histórico-Artístico 1940', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37005', 'lugar', 'Plaza Mayor de La Alberca', 'articulo_web');

-- Miranda del Castañar (Salamanca) — Conserva murallas medievales; núcleo medieval bien preservado
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37008', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37008', 'mencion', 'castillos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37008' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37008' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37008' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '37008' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37008', 'historia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37008' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37008' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37008' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '37008' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37008', 'castillos', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Conserva murallas medievales; núcleo medieval bien preservado') WHERE codigo_ine = '37008' AND COALESCE(why_json, '[]') NOT LIKE '%Conserva murallas me%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Conserva murallas medievales; núcleo medieval bien preservado') WHERE codigo_ine = '37008' AND COALESCE(why_json, '[]') NOT LIKE '%Conserva murallas me%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37008', 'patrimonio', 'Murallas medievales', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37008', 'comarca', 'Sierra de Francia', 'articulo_web');

-- Mogarraz (Salamanca) — Pueblo medieval de la Sierra de Francia con tradición artística única
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37009', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37009' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37009' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37009' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '37009' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37009', 'historia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Pueblo medieval de la Sierra de Francia con tradición artística única') WHERE codigo_ine = '37009' AND COALESCE(why_json, '[]') NOT LIKE '%Pueblo medieval de l%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Pueblo medieval de la Sierra de Francia con tradición artística única') WHERE codigo_ine = '37009' AND COALESCE(why_json, '[]') NOT LIKE '%Pueblo medieval de l%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37009', 'tradicion', 'Retratos en fachadas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37009', 'comarca', 'Sierra de Francia', 'articulo_web');

-- San Martín del Castañar (Salamanca) — Núcleo medieval mejor preservado de la Sierra de Francia
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37012', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '37012' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37012', 'historia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Núcleo medieval mejor preservado de la Sierra de Francia') WHERE codigo_ine = '37012' AND COALESCE(why_json, '[]') NOT LIKE '%Núcleo medieval mejo%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Núcleo medieval mejor preservado de la Sierra de Francia') WHERE codigo_ine = '37012' AND COALESCE(why_json, '[]') NOT LIKE '%Núcleo medieval mejo%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37012', 'comarca', 'Sierra de Francia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37012', 'patrimonio', 'Arquitectura medieval popular', 'articulo_web');

-- Resumen: 4/4 municipios encontrados
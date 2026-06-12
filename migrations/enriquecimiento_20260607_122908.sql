-- Enriquecimiento desde: https://viajar.elperiodico.com/planes/gastro/receta-veraniega-hecha-pimientos-tomates-130966040
-- Artículo: La receta veraniega hecha con pimientos y tomates que puedes probar en la zona más bonita de Cáceres
-- Generado: 2026-06-07T12:29:08.240728
-- Municipios: 7

-- Jarandilla de la Vera (Cáceres) — Parador en castillo de Carlos V; zorongollo y pimentón DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 28) WHERE codigo_ine = '15009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15009', 'gastronomia', 28);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Parador en castillo de Carlos V; zorongollo y pimentón DOP') WHERE codigo_ine = '15009' AND COALESCE(why_json, '[]') NOT LIKE '%Parador en castillo %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Parador en castillo de Carlos V; zorongollo y pimentón DOP') WHERE codigo_ine = '15009' AND COALESCE(why_json, '[]') NOT LIKE '%Parador en castillo %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15009', 'restaurante', 'Restaurante del Parador de Jarandilla', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15009', 'restaurante', 'La Casa de Comidas El Labrador', 'articulo_web');

-- Losar de la Vera (Cáceres) — Mesones con zorongollo y pimentón DOP de La Vera
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15011', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '15011' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15011', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Mesones con zorongollo y pimentón DOP de La Vera') WHERE codigo_ine = '15011' AND COALESCE(why_json, '[]') NOT LIKE '%Mesones con zorongol%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Mesones con zorongollo y pimentón DOP de La Vera') WHERE codigo_ine = '15011' AND COALESCE(why_json, '[]') NOT LIKE '%Mesones con zorongol%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15011', 'producto', 'Pimentón de La Vera DOP', 'articulo_web');

-- Cuacos de Yuste (Cáceres) — Cuna gastronómica junto al Monasterio de Yuste; pimentón DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15004', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15004' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15004' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15004' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 13) WHERE codigo_ine = '15004' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15004', 'gastronomia', 13);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Cuna gastronómica junto al Monasterio de Yuste; pimentón DOP') WHERE codigo_ine = '15004' AND COALESCE(why_json, '[]') NOT LIKE '%Cuna gastronómica ju%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Cuna gastronómica junto al Monasterio de Yuste; pimentón DOP') WHERE codigo_ine = '15004' AND COALESCE(why_json, '[]') NOT LIKE '%Cuna gastronómica ju%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15004', 'producto', 'Pimentón de La Vera DOP', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15004', 'lugar', 'Monasterio de Yuste', 'articulo_web');

-- Garganta la Olla (Cáceres) — Conjunto Histórico; cocina tradicional extremeña local
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10079', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10079' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10079' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10079' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 8) WHERE codigo_ine = '10079' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('10079', 'gastronomia', 8);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Conjunto Histórico; cocina tradicional extremeña local') WHERE codigo_ine = '10079' AND COALESCE(why_json, '[]') NOT LIKE '%Conjunto Histórico; %';

-- Villanueva de la Vera (Cáceres) — Conjunto Histórico-Artístico; gastronomía verata típica
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15019', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15019' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15019' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15019' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 8) WHERE codigo_ine = '15019' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15019', 'gastronomia', 8);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Conjunto Histórico-Artístico; gastronomía verata típica') WHERE codigo_ine = '15019' AND COALESCE(why_json, '[]') NOT LIKE '%Conjunto Histórico-A%';

-- Pasarón de la Vera (Cáceres) — Conjunto Histórico; entorno de cocina extremeña tradicional
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10138', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10138' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10138' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10138' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 7) WHERE codigo_ine = '10138' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('10138', 'gastronomia', 7);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Conjunto Histórico; entorno de cocina extremeña tradicional') WHERE codigo_ine = '10138' AND COALESCE(why_json, '[]') NOT LIKE '%Conjunto Histórico; %';

-- Guijo de Santa Bárbara (Cáceres) — Origen de la Garganta de Jaranda; entorno gastronómico La Vera
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10091', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10091' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10091' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10091' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 5) WHERE codigo_ine = '10091' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('10091', 'gastronomia', 5);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Origen de la Garganta de Jaranda; entorno gastronómico La Vera') WHERE codigo_ine = '10091' AND COALESCE(why_json, '[]') NOT LIKE '%Origen de la Gargant%';

-- Resumen: 7/7 municipios encontrados
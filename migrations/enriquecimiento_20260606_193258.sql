-- Enriquecimiento desde: https://www.guiarepsol.com/es/viajar/vamos-de-excursion/castillos-visitar-castilla-y-leon-castilla-la-mancha-madrid/
-- Artículo: 13 castillos en Castilla-La Mancha, Castilla y León y Madrid que visitar
-- Generado: 2026-06-06T19:32:58.459274
-- Municipios: 12

-- O Carballiño (Ourense) — Restaurante O Muiño das Lousas en guía de establecimientos
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('34007', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='34007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='34007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='34007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 5) WHERE codigo_ine = '34007' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('34007', 'gastronomia', 5);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Restaurante O Muiño das Lousas en guía de establecimientos') WHERE codigo_ine = '34007' AND COALESCE(why_json, '[]') NOT LIKE '%Restaurante O Muiño %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('34007', 'restaurante', 'O Muiño das Lousas', 'articulo_web');

-- Talavera de la Reina (Toledo) — Restaurante Raíces con 1 Sol Guía Repsol
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('44010', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='44010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='44010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='44010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 5) WHERE codigo_ine = '44010' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('44010', 'gastronomia', 5);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Restaurante Raíces con 1 Sol Guía Repsol') WHERE codigo_ine = '44010' AND COALESCE(why_json, '[]') NOT LIKE '%Restaurante Raíces c%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('44010', 'restaurante', 'Raíces Restaurante', 'articulo_web');

-- Villarrobledo (Albacete) — Festival Viña Rock, evento cultural importante
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('02027', 'mencion', 'fiestas', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='02027' AND tipo='mencion' AND nombre='fiestas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='02027' AND tipo='mencion' AND nombre='fiestas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='02027' AND tipo='mencion' AND nombre='fiestas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 8) WHERE codigo_ine = '02027' AND categoria = 'fiestas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('02027', 'fiestas', 8);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🎉 Fiestas: Festival Viña Rock, evento cultural importante') WHERE codigo_ine = '02027' AND COALESCE(why_json, '[]') NOT LIKE '%Festival Viña Rock, %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('02027', 'festival', 'Festival Viña Rock', 'articulo_web');

-- Ibahernando (Cáceres) — Celebración de Romería de la Virgen de La Jara
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10102', 'mencion', 'fiestas', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10102' AND tipo='mencion' AND nombre='fiestas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10102' AND tipo='mencion' AND nombre='fiestas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='10102' AND tipo='mencion' AND nombre='fiestas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 8) WHERE codigo_ine = '10102' AND categoria = 'fiestas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('10102', 'fiestas', 8);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🎉 Fiestas: Celebración de Romería de la Virgen de La Jara') WHERE codigo_ine = '10102' AND COALESCE(why_json, '[]') NOT LIKE '%Celebración de Romer%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('10102', 'romería', 'Romería de la Virgen de La Jara', 'articulo_web');

-- Ponferrada (León) — Castillo de los Templarios, icono del Camino de Santiago
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'mencion', 'castillos', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '26012' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26012', 'castillos', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '26012' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26012', 'historia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Castillo de los Templarios, icono del Camino de Santiago') WHERE codigo_ine = '26012' AND COALESCE(why_json, '[]') NOT LIKE '%Castillo de los Temp%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Castillo de los Templarios, icono del Camino de Santiago') WHERE codigo_ine = '26012' AND COALESCE(why_json, '[]') NOT LIKE '%Castillo de los Temp%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'castillo', 'Castillo de Ponferrada', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26012', 'ruta', 'Camino de Santiago', 'articulo_web');

-- Medina del Campo (Valladolid) — Castillo de la Mota, fortaleza de ladrillo medieval
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('46004', 'mencion', 'castillos', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('46004', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46004' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46004' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46004' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '46004' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('46004', 'castillos', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46004' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46004' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='46004' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '46004' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('46004', 'historia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Castillo de la Mota, fortaleza de ladrillo medieval') WHERE codigo_ine = '46004' AND COALESCE(why_json, '[]') NOT LIKE '%Castillo de la Mota,%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Castillo de la Mota, fortaleza de ladrillo medieval') WHERE codigo_ine = '46004' AND COALESCE(why_json, '[]') NOT LIKE '%Castillo de la Mota,%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('46004', 'castillo', 'Castillo de la Mota', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('46004', 'plaza', 'Plaza Mayor', 'articulo_web');

-- Granada (Granada) — Eventos gastronómicos Soletes, ubicación turística principal
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 8) WHERE codigo_ine = '19009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19009', 'gastronomia', 8);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Eventos gastronómicos Soletes, ubicación turística principal') WHERE codigo_ine = '19009' AND COALESCE(why_json, '[]') NOT LIKE '%Eventos gastronómico%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19009', 'evento', 'Entrega de Soletes Navidad Granada', 'articulo_web');

-- Las Palmas de Gran Canaria (Las Palmas) — Ruta Soletes con establecimientos gastronómicos destacados
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('25007', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 8) WHERE codigo_ine = '25007' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('25007', 'gastronomia', 8);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Ruta Soletes con establecimientos gastronómicos destacados') WHERE codigo_ine = '25007' AND COALESCE(why_json, '[]') NOT LIKE '%Ruta Soletes con est%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('25007', 'ruta', 'De Vegueta a Las Canteras ruta Soletes', 'articulo_web');

-- Valencia (Valencia) — Barras de tapeo en las Fiestas de las Fallas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('45015', 'mencion', 'fiestas', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='45015' AND tipo='mencion' AND nombre='fiestas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='45015' AND tipo='mencion' AND nombre='fiestas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='45015' AND tipo='mencion' AND nombre='fiestas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 8) WHERE codigo_ine = '45015' AND categoria = 'fiestas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('45015', 'fiestas', 8);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🎉 Fiestas: Barras de tapeo en las Fiestas de las Fallas') WHERE codigo_ine = '45015' AND COALESCE(why_json, '[]') NOT LIKE '%Barras de tapeo en l%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('45015', 'fiesta', 'Fiestas de las Fallas de Valencia', 'articulo_web');

-- Resumen: 9/12 municipios encontrados
-- No encontrados: Arnuero (Cantabria), Cerdanyola del Vallès (Barcelona), Alcanar (Tarragona)
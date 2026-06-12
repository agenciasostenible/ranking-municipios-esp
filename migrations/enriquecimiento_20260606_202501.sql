-- Enriquecimiento desde: https://www.directoalpaladar.com/viajes/santiago-a-avila-estas-todas-catedrales-espanolas-patrimonio-humanidad
-- Artículo: Estas son las 15 catedrales españolas Patrimonio de la Humanidad
-- Generado: 2026-06-06T20:25:01.386099
-- Municipios: 16

-- Santiago de Compostela (A Coruña) — Ciudad vieja Patrimonio UNESCO con catedral y Camino de Santiago
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'mencion', 'senderismo', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '01020' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('01020', 'historia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '01020' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('01020', 'senderismo', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Ciudad vieja Patrimonio UNESCO con catedral y Camino de Santiago') WHERE codigo_ine = '01020' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad vieja Patrimo%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Ciudad vieja Patrimonio UNESCO con catedral y Camino de Santiago') WHERE codigo_ine = '01020' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad vieja Patrimo%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'catedral', 'Catedral de Santiago de Compostela', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'ruta', 'Camino de Santiago', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'zona_historica', 'Ciudad vieja de Santiago de Compostela', 'articulo_web');

-- Burgos (Burgos) — Catedral inscrita como Patrimonio UNESCO por sí misma desde 1984
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '09003' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09003', 'historia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Catedral inscrita como Patrimonio UNESCO por sí misma desde 1984') WHERE codigo_ine = '09003' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral inscrita co%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'catedral', 'Catedral de Burgos', 'articulo_web');

-- Córdoba (Córdoba) — Centro histórico Patrimonio UNESCO con catedral y patrimonio islámico
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17008', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17008' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17008' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17008' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '17008' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17008', 'historia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Centro histórico Patrimonio UNESCO con catedral y patrimonio islámico') WHERE codigo_ine = '17008' AND COALESCE(why_json, '[]') NOT LIKE '%Centro histórico Pat%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17008', 'zona_historica', 'Centro histórico de Córdoba', 'articulo_web');

-- Ávila (Ávila) — Ciudad vieja con murallas y catedral, Patrimonio UNESCO desde 1985
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'mencion', 'castillos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 23) WHERE codigo_ine = '51025' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('51025', 'historia', 23);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 23) WHERE codigo_ine = '51025' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('51025', 'castillos', 23);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Ciudad vieja con murallas y catedral, Patrimonio UNESCO desde 1985') WHERE codigo_ine = '51025' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad vieja con mur%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Ciudad vieja con murallas y catedral, Patrimonio UNESCO desde 1985') WHERE codigo_ine = '51025' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad vieja con mur%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'zona_historica', 'Ciudad vieja de Ávila e iglesias extramuros', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'muralla', 'Muralla de Ávila', 'articulo_web');

-- Segovia (Segovia) — Ciudad vieja con acueducto romano Patrimonio UNESCO, catedral gótica
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('39009', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('39009', 'mencion', 'castillos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='39009' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='39009' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='39009' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 23) WHERE codigo_ine = '39009' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('39009', 'historia', 23);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='39009' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='39009' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='39009' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 23) WHERE codigo_ine = '39009' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('39009', 'castillos', 23);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Ciudad vieja con acueducto romano Patrimonio UNESCO, catedral gótica') WHERE codigo_ine = '39009' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad vieja con acu%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Ciudad vieja con acueducto romano Patrimonio UNESCO, catedral gótica') WHERE codigo_ine = '39009' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad vieja con acu%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('39009', 'zona_historica', 'Ciudad vieja y acueducto de Segovia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('39009', 'monumento', 'Acueducto de Segovia', 'articulo_web');

-- Zaragoza (Zaragoza) — Arquitectura mudéjar de Aragón, catedrales con este estilo arquitectónico
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('49013', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49013' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49013' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49013' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '49013' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('49013', 'historia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Arquitectura mudéjar de Aragón, catedrales con este estilo arquitectónico') WHERE codigo_ine = '49013' AND COALESCE(why_json, '[]') NOT LIKE '%Arquitectura mudéjar%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('49013', 'patrimonio', 'Arquitectura mudéjar de Aragón', 'articulo_web');

-- Cáceres (Cáceres) — Ciudad vieja Patrimonio UNESCO desde 1986 con catedral
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '15005' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15005', 'historia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Ciudad vieja Patrimonio UNESCO desde 1986 con catedral') WHERE codigo_ine = '15005' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad vieja Patrimo%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'zona_historica', 'Ciudad vieja de Cáceres', 'articulo_web');

-- Toledo (Toledo) — Ciudad histórica Patrimonio UNESCO con catedral renacentista
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('44012', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='44012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='44012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='44012' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 23) WHERE codigo_ine = '44012' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('44012', 'historia', 23);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Ciudad histórica Patrimonio UNESCO con catedral renacentista') WHERE codigo_ine = '44012' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad histórica Pat%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('44012', 'zona_historica', 'Ciudad histórica de Toledo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('44012', 'catedral', 'Catedral de Toledo', 'articulo_web');

-- Sevilla (Sevilla) — Catedral, Alcázar y Archivo de Indias Patrimonio UNESCO desde 1987
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40018', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40018' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40018' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='40018' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 24) WHERE codigo_ine = '40018' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('40018', 'historia', 24);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Catedral, Alcázar y Archivo de Indias Patrimonio UNESCO desde 1987') WHERE codigo_ine = '40018' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral, Alcázar y %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40018', 'catedral', 'Catedral de Sevilla', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40018', 'palacio', 'Alcázar de Sevilla', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('40018', 'archivo', 'Archivo de Indias', 'articulo_web');

-- Salamanca (Salamanca) — Ciudad vieja Patrimonio UNESCO desde 1988 con catedral gótica
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37011', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37011' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37011' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='37011' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '37011' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('37011', 'historia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Ciudad vieja Patrimonio UNESCO desde 1988 con catedral gótica') WHERE codigo_ine = '37011' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad vieja Patrimo%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('37011', 'zona_historica', 'Ciudad vieja de Salamanca', 'articulo_web');

-- Cuenca (Cuenca) — Ciudad histórica fortificada Patrimonio UNESCO desde 1996
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14004', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14004' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14004' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14004' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 21) WHERE codigo_ine = '14004' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('14004', 'historia', 21);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Ciudad histórica fortificada Patrimonio UNESCO desde 1996') WHERE codigo_ine = '14004' AND COALESCE(why_json, '[]') NOT LIKE '%Ciudad histórica for%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14004', 'zona_historica', 'Ciudad histórica fortificada de Cuenca', 'articulo_web');

-- Alcalá de Henares (Madrid) — Universidad y recinto histórico Patrimonio UNESCO desde 1998
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29001', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29001' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29001' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29001' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 21) WHERE codigo_ine = '29001' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('29001', 'historia', 21);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Universidad y recinto histórico Patrimonio UNESCO desde 1998') WHERE codigo_ine = '29001' AND COALESCE(why_json, '[]') NOT LIKE '%Universidad y recint%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29001', 'zona_historica', 'Universidad y recinto histórico de Alcalá de Henares', 'articulo_web');

-- San Cristóbal de La Laguna (Santa Cruz de Tenerife) — Patrimonio UNESCO desde 1999 con catedral y arquitectura colonial
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38023', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38023' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38023' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38023' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '38023' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38023', 'historia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Patrimonio UNESCO desde 1999 con catedral y arquitectura colonial') WHERE codigo_ine = '38023' AND COALESCE(why_json, '[]') NOT LIKE '%Patrimonio UNESCO de%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38023', 'ciudad_historica', 'San Cristóbal de La Laguna', 'articulo_web');

-- Úbeda (Jaén) — Conjunto monumental renacentista Patrimonio UNESCO desde 2003
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24097', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24097' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24097' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24097' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 21) WHERE codigo_ine = '24097' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24097', 'historia', 21);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Conjunto monumental renacentista Patrimonio UNESCO desde 2003') WHERE codigo_ine = '24097' AND COALESCE(why_json, '[]') NOT LIKE '%Conjunto monumental %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24097', 'conjunto_monumental', 'Conjuntos monumentales renacentistas de Úbeda', 'articulo_web');

-- Baeza (Jaén) — Conjunto monumental renacentista Patrimonio UNESCO desde 2003
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24010', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24010' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24010' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24010' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 21) WHERE codigo_ine = '24010' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24010', 'historia', 21);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Conjunto monumental renacentista Patrimonio UNESCO desde 2003') WHERE codigo_ine = '24010' AND COALESCE(why_json, '[]') NOT LIKE '%Conjunto monumental %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24010', 'conjunto_monumental', 'Conjuntos monumentales renacentistas de Baeza', 'articulo_web');

-- Sigüenza (Guadalajara) — Pueblo con restaurantes de estrella Michelin a hora y media de Madrid
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20015', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20015', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20015' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20015' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20015' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '20015' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('20015', 'historia', 18);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '20015' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('20015', 'gastronomia', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Pueblo con restaurantes de estrella Michelin a hora y media de Madrid') WHERE codigo_ine = '20015' AND COALESCE(why_json, '[]') NOT LIKE '%Pueblo con restauran%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Pueblo con restaurantes de estrella Michelin a hora y media de Madrid') WHERE codigo_ine = '20015' AND COALESCE(why_json, '[]') NOT LIKE '%Pueblo con restauran%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20015', 'restaurante', 'Restaurantes de estrella Michelin en Sigüenza', 'articulo_web');

-- Resumen: 16/16 municipios encontrados
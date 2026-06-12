-- Enriquecimiento desde: https://viajar.elperiodico.com/planes/camino-santiago-picos-europa-ruta-senderismo-salvaje-garnata-volcanica-mar-129857563
-- Artículo: Ni el Camino de Santiago, ni los Picos de Europa: la ruta de senderismo más salvaje de España serpentea por gargantas volcánicas y deja el mar bajo tus pies a más de 300 metros
-- Generado: 2026-06-07T12:34:21.913069
-- Municipios: 2

-- Buenavista del Norte (Tenerife) — Municipio que contiene a Masca y acceso a rutas volcánicas espectaculares
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38003', 'mencion', 'senderismo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38003', 'mencion', 'naturaleza', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38003', 'mencion', 'playas', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38003' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38003' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38003' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '38003' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38003', 'senderismo', 20);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38003' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38003' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38003' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '38003' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38003', 'naturaleza', 20);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38003' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38003' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38003' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '38003' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38003', 'playas', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Municipio que contiene a Masca y acceso a rutas volcánicas espectaculares') WHERE codigo_ine = '38003' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio que contie%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Municipio que contiene a Masca y acceso a rutas volcánicas espectaculares') WHERE codigo_ine = '38003' AND COALESCE(why_json, '[]') NOT LIKE '%Municipio que contie%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38003', 'parque', 'Parque Rural de Teno', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38003', 'macizo volcánico', 'Macizo volcánico de Teno', 'articulo_web');

-- Resumen: 1/2 municipios encontrados
-- No encontrados: Masca (Tenerife)
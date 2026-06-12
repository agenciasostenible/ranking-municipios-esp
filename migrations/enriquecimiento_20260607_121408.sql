-- Enriquecimiento desde: https://capturetheatlas.com/es/senderismo-rutas-espana/
-- Artículo: 15 Mejores Rutas de Senderismo en España + Mapa
-- Generado: 2026-06-07T12:14:08.850975
-- Municipios: 11

-- Cangas de Onís (Asturias) — Punto de salida para tours en jeep que acceden a la Ruta del Cares
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('05005', 'mencion', 'senderismo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('05005', 'mencion', 'aventura', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='05005' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='05005' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='05005' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '05005' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('05005', 'senderismo', 15);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='05005' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='05005' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='05005' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '05005' AND categoria = 'aventura';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('05005', 'aventura', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Punto de salida para tours en jeep que acceden a la Ruta del Cares') WHERE codigo_ine = '05005' AND COALESCE(why_json, '[]') NOT LIKE '%Punto de salida para%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🧗 Aventura: Punto de salida para tours en jeep que acceden a la Ruta del Cares') WHERE codigo_ine = '05005' AND COALESCE(why_json, '[]') NOT LIKE '%Punto de salida para%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('05005', 'actividad', 'Tour en jeep a Caín de Valdeón', 'articulo_web');

-- Ardales (Málaga) — Ubicación de cueva paleolítica en el Caminito del Rey
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32004', 'mencion', 'senderismo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32004', 'mencion', 'aventura', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32004' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32004' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32004' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '32004' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('32004', 'senderismo', 18);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32004' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32004' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32004' AND tipo='mencion' AND nombre='aventura' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '32004' AND categoria = 'aventura';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('32004', 'aventura', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Ubicación de cueva paleolítica en el Caminito del Rey') WHERE codigo_ine = '32004' AND COALESCE(why_json, '[]') NOT LIKE '%Ubicación de cueva p%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Ubicación de cueva paleolítica en el Caminito del Rey') WHERE codigo_ine = '32004' AND COALESCE(why_json, '[]') NOT LIKE '%Ubicación de cueva p%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32004', 'cueva', 'Cueva paleolítica de Ardales', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32004', 'sendero', 'Caminito del Rey', 'articulo_web');

-- Resumen: 2/11 municipios encontrados
-- No encontrados: Poncebos (Asturias), Caín (León), Menorca (Islas Baleares), Desfiladero de los Gaitanes (Málaga), La Masieta (Lleida), Montfalcó (Huesca), Santiago de Compostela (Galicia), Masca (Tenerife), Los Gigantes (Tenerife)
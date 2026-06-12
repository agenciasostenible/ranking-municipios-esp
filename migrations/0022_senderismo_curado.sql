-- Scores senderismo curados desde Excel (Jaén + Granada)
-- Fuente: ranking_senderismo_jaen.xlsx / ranking_senderismo_granada.xlsx
-- Generado: 2026-06-08

UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='24028' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24028' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24028', 'sendero', 'Sendero del Río Cerezuelo (Ruta del Agua)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24028', 'sendero', 'Cerrada del Utrero', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24028', 'sendero', 'La Mancha-Cazorla', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine='23047' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23047' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23047', 'sendero', 'Cerrada del Utrero', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23047', 'sendero', 'Empalme del Valle', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23047', 'sendero', 'Fuente del Oso-Puente de las Herrerías', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='24077' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24077' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24077', 'sendero', 'Nacimiento del río Segura', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24077', 'sendero', 'Nacimiento del Guadalquivir', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24077', 'sendero', 'Cañada de las Fuentes', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='24080' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24080' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24080', 'sendero', 'El Yelmo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24080', 'sendero', 'Sendero del Castillo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24080', 'sendero', 'Río Madera', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine='24042' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24042' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24042', 'sendero', 'Hornos-Los Parrales (embalse del Tranco)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24042', 'sendero', 'Cabeza de la Viña', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='24073' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24073' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24073', 'sendero', 'Cueva del Agua de Tíscar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24073', 'sendero', 'Cerrada de Tíscar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24073', 'sendero', 'Hoya del Pino', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=83 WHERE codigo_ine='24001' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24001' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24001', 'sendero', 'Castillo de Albánchez', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24001', 'sendero', 'ascensión al Aznaitín', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=83 WHERE codigo_ine='24076' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24076' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24076', 'sendero', 'Los Órganos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24076', 'sendero', 'Collado de los Jardines (santuario íbero)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24076', 'sendero', 'Salto del Fraile', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='24071' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24071' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24071', 'sendero', 'Embalse de la Bolera', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24071', 'sendero', 'Cañada de las Sabinas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24071', 'sendero', 'río Guadalentín', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='24020' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24020' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24020', 'sendero', 'Mata Bejid', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24020', 'sendero', 'ascensión al Pico Mágina', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24020', 'sendero', 'Cañada de las Hazadillas', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=81 WHERE codigo_ine='24014' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24014' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24014', 'sendero', 'Sendero del río Cuadros', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24014', 'sendero', 'Castillo Viejo (Al-Manzur)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24014', 'sendero', 'Cueva de la Graja', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=79 WHERE codigo_ine='24086' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24086' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24086', 'sendero', 'Ascensión al Pico Mágina (vía clásica)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24086', 'sendero', 'Fuente del Espino', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=79 WHERE codigo_ine='24043' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24043' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24043', 'sendero', 'Acceso sur al Pico Mágina', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24043', 'sendero', 'entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=77 WHERE codigo_ine='24050' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24050' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24050', 'sendero', 'Sendero a Mágina desde Jimena', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24050', 'sendero', 'Fuente de la Reja', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='24081' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24081' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24081', 'sendero', 'Las Acebeas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24081', 'sendero', 'Navalperal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24081', 'sendero', 'bosque de Siles', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='24067' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24067' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24067', 'sendero', 'Valdemarín', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24067', 'sendero', 'Peña del Olivar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='24004' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24004' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24004', 'sendero', 'Cascada de la Cimbarra', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24004', 'sendero', 'pinturas rupestres', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=73 WHERE codigo_ine='24005' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24005' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24005', 'sendero', 'Sendero del Jabalí (Selladores-Contadero)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24005', 'sendero', 'Santuario Virgen de la Cabeza', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24005', 'sendero', 'Lugar Nuevo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='24093' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24093' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24093', 'sendero', 'Charco del Aceite', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24093', 'sendero', 'Aguascebas', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='24090' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24090' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24090', 'sendero', 'Mojón Blanco', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24090', 'sendero', 'Mirador del Chorro', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=69 WHERE codigo_ine='24018' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24018' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24018', 'sendero', 'Tózar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24018', 'sendero', 'entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='24033' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24033' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24033', 'sendero', 'Entorno Cárchel-Carchelejo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='23093' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23093' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23093', 'sendero', 'Las Chorreras', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23093', 'sendero', 'Nacimiento del río San Juan', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23093', 'sendero', 'Castellón', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='24049' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24049' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24049', 'sendero', 'Sierra de Jabalcuz (Vereda de los Pinchos)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24049', 'sendero', 'Castillo de Santa Catalina-Cerro del Tambor', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='24016' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24016' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24016', 'sendero', 'Sendero de Benatae', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24016', 'sendero', 'entorno río Onsares', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='24069' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24069' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24069', 'sendero', 'La Charca', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24069', 'sendero', 'entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='24013' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24013' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24013', 'sendero', 'Entorno río Beas', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24079' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24079' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24079', 'sendero', 'Entrada del río Guadalquivir', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24079', 'sendero', 'entorno fluvial', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24031' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24031' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24031', 'sendero', 'Acceso a Aguascebas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24031', 'sendero', 'entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='23042' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23042' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23042', 'sendero', 'Badlands del Guadiana Menor', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23042', 'sendero', 'entorno', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='23099' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23099' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23099', 'sendero', 'Fuente de la Peña', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23099', 'sendero', 'Jabalcuz', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='24087' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24087' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24087', 'sendero', 'Torreón', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24087', 'sendero', 'entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='24040' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24040' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=59 WHERE codigo_ine='24044' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24044' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24044', 'sendero', 'Cañón del Guadiana Menor', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24044', 'sendero', 'entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=59 WHERE codigo_ine='24012' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24012' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24012', 'sendero', 'Castillo de Burgalimar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24012', 'sendero', 'embalse del Rumblar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='24068' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24068' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24068', 'sendero', 'Cámara sepulcral de Toya', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24068', 'sendero', 'acceso a Cazorla', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='24002' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24002' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24002', 'sendero', 'Fortaleza de la Mota', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24002', 'sendero', 'Sierra de la Caracolera', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='24051' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24051' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24051', 'sendero', 'Sierra de Jódar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24051', 'sendero', 'entorno', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='24060' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24060' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24060', 'sendero', 'Entorno Mágina', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='24019' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24019' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24019', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='24061' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24061' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24061', 'sendero', 'Balneario', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24061', 'sendero', 'ribera del Guadalquivir', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='24096' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24096' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='23024' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23024' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23024', 'sendero', 'Entorno minero', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23024', 'sendero', 'acceso Despeñaperros', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='24054' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24054' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='24072' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24072' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='24026' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24026' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24026', 'sendero', 'Nacimiento del río San Juan', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24026', 'sendero', 'entorno', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='24053' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24053' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24053', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='24089' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24089' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24089', 'sendero', 'Castillo de Giribaile', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24089', 'sendero', 'embalse', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='24036' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24036' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24036', 'sendero', 'Aguas de Frailes', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24036', 'sendero', 'entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='24047' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24047' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24047', 'sendero', 'Mirador de Las Villas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24047', 'sendero', 'casco histórico', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='24021' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24021' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24021', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='24066' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24066' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24066', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='24030' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24030' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24030', 'sendero', 'Castillo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24030', 'sendero', 'entorno', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='24056' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24056' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='24064' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24064' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='24062' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24062' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24062', 'sendero', 'La Peña de Martos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24062', 'sendero', 'Sierra de la Grana', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='24009' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24009' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='24092' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24092' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='24003' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24003' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24003', 'sendero', 'Sierra Ahíllos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24003', 'sendero', 'castillo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='24097' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24097' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24097', 'sendero', 'Casco histórico (paseo urbano)', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='24078' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24078' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='24010' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24010' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24010', 'sendero', 'Casco histórico (paseo urbano)', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='24065' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24065' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='24025' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24025' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24025', 'sendero', 'Cueva de la Lobera (santuario íbero)', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=39 WHERE codigo_ine='24082' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24082' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='23086' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23086' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23086', 'sendero', 'Entorno', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='24057' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24057' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24057', 'sendero', 'Cástulo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24057', 'sendero', 'entorno', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='24037' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24037' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24037', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='24075' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24075' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24075', 'sendero', 'Casco histórico amurallado', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='24084' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24084' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='23032' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23032' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('23032', 'sendero', 'Entorno fluvial', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='24023' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24023' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='24008' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24008' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='24011' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24011' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='24063' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24063' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24063', 'sendero', 'Ribera del Guadalquivir', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='24085' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24085' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='24006' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24006' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24006', 'sendero', 'Conjunto arqueológico', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='24070' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24070' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24070', 'sendero', 'Casco histórico', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='24022' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24022' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24022', 'sendero', 'Castillo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24022', 'sendero', 'entorno', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24039' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24039' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24015' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24015' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24074' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24074' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24045' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24045' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24059' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24059' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24083' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24083' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23903' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23903' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23049' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23049' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24027' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24027' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24094' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24094' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24038' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24038' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23077' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23077' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24034' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24034' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24055' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24055' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24007' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24007' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24058' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24058' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='23041' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='23041' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24048' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24048' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=99 WHERE codigo_ine='19016' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19016' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19016', 'sendero', 'Los Cahorros (río Monachil)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19016', 'sendero', 'Vereda de las Estrellas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19016', 'sendero', 'Acequias de Monachil', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine='19006' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19006' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19006', 'sendero', 'Ruta del Poqueira', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19006', 'sendero', 'GR-7 sur', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19006', 'sendero', 'Vereda de los Tajos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19006', 'sendero', 'Acequias de Pitres', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine='18094' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18094' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18094', 'sendero', 'Vereda de la Estrella (mítica)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18094', 'sendero', 'Laguna de las Yeguas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18094', 'sendero', 'Río Genil remontado', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='19026' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19026' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19026', 'sendero', 'Ascensión al Mulhacén (2 rutas)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19026', 'sendero', 'GR-7', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19026', 'sendero', 'Sendero del Río Trevélez', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19026', 'sendero', 'Collado del Ciervo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='19007' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19007' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19007', 'sendero', 'Río Castril (Cañón)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19007', 'sendero', 'La Fresneda', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19007', 'sendero', 'La Graja', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19007', 'sendero', 'Nacimiento del Castril', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='19004' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19004' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19004', 'sendero', 'Barranco del Poqueira', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19004', 'sendero', 'Ruta de los Tres Pueblos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19004', 'sendero', 'Acequia del Pilar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='18151' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18151' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18151', 'sendero', 'Barranco del Poqueira', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18151', 'sendero', 'PR-A 139', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18151', 'sendero', 'Fuente Agria', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18151', 'sendero', 'Ruta de los Tres Pueblos', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='18068' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18068' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18068', 'sendero', 'Vereda de la Estrella (sur)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18068', 'sendero', 'Río Dílar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18068', 'sendero', 'Laguna Larga', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18068', 'sendero', 'Acequias de Dílar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=83 WHERE codigo_ine='18164' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18164' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18164', 'sendero', 'Ascensión a La Sagra (2.382 m)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18164', 'sendero', 'Fuente del Pino', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18164', 'sendero', 'Cortijo del Tejo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18164', 'sendero', 'Cañada de las Fuentes', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='19005' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19005' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19005', 'sendero', 'GR-7 tramo Alpujarras alta', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19005', 'sendero', 'Río Bermejo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19005', 'sendero', 'Acequia de Bérchules', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19005', 'sendero', 'Ruta del Cajón', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=81 WHERE codigo_ine='19003' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19003' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19003', 'sendero', 'Calar Alto', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19003', 'sendero', 'Senda del Pinar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19003', 'sendero', 'Fuente Fría', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19003', 'sendero', 'Sierra de Baza (crestas)', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='19013' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19013' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19013', 'sendero', 'Acequia Alta de Lanjarón', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19013', 'sendero', 'Sendero del Río Lanjarón', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19013', 'sendero', 'Loma del Calvario', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=79 WHERE codigo_ine='18903' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18903' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18903', 'sendero', 'Sierra Nevada norte (Calar de Santa Bárbara)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18903', 'sendero', 'Río Alhama', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18903', 'sendero', 'Acequia Real del Marquesado', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='18108' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18108' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18108', 'sendero', 'Laguna de Río Seco', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18108', 'sendero', 'Acceso al Alcazaba', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18108', 'sendero', 'Sierra Nevada norte', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18108', 'sendero', 'Cañada de las Siete Lagunas', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=77 WHERE codigo_ine='18039' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18039' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18039', 'sendero', 'Senda del Agua', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18039', 'sendero', 'Cantera de los Flamencos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18039', 'sendero', 'Entorno PN Baza', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='18147' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18147' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18147', 'sendero', 'Río Guadalfeo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18147', 'sendero', 'Sendero de la Contraviesa', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18147', 'sendero', 'Entorno olivar-almendral', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='18099' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18099' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18099', 'sendero', 'Sendero del Río Aguas Blancas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18099', 'sendero', 'Ruta de la Acequia Gorda', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18099', 'sendero', 'Cerro del Manar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=73 WHERE codigo_ine='18071' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18071' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18071', 'sendero', 'Suspiro del Moro', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18071', 'sendero', 'Río Dúrcal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18071', 'sendero', 'Senda de los Castaños', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18071', 'sendero', 'Acequia de Cázulas', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='19001' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19001' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19001', 'sendero', 'Tajo de Alhama', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19001', 'sendero', 'Senda del Río Alhama', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19001', 'sendero', 'Fuente del Quílez', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19001', 'sendero', 'Sierra Tejeda borde', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='19008' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19008' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19008', 'sendero', 'Contraviesa', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19008', 'sendero', 'Barranco de Mecina', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19008', 'sendero', 'Ruta del vino Alpujarra', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='18183' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18183' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18183', 'sendero', 'GR-7 tramo Válor', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18183', 'sendero', 'Fuente del Espino', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18183', 'sendero', 'Sendero del Río Alcázar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='18117' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18117' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18117', 'sendero', 'Sierra Nevada norte', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18117', 'sendero', 'Acequia Real', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18117', 'sendero', 'Fuente del Herrero', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='18179' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18179' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18179', 'sendero', 'Contraviesa cumbres', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18179', 'sendero', 'Sendero del Río Ízbor', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18179', 'sendero', 'Ruta del almendro', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='18114' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18114' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18114', 'sendero', 'Sierra Nevada norte', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18114', 'sendero', 'Cerro Gordo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18114', 'sendero', 'Ruta del Castillo-Sierra', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18114', 'sendero', 'Laguna del Marquesado', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='18050' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18050' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18050', 'sendero', 'Pico del Manar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18050', 'sendero', 'Acequia de Cogollos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18050', 'sendero', 'Entorno PN Huétor', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='18069' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18069' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18069', 'sendero', 'Sierra Nevada norte', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18069', 'sendero', 'Río de Dólar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18069', 'sendero', 'Ascensión al Calar de Santa Bárbara', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='18901' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18901' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18901', 'sendero', 'Ferreirola-Fondales', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18901', 'sendero', 'Acequia de los Castaños', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18901', 'sendero', 'GR-7', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18901', 'sendero', 'Ruta de Pitres a Capileira', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='19014' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19014' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19014', 'sendero', 'Fuente de la Higuera', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19014', 'sendero', 'Sierra de Loja', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19014', 'sendero', 'Río Genil cañón', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19014', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='19012' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19012' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19012', 'sendero', 'Entorno comarcal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19012', 'sendero', 'Fuente del Rey', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19012', 'sendero', 'Ruta de los dólmenes', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='18074' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18074' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18074', 'sendero', 'Sierra Nevada norte', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18074', 'sendero', 'Ruta de los cortijos abandonados', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18074', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='18189' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18189' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18189', 'sendero', 'Ruta de la Acequia Gorda', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18189', 'sendero', 'Entorno PN Huétor', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18189', 'sendero', 'Parque García Lorca', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='19029' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19029' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19029', 'sendero', 'GR-7 tramo Yegen (Gerald Brenan)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19029', 'sendero', 'Sendero del Río Adra', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19029', 'sendero', 'Acequia', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='18123' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18123' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18123', 'sendero', 'Sierra Nevada norte', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18123', 'sendero', 'Laguna de las Yeguas acceso', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18123', 'sendero', 'Ruta del Río Lugros', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='18102' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18102' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18102', 'sendero', 'Cerro de Parapanda', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18102', 'sendero', 'Pantano de Cubillas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18102', 'sendero', 'Sendero del Castillo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=59 WHERE codigo_ine='18112' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18112' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18112', 'sendero', 'GR-7 tramo Juviles', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18112', 'sendero', 'Río Trevélez tramo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18112', 'sendero', 'Barranco del Lugar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='18033' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18033' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18033', 'sendero', 'Sendero del Barranco de Busquístar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18033', 'sendero', 'GR-7', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18033', 'sendero', 'Acequia de los Tilos', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='18040' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18040' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18040', 'sendero', 'Sendero del río Lanjarón alto', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18040', 'sendero', 'Acequia de Cáñar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18040', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='18097' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18097' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18097', 'sendero', 'Sierra Nevada norte', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18097', 'sendero', 'Barranco de Huéneja', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18097', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='19002' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19002' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19002', 'sendero', 'Río Verde', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19002', 'sendero', 'Río Seco', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19002', 'sendero', 'Senda Litoral', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19002', 'sendero', 'Cerro Gordo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='19017' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19017' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19017', 'sendero', 'Peñas de los Gitanos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19017', 'sendero', 'Ruta arqueológica', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19017', 'sendero', 'Laguna de las Mozas', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='18168' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18168' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18168', 'sendero', 'Embalse de Quéntar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18168', 'sendero', 'Acequia Gorda', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18168', 'sendero', 'Sendero del río Aguas Blancas', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='18159' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18159' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18159', 'sendero', 'Cueva de Píñar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18159', 'sendero', 'Entorno kárstico', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18159', 'sendero', 'Sendero del Olivar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='18086' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18086' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18086', 'sendero', 'Barrancos de Gorafe (dólmenes)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18086', 'sendero', 'Ruta geológica', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18086', 'sendero', 'Nacimiento del Río Gor', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='18119' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18119' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18119', 'sendero', 'Valle de Lecrín (panorámico)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18119', 'sendero', 'Ruta del olivo-naranjo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18119', 'sendero', 'Río Dúrcal tramo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='18049' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18049' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18049', 'sendero', 'Sierra Nevada acceso norte', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18049', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='18095' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18095' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18095', 'sendero', 'Sierra de Huétor acceso', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18095', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='18148' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18148' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18148', 'sendero', 'Barranco de Otívar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18148', 'sendero', 'Senda del Río Verde alto', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18148', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='18124' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18124' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18124', 'sendero', 'Sierra de Lújar cumbres', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18124', 'sendero', 'Entorno almendral-olivar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18124', 'sendero', 'Ruta panorámica', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='18093' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18093' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18093', 'sendero', 'Sendero litoral de Castell de Ferro', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18093', 'sendero', 'Contraviesa', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18093', 'sendero', 'Barranco del Cabrito', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='19027' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19027' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19027', 'sendero', 'Sendero del Río Adra alto', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19027', 'sendero', 'Entorno Alpujarras baja', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19027', 'sendero', 'Ruta de la sed', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='19009' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19009' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19009', 'sendero', 'Vereda de la Estrella (inicio)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19009', 'sendero', 'Sendero del Sacromonte', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19009', 'sendero', 'Ruta del Darro', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=47 WHERE codigo_ine='18043' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18043' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18043', 'sendero', 'Acceso Barranco del Poqueira bajo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18043', 'sendero', 'Entorno almendral', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=47 WHERE codigo_ine='18082' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18082' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18082', 'sendero', 'Cueva neolítica', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18082', 'sendero', 'Entorno comarcal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18082', 'sendero', 'Sendero de los dólmenes', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='19010' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19010' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19010', 'sendero', 'Barrancos de Guadix', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19010', 'sendero', 'Ruta geológica', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19010', 'sendero', 'Entorno troglodita', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='18194' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18194' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18194', 'sendero', 'Entorno PN Baza', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18194', 'sendero', 'Embalse del Negratin', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18194', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=43 WHERE codigo_ine='18181' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18181' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18181', 'sendero', 'Contraviesa entorno', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18181', 'sendero', 'Sendero del viñedo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=43 WHERE codigo_ine='18018' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18018' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18018', 'sendero', 'Entorno minero', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18018', 'sendero', 'Sierra Nevada acceso', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18162' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18162' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18162', 'sendero', 'Entorno litoral-serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18162', 'sendero', 'La Mamola', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18143' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18143' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18143', 'sendero', 'Acequia de Nigüelas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18143', 'sendero', 'Entorno Valle Lecrín', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18143', 'sendero', 'Ruta del castaño', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18150' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18150' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18150', 'sendero', 'Laguna del Padul (humedal)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18150', 'sendero', 'Ruta ornitológica', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18150', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='19020' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19020' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19020', 'sendero', 'Fuente Nueva (yacimiento paleolítico)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19020', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='19024' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19024' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19024', 'sendero', 'Ruta litoral', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19024', 'sendero', 'Peñón de Salobreña', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19024', 'sendero', 'Sendero del Peñón', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='24046' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='24046' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24046', 'sendero', 'Entorno montes', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('24046', 'sendero', 'Sendero del olivar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18027' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18027' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18027', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=41 WHERE codigo_ine='18107' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18107' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18107', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18107', 'sendero', 'Acceso Sierra Tejeda', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18107', 'sendero', 'Fuente', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=41 WHERE codigo_ine='18020' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18020' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18020', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18020', 'sendero', 'Sendero del río', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='18170' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18170' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18170', 'sendero', 'Contraviesa', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18170', 'sendero', 'Entorno Alpujarras baja', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='18184' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18184' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18184', 'sendero', 'Río Guadalfeo bajo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18184', 'sendero', 'Entorno Alpujarras baja', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='18141' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18141' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18141', 'sendero', 'Contraviesa', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18141', 'sendero', 'Sendero del viñedo-almendro', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='18120' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18120' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18120', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18120', 'sendero', 'Río Verde tramo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=39 WHERE codigo_ine='18177' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18177' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18177', 'sendero', 'Sendero de la Contraviesa', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18177', 'sendero', 'Entorno almendral-viñedo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='18029' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18029' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18029', 'sendero', 'Barrancos trogloditas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18029', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='18056' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18056' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18056', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18056', 'sendero', 'Laguna de Cúllar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='18167' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18167' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18167', 'sendero', 'Barrancos y cuevas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18167', 'sendero', 'Entorno troglodita', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='19018' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19018' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19018', 'sendero', 'Senda litoral', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19018', 'sendero', 'Punta de la Mona', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19018', 'sendero', 'Entorno costero', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='18085' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18085' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18085', 'sendero', 'Barrancos del Río Gor', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18085', 'sendero', 'Entorno kárstico', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='18053' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18053' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18053', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18053', 'sendero', 'Sendero del olivar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='18132' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18132' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18132', 'sendero', 'Castillo de Moclín', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18132', 'sendero', 'Sendero del Pilar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18132', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='18916' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18916' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18916', 'sendero', 'Senda litoral', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18916', 'sendero', 'Entorno costero', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='18088' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18088' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18088', 'sendero', 'Entorno montes orientales', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18088', 'sendero', 'Sendero del olivar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='18036' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18036' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18036', 'sendero', 'Borde Sierra Nevada', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18036', 'sendero', 'Acceso Monachil', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='18193' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18193' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18193', 'sendero', 'Acceso Sierra Nevada', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18193', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='18045' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18045' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18045', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='18034' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18034' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18034', 'sendero', 'Embalse de los Bermejales', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18034', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18136' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18136' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18136', 'sendero', 'Entorno montes', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18136', 'sendero', 'Sendero del castillo', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18063' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18063' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18063', 'sendero', 'Entorno montes orientales', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18187' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18187' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18187', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18187', 'sendero', 'olivar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18077' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18077' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18077', 'sendero', 'Entorno comarca Alhama', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18051' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18051' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18051', 'sendero', 'Pantano de Colomera', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18051', 'sendero', 'Entorno', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18913' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18913' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18913', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18913', 'sendero', 'Ruta del olivar', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='18037' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18037' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18037', 'sendero', 'Entorno PN Huétor borde', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='18054' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18054' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18054', 'sendero', 'Balneario de Graena', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18054', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='18133' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18133' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18133', 'sendero', 'Entorno campiña-montaña', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18065' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18065' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18065', 'sendero', 'Entorno montes orientales', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18178' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18178' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18178', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18152' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18152' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18152', 'sendero', 'Entorno montes orientales', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18038' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18038' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18038', 'sendero', 'Entorno montes orientales', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18149' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18149' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18149', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18149', 'sendero', 'Sierra Nevada borde', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18145' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18145' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18145', 'sendero', 'Entorno vega', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18111' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18111' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18111', 'sendero', 'Entorno PN Huétor acceso', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18101' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18101' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18101', 'sendero', 'Entorno vega', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18083' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18083' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18028' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18028' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18137' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18137' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18084' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18084' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18084', 'sendero', 'Acceso sierra', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18084', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18100' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18100' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18100', 'sendero', 'Ribera del Genil', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18100', 'sendero', 'Entorno campiña', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18025' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18025' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18025', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='18076' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18076' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='18067' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18067' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='18185' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18185' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='18022' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18022' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18022', 'sendero', 'Entorno vega', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='18905' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18905' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='18171' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18171' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18127' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18127' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18021' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18021' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18057' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18057' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18062' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18062' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18059' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18059' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18048' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18048' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18079' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18079' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18115' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18115' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='19025' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='19025' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18911' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18911' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18158' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18158' AND tipo='sendero' AND fuente='excel_curado';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('18158', 'sendero', 'Entorno vega', 'excel_curado', date('now'));

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18138' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18138' AND tipo='sendero' AND fuente='excel_curado';

UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18188' AND categoria='senderismo';
DELETE FROM entidades WHERE codigo_ine='18188' AND tipo='sendero' AND fuente='excel_curado';

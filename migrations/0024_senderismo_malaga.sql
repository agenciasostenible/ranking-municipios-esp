-- 0024: Senderismo Málaga curado (reset + scores Excel + boosts revista)
-- Generado: 2026-06-08

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN ('29021','29022','29023','29024','29025','29026','29027','29028','29029','29030','29031','29032','29033','29034','29035','29036','29037','29038','29039','29040','29041','29042','29043','29044','29045','29046','29047','29048','29049','29050','29051','29052','29053','29054','29055','29056','29057','29058','29059','29060','29061','29062','29063','29064','29065','29066','29067','29068','29069','29070','29071','29072','29073','29074','29075','29076','29077','29079','29080','29081','29082','29083','29084','29085','29086','29087','29088','29089','29090','29091','29092','29093','29094','29095','29096','29097','29098','29099','29100','29901','29902','29903','29904','32001','32002','32003','32004','32005','32006','32007','32008','32009','32010','32011','32012','32013','32014','32015','32016','32017','32018','32019','32020','32021','32022','32023','32024','32025');
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine IN ('29021','29022','29023','29024','29025','29026','29027','29028','29029','29030','29031','29032','29033','29034','29035','29036','29037','29038','29039','29040','29041','29042','29043','29044','29045','29046','29047','29048','29049','29050','29051','29052','29053','29054','29055','29056','29057','29058','29059','29060','29061','29062','29063','29064','29065','29066','29067','29068','29069','29070','29071','29072','29073','29074','29075','29076','29077','29079','29080','29081','29082','29083','29084','29085','29086','29087','29088','29089','29090','29091','29092','29093','29094','29095','29096','29097','29098','29099','29100','29901','29902','29903','29904','32001','32002','32003','32004','32005','32006','32007','32008','32009','32010','32011','32012','32013','32014','32015','32016','32017','32018','32019','32020','32021','32022','32023','32024','32025');

-- Alozaina: 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='32001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32001', 'sendero', 'Sierra de las Nieves acceso', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32001', 'sendero', 'Sendero del Río Fahala', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32001', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Antequera: 91 +5 (revista) = 96
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine='32002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32002', 'sendero', 'El Torcal (Senda Verde y Roja)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32002', 'sendero', 'Laguna de Fuente de Piedra', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32002', 'sendero', 'Sendero del Ammonites', 'excel_curado', date('now'));

-- Archidona: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='32003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32003', 'sendero', 'Sierra de Gracia', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32003', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32003', 'sendero', 'Ermita del Calvario', 'excel_curado', date('now'));

-- Ardales: 99 +5 (revista) = 100
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='32004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32004', 'sendero', 'Caminito del Rey', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32004', 'sendero', 'Desfiladero de los Gaitanes', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32004', 'sendero', 'Sendero del Río Turón', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32004', 'sendero', 'Embalse del Chorro', 'excel_curado', date('now'));

-- Atajate: 51
UPDATE puntuaciones SET puntuacion=51 WHERE codigo_ine='29021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29021', 'sendero', 'Sendero del Valle del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29021', 'sendero', 'Ruta de los pueblos blancos', 'excel_curado', date('now'));

-- Benadalid: 57
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='29022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29022', 'sendero', 'Sendero del Valle del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29022', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29022', 'sendero', 'Ruta de los pueblos blancos', 'excel_curado', date('now'));

-- Benahavís: 57
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='29023' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29023', 'sendero', 'Cañón del Río Guadalmina', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29023', 'sendero', 'Sendero del Río Guadalmina', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29023', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Benalauría: 57
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='29024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29024', 'sendero', 'Sendero del Valle del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29024', 'sendero', 'Ruta del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29024', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Benalmádena: 33
UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='29025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29025', 'sendero', 'Teleférico de Calamorro (senderismo urbano)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29025', 'sendero', 'Sendero del Arroyo Jaboneros', 'excel_curado', date('now'));

-- Benamargosa: 41
UPDATE puntuaciones SET puntuacion=41 WHERE codigo_ine='29026' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29026', 'sendero', 'Sendero del Río Benamargosa', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29026', 'sendero', 'Entorno Axarquía serrana', 'excel_curado', date('now'));

-- Benamocarra: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='29027' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29027', 'sendero', 'Entorno Axarquía', 'excel_curado', date('now'));

-- Benaoján: 71
UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='29028' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29028', 'sendero', 'Cueva de la Pileta (Arte Rupestre)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29028', 'sendero', 'Sendero de la Pileta', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29028', 'sendero', 'Río Guadiaro cañón', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29028', 'sendero', 'Vía Verde Serranía', 'excel_curado', date('now'));

-- Benarrabá: 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='29029' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29029', 'sendero', 'Monte Bermeja acceso', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29029', 'sendero', 'Sendero del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29029', 'sendero', 'Ruta del alcornocal', 'excel_curado', date('now'));

-- Borge: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='29030' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29030', 'sendero', 'Entorno almendral', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29030', 'sendero', 'Sendero Axarquía', 'excel_curado', date('now'));

-- Campillos: 39
UPDATE puntuaciones SET puntuacion=39 WHERE codigo_ine='29032' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29032', 'sendero', 'Lagunas de Campillos (aves)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29032', 'sendero', 'Ruta ornitológica', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29032', 'sendero', 'Laguna Dulce', 'excel_curado', date('now'));

-- Canillas de Aceituno: 83 +3 (revista) = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='32005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='29033' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29033', 'sendero', 'Ascensión a La Maroma (2.068 m, cima Málaga)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29033', 'sendero', 'Sendero de la Cabra Montés', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29033', 'sendero', 'PR-A 252', 'excel_curado', date('now'));

-- Canillas de Albaida: 67
UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='29034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29034', 'sendero', 'El Lucero (acceso sur)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29034', 'sendero', 'Sendero del Barranco del Imán', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29034', 'sendero', 'Ruta de los Castaños', 'excel_curado', date('now'));

-- Carratraca: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='29036' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29036', 'sendero', 'Sierra de Aguas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29036', 'sendero', 'Balneario', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29036', 'sendero', 'Sendero del Río Grande', 'excel_curado', date('now'));

-- Cartajima: 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='29037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29037', 'sendero', 'Monte Bermeja acceso', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29037', 'sendero', 'Sendero del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29037', 'sendero', 'Ruta de la sierra', 'excel_curado', date('now'));

-- Casabermeja: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='29039' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29039', 'sendero', 'Sendero del Arroyo Casabermeja', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29039', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

-- Casarabonela: 51
UPDATE puntuaciones SET puntuacion=51 WHERE codigo_ine='29040' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29040', 'sendero', 'Sierra de las Nieves acceso', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29040', 'sendero', 'Sendero del Río Fahala', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29040', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Casares: 73
UPDATE puntuaciones SET puntuacion=73 WHERE codigo_ine='29041' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=73 WHERE codigo_ine='32006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29041', 'sendero', 'Sierra Bermeja crestas', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29041', 'sendero', 'Sendero del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29041', 'sendero', 'Fuente del Esparto', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29041', 'sendero', 'Ruta del Alcornocal', 'excel_curado', date('now'));

-- Cañete la Real: 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='29035' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29035', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29035', 'sendero', 'Sendero del castillo', 'excel_curado', date('now'));

-- Colmenar: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='29043' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29043', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29043', 'sendero', 'Sendero de la Axarquía', 'excel_curado', date('now'));

-- Comares: 37
UPDATE puntuaciones SET puntuacion=37 WHERE codigo_ine='29044' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29044', 'sendero', 'Sendero del Río Benamargosa', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29044', 'sendero', 'Ruta del nido del águila', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29044', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Cortes de la Frontera: 73
UPDATE puntuaciones SET puntuacion=73 WHERE codigo_ine='29046' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29046', 'sendero', 'Sendero del Río Guadiaro', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29046', 'sendero', 'Alcornocales', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29046', 'sendero', 'Cañón del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29046', 'sendero', 'Ruta del Alcornoque milenario', 'excel_curado', date('now'));

-- Coín: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='29042' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29042', 'sendero', 'Sierra Alpujata', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29042', 'sendero', 'Río Grande', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29042', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

-- Cuevas Bajas: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='29047' AND categoria='senderismo';

-- Cuevas de San Marcos: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='29049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29049', 'sendero', 'Embalse de Iznájar (borde)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29049', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

-- Cuevas del Becerro: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='29048' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29048', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29048', 'sendero', 'Sendero del arroyo', 'excel_curado', date('now'));

-- Cómpeta: 84 +3 (revista) = 87
UPDATE puntuaciones SET puntuacion=87 WHERE codigo_ine='29045' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=87 WHERE codigo_ine='32007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29045', 'sendero', 'Ascensión al Lucero (2.028 m)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29045', 'sendero', 'GR-249 tramo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29045', 'sendero', 'Sendero del Río de la Miel', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29045', 'sendero', 'Barranco de los Cazadores', 'excel_curado', date('now'));

-- Cútar: 31
UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='29050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29050', 'sendero', 'Entorno Axarquía', 'excel_curado', date('now'));

-- El Burgo: 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='32008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='29031' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29031', 'sendero', 'Sendero del Río Turón', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29031', 'sendero', 'Ruta de los Quejigos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29031', 'sendero', 'GR-243', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29031', 'sendero', 'Pico Torrecilla acceso sur', 'excel_curado', date('now'));

-- Estepona: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='29051' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='32009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29051', 'sendero', 'Sierra Bermeja (borde)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29051', 'sendero', 'Sendero del Genal bajo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29051', 'sendero', 'Senda litoral', 'excel_curado', date('now'));

-- Faraján: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='29052' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29052', 'sendero', 'Sendero del Valle del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29052', 'sendero', 'Ruta de los pueblos blancos', 'excel_curado', date('now'));

-- Frigiliana: 82 +3 (revista) = 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='29053' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='32010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29053', 'sendero', 'Acebuchal (pueblo abandonado restaurado)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29053', 'sendero', 'Sendero del Río Higuerón', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29053', 'sendero', 'Ruta de los Bancales', 'excel_curado', date('now'));

-- Fuengirola: 21
UPDATE puntuaciones SET puntuacion=21 WHERE codigo_ine='29054' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=21 WHERE codigo_ine='32011' AND categoria='senderismo';

-- Fuente de Piedra: 41
UPDATE puntuaciones SET puntuacion=41 WHERE codigo_ine='29055' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29055', 'sendero', 'Laguna de Fuente de Piedra (flamencos)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29055', 'sendero', 'Ruta ornitológica', 'excel_curado', date('now'));

-- Gaucín: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='32012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='29056' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29056', 'sendero', 'Sendero del Río Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29056', 'sendero', 'Castillo del Águila', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29056', 'sendero', 'Ruta a Gibraltar (vistas)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29056', 'sendero', 'Alcornocal', 'excel_curado', date('now'));

-- Genalguacil: 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='29057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29057', 'sendero', 'Sendero del Valle del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29057', 'sendero', 'Monte Bermeja (cima)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29057', 'sendero', 'Ruta de los Cortijos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29057', 'sendero', 'Barranco de Palara', 'excel_curado', date('now'));

-- Guaro: 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='29058' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29058', 'sendero', 'Sierra de las Nieves borde', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29058', 'sendero', 'Sendero del Río Grande', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29058', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Humilladero: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='29059' AND categoria='senderismo';

-- Igualeja: 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='29060' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29060', 'sendero', 'Sendero del Río Genal alto', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29060', 'sendero', 'Pinsapar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29060', 'sendero', 'GR-243', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29060', 'sendero', 'Ruta del nacimiento del Genal', 'excel_curado', date('now'));

-- Istán: 63
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='32013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='29061' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29061', 'sendero', 'Embalse de La Concepción', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29061', 'sendero', 'Sierra de las Nieves borde', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29061', 'sendero', 'Sendero del Río Verde', 'excel_curado', date('now'));

-- Iznate: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='29062' AND categoria='senderismo';

-- Jimera de Líbar: 67
UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='29063' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29063', 'sendero', 'Sendero del Río Guadiaro', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29063', 'sendero', 'Vía Verde Serranía', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29063', 'sendero', 'Tren Ronda-Algeciras (paisaje)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29063', 'sendero', 'Cañón del Guadiaro', 'excel_curado', date('now'));

-- Jubrique: 75
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='29064' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29064', 'sendero', 'Monte Bermeja', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29064', 'sendero', 'Sendero del Valle del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29064', 'sendero', 'Ruta del Alcornocal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29064', 'sendero', 'GR-141 tramo', 'excel_curado', date('now'));

-- Júzcar: 47
UPDATE puntuaciones SET puntuacion=47 WHERE codigo_ine='29065' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29065', 'sendero', 'Sendero del Valle del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29065', 'sendero', 'Ruta Smurf (popular)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29065', 'sendero', 'Entorno castaños', 'excel_curado', date('now'));

-- Macharaviaya: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='29066' AND categoria='senderismo';

-- Manilva: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='29068' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29068', 'sendero', 'Sierra Crestellina', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29068', 'sendero', 'Senda litoral', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29068', 'sendero', 'Entorno costero', 'excel_curado', date('now'));

-- Marbella: 39
UPDATE puntuaciones SET puntuacion=39 WHERE codigo_ine='32014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=39 WHERE codigo_ine='29069' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29069', 'sendero', 'Sierra Blanca', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29069', 'sendero', 'Sendero del Río Verde', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29069', 'sendero', 'Senda litoral', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29069', 'sendero', 'La Concha (cima)', 'excel_curado', date('now'));

-- Mijas: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='29070' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='32015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29070', 'sendero', 'Sierra de Mijas (GR-249)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29070', 'sendero', 'Sendero del Morro Solar', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29070', 'sendero', 'Ruta del Agua', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29070', 'sendero', 'PR-A 183', 'excel_curado', date('now'));

-- Moclinejo: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='29071' AND categoria='senderismo';

-- Mollina: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='29072' AND categoria='senderismo';

-- Monda: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='29073' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29073', 'sendero', 'Sierra de las Nieves borde', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29073', 'sendero', 'Sendero del Río Grande', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29073', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Montejaque: 75 +3 (revista) = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='29074' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29074', 'sendero', 'Cueva del Gato', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29074', 'sendero', 'Sendero del Hundidero-Gato', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29074', 'sendero', 'Karst de Montejaque', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29074', 'sendero', 'Laguna de Montejaque', 'excel_curado', date('now'));

-- Málaga: 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='29067' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='32016' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29067', 'sendero', 'Montes de Málaga (sendero del río Guadalmedina)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29067', 'sendero', 'Sendero del Guadalhorce', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29067', 'sendero', 'Senda Litoral', 'excel_curado', date('now'));

-- Nerja: 88 +4 (revista) = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='29075' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='32017' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29075', 'sendero', 'Río Chillar (ruta del agua, mítica)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29075', 'sendero', 'Río Higuerón', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29075', 'sendero', 'Senda Litoral de Nerja', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29075', 'sendero', 'Sendero de Maro', 'excel_curado', date('now'));

-- Ojén: 63
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='29076' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='32018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29076', 'sendero', 'Sierra Blanca (ascensión)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29076', 'sendero', 'Sendero del Río Real', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29076', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Parauta: 77
UPDATE puntuaciones SET puntuacion=77 WHERE codigo_ine='29077' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29077', 'sendero', 'Pinsapar de Parauta', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29077', 'sendero', 'Sendero del Río Genal alto', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29077', 'sendero', 'Ruta de los Quejigos', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29077', 'sendero', 'GR-243', 'excel_curado', date('now'));

-- Periana: 47
UPDATE puntuaciones SET puntuacion=47 WHERE codigo_ine='29079' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29079', 'sendero', 'Sendero del Río de los Alazores', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29079', 'sendero', 'Sierra del Jobo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29079', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

-- Pizarra: 26
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='29080' AND categoria='senderismo';

-- Pujerra: 49
UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='29081' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29081', 'sendero', 'Sendero del Valle del Genal', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29081', 'sendero', 'Monte Bermeja acceso', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29081', 'sendero', 'Entorno castaños', 'excel_curado', date('now'));

-- Rincón de la Victoria: 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='29082' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29082', 'sendero', 'Cueva del Tesoro', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29082', 'sendero', 'Senda litoral', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29082', 'sendero', 'Entorno costero', 'excel_curado', date('now'));

-- Ronda: 78 +3 (revista) = 81
UPDATE puntuaciones SET puntuacion=81 WHERE codigo_ine='32019' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=81 WHERE codigo_ine='29084' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29084', 'sendero', 'El Tajo de Ronda', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29084', 'sendero', 'GR-141', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29084', 'sendero', 'Sendero de la Pileta', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29084', 'sendero', 'Puerto de Montejaque', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29084', 'sendero', 'Río Guadiaro', 'excel_curado', date('now'));

-- Salares: 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='29085' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29085', 'sendero', 'Sendero de Salares a Sedella', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29085', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29085', 'sendero', 'Arco nazarí', 'excel_curado', date('now'));

-- Sayalonga: 31
UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='32020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='29086' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29086', 'sendero', 'Entorno Axarquía', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29086', 'sendero', 'Sendero del almendral', 'excel_curado', date('now'));

-- Sedella: 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='29087' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29087', 'sendero', 'La Maroma (acceso norte)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29087', 'sendero', 'Sendero del Río Bermuza', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29087', 'sendero', 'PR-A 251', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29087', 'sendero', 'Cañón del Río Bermuza', 'excel_curado', date('now'));

-- Sierra de Yeguas: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='29088' AND categoria='senderismo';

-- Teba: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='29089' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29089', 'sendero', 'Castillo de la Estrella', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29089', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29089', 'sendero', 'Sendero del embalse', 'excel_curado', date('now'));

-- Tolox: 88 +3 (revista) = 91
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine='29090' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine='32021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29090', 'sendero', 'Pinsapar de Tolox', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29090', 'sendero', 'Fuente Amargosa', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29090', 'sendero', 'Sendero del Río Verde', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29090', 'sendero', 'Cañada del Cuerno', 'excel_curado', date('now'));

-- Torremolinos: 21
UPDATE puntuaciones SET puntuacion=21 WHERE codigo_ine='29901' AND categoria='senderismo';

-- Torrox: 37
UPDATE puntuaciones SET puntuacion=37 WHERE codigo_ine='29091' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=37 WHERE codigo_ine='32022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29091', 'sendero', 'Sendero litoral Torrox-Nerja', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29091', 'sendero', 'Entorno almendral', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29091', 'sendero', 'Sendero del Arroyo Torrox', 'excel_curado', date('now'));

-- Totalán: 29
UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='29092' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29092', 'sendero', 'Entorno Axarquía serrana', 'excel_curado', date('now'));

-- Valle de Abdalajís: 57
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='29093' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29093', 'sendero', 'Los Gaitanes borde', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29093', 'sendero', 'Zona de parapente', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29093', 'sendero', 'Sendero del Arroyo', 'excel_curado', date('now'));

-- Villanueva de Algaidas: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='29095' AND categoria='senderismo';

-- Villanueva de la Concepción: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='29902' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29902', 'sendero', 'El Torcal acceso sur', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29902', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Villanueva del Rosario: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='29096' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29096', 'sendero', 'Sierra del Jobo', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29096', 'sendero', 'Sendero del Arroyo del Rosario', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29096', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Villanueva del Trabuco: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='29097' AND categoria='senderismo';

-- Viñuela: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='29099' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29099', 'sendero', 'Embalse de la Viñuela', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29099', 'sendero', 'Sendero del Río Guaro', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29099', 'sendero', 'Entorno serrano', 'excel_curado', date('now'));

-- Vélez-Málaga: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='29094' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='32023' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29094', 'sendero', 'Embalse de la Viñuela', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29094', 'sendero', 'Sendero del Río Vélez', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29094', 'sendero', 'Entorno comarca', 'excel_curado', date('now'));

-- Yunquera: 90 +4 (revista) = 94
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='32024' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='29100' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29100', 'sendero', 'Pinsapar de Yunquera (Ruta de los Pinsapos)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29100', 'sendero', 'GR-243', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('29100', 'sendero', 'Sendero del Puerto de los Pilones', 'excel_curado', date('now'));

-- Álora: 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='32025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32025', 'sendero', 'Caminito del Rey (municipio principal)', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32025', 'sendero', 'Desfiladero de los Gaitanes', 'excel_curado', date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('32025', 'sendero', 'Sendero del Campanillas', 'excel_curado', date('now'));

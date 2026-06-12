-- 0042: Senderismo Valladolid curado — Ribera del Duero, campo cerealista
-- Generado: 2026-06-09

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '46001' AND '46010') OR
  (codigo_ine BETWEEN '47013' AND '47232')
);

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '46001' AND '46010') OR
  (codigo_ine BETWEEN '47013' AND '47232')
);

-- ============================================================
-- RIBERA DEL DUERO — lo mejor de Valladolid para senderismo
-- ============================================================

-- Peñafiel: castillo, Ribera del Duero = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='46007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46007','sendero','Castillo de Peñafiel','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46007','sendero','Ribera del Duero','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46007','sendero','Sendero del Duero','excel_curado',date('now'));

-- Pesquera de Duero: Ribera del Duero = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='46006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46006','sendero','Ribera del Duero — Pesquera','excel_curado',date('now'));

-- Sardón de Duero: Duero ribera = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='47157' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47157','sendero','Ribera del Duero','excel_curado',date('now'));

-- Valbuena de Duero: monasterio, Duero = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='47179' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47179','sendero','Monasterio de Santa María de Valbuena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47179','sendero','Ribera del Duero','excel_curado',date('now'));

-- Bocos de Duero: Duero = 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='47022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47022','sendero','Ribera del Duero','excel_curado',date('now'));

-- Curiel de Duero: castillo = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='47059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47059','sendero','Castillo de Curiel','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47059','sendero','Ribera del Duero','excel_curado',date('now'));

-- Olivares de Duero: Duero = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='47103' AND categoria='senderismo';

-- Canalejas de Peñafiel: Duero = 33
UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='47033' AND categoria='senderismo';

-- Fompedraza: Duero = 33
UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='47063' AND categoria='senderismo';

-- Torreadrada... not in Valladolid. Let me check Corrales de Duero:
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='47056' AND categoria='senderismo'; -- Corrales de Duero

-- Quintanilla de Arriba: Duero = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='47127' AND categoria='senderismo';

-- Quintanilla de Onésimo: Duero = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='47129' AND categoria='senderismo';

-- ============================================================
-- OTRAS ZONAS
-- ============================================================

-- Urueña: muralla medieval = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='47178' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47178','sendero','Villa amurallada de Urueña','excel_curado',date('now'));

-- Tordesillas: Duero = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='46009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46009','sendero','Ribera del Duero — Tordesillas','excel_curado',date('now'));

-- Simancas: castillo = 26
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='46008' AND categoria='senderismo';

-- Cigales: Duero = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='46001' AND categoria='senderismo';

-- Valladolid capital: ciudad = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='46010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46010','sendero','Río Pisuerga — Valladolid','excel_curado',date('now'));

-- Mota del Marqués: campo = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='47097' AND categoria='senderismo';

-- Olmedo: campo = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='46005' AND categoria='senderismo';

-- Medina del Campo: campo = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='46004' AND categoria='senderismo';

-- Medina de Rioseco: campo = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='46003' AND categoria='senderismo';

-- Laguna de Duero: periurbano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='46002' AND categoria='senderismo';

-- Montemayor de Pililla: pinar, algo = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='47093' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47093','sendero','Pinar de Montemayor','excel_curado',date('now'));

-- Íscar: pinar = 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='47075' AND categoria='senderismo';

-- Pedrajas de San Esteban: pinar = 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='47112' AND categoria='senderismo';

-- ============================================================
-- CAMPO / LLANO (bloque general)
-- ============================================================
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47018' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47019' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47021' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47023' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47024' AND categoria='senderismo'; -- Boecillo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47025' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47026' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47027' AND categoria='senderismo'; -- Cabezón de Pisuerga
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47028' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47029' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47030' AND categoria='senderismo'; -- Campaspero (campo)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47031' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47032' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47034' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47035' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47036' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47037' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47038' AND categoria='senderismo'; -- Castrillo de Duero
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47038','sendero','Ribera del Duero','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47039' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47040' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47041' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47042' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47043' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47044' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47045' AND categoria='senderismo'; -- Castronuño (Duero)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47046' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='47047' AND categoria='senderismo'; -- Castroverde de Cerrato
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47048' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47049' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47051' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47052' AND categoria='senderismo'; -- La Cistérniga
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47053' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47054' AND categoria='senderismo'; -- Cogeces del Monte
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47055' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47057' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47058' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47060' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47061' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47062' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47064' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47065' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47066' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47067' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47068' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47069' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47070' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47071' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47073' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47074' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47077' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47078' AND categoria='senderismo'; -- Llano de Olmedo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47079' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47080' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47081' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47082' AND categoria='senderismo'; -- Matapozuelos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47083' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47084' AND categoria='senderismo'; -- Mayorga
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47087' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47088' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47089' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47090' AND categoria='senderismo'; -- Mojados (pinar)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47091' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47092' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47094' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47095' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47096' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47098' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47099' AND categoria='senderismo'; -- La Mudarra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47100' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='47101' AND categoria='senderismo'; -- Nava del Rey
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47102' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47105' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47106' AND categoria='senderismo'; -- Olmos de Peñafiel (Duero)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47109' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47110' AND categoria='senderismo'; -- La Parrilla
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47111' AND categoria='senderismo'; -- La Pedraja de Portillo (pinar)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47113' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='47115' AND categoria='senderismo'; -- Peñaflor de Hornija (Duero)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47117' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47118' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47119' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47121' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47122' AND categoria='senderismo'; -- Portillo (castillo)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47123' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47124' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47125' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47126' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47128' AND categoria='senderismo'; -- Quintanilla del Molar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47130' AND categoria='senderismo'; -- Quintanilla de Trigueros (Duero)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47131' AND categoria='senderismo'; -- Rábano
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47132' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47133' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47134' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47135' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47137' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47138' AND categoria='senderismo'; -- Rubí de Bracamonte
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47139' AND categoria='senderismo'; -- Rueda
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47140' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47141' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47142' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47143' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47144' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47145' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47146' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47147' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47148' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47149' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47150' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47151' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47152' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47153' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47154' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47155' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47156' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47158' AND categoria='senderismo'; -- La Seca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47159' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47160' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47162' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47163' AND categoria='senderismo'; -- Tiedra (castillo)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47164' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47166' AND categoria='senderismo'; -- Torrecilla de la Abadesa (Duero)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47167' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47168' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47169' AND categoria='senderismo'; -- Torre de Esgueva
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47170' AND categoria='senderismo'; -- Torre de Peñafiel (Duero)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47171' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47172' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47173' AND categoria='senderismo'; -- Traspinedo (Duero)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47173','sendero','Ribera del Duero','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47174' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='47175' AND categoria='senderismo'; -- Tudela de Duero
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47175','sendero','Ribera del Duero','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47176' AND categoria='senderismo'; -- La Unión de Campos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47177' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47180' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47181' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47182' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47183' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47184' AND categoria='senderismo'; -- Valoria la Buena
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47185' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47187' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47188' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47189' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47190' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47191' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47192' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47193' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47195' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47196' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47197' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47198' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47199' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47200' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47203' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47204' AND categoria='senderismo'; -- Villafranca de Duero
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47205' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47206' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47207' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47208' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47209' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47210' AND categoria='senderismo'; -- Villalar de los Comuneros
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47211' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47212' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47213' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47214' AND categoria='senderismo'; -- Villalán de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47215' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47216' AND categoria='senderismo'; -- Villán de Tordesillas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47217' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47218' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47219' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47220' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47221' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47222' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47223' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47224' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47225' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47226' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47227' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='47228' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47229' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47230' AND categoria='senderismo'; -- Wamba (colegiata)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='47231' AND categoria='senderismo'; -- Zaratán
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47232' AND categoria='senderismo'; -- La Zarza
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='47194' AND categoria='senderismo'; -- Viloria

-- ============================================================
-- SYNC: MIN (46xxx) → MAX (47xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='46001' AND categoria='senderismo') WHERE codigo_ine='47050' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='46002' AND categoria='senderismo') WHERE codigo_ine='47076' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='46003' AND categoria='senderismo') WHERE codigo_ine='47086' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='46004' AND categoria='senderismo') WHERE codigo_ine='47085' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='46005' AND categoria='senderismo') WHERE codigo_ine='47104' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='46006' AND categoria='senderismo') WHERE codigo_ine='47116' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='46007' AND categoria='senderismo') WHERE codigo_ine='47114' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='46008' AND categoria='senderismo') WHERE codigo_ine='47161' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='46009' AND categoria='senderismo') WHERE codigo_ine='47165' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='46010' AND categoria='senderismo') WHERE codigo_ine='47186' AND categoria='senderismo';

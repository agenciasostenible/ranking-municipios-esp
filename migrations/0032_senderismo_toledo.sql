-- 0032: Senderismo Toledo curado (reset + scores + entidades en códigos canónicos 44xxx)
-- Generado: 2026-06-09
-- IMPORTANTE: entidades solo en código MIN (44xxx) de cada par duplicado

-- 1. Reset scores a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '44001','44002','44003','44004','44005','44006','44007','44008','44009','44010',
  '44011','44012','44013',
  '45018','45019','45020','45021','45022','45023','45024','45025','45026','45027',
  '45028','45029','45030','45031','45032','45033','45034','45035','45036','45037',
  '45038','45039','45040','45041','45042','45043','45045','45046','45047','45048',
  '45049','45050','45051','45052','45053','45054','45055','45056','45057','45058',
  '45059','45060','45061','45062','45063','45064','45065','45066','45067','45068',
  '45069','45070','45071','45072','45073','45074','45075','45076','45077','45078',
  '45079','45080','45081','45082','45083','45084','45085','45086','45087','45088',
  '45089','45090','45091','45092','45093','45094','45095','45096','45097','45098',
  '45099','45100','45101','45102','45103','45104','45105','45106','45107','45108',
  '45109','45110','45111','45112','45113','45114','45115','45116','45117','45118',
  '45119','45120','45121','45122','45123','45124','45125','45126','45127','45128',
  '45129','45130','45131','45132','45133','45134','45135','45136','45137','45138',
  '45139','45140','45141','45142','45143','45144','45145','45146','45147','45148',
  '45149','45150','45151','45152','45153','45154','45155','45156','45157','45158',
  '45159','45160','45161','45162','45163','45164','45165','45166','45167','45168',
  '45169','45170','45171','45172','45173','45174','45175','45176','45177','45179',
  '45180','45181','45182','45183','45184','45185','45186','45187','45188','45189',
  '45190','45191','45192','45193','45194','45195','45196','45197','45198','45199',
  '45200','45201','45202','45203','45204','45205','45901'
);

-- 2. Limpiar entidades curadas previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine IN (
  '44001','44002','44003','44004','44005','44006','44007','44008','44009','44010',
  '44011','44012','44013',
  '45018','45019','45020','45021','45022','45023','45024','45025','45026','45027',
  '45028','45029','45030','45031','45032','45033','45034','45035','45036','45037',
  '45038','45039','45040','45041','45042','45043','45045','45046','45047','45048',
  '45049','45050','45051','45052','45053','45054','45055','45056','45057','45058',
  '45059','45060','45061','45062','45063','45064','45065','45066','45067','45068',
  '45069','45070','45071','45072','45073','45074','45075','45076','45077','45078',
  '45079','45080','45081','45082','45083','45084','45085','45086','45087','45088',
  '45089','45090','45091','45092','45093','45094','45095','45096','45097','45098',
  '45099','45100','45101','45102','45103','45104','45105','45106','45107','45108',
  '45109','45110','45111','45112','45113','45114','45115','45116','45117','45118',
  '45119','45120','45121','45122','45123','45124','45125','45126','45127','45128',
  '45129','45130','45131','45132','45133','45134','45135','45136','45137','45138',
  '45139','45140','45141','45142','45143','45144','45145','45146','45147','45148',
  '45149','45150','45151','45152','45153','45154','45155','45156','45157','45158',
  '45159','45160','45161','45162','45163','45164','45165','45166','45167','45168',
  '45169','45170','45171','45172','45173','45174','45175','45176','45177','45179',
  '45180','45181','45182','45183','45184','45185','45186','45187','45188','45189',
  '45190','45191','45192','45193','45194','45195','45196','45197','45198','45199',
  '45200','45201','45202','45203','45204','45205','45901'
);

-- ============================================================
-- PARQUE NACIONAL CABAÑEROS — acceso toledano
-- ============================================================

-- Hontanar: PN Cabañeros, acceso principal zona Toledo, rutas PR = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='45075' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45075','sendero','Parque Nacional Cabañeros — Hontanar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45075','sendero','Ruta del Raña-Brezal','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45075','sendero','Sendero del Alcornocal','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45075','sendero','PR-TO 11','excel_curado',date('now'));

-- ============================================================
-- MONTES DE TOLEDO
-- ============================================================

-- Navahermosa: capital comarca Montes de Toledo, rutas = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='45109' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45109','sendero','Montes de Toledo — Navahermosa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45109','sendero','Sendero del Miradero','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45109','sendero','PR-TO 5','excel_curado',date('now'));

-- Los Navalucillos: Montes de Toledo, buenos senderos = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='45113' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45113','sendero','Montes de Toledo — Los Navalucillos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45113','sendero','Sendero del Chorrito','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45113','sendero','Río Pusa','excel_curado',date('now'));

-- San Pablo de los Montes: Montes de Toledo, nacimiento Río Torcón = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='45153' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45153','sendero','Nacimiento del Río Torcón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45153','sendero','Montes de Toledo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45153','sendero','Sendero del pinar','excel_curado',date('now'));

-- Las Ventas con Peña Aguilera: Montes de Toledo = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='45182' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45182','sendero','Montes de Toledo — Ventas con Peña Aguilera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45182','sendero','Sendero del Miradero','excel_curado',date('now'));

-- Los Navalmorales: Montes de Toledo = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='45112' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45112','sendero','Montes de Toledo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45112','sendero','Sendero del encinar','excel_curado',date('now'));

-- Menasalbas: Montes de Toledo = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='45098' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45098','sendero','Montes de Toledo','excel_curado',date('now'));

-- San Martín de Montalbán: Montes de Toledo = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='45151' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45151','sendero','Montes de Toledo — San Martín','excel_curado',date('now'));

-- San Martín de Pusa: Montes de Toledo = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='45152' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45152','sendero','Montes de Toledo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45152','sendero','Río Pusa','excel_curado',date('now'));

-- Cuerva: Montes de Toledo = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='45055' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45055','sendero','Montes de Toledo','excel_curado',date('now'));

-- Espinoso del Rey: Montes de Toledo = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='45063' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45063','sendero','Montes de Toledo — Espinoso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45063','sendero','Sendero del encinar','excel_curado',date('now'));

-- La Nava de Ricomalillo: Montes de Toledo = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='45108' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45108','sendero','Montes de Toledo','excel_curado',date('now'));

-- La Estrella: Montes de Toledo = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='45065' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45065','sendero','Montes de Toledo — La Estrella','excel_curado',date('now'));

-- Gálvez: Montes de Toledo periférico = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45067' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45067','sendero','Montes de Toledo','excel_curado',date('now'));

-- Marjaliza: Montes de Toledo = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='45092' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45092','sendero','Montes de Toledo','excel_curado',date('now'));

-- San Bartolomé de las Abiertas: Montes de Toledo = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45150' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45150','sendero','Montes de Toledo','excel_curado',date('now'));

-- Totanés: Montes de Toledo = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='45174' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45174','sendero','Montes de Toledo','excel_curado',date('now'));

-- Mazarambroz: Montes de Toledo = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='45096' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45096','sendero','Montes de Toledo sur','excel_curado',date('now'));

-- Sonseca: Montes de Toledo = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='45163' AND categoria='senderismo';

-- Pulgar: Montes de Toledo = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='45140' AND categoria='senderismo';

-- Noez: Montes de Toledo = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='45116' AND categoria='senderismo';

-- ============================================================
-- SIERRA DE SAN VICENTE / SIERRA DE GREDOS (vertiente sur)
-- ============================================================

-- La Iglesuela del Tiétar: Sierra de Gredos vertiente sur, rutas = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='45079' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45079','sendero','Sierra de Gredos — vertiente sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45079','sendero','Sendero del Tiétar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45079','sendero','Ruta del castañar','excel_curado',date('now'));

-- Navamorcuende: Sierra de San Vicente, rutas marcadas = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='45114' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45114','sendero','Sierra de San Vicente — Navamorcuende','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45114','sendero','Sendero del Castillo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45114','sendero','PR-TO 22','excel_curado',date('now'));

-- Cardiel de los Montes: Sierra de San Vicente = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='45035' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45035','sendero','Sierra de San Vicente','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45035','sendero','Sendero del encinar','excel_curado',date('now'));

-- El Real de San Vicente: Sierra de San Vicente = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='45144' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45144','sendero','Sierra de San Vicente','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45144','sendero','Ruta del Tiétar','excel_curado',date('now'));

-- Castillo de Bayuela: Sierra de San Vicente = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='45043' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45043','sendero','Sierra de San Vicente — Castillo de Bayuela','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45043','sendero','Sendero del castillo','excel_curado',date('now'));

-- Buenaventura: Sierra de San Vicente = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='45022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45022','sendero','Sierra de San Vicente','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45022','sendero','Ruta de los Castaños','excel_curado',date('now'));

-- Hinojosa de San Vicente: Sierra de San Vicente = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='45074' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45074','sendero','Sierra de San Vicente','excel_curado',date('now'));

-- Cervera de los Montes: Sierra de San Vicente = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='45049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45049','sendero','Sierra de San Vicente','excel_curado',date('now'));

-- Nuño Gómez: Sierra de San Vicente = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45120' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45120','sendero','Sierra de San Vicente','excel_curado',date('now'));

-- Sotillo de las Palomas: Sierra de San Vicente = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45164' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45164','sendero','Sierra de San Vicente','excel_curado',date('now'));

-- Las Ventas de San Julián: Sierra de San Vicente = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='45184' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45184','sendero','Sierra de San Vicente','excel_curado',date('now'));

-- Pelahustán: Sierra de San Vicente = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='45131' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45131','sendero','Sierra de San Vicente','excel_curado',date('now'));

-- Nombela: Sierra de San Vicente = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='45117' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45117','sendero','Sierra de San Vicente','excel_curado',date('now'));

-- San Román de los Montes: Sierra San Vicente = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45154' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45154','sendero','Sierra de San Vicente','excel_curado',date('now'));

-- ============================================================
-- LA JARA
-- ============================================================

-- Sevilleja de la Jara: La Jara, Río Gévalo = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='45162' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45162','sendero','La Jara — Sevilleja','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45162','sendero','Río Gévalo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45162','sendero','Sendero del encinar y jaral','excel_curado',date('now'));

-- Mohedas de la Jara: La Jara = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='45103' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45103','sendero','La Jara — Mohedas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45103','sendero','Río Jébalo','excel_curado',date('now'));

-- Puerto de San Vicente: La Jara / Guadalupe = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='45139' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45139','sendero','Entorno sierra La Jara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45139','sendero','Sendero del puerto','excel_curado',date('now'));

-- Belvís de la Jara: La Jara = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='45020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45020','sendero','La Jara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45020','sendero','Sendero del Tajo','excel_curado',date('now'));

-- Retamoso de la Jara: La Jara = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45146' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45146','sendero','La Jara','excel_curado',date('now'));

-- Robledo del Mazo: La Jara = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45148' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45148','sendero','La Jara','excel_curado',date('now'));

-- Campillo de la Jara: La Jara = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='45033' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45033','sendero','La Jara','excel_curado',date('now'));

-- Herreruela de Oropesa: La Jara = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='45073' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45073','sendero','La Jara','excel_curado',date('now'));

-- La Calzada de Oropesa: Jara = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='45030' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45030','sendero','La Jara — La Calzada','excel_curado',date('now'));

-- Navalmoralejo: Jara = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='45111' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45111','sendero','La Jara','excel_curado',date('now'));

-- Torrico: La Jara = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='45172' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45172','sendero','La Jara — Torrico','excel_curado',date('now'));

-- Valdeverdeja: Tajo, Jara = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='45179' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45179','sendero','Río Tajo ribera','excel_curado',date('now'));

-- Parrillas: Jara = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='45130' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45130','sendero','La Jara','excel_curado',date('now'));

-- Marrupe: Jara = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='45093' AND categoria='senderismo';

-- Lucillos: Jara = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='45086' AND categoria='senderismo';

-- Santa Ana de Pusa: Montes/Jara = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='45155' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45155','sendero','La Jara/Montes de Toledo','excel_curado',date('now'));

-- Los Cerralbos: La Jara = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='45048' AND categoria='senderismo';

-- ============================================================
-- TAJO / OTROS
-- ============================================================

-- Oropesa (44008 canónico): sierra norte Toledo/Jara, castillo = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='44008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('44008','sendero','Castillo de Oropesa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('44008','sendero','Sierra de Gata entorno','excel_curado',date('now'));

-- Lagartera (44003 canónico): sierra baja = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='44003' AND categoria='senderismo';

-- El Puente del Arzobispo: Tajo = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='45138' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45138','sendero','Ribera del Tajo','excel_curado',date('now'));

-- Velada: Tajo = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='45181' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45181','sendero','Río Tajo ribera','excel_curado',date('now'));

-- Calera y Chozas: Tajo = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='45028' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45028','sendero','Ribera del Tajo','excel_curado',date('now'));

-- Caleruela: Tajo = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='45029' AND categoria='senderismo';

-- Alcolea de Tajo / Cebolla / otros ribereños
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='45046' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='45060' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='45089' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='45100' AND categoria='senderismo';

-- Burujón: Tajo, embalse = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='45024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45024','sendero','Embalse de Castrejón','excel_curado',date('now'));

-- Guadamur: periurbano Toledo = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='45070' AND categoria='senderismo';

-- Toledo capital (44012 canónico): paseos Tajo, Cigarrales = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='44012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('44012','sendero','Senda Ecológica del Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('44012','sendero','Ruta de los Cigarrales','excel_curado',date('now'));

-- ============================================================
-- LOS YÉBENES / ORGAZ / SUR TOLEDO
-- ============================================================

-- Los Yébenes: Montes Toledo sur = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='45200' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45200','sendero','Montes de Toledo — Los Yébenes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('45200','sendero','Laguna de Villanueva','excel_curado',date('now'));

-- Orgaz (44007 canónico): Montes Toledo = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='44007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('44007','sendero','Montes de Toledo acceso','excel_curado',date('now'));

-- Polán: Montes Toledo periférico = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='45133' AND categoria='senderismo';

-- Casasbuenas: Montes Toledo = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='45042' AND categoria='senderismo';

-- ============================================================
-- SAGRA / LA MANCHA / ZONA LLANA
-- ============================================================

-- Talavera de la Reina (44010): ciudad, Tajo = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='44010' AND categoria='senderismo';

-- Consuegra (44001): molinos, llano = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='44001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('44001','sendero','Molinos de viento de Consuegra','excel_curado',date('now'));

-- Mora (44005): llano = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='44005' AND categoria='senderismo';

-- Ocaña (44006): llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='44006' AND categoria='senderismo';

-- Quintanar de la Orden (44009): llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44009' AND categoria='senderismo';

-- Madridejos (44004): llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44004' AND categoria='senderismo';

-- Tembleque (44011): llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44011' AND categoria='senderismo';

-- Illescas (44002): llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44002' AND categoria='senderismo';

-- Urda (44013): llano = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='44013' AND categoria='senderismo';

-- Otros municipios llanos/sagra
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45019' AND categoria='senderismo'; -- Bargas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45021' AND categoria='senderismo'; -- Borox
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45025' AND categoria='senderismo'; -- Cabañas de la Sagra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45031' AND categoria='senderismo'; -- Camarena
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45032' AND categoria='senderismo'; -- Camarenilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45034' AND categoria='senderismo'; -- Camuñas
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45036' AND categoria='senderismo'; -- Carmena
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45038' AND categoria='senderismo'; -- Carranque
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45039' AND categoria='senderismo'; -- Carriches
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45041' AND categoria='senderismo'; -- Casarrubios del Monte
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45047' AND categoria='senderismo'; -- Cedillo del Condado
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45050' AND categoria='senderismo'; -- Ciruelos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45051' AND categoria='senderismo'; -- Cobeja
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45052' AND categoria='senderismo'; -- Cobisa
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45054' AND categoria='senderismo'; -- Corral de Almaguer
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45056' AND categoria='senderismo'; -- Chozas de Canales
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45057' AND categoria='senderismo'; -- Chueca
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45059' AND categoria='senderismo'; -- Dosbarrios
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45061' AND categoria='senderismo'; -- Escalona
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45062' AND categoria='senderismo'; -- Escalonilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45064' AND categoria='senderismo'; -- Esquivias
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45066' AND categoria='senderismo'; -- Fuensalida
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45069' AND categoria='senderismo'; -- Gerindote
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='45071' AND categoria='senderismo'; -- La Guardia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45072' AND categoria='senderismo'; -- Las Herencias
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45076' AND categoria='senderismo'; -- Hormigos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45077' AND categoria='senderismo'; -- Huecas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45078' AND categoria='senderismo'; -- Huerta de Valdecarábanos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45080' AND categoria='senderismo'; -- Illán de Vacas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45083' AND categoria='senderismo'; -- Layos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45084' AND categoria='senderismo'; -- Lillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45085' AND categoria='senderismo'; -- Lominchar
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='45087' AND categoria='senderismo'; -- Madridejos (45)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45088' AND categoria='senderismo'; -- Magán
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='45090' AND categoria='senderismo'; -- Manzaneque
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='45091' AND categoria='senderismo'; -- Maqueda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45094' AND categoria='senderismo'; -- Mascaraque
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45095' AND categoria='senderismo'; -- La Mata
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='45097' AND categoria='senderismo'; -- Mejorada
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45099' AND categoria='senderismo'; -- Méntrida
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45101' AND categoria='senderismo'; -- Miguel Esteban
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45102' AND categoria='senderismo'; -- Mocejón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45104' AND categoria='senderismo'; -- Montearagón
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='45105' AND categoria='senderismo'; -- Montesclaros (sierra baja)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45107' AND categoria='senderismo'; -- Nambroca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45110' AND categoria='senderismo'; -- Navalcán
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45115' AND categoria='senderismo'; -- Noblejas
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45118' AND categoria='senderismo'; -- Novés
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45119' AND categoria='senderismo'; -- Numancia de la Sagra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45121' AND categoria='senderismo'; -- Ocaña (45)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45122' AND categoria='senderismo'; -- Olías del Rey
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45123' AND categoria='senderismo'; -- Ontígola
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45126' AND categoria='senderismo'; -- Otero
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45127' AND categoria='senderismo'; -- Palomeque
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45128' AND categoria='senderismo'; -- Pantoja
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45129' AND categoria='senderismo'; -- Paredes de Escalona
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45132' AND categoria='senderismo'; -- Pepino
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45134' AND categoria='senderismo'; -- Portillo de Toledo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45135' AND categoria='senderismo'; -- La Puebla de Almoradiel
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='45136' AND categoria='senderismo'; -- La Puebla de Montalbán
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45137' AND categoria='senderismo'; -- La Pueblanueva
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45139' AND categoria='senderismo'; -- Puerto San Vicente (ya hecho arriba)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45141' AND categoria='senderismo'; -- Quero
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45143' AND categoria='senderismo'; -- Quismondo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45145' AND categoria='senderismo'; -- Recas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45147' AND categoria='senderismo'; -- Rielves
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='45149' AND categoria='senderismo'; -- El Romeral
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='45156' AND categoria='senderismo'; -- Santa Cruz de la Zarza
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45157' AND categoria='senderismo'; -- Santa Cruz del Retamar
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45158' AND categoria='senderismo'; -- Santa Olalla
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45901' AND categoria='senderismo'; -- Santo Domingo-Caudilla
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='45159' AND categoria='senderismo'; -- Sartajada
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='45160' AND categoria='senderismo'; -- Segurilla
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45161' AND categoria='senderismo'; -- Seseña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45167' AND categoria='senderismo'; -- El Toboso
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='45169' AND categoria='senderismo'; -- Torralba de Oropesa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45170' AND categoria='senderismo'; -- Torrecilla de la Jara
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45171' AND categoria='senderismo'; -- La Torre de Esteban Hambrán
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='45173' AND categoria='senderismo'; -- Torrijos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45175' AND categoria='senderismo'; -- Turleque
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45176' AND categoria='senderismo'; -- Ugena
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45180' AND categoria='senderismo'; -- Valmojado
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45183' AND categoria='senderismo'; -- Las Ventas de Retamosa
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45185' AND categoria='senderismo'; -- Villacañas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45186' AND categoria='senderismo'; -- La Villa de Don Fadrique
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45187' AND categoria='senderismo'; -- Villafranca de los Caballeros
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45188' AND categoria='senderismo'; -- Villaluenga de la Sagra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45189' AND categoria='senderismo'; -- Villamiel de Toledo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45190' AND categoria='senderismo'; -- Villaminaya
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45191' AND categoria='senderismo'; -- Villamuelas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45192' AND categoria='senderismo'; -- Villanueva de Alcardete
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45193' AND categoria='senderismo'; -- Villanueva de Bogas
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='45194' AND categoria='senderismo'; -- Villarejo de Montalbán
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45195' AND categoria='senderismo'; -- Villarrubia de Santiago
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45196' AND categoria='senderismo'; -- Villaseca de la Sagra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45197' AND categoria='senderismo'; -- Villasequilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45198' AND categoria='senderismo'; -- Villatobas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='45199' AND categoria='senderismo'; -- El Viso de San Juan
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45201' AND categoria='senderismo'; -- Yeles
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45202' AND categoria='senderismo'; -- Yepes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45203' AND categoria='senderismo'; -- Yuncler
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45204' AND categoria='senderismo'; -- Yunclillos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='45205' AND categoria='senderismo'; -- Yuncos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45018' AND categoria='senderismo'; -- Barcience
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='45023' AND categoria='senderismo'; -- Burguillos de Toledo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='45026' AND categoria='senderismo'; -- Cabañas de Yepes
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='45027' AND categoria='senderismo'; -- Cabezamesada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45037' AND categoria='senderismo'; -- El Carpio de Tajo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='45040' AND categoria='senderismo'; -- El Casar de Escalona
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45045' AND categoria='senderismo'; -- Cazalegas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45058' AND categoria='senderismo'; -- Domingo Pérez
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='45068' AND categoria='senderismo'; -- Garciotum

-- ============================================================
-- SYNC: copiar puntuaciones canónico (44xxx) → duplicado (45xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44001' AND categoria='senderismo') WHERE codigo_ine='45053' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44002' AND categoria='senderismo') WHERE codigo_ine='45081' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44003' AND categoria='senderismo') WHERE codigo_ine='45082' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44004' AND categoria='senderismo') WHERE codigo_ine='45087' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44005' AND categoria='senderismo') WHERE codigo_ine='45106' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44006' AND categoria='senderismo') WHERE codigo_ine='45121' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44007' AND categoria='senderismo') WHERE codigo_ine='45124' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44008' AND categoria='senderismo') WHERE codigo_ine='45125' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44009' AND categoria='senderismo') WHERE codigo_ine='45142' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44010' AND categoria='senderismo') WHERE codigo_ine='45165' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44011' AND categoria='senderismo') WHERE codigo_ine='45166' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44012' AND categoria='senderismo') WHERE codigo_ine='45168' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='44013' AND categoria='senderismo') WHERE codigo_ine='45177' AND categoria='senderismo';

-- 0026: Senderismo Sevilla curado
-- Generado: 2026-06-08
-- Entidades en códigos MIN (40xxx para duplicados, 41xxx para únicos)
-- Scores sincronizados a ambos códigos en los pares duplicados

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '40001','40002','40003','40004','40005','40006','40007','40008','40009','40010',
  '40011','40012','40013','40014','40015','40016','40017','40018','40019','40020',
  '41012','41013','41014','41015','41016','41017','41018','41019','41020','41021',
  '41022','41023','41024','41025','41026','41027','41028','41029','41030','41031',
  '41032','41033','41034','41035','41036','41037','41038','41039','41040','41041',
  '41042','41043','41044','41045','41046','41047','41048','41049','41050','41051',
  '41052','41053','41054','41055','41056','41057','41058','41059','41060','41061',
  '41062','41063','41064','41065','41066','41067','41068','41069','41070','41071',
  '41072','41073','41074','41075','41076','41077','41078','41079','41080','41081',
  '41082','41083','41084','41085','41086','41087','41088','41089','41090','41091',
  '41092','41093','41094','41095','41096','41097','41098','41099','41100','41101',
  '41102','41901','41902','41903','41904'
);

-- 2. Limpiar entidades curadas previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine IN (
  '40001','40002','40003','40004','40005','40006','40007','40008','40009','40010',
  '40011','40012','40013','40014','40015','40016','40017','40018','40019','40020',
  '41012','41013','41014','41015','41016','41017','41018','41019','41020','41021',
  '41022','41023','41024','41025','41026','41027','41028','41029','41030','41031',
  '41032','41033','41034','41035','41036','41037','41038','41039','41040','41041',
  '41042','41043','41044','41045','41046','41047','41048','41049','41050','41051',
  '41052','41053','41054','41055','41056','41057','41058','41059','41060','41061',
  '41062','41063','41064','41065','41066','41067','41068','41069','41070','41071',
  '41072','41073','41074','41075','41076','41077','41078','41079','41080','41081',
  '41082','41083','41084','41085','41086','41087','41088','41089','41090','41091',
  '41092','41093','41094','41095','41096','41097','41098','41099','41100','41101',
  '41102','41901','41902','41903','41904'
);

-- ============================================================
-- SIERRA NORTE DE SEVILLA (Parque Natural) — zona estrella
-- ============================================================

-- San Nicolás del Puerto: 89 +5 (Cascada del Huéznar, icónica a nivel nacional) = 94
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='41088' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41088','sendero','Cascada del Huéznar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41088','sendero','Río Huéznar remontado','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41088','sendero','Sendero del Huéznar (PR-A 30)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41088','sendero','Vía Verde del Huéznar','excel_curado',date('now'));

-- Cazalla de la Sierra: 85 +3 (artículos Parque Natural) = 88
-- código 40004 (MIN del par 40004/41032)
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='40004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40004','sendero','Vía Verde de la Sierra Norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40004','sendero','Sendero del Río Meca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40004','sendero','Ruta de los Arenales','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40004','sendero','Parque Natural Sierra Norte','excel_curado',date('now'));

-- Constantina: 83
-- código 40005 (MIN del par 40005/41033)
UPDATE puntuaciones SET puntuacion=83 WHERE codigo_ine='40005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40005','sendero','Sendero del Río Retortillo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40005','sendero','Parque Natural Sierra Norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40005','sendero','Ruta del Castillo de Constantina','excel_curado',date('now'));

-- Las Navas de la Concepción: 75
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='41066' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41066','sendero','Sierra Norte — Las Navas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41066','sendero','Sendero del Río Cala','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41066','sendero','Ruta del Encinar','excel_curado',date('now'));

-- El Pedroso: 73
-- código 40007 (MIN del par 40007/41073)
UPDATE puntuaciones SET puntuacion=73 WHERE codigo_ine='40007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40007','sendero','Cascada del Huesna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40007','sendero','Sendero del Arroyo del Huesna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40007','sendero','Sierra Norte sur','excel_curado',date('now'));

-- Guadalcanal: 70
-- código 40010 (MIN del par 40010/41048)
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='40010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40010','sendero','Sierra Norte norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40010','sendero','Sendero del Río Benalija','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40010','sendero','Ruta al Cerro del Viento','excel_curado',date('now'));

-- Alanís: 66
-- código 40001 (único, sin par)
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='40001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40001','sendero','Sierra Norte — Alanís','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40001','sendero','Sendero del Embalse del Pintado','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40001','sendero','Ruta al Castillo de Alanís','excel_curado',date('now'));

-- La Puebla de los Infantes: 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='41078' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41078','sendero','Sierra Norte — La Puebla','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41078','sendero','Sendero del Río Retortillo alto','excel_curado',date('now'));

-- El Real de la Jara: 61
UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='41080' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41080','sendero','Sierra Norte — Real de la Jara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41080','sendero','Embalse del Pintado','excel_curado',date('now'));

-- El Ronquillo: 57
-- código 40008 (MIN del par 40008/41083)
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='40008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40008','sendero','Sierra Norte periurbana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40008','sendero','Sendero del Encinar','excel_curado',date('now'));

-- El Castillo de las Guardas: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='41031' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41031','sendero','Sierra Norte oeste','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41031','sendero','Dehesa de encinar','excel_curado',date('now'));

-- Castilblanco de los Arroyos: 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='41027' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41027','sendero','Sierra Morena sevillana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41027','sendero','Sendero del Río Rivera de Huelva','excel_curado',date('now'));

-- El Garrobo: 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='41043' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41043','sendero','Sierra Norte acceso sur','excel_curado',date('now'));

-- Guillena: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='41049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41049','sendero','Embalse de Guillena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41049','sendero','Entorno Sierra Norte sur','excel_curado',date('now'));

-- El Madroño: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='41057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41057','sendero','Sierra Norte — El Madroño','excel_curado',date('now'));

-- Gerena: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='41045' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41045','sendero','Rivera de Huelva','excel_curado',date('now'));

-- Aznalcóllar: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='41013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41013','sendero','Entorno Sierra Norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41013','sendero','Sendero del Río Agrio','excel_curado',date('now'));

-- ============================================================
-- SIERRA SUR DE SEVILLA
-- ============================================================

-- Pruna: 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='41076' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41076','sendero','Sierra de Líjar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41076','sendero','Sendero de Pruna al Tajo de la Encantada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41076','sendero','Ruta de los Tajos','excel_curado',date('now'));

-- Morón de la Frontera: 56
-- código 40014 (MIN del par 40014/41065)
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='40014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40014','sendero','Sierra de Espadaña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40014','sendero','Sendero del Río Guadaíra alto','excel_curado',date('now'));

-- Montellano: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='41064' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41064','sendero','Sierra del Tablón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41064','sendero','Entorno Sierra Sur','excel_curado',date('now'));

-- Los Corrales: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='41037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41037','sendero','Sierra Sur sevillana','excel_curado',date('now'));

-- El Coronil: 43
UPDATE puntuaciones SET puntuacion=43 WHERE codigo_ine='41036' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41036','sendero','Sierra de Espadaña acceso','excel_curado',date('now'));

-- Coripe: 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='41035' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41035','sendero','Parque Natural Sierra de Grazalema acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41035','sendero','Río Guadalporcún','excel_curado',date('now'));

-- Martín de la Jara: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='41062' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41062','sendero','Sierra Sur acceso','excel_curado',date('now'));

-- El Saucejo: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='41090' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41090','sendero','Sierra Sur sevillana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41090','sendero','Entorno serrano','excel_curado',date('now'));

-- ============================================================
-- ALJARAFE / DOÑANA / MARISMAS
-- ============================================================

-- Villamanrique de la Condesa: 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='41097' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41097','sendero','Acceso Parque Nacional Doñana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41097','sendero','Sendero del Arroyo de la Rocina','excel_curado',date('now'));

-- Aznalcázar: 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='41012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41012','sendero','Entorno Doñana norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41012','sendero','Sendero de Entremuros','excel_curado',date('now'));

-- La Puebla del Río: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='41079' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41079','sendero','Isla Mayor — Marismas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41079','sendero','Doñana ribera del Guadalquivir','excel_curado',date('now'));

-- Isla Mayor: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='41902' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41902','sendero','Marismas del Guadalquivir','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41902','sendero','Avifauna — flamencos y aves acuáticas','excel_curado',date('now'));

-- Pilas: 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='41075' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41075','sendero','Entorno Doñana oeste','excel_curado',date('now'));

-- Huévar del Aljarafe: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='41051' AND categoria='senderismo';

-- ============================================================
-- RÍO GUADAÍRA / CAMPIÑA
-- ============================================================

-- Alcalá de Guadaíra: 48
-- código 40002 (único, sin par 41xxx)
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='40002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40002','sendero','Parque del Guadaíra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40002','sendero','Río Guadaíra — molinos medievales','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40002','sendero','Sendero del Río Guadaíra','excel_curado',date('now'));

-- Osuna: 38
-- código 40015 (MIN del par 40015/41068)
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='40015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40015','sendero','Ruta olivarera de Osuna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40015','sendero','Entorno campiña alta','excel_curado',date('now'));

-- Sevilla capital: 40
-- código 40018 (MIN del par 40018/41091)
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='40018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40018','sendero','Sierra Morena periurbana de Sevilla','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40018','sendero','Parque de Miraflores','excel_curado',date('now'));

-- Estepa: 36
-- código 40009 (MIN del par 40009/41041)
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='40009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40009','sendero','Sierra de Becerrero','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40009','sendero','Entorno campiña alta','excel_curado',date('now'));

-- Carmona: 33
-- código 40003 (MIN del par 40003/41024)
UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='40003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40003','sendero','Campiña de Carmona','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40003','sendero','Entorno río Corbones','excel_curado',date('now'));

-- Marchena: 28
-- código 40013 (MIN del par 40013/41060)
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='40013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40013','sendero','Entorno campiña','excel_curado',date('now'));

-- Morón de la Frontera: 56 (ya arriba)

-- La Puebla de Cazalla: 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='41077' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41077','sendero','Sierra de Montellano acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41077','sendero','Entorno campiña','excel_curado',date('now'));

-- Pedrera: 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='41072' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41072','sendero','Entorno Sierra Sur','excel_curado',date('now'));

-- Herrera: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='41050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41050','sendero','Entorno campiña alta sevillana','excel_curado',date('now'));

-- La Roda de Andalucía: 34
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='41082' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41082','sendero','Sierra Sur acceso','excel_curado',date('now'));

-- Badolatosa: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='41014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41014','sendero','Embalse de Malpasillo','excel_curado',date('now'));

-- Casariche: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='41026' AND categoria='senderismo';

-- Gilena: 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='41046' AND categoria='senderismo';

-- El Rubio: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='41084' AND categoria='senderismo';

-- Lora del Río: 32
-- código 40012 (MIN del par 40012/41055)
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='40012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40012','sendero','Río Guadalquivir ribera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40012','sendero','Entorno campiña','excel_curado',date('now'));

-- Lora de Estepa: 26
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='41054' AND categoria='senderismo';

-- Ecija: 22
-- código 40020 (MIN del par 40020/41039)
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40020','sendero','Río Genil ribera','excel_curado',date('now'));

-- ============================================================
-- RESTO (campiña llana / área metropolitana / menor senderismo)
-- ============================================================
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='41016' AND categoria='senderismo'; -- Bollullos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='41017' AND categoria='senderismo'; -- Bormujos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='41018' AND categoria='senderismo'; -- Brenes
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='41019' AND categoria='senderismo'; -- Burguillos
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='41020' AND categoria='senderismo'; -- Las Cabezas de San Juan
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='41021' AND categoria='senderismo'; -- Camas
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='41022' AND categoria='senderismo'; -- La Campana
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='41023' AND categoria='senderismo'; -- Cantillana
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='41025' AND categoria='senderismo'; -- Carrión de los Céspedes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='41028' AND categoria='senderismo'; -- Castilleja de Guzmán
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='41029' AND categoria='senderismo'; -- Castilleja de la Cuesta
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='41030' AND categoria='senderismo'; -- Castilleja del Campo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='41034' AND categoria='senderismo'; -- Coria del Río
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='41040' AND categoria='senderismo'; -- Espartinas
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='41042' AND categoria='senderismo'; -- Fuentes de Andalucía
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='41044' AND categoria='senderismo'; -- Gelves
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='41047' AND categoria='senderismo'; -- Gines
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='41052' AND categoria='senderismo'; -- Lantejuela
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='41056' AND categoria='senderismo'; -- La Luisiana
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='41058' AND categoria='senderismo'; -- Mairena del Alcor
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='41059' AND categoria='senderismo'; -- Mairena del Aljarafe
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='41061' AND categoria='senderismo'; -- Marinaleda
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='41063' AND categoria='senderismo'; -- Los Molares
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='41067' AND categoria='senderismo'; -- Olivares
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='41069' AND categoria='senderismo'; -- Los Palacios y Villafranca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='40016' AND categoria='senderismo'; -- Palomares del Río
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='41071' AND categoria='senderismo'; -- Paradas
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='40017' AND categoria='senderismo'; -- Peñaflor (Río Guadalquivir)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='41081' AND categoria='senderismo'; -- La Rinconada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='41085' AND categoria='senderismo'; -- Salteras
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='41086' AND categoria='senderismo'; -- San Juan de Aznalfarache
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='41087' AND categoria='senderismo'; -- Sanlúcar la Mayor
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='41089' AND categoria='senderismo'; -- Santiponce
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='41092' AND categoria='senderismo'; -- Tocina
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='41093' AND categoria='senderismo'; -- Tomares
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='41094' AND categoria='senderismo'; -- Umbrete
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40011' AND categoria='senderismo'; -- Lebrija (Marismas)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='41096' AND categoria='senderismo'; -- Valencina de la Concepción
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='41098' AND categoria='senderismo'; -- Villanueva del Ariscal
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='41099' AND categoria='senderismo'; -- Villanueva del Río y Minas
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41099','sendero','Río Guadalquivir — entorno minero','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='41100' AND categoria='senderismo'; -- Villanueva de San Juan
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='41101' AND categoria='senderismo'; -- Villaverde del Río
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='41102' AND categoria='senderismo'; -- El Viso del Alcor
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='41901' AND categoria='senderismo'; -- Cañada Rosal
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='41903' AND categoria='senderismo'; -- El Cuervo de Sevilla
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='41904' AND categoria='senderismo'; -- El Palmar de Troya
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40006' AND categoria='senderismo'; -- Dos Hermanas
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='41015' AND categoria='senderismo'; -- Benacazón

-- ============================================================
-- SYNC scores: 40xxx → 41xxx para los pares duplicados
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40003' AND categoria='senderismo') WHERE codigo_ine='41024' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40004' AND categoria='senderismo') WHERE codigo_ine='41032' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40005' AND categoria='senderismo') WHERE codigo_ine='41033' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40006' AND categoria='senderismo') WHERE codigo_ine='41038' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40007' AND categoria='senderismo') WHERE codigo_ine='41073' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40008' AND categoria='senderismo') WHERE codigo_ine='41083' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40009' AND categoria='senderismo') WHERE codigo_ine='41041' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40010' AND categoria='senderismo') WHERE codigo_ine='41048' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40011' AND categoria='senderismo') WHERE codigo_ine='41053' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40012' AND categoria='senderismo') WHERE codigo_ine='41055' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40013' AND categoria='senderismo') WHERE codigo_ine='41060' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40014' AND categoria='senderismo') WHERE codigo_ine='41065' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40015' AND categoria='senderismo') WHERE codigo_ine='41068' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40016' AND categoria='senderismo') WHERE codigo_ine='41070' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40017' AND categoria='senderismo') WHERE codigo_ine='41074' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40018' AND categoria='senderismo') WHERE codigo_ine='41091' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40019' AND categoria='senderismo') WHERE codigo_ine='41095' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='40020' AND categoria='senderismo') WHERE codigo_ine='41039' AND categoria='senderismo';

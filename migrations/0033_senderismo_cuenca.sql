-- 0033: Senderismo Cuenca curado (reset + scores + entidades en códigos canónicos 14xxx)
-- Generado: 2026-06-09
-- IMPORTANTE: entidades solo en código MIN (14xxx cuando existe) de cada par duplicado

-- 1. Reset scores a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '14001','14002','14003','14004','14005','14006','14007','14008','14009','14010',
  '14011','14012','14013','14014','14015','14016',
  '16029','16030','16031','16032','16033','16034','16035','16036','16038','16039',
  '16040','16041','16042','16043','16044','16045','16046','16047','16048','16049',
  '16050','16051','16052','16053','16055','16056','16057','16058','16060','16061',
  '16062','16063','16064','16065','16066','16067','16068','16070','16071','16072',
  '16073','16074','16078','16079','16081','16082','16083','16084','16085','16086',
  '16087','16088','16089','16091','16092','16093','16094','16095','16096','16097',
  '16098','16099','16100','16101','16102','16103','16104','16106','16107','16108',
  '16109','16110','16111','16112','16113','16115','16116','16117','16118','16119',
  '16121','16122','16123','16124','16125','16126','16128','16129','16130','16131',
  '16132','16133','16134','16135','16137','16139','16140','16141','16142','16143',
  '16145','16146','16147','16148','16149','16150','16151','16152','16153','16154',
  '16155','16156','16157','16158','16159','16160','16161','16162','16163','16165',
  '16166','16167','16169','16170','16171','16172','16173','16174','16175','16176',
  '16177','16181','16185','16186','16187','16188','16189','16190','16191','16192',
  '16193','16194','16195','16196','16197','16198','16199','16202','16203','16204',
  '16205','16206','16209','16211','16212','16213','16215','16216','16217','16218',
  '16219','16224','16225','16227','16228','16231','16234','16236','16237','16238',
  '16239','16240','16242','16243','16244','16245','16246','16247','16248','16249',
  '16250','16251','16253','16254','16255','16258','16259','16263','16264','16265',
  '16266','16269','16270','16271','16272','16273','16274','16275','16276','16277',
  '16278','16279','16280',
  '16505','16507','16508',
  '16901','16902','16903','16904','16905','16906','16908','16909','16910'
);

-- 2. Limpiar entidades curadas previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine IN (
  '14001','14002','14003','14004','14005','14006','14007','14008','14009','14010',
  '14011','14012','14013','14014','14015','14016',
  '16029','16030','16031','16032','16033','16034','16035','16036','16038','16039',
  '16040','16041','16042','16043','16044','16045','16046','16047','16048','16049',
  '16050','16051','16052','16053','16055','16056','16057','16058','16060','16061',
  '16062','16063','16064','16065','16066','16067','16068','16070','16071','16072',
  '16073','16074','16078','16079','16081','16082','16083','16084','16085','16086',
  '16087','16088','16089','16091','16092','16093','16094','16095','16096','16097',
  '16098','16099','16100','16101','16102','16103','16104','16106','16107','16108',
  '16109','16110','16111','16112','16113','16115','16116','16117','16118','16119',
  '16121','16122','16123','16124','16125','16126','16128','16129','16130','16131',
  '16132','16133','16134','16135','16137','16139','16140','16141','16142','16143',
  '16145','16146','16147','16148','16149','16150','16151','16152','16153','16154',
  '16155','16156','16157','16158','16159','16160','16161','16162','16163','16165',
  '16166','16167','16169','16170','16171','16172','16173','16174','16175','16176',
  '16177','16181','16185','16186','16187','16188','16189','16190','16191','16192',
  '16193','16194','16195','16196','16197','16198','16199','16202','16203','16204',
  '16205','16206','16209','16211','16212','16213','16215','16216','16217','16218',
  '16219','16224','16225','16227','16228','16231','16234','16236','16237','16238',
  '16239','16240','16242','16243','16244','16245','16246','16247','16248','16249',
  '16250','16251','16253','16254','16255','16258','16259','16263','16264','16265',
  '16266','16269','16270','16271','16272','16273','16274','16275','16276','16277',
  '16278','16279','16280',
  '16505','16507','16508',
  '16901','16902','16903','16904','16905','16906','16908','16909','16910'
);

-- ============================================================
-- SERRANÍA DE CUENCA — zona estrella (icónica a nivel nacional)
-- ============================================================

-- Tragacete: nacimiento Río Cuervo, cascada icónica, top Wikiloc = 94
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='14013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14013','sendero','Nacimiento del Río Cuervo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14013','sendero','Cascada del Río Cuervo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14013','sendero','Parque Natural Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14013','sendero','PR-CU 23','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14013','sendero','Ruta de los Callejones del Río Cuervo','excel_curado',date('now'));

-- Uña: Laguna de Uña, Serranía, fotogénico = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='14014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14014','sendero','Laguna de Uña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14014','sendero','Parque Natural Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14014','sendero','Hoz del Río Júcar tramo alto','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14014','sendero','Sendero de la Laguna','excel_curado',date('now'));

-- Beteta: Serranía, Hoz de Beteta = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='14002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14002','sendero','Hoz de Beteta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14002','sendero','Parque Natural Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14002','sendero','Fuente de los Tilos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14002','sendero','Sendero de la Hoz','excel_curado',date('now'));

-- Villalba de la Sierra: Ventano del Diablo, Serranía = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='14016' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14016','sendero','Ventano del Diablo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14016','sendero','Parque Natural Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14016','sendero','Hoz del Júcar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14016','sendero','Mirador del Júcar','excel_curado',date('now'));

-- Las Majadas: Ciudad Encantada, Serranía = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='16121' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16121','sendero','Ciudad Encantada de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16121','sendero','Parque Natural Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16121','sendero','Sendero de los Callejones','excel_curado',date('now'));

-- Cueva del Hierro: única cueva activa de España como municipio, Serranía = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='16079' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16079','sendero','Cueva del Hierro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16079','sendero','Parque Natural Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16079','sendero','Nacimiento del Río Cuervo acceso','excel_curado',date('now'));

-- Poyatos: Serranía, embalse de la Toba = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='16165' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16165','sendero','Embalse de La Toba','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16165','sendero','Parque Natural Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16165','sendero','Sendero del Pinar de Poyatos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16165','sendero','Hoz del Júcar','excel_curado',date('now'));

-- Beamud: Serranía alta = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='16031' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16031','sendero','Parque Natural Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16031','sendero','Sendero del pinar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16031','sendero','Laguna de Beamud','excel_curado',date('now'));

-- Vega del Codorno: Serranía alta = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='16239' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16239','sendero','Parque Natural Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16239','sendero','Altos del Serranía','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16239','sendero','Fuente de la Teja','excel_curado',date('now'));

-- Laguna del Marquesado: Serranía alta, lagunas = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='16115' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16115','sendero','Lagunas de la Serranía','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16115','sendero','Parque Natural Serranía','excel_curado',date('now'));

-- Lagunaseca: Serranía = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='16116' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16116','sendero','Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16116','sendero','Laguna de los Palancares','excel_curado',date('now'));

-- Masegosa: Serranía = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='16123' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16123','sendero','Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16123','sendero','Sendero del Júcar','excel_curado',date('now'));

-- Fuertescusa (14006 canónico): Serranía = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='14006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14006','sendero','Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14006','sendero','Hoz del Río Júcar','excel_curado',date('now'));

-- Cañizares: Serranía = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='16053' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16053','sendero','Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16053','sendero','Hoz Escabas','excel_curado',date('now'));

-- Huélamo: Serranía = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='16107' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16107','sendero','Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16107','sendero','Sendero del pinar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16107','sendero','Alto de los Palancares','excel_curado',date('now'));

-- Zafrilla: Serranía alta = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='16278' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16278','sendero','Serranía de Cuenca alta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16278','sendero','Sendero del pinar','excel_curado',date('now'));

-- Salinas del Manzano: Serranía = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='16187' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16187','sendero','Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16187','sendero','Ruta del pinar','excel_curado',date('now'));

-- Huerta del Marquesado: Serranía = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='16111' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16111','sendero','Serranía de Cuenca','excel_curado',date('now'));

-- Santa María del Val: Serranía = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='16197' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16197','sendero','Serranía de Cuenca','excel_curado',date('now'));

-- Valdemeca: Serranía alta = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='16224' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16224','sendero','Serranía de Cuenca alta','excel_curado',date('now'));

-- Portilla: Serranía = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='16163' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16163','sendero','Serranía de Cuenca','excel_curado',date('now'));

-- Valdemorillo de la Sierra: Serranía = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='16225' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16225','sendero','Serranía de Cuenca','excel_curado',date('now'));

-- Valdemoro-Sierra: Serranía = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='16227' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16227','sendero','Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16227','sendero','Hoz del Júcar','excel_curado',date('now'));

-- ============================================================
-- PRIEGO / HOZ ESCABAS / ZONA MEDIA SERRANÍA
-- ============================================================

-- Priego (14010 canónico): Serranía media, Hoz del Escabas = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='14010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14010','sendero','Hoz del Río Escabas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14010','sendero','Serranía de Cuenca media','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14010','sendero','Sendero del Escabas','excel_curado',date('now'));

-- Cañamares (14003 canónico): Serranía media = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='14003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14003','sendero','Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14003','sendero','Sendero del Escabas','excel_curado',date('now'));

-- Moya: pueblo medieval, sierra = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='16135' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16135','sendero','Serranía de Cuenca sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16135','sendero','Ruta del Castillo de Moya','excel_curado',date('now'));

-- Pajarón: Serranía = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='16146' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16146','sendero','Serranía de Cuenca sur','excel_curado',date('now'));

-- Pajaroncillo: Serranía = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='16147' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16147','sendero','Serranía de Cuenca','excel_curado',date('now'));

-- Boniches: Serranía = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='16036' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16036','sendero','Serranía de Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16036','sendero','Río Gallo','excel_curado',date('now'));

-- Salvacañete: Serranía = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='16189' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16189','sendero','Serranía de Cuenca sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16189','sendero','Sendero del pinar','excel_curado',date('now'));

-- Garaballa: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='16093' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16093','sendero','Sierra de Garaballa','excel_curado',date('now'));

-- Landete: Serranía baja = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='16117' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16117','sendero','Serranía de Cuenca','excel_curado',date('now'));

-- Talayuelas: sierra = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='16202' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16202','sendero','Sierra de Talayuelas','excel_curado',date('now'));

-- Reillo: Serranía = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='16177' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16177','sendero','Serranía de Cuenca','excel_curado',date('now'));

-- San Martín de Boniches: Serranía sur = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='16192' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16192','sendero','Serranía de Cuenca sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16192','sendero','Hoz del Júcar sur','excel_curado',date('now'));

-- Cardenete: Serranía = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='16056' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16056','sendero','Serranía baja','excel_curado',date('now'));

-- Enguídanos: sierra = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='16082' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16082','sendero','Serranía de Cuenca sur','excel_curado',date('now'));

-- Víllora: Serranía = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='16274' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16274','sendero','Serranía de Cuenca','excel_curado',date('now'));

-- ============================================================
-- CUENCA CAPITAL / ALARCÓN / ZONA CENTRAL
-- ============================================================

-- Cuenca capital (14004 canónico): Casas Colgadas, Hoz del Huécar y Júcar = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='14004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14004','sendero','Hoz del Júcar — Cuenca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14004','sendero','Hoz del Huécar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14004','sendero','Sendero de las Hoces','excel_curado',date('now'));

-- Cuenca (ciudad encantada) (14005): entrada Ciudad Encantada = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='14005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14005','sendero','Ciudad Encantada — acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14005','sendero','Serranía de Cuenca','excel_curado',date('now'));

-- Alarcón (14001): embalse, castillo medieval = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='14001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14001','sendero','Embalse de Alarcón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14001','sendero','Castillo de Alarcón','excel_curado',date('now'));

-- Valeria (14015): yacimiento romano, sierra = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='14015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14015','sendero','Yacimiento romano de Valeria','excel_curado',date('now'));

-- Huete (16112): histórico, campo = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='16112' AND categoria='senderismo';

-- Tarancón (14012 canónico): llano = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='14012' AND categoria='senderismo';

-- San Clemente (14011 canónico): llano = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='14011' AND categoria='senderismo';

-- Belmonte (16033): castillo, llano = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='16033' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16033','sendero','Castillo de Belmonte','excel_curado',date('now'));

-- Mota del Cuervo (14008 canónico): molinos, llano = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='14008' AND categoria='senderismo';

-- Motilla del Palancar (14009 canónico): llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='14009' AND categoria='senderismo';

-- Minglanilla (14007 canónico): llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='14007' AND categoria='senderismo';

-- ============================================================
-- RESTO (llano manchego / zona baja)
-- ============================================================

-- Iniesta: llano = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='16113' AND categoria='senderismo';

-- Casas de Benítez / Fernando Alonso / Haro / Pinos: llano
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16060' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16061' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16064' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16065' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16066' AND categoria='senderismo'; -- Casasimarro
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16042' AND categoria='senderismo'; -- Campillo de Altobuey
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16029' AND categoria='senderismo'; -- Barchín del Hoyo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16032' AND categoria='senderismo'; -- Belinchón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16034' AND categoria='senderismo'; -- Belmontejo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='16041' AND categoria='senderismo'; -- Buendía (embalse)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16038' AND categoria='senderismo'; -- Buciegas
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='16039' AND categoria='senderismo'; -- Buenache de Alarcón
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='16040' AND categoria='senderismo'; -- Buenache de la Sierra
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16040','sendero','Serranía de Cuenca','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16043' AND categoria='senderismo'; -- Campillos-Paravientos
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='16044' AND categoria='senderismo'; -- Campillos-Sierra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16045' AND categoria='senderismo'; -- Canalejas del Arroyo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16046' AND categoria='senderismo'; -- Cañada del Hoyo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16047' AND categoria='senderismo'; -- Cañada Juncosa
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16049' AND categoria='senderismo'; -- El Cañavate
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16050' AND categoria='senderismo'; -- Cañaveras
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16051' AND categoria='senderismo'; -- Cañaveruelas (Júcar)
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='16052' AND categoria='senderismo'; -- Cañete
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16052','sendero','Hoz de Cañete','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16055' AND categoria='senderismo'; -- Carboneras de Guadazaón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16057' AND categoria='senderismo'; -- Carrascosa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16058' AND categoria='senderismo'; -- Carrascosa de Haro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16062' AND categoria='senderismo'; -- Casas de Garcimolina
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16063' AND categoria='senderismo'; -- Casas de Guijarro
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16067' AND categoria='senderismo'; -- Castejón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16068' AND categoria='senderismo'; -- Castillejo de Iniesta
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='16070' AND categoria='senderismo'; -- Castillejo-Sierra
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16071' AND categoria='senderismo'; -- Castillo-Albaráñez
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='16072' AND categoria='senderismo'; -- Castillo de Garcimuñoz
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16073' AND categoria='senderismo'; -- Cervera del Llano
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='16074' AND categoria='senderismo'; -- La Cierva
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='16081' AND categoria='senderismo'; -- Chumillas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16083' AND categoria='senderismo'; -- Fresneda de Altarejos
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='16084' AND categoria='senderismo'; -- Fresneda de la Sierra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16085' AND categoria='senderismo'; -- La Frontera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16086' AND categoria='senderismo'; -- Fuente de Pedro Naharro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16087' AND categoria='senderismo'; -- Fuentelespino de Haro
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16088' AND categoria='senderismo'; -- Fuentelespino de Moya
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16089' AND categoria='senderismo'; -- Fuentes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16092' AND categoria='senderismo'; -- Gabaldón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16094' AND categoria='senderismo'; -- Gascueña
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16095' AND categoria='senderismo'; -- Graja de Campalbo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16096' AND categoria='senderismo'; -- Graja de Iniesta
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16097' AND categoria='senderismo'; -- Henarejos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16098' AND categoria='senderismo'; -- El Herrumblar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16099' AND categoria='senderismo'; -- La Hinojosa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16100' AND categoria='senderismo'; -- Los Hinojosos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16101' AND categoria='senderismo'; -- El Hito
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='16102' AND categoria='senderismo'; -- Honrubia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16103' AND categoria='senderismo'; -- Hontanaya
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16104' AND categoria='senderismo'; -- Hontecillas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16106' AND categoria='senderismo'; -- Horcajo de Santiago
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16108' AND categoria='senderismo'; -- Huelves
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='16109' AND categoria='senderismo'; -- Huérguina
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='16110' AND categoria='senderismo'; -- Huerta de la Obispalía
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16118' AND categoria='senderismo'; -- Ledaña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16119' AND categoria='senderismo'; -- Leganiel
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16122' AND categoria='senderismo'; -- Mariana
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16124' AND categoria='senderismo'; -- Las Mesas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16126' AND categoria='senderismo'; -- Mira
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16128' AND categoria='senderismo'; -- Monreal del Llano
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16129' AND categoria='senderismo'; -- Montalbanejo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16130' AND categoria='senderismo'; -- Montalbo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16131' AND categoria='senderismo'; -- Monteagudo de las Salinas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16132' AND categoria='senderismo'; -- Mota de Altarejos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16137' AND categoria='senderismo'; -- Narboneta
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16139' AND categoria='senderismo'; -- Olivares de Júcar
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16140' AND categoria='senderismo'; -- Olmeda de la Cuesta
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16141' AND categoria='senderismo'; -- Olmeda del Rey
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16142' AND categoria='senderismo'; -- Olmedilla de Alarcón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16143' AND categoria='senderismo'; -- Olmedilla de Eliz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16145' AND categoria='senderismo'; -- Osa de la Vega
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16148' AND categoria='senderismo'; -- Palomares del Campo
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='16149' AND categoria='senderismo'; -- Palomera
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('16149','sendero','Serranía de Cuenca','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16150' AND categoria='senderismo'; -- Paracuellos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16151' AND categoria='senderismo'; -- Paredes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16152' AND categoria='senderismo'; -- La Parra de las Vegas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16153' AND categoria='senderismo'; -- El Pedernoso
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16154' AND categoria='senderismo'; -- Las Pedroñeras
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16155' AND categoria='senderismo'; -- El Peral
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16156' AND categoria='senderismo'; -- La Peraleja
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='16157' AND categoria='senderismo'; -- La Pesquera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16158' AND categoria='senderismo'; -- El Picazo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16159' AND categoria='senderismo'; -- Pinarejo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16160' AND categoria='senderismo'; -- Pineda de Gigüela
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16161' AND categoria='senderismo'; -- Piqueras del Castillo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16162' AND categoria='senderismo'; -- Portalrubio de Guadamejud
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16166' AND categoria='senderismo'; -- Pozoamargo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16167' AND categoria='senderismo'; -- Pozorrubio de Santiago
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16169' AND categoria='senderismo'; -- El Pozuelo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16171' AND categoria='senderismo'; -- El Provencio
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16172' AND categoria='senderismo'; -- Puebla de Almenara
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16173' AND categoria='senderismo'; -- El Valle de Altomira
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16174' AND categoria='senderismo'; -- Puebla del Salvador
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16175' AND categoria='senderismo'; -- Quintanar del Rey
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16176' AND categoria='senderismo'; -- Rada de Haro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16181' AND categoria='senderismo'; -- Rozalén del Monte
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16185' AND categoria='senderismo'; -- Saceda-Trasierra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16186' AND categoria='senderismo'; -- Saelices
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16188' AND categoria='senderismo'; -- Salmeroncillos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16191' AND categoria='senderismo'; -- San Lorenzo de la Parrilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16193' AND categoria='senderismo'; -- San Pedro Palmiches
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16194' AND categoria='senderismo'; -- Santa Cruz de Moya
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16195' AND categoria='senderismo'; -- Santa María del Campo Rus
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16196' AND categoria='senderismo'; -- Santa María de los Llanos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16198' AND categoria='senderismo'; -- Sisante
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16199' AND categoria='senderismo'; -- Solera de Gabaldón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16204' AND categoria='senderismo'; -- Tébar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16205' AND categoria='senderismo'; -- Tejadillos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16206' AND categoria='senderismo'; -- Tinajas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16209' AND categoria='senderismo'; -- Torralba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16211' AND categoria='senderismo'; -- Torrejoncillo del Rey
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16212' AND categoria='senderismo'; -- Torrubia del Campo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16213' AND categoria='senderismo'; -- Torrubia del Castillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16216' AND categoria='senderismo'; -- Tresjuncos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16217' AND categoria='senderismo'; -- Tribaldos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='16218' AND categoria='senderismo'; -- Uclés
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16228' AND categoria='senderismo'; -- Valdeolivas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16231' AND categoria='senderismo'; -- Valhermoso de la Fuente
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16234' AND categoria='senderismo'; -- Valsalobre
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='16236' AND categoria='senderismo'; -- Valverde de Júcar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16237' AND categoria='senderismo'; -- Valverdejo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16238' AND categoria='senderismo'; -- Vara de Rey
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16240' AND categoria='senderismo'; -- Vellisca
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16242' AND categoria='senderismo'; -- Villaconejos de Trabaque
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16243' AND categoria='senderismo'; -- Villaescusa de Haro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16244' AND categoria='senderismo'; -- Villagarcía del Llano
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='16246' AND categoria='senderismo'; -- Villalba del Rey
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16247' AND categoria='senderismo'; -- Villalgordo del Marquesado
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16248' AND categoria='senderismo'; -- Villalpardo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16249' AND categoria='senderismo'; -- Villamayor de Santiago
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16250' AND categoria='senderismo'; -- Villanueva de Guadamejud
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='16251' AND categoria='senderismo'; -- Villanueva de la Jara
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16253' AND categoria='senderismo'; -- Villar de Cañas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16254' AND categoria='senderismo'; -- Villar de Domingo García
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16255' AND categoria='senderismo'; -- Villar de la Encina
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='16258' AND categoria='senderismo'; -- Villar del Humo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16259' AND categoria='senderismo'; -- Villar del Infantado
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16263' AND categoria='senderismo'; -- Villar de Olalla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16264' AND categoria='senderismo'; -- Villarejo de Fuentes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16265' AND categoria='senderismo'; -- Villarejo de la Peñuela
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16266' AND categoria='senderismo'; -- Villarejo-Periesteban
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16269' AND categoria='senderismo'; -- Villares del Saz
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16270' AND categoria='senderismo'; -- Villarrubio
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16271' AND categoria='senderismo'; -- Villarta
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16272' AND categoria='senderismo'; -- Villas de la Ventosa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16273' AND categoria='senderismo'; -- Villaverde y Pasaconsol
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='16275' AND categoria='senderismo'; -- Vindel
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16276' AND categoria='senderismo'; -- Yémeda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16277' AND categoria='senderismo'; -- Zafra de Záncara
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16279' AND categoria='senderismo'; -- Zarza de Tajo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16280' AND categoria='senderismo'; -- Zarzuela
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='16505' AND categoria='senderismo'; -- Garcinarro
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='16507' AND categoria='senderismo'; -- Jabalera
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='16508' AND categoria='senderismo'; -- Mazarulleque
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16901' AND categoria='senderismo'; -- Campos del Paraíso
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='16902' AND categoria='senderismo'; -- Valdetórtola
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='16903' AND categoria='senderismo'; -- Las Valeras
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='16904' AND categoria='senderismo'; -- Fuentenava de Jábaga
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='16905' AND categoria='senderismo'; -- Arcas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16906' AND categoria='senderismo'; -- Los Valdecolmenas
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='16908' AND categoria='senderismo'; -- Pozorrubielos de la Mancha
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='16909' AND categoria='senderismo'; -- Sotorribas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16910' AND categoria='senderismo'; -- Villar y Velasco
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='16030' AND categoria='senderismo'; -- Bascuñana de San Pedro

-- ============================================================
-- SYNC: copiar puntuaciones MIN (14xxx) → MAX (16xxx) (duplicados)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14002' AND categoria='senderismo') WHERE codigo_ine='16035' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14003' AND categoria='senderismo') WHERE codigo_ine='16048' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14004' AND categoria='senderismo') WHERE codigo_ine='16078' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14006' AND categoria='senderismo') WHERE codigo_ine='16091' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14007' AND categoria='senderismo') WHERE codigo_ine='16125' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14008' AND categoria='senderismo') WHERE codigo_ine='16133' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14009' AND categoria='senderismo') WHERE codigo_ine='16134' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14010' AND categoria='senderismo') WHERE codigo_ine='16170' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14011' AND categoria='senderismo') WHERE codigo_ine='16190' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14012' AND categoria='senderismo') WHERE codigo_ine='16203' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14013' AND categoria='senderismo') WHERE codigo_ine='16215' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14014' AND categoria='senderismo') WHERE codigo_ine='16219' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14016' AND categoria='senderismo') WHERE codigo_ine='16245' AND categoria='senderismo';

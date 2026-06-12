-- 0025: Senderismo Córdoba curado (reset + scores + entidades en códigos canónicos 14xxx)
-- Generado: 2026-06-08
-- IMPORTANTE: entidades solo en 14xxx para evitar duplicados en ficha municipio

-- 1. Reset scores a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '14017','14018','14019','14020','14021','14022','14023','14024','14025','14026',
  '14027','14028','14029','14030','14031','14032','14033','14034','14035','14036',
  '14037','14038','14039','14040','14041','14042','14043','14044','14045','14046',
  '14047','14048','14049','14050','14051','14052','14053','14054','14055','14056',
  '14057','14058','14059','14060','14061','14062','14063','14064','14065','14066',
  '14067','14068','14069','14070','14071','14072','14073','14074','14075',
  '14901','14902',
  '17001','17002','17003','17004','17005','17006','17007','17008','17009','17010',
  '17011','17012','17013','17014','17015','17016','17017','17018','17019','17020',
  '17021','17022','17023','17024','17025'
);

-- 2. Limpiar entidades curadas previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine IN (
  '14017','14018','14019','14020','14021','14022','14023','14024','14025','14026',
  '14027','14028','14029','14030','14031','14032','14033','14034','14035','14036',
  '14037','14038','14039','14040','14041','14042','14043','14044','14045','14046',
  '14047','14048','14049','14050','14051','14052','14053','14054','14055','14056',
  '14057','14058','14059','14060','14061','14062','14063','14064','14065','14066',
  '14067','14068','14069','14070','14071','14072','14073','14074','14075',
  '14901','14902',
  '17001','17002','17003','17004','17005','17006','17007','17008','17009','17010',
  '17011','17012','17013','17014','17015','17016','17017','17018','17019','17020',
  '17021','17022','17023','17024','17025'
);

-- ============================================================
-- SIERRA SUBBÉTICA (Parque Natural) — zona estrella de Córdoba
-- ============================================================

-- Zuheros: 91 +5 (Cañón del Bailón, múltiples artículos revista) = 96
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine='14075' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14075','sendero','Cañón del Bailón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14075','sendero','Cueva de los Murciélagos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14075','sendero','Sendero de la Fuente del Espino','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14075','sendero','Ruta del Castillo de Zuheros','excel_curado',date('now'));

-- Hornachuelos: 88 +4 (Parque Natural, artículos Río Bembézar) = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='14036' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14036','sendero','Río Bembézar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14036','sendero','Cañada del Vinagre','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14036','sendero','Sendero del Convento de San Francisco','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14036','sendero','Laguna de Zóñar','excel_curado',date('now'));

-- Priego de Córdoba: 85 +4 (Sierra Subbética, artículos nacionales) = 89
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine='14055' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14055','sendero','Sierra Subbética — Picacho de Cabra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14055','sendero','Sendero del Río Salado','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14055','sendero','Ruta de la Lastra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14055','sendero','Sendero del Molino Viejo','excel_curado',date('now'));

-- Cabra: 68 +3 (Sierra de Cabra, artículo Fuente del Río) = 71
UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='17006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17006','sendero','Sierra de Cabra — El Picacho','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17006','sendero','Fuente del Río','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17006','sendero','Sendero del Río Cabra','excel_curado',date('now'));

-- Rute: 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='14058' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14058','sendero','Sierra de Rute','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14058','sendero','Laguna Dulce','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14058','sendero','Sendero del Embalse de Iznájar','excel_curado',date('now'));

-- Iznájar: 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='14037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14037','sendero','Embalse de Iznájar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14037','sendero','Ruta del Pantano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14037','sendero','Sierra Subbética sur','excel_curado',date('now'));

-- Luque: 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='14039' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14039','sendero','Subbética — Sendero de Luque','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14039','sendero','Cueva del Fraile','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14039','sendero','Cerro de la Merced','excel_curado',date('now'));

-- Doña Mencía: 59
UPDATE puntuaciones SET puntuacion=59 WHERE codigo_ine='14022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14022','sendero','Acceso Parque Natural Subbética','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14022','sendero','Sendero del Olivar','excel_curado',date('now'));

-- Fuente-Tójar: 53
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='14031' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14031','sendero','Subbética — acceso sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14031','sendero','Río Caicena','excel_curado',date('now'));

-- Palenciana: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='14048' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14048','sendero','Entorno Subbética','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14048','sendero','Sierra Horconera','excel_curado',date('now'));

-- Encinas Reales: 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='14024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14024','sendero','Entorno Subbética','excel_curado',date('now'));

-- ============================================================
-- SIERRA MORENA / PARQUE NATURAL DE HORNACHUELOS Y CARDEÑA
-- ============================================================

-- Montoro: 67 (Parque Natural Sierra de Cardeña y Montoro, Río Guadalquivir)
UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='14043' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14043','sendero','Parque Natural Sierra de Cardeña y Montoro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14043','sendero','Río Guadalquivir — Sotos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14043','sendero','Sendero del Encinar','excel_curado',date('now'));

-- Obejo: 63 (Sierra Norte, Río Guadiato)
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='14047' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14047','sendero','Río Guadiato','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14047','sendero','Sierra Norte de Córdoba','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14047','sendero','Sendero del Encinar de Obejo','excel_curado',date('now'));

-- Fuente Obejuna: 62 (Sierra Morena, Río Zújar, minas históricas)
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='14029' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14029','sendero','Río Zújar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14029','sendero','Sierra Morena occidental','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14029','sendero','Sendero de las Minas','excel_curado',date('now'));

-- Espiel: 61 (Sierra Morena, embalse Puente Nuevo)
UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='14026' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14026','sendero','Embalse de Puente Nuevo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14026','sendero','Sierra Morena — Espiel','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14026','sendero','Río Guadiato tramo sur','excel_curado',date('now'));

-- Villaviciosa de Córdoba: 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='14073' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14073','sendero','Sierra Morena cordobesa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14073','sendero','Río Guadiato','excel_curado',date('now'));

-- Pozoblanco: 58 (Los Pedroches, Río Cuzna)
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='14054' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14054','sendero','Río Cuzna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14054','sendero','Dehesa de los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14054','sendero','Sendero del Encinar de los Pedroches','excel_curado',date('now'));

-- Villaharta: 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='14068' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14068','sendero','Embalse del Guadalmellato','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14068','sendero','Sierra Morena — acceso Córdoba','excel_curado',date('now'));

-- Almodóvar del Río: 52 (Río Guadalquivir, castillo, entorno serrano)
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='17002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17002','sendero','Río Guadalquivir — vega','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17002','sendero','Entorno Castillo de Almodóvar','excel_curado',date('now'));

-- Pedroche: 51 (Los Pedroches, encinar)
UPDATE puntuaciones SET puntuacion=51 WHERE codigo_ine='14051' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14051','sendero','Dehesa de Pedroche','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14051','sendero','Sendero del Encinar','excel_curado',date('now'));

-- Hinojosa del Duque: 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='14035' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14035','sendero','Sierra de los Santos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14035','sendero','Dehesa Los Pedroches','excel_curado',date('now'));

-- Belalcázar: 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='17004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17004','sendero','Entorno castillo y dehesa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17004','sendero','Los Pedroches norte','excel_curado',date('now'));

-- Villanueva de Córdoba: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='14069' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14069','sendero','Dehesa de los Pedroches','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14069','sendero','Sendero del Encinar','excel_curado',date('now'));

-- Villanueva del Rey: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='14071' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14071','sendero','Embalse de Puente Nuevo acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14071','sendero','Sierra Morena','excel_curado',date('now'));

-- El Guijo: 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='14034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14034','sendero','Los Pedroches','excel_curado',date('now'));

-- Conquista: 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='14020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14020','sendero','Dehesa de encinar','excel_curado',date('now'));

-- Santa Eufemia: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='14061' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14061','sendero','Sierra Morena norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14061','sendero','Río Zújar tramo alto','excel_curado',date('now'));

-- Torrecampo: 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='14062' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14062','sendero','Dehesa Los Pedroches','excel_curado',date('now'));

-- Dos Torres: 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='14023' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14023','sendero','Entorno Los Pedroches','excel_curado',date('now'));

-- El Viso: 34
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='14074' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14074','sendero','Dehesa de Los Pedroches','excel_curado',date('now'));

-- Valsequillo: 34
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='14064' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14064','sendero','Entorno Los Pedroches','excel_curado',date('now'));

-- Villaralto: 34
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='14072' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14072','sendero','Los Pedroches','excel_curado',date('now'));

-- Villanueva del Duque: 34
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='14070' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14070','sendero','Los Pedroches','excel_curado',date('now'));

-- ============================================================
-- CAMPIÑA / VEGAS / RESTO
-- ============================================================

-- Córdoba capital: 54 (Sierra Morena periurbana, GR-47, Medina Azahara entorno)
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='14021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14021','sendero','Sierra Morena periurbana de Córdoba','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14021','sendero','GR-47 tramo Córdoba','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14021','sendero','Entorno Medina Azahara','excel_curado',date('now'));

-- Baena: 55 (entorno olivarero, Cueva de los Murciélagos acceso, Subbética norte)
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='17003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17003','sendero','Cueva de los Murciélagos acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17003','sendero','Sendero del Olivar de Baena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17003','sendero','Río Marbella','excel_curado',date('now'));

-- Lucena: 44 (Laguna Zóñar, entorno Subbética)
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='14038' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14038','sendero','Laguna Zóñar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14038','sendero','Entorno Sierra Subbética','excel_curado',date('now'));

-- Posadas: 42 (acceso Parque Hornachuelos, Río Guadalquivir)
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='14053' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14053','sendero','Acceso Parque Natural Hornachuelos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14053','sendero','Río Guadalquivir ribera','excel_curado',date('now'));

-- Castro del Río: 33
UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='14019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14019','sendero','Río Guadajoz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14019','sendero','Entorno olivar campiña','excel_curado',date('now'));

-- Montilla: 32 (campiña vitivinícola, algunos senderos)
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='14042' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14042','sendero','Ruta de los Lagares','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14042','sendero','Entorno viñedos Montilla-Moriles','excel_curado',date('now'));

-- Aguilar de la Frontera: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='17001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17001','sendero','Laguna de Zóñar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17001','sendero','Entorno campiña','excel_curado',date('now'));

-- Puente Genil: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='14056' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14056','sendero','Río Genil ribera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14056','sendero','Entorno campiña','excel_curado',date('now'));

-- Palma del Río: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='14049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14049','sendero','Vega del Guadalquivir','excel_curado',date('now'));

-- Peñarroya-Pueblonuevo: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='14052' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14052','sendero','Entorno Sierra Morena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14052','sendero','Vía Verde del Guadiato','excel_curado',date('now'));

-- Bujalance: 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='17005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('17005','sendero','Entorno campiña y olivar','excel_curado',date('now'));

-- Espejo: 26
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='14025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14025','sendero','Entorno olivar campiña','excel_curado',date('now'));

-- El Carpio: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='14018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14018','sendero','Ribera del Guadalquivir','excel_curado',date('now'));

-- Villa del Río: 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='14066' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14066','sendero','Río Guadalquivir ribera','excel_curado',date('now'));

-- Montalbán de Córdoba: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='14040' AND categoria='senderismo';

-- Montemayor: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='14041' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14041','sendero','Entorno campiña','excel_curado',date('now'));

-- Monturque: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='14044' AND categoria='senderismo';

-- Moriles: 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='14045' AND categoria='senderismo';

-- Nueva Carteya: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='14046' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14046','sendero','Entorno campiña','excel_curado',date('now'));

-- Fernán Núñez: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='14027' AND categoria='senderismo';

-- Fuente la Lancha: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='14028' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14028','sendero','Sierra Morena','excel_curado',date('now'));

-- Fuente Palmera: 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='14030' AND categoria='senderismo';

-- La Granjuela: 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='14032' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14032','sendero','Los Pedroches','excel_curado',date('now'));

-- Guadalcázar: 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='14033' AND categoria='senderismo';

-- La Carlota: 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='14017' AND categoria='senderismo';

-- La Rambla: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='14057' AND categoria='senderismo';

-- La Victoria: 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='14065' AND categoria='senderismo';

-- Pedro Abad: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='14050' AND categoria='senderismo';

-- San Sebastián de los Ballesteros: 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='14059' AND categoria='senderismo';

-- Santaella: 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='14060' AND categoria='senderismo';

-- Valenzuela: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='14063' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('14063','sendero','Entorno campiña','excel_curado',date('now'));

-- Villafranca de Córdoba: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='14067' AND categoria='senderismo';

-- Fuente Carreteros: 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='14901' AND categoria='senderismo';

-- La Guijarrosa: 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='14902' AND categoria='senderismo';

-- Fernán-Núñez (nombre alternativo): 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='17010' AND categoria='senderismo';

-- ============================================================
-- SYNC: copiar puntuaciones 14xxx → 17xxx (duplicados)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14019' AND categoria='senderismo') WHERE codigo_ine='17007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14021' AND categoria='senderismo') WHERE codigo_ine='17008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14025' AND categoria='senderismo') WHERE codigo_ine='17009' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14029' AND categoria='senderismo') WHERE codigo_ine='17011' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14035' AND categoria='senderismo') WHERE codigo_ine='17012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14037' AND categoria='senderismo') WHERE codigo_ine='17013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14017' AND categoria='senderismo') WHERE codigo_ine='17014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14038' AND categoria='senderismo') WHERE codigo_ine='17015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14042' AND categoria='senderismo') WHERE codigo_ine='17016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14043' AND categoria='senderismo') WHERE codigo_ine='17017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14049' AND categoria='senderismo') WHERE codigo_ine='17018' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14052' AND categoria='senderismo') WHERE codigo_ine='17019' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14053' AND categoria='senderismo') WHERE codigo_ine='17020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14054' AND categoria='senderismo') WHERE codigo_ine='17021' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14055' AND categoria='senderismo') WHERE codigo_ine='17022' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14056' AND categoria='senderismo') WHERE codigo_ine='17023' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14058' AND categoria='senderismo') WHERE codigo_ine='17024' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='14069' AND categoria='senderismo') WHERE codigo_ine='17025' AND categoria='senderismo';

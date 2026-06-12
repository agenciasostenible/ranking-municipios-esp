-- 0030: Senderismo Albacete curado (reset + scores + entidades en códigos canónicos)
-- Generado: 2026-06-09
-- IMPORTANTE: entidades solo en código MIN de cada par duplicado

-- 1. Reset scores a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '02001','02002','02003','02004','02005','02006','02007','02008','02009','02010',
  '02011','02012','02013','02014','02015','02016','02017','02018','02019','02020',
  '02021','02022','02023','02024','02025','02026','02027','02028','02029','02030',
  '02031','02032','02033','02034','02035','02036','02037','02038','02039','02040',
  '02041','02042','02043','02044','02045','02046','02047','02048','02049','02050',
  '02051','02052','02053','02054','02055','02056','02057','02058','02059','02060',
  '02061','02062','02063','02064','02065','02066','02067','02068','02069','02070',
  '02071','02072','02073','02074','02075','02076','02077','02078','02079','02080',
  '02081','02082','02083','02084','02085','02086','02901'
);

-- 2. Limpiar entidades curadas previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine IN (
  '02001','02002','02003','02004','02005','02006','02007','02008','02009','02010',
  '02011','02012','02013','02014','02015','02016','02017','02018','02019','02020',
  '02021','02022','02023','02024','02025','02026','02027','02028','02029','02030',
  '02031','02032','02033','02034','02035','02036','02037','02038','02039','02040',
  '02041','02042','02043','02044','02045','02046','02047','02048','02049','02050',
  '02051','02052','02053','02054','02055','02056','02057','02058','02059','02060',
  '02061','02062','02063','02064','02065','02066','02067','02068','02069','02070',
  '02071','02072','02073','02074','02075','02076','02077','02078','02079','02080',
  '02081','02082','02083','02084','02085','02086','02901'
);

-- ============================================================
-- SIERRA DEL SEGURA — zona estrella de Albacete
-- ============================================================

-- Riópar: nacimiento Río Mundo, cascada icónica, top Wikiloc, artículos NatGeo = 95
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='02023' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02023','sendero','Nacimiento del Río Mundo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02023','sendero','Cascada del Río Mundo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02023','sendero','Cueva de los Chorros','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02023','sendero','PR-AB 3 Riópar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02023','sendero','Parque Natural Sierra del Segura','excel_curado',date('now'));

-- Ayna: hoz del Río Mundo, "balcón de La Mancha", muy fotografiado = 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='02006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02006','sendero','Hoz del Río Mundo — Ayna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02006','sendero','Sendero del Balcón de La Mancha','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02006','sendero','Ruta de la Hoz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02006','sendero','PR-AB 7 Ayna','excel_curado',date('now'));

-- Yeste: Parque Natural Sierra del Segura, embalse de Fuensanta, GR-240 = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='02030' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02030','sendero','Embalse de Fuensanta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02030','sendero','GR-240 Sendero del Segura','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02030','sendero','Parque Natural Sierra del Segura','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02030','sendero','Ruta del Río Tus','excel_curado',date('now'));

-- Nerpio: Parque Natural, pinturas rupestres neolíticas, sierra alta = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='02018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02018','sendero','Parque Natural Sierra del Segura — Nerpio','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02018','sendero','Pinturas rupestres Fuente del Sabuco','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02018','sendero','Sendero del Almadén','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02018','sendero','GR-240 tramo Nerpio','excel_curado',date('now'));

-- Paterna del Madera: Sierra del Segura alta, pueblos encantadores = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='02020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02020','sendero','Sierra del Segura alta — Paterna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02020','sendero','Sendero del Río Madera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02020','sendero','Ruta de los Pinares','excel_curado',date('now'));

-- Molinicos: Sierra del Segura, Río Mundo tramo medio = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='02049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02049','sendero','Río Mundo tramo Molinicos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02049','sendero','Sendero de las Tiñosas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02049','sendero','Sierra del Segura','excel_curado',date('now'));

-- Letur: pueblo de ladera, sierra, Parque Natural = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='02016' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02016','sendero','Sendero de la Hoz de Letur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02016','sendero','Ruta del Río Letur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02016','sendero','Parque Natural Sierra del Segura','excel_curado',date('now'));

-- Férez: Sierra del Segura, hoz = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='02013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02013','sendero','Hoz del Río Segura','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02013','sendero','Sierra del Segura sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02013','sendero','Sendero del Río Madera','excel_curado',date('now'));

-- Socovos: Sierra del Segura sur = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='02024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02024','sendero','Sierra del Segura — Socovos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02024','sendero','Río Segura ribera','excel_curado',date('now'));

-- Elche de la Sierra: acceso Sierra del Segura = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='02011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02011','sendero','Sierra del Segura — acceso norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02011','sendero','Río Mundo ribera','excel_curado',date('now'));

-- Salobre: Sierra del Segura = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='02070' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02070','sendero','Sierra del Segura — Salobre','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02070','sendero','Sendero del encinar','excel_curado',date('now'));

-- Villaverde de Guadalimar: Sierra del Segura = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='02084' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02084','sendero','Sierra del Segura alta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02084','sendero','Nacimiento del Guadalimar','excel_curado',date('now'));

-- Masegoso: Sierra del Segura = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='02047' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02047','sendero','Sierra del Segura — Masegoso','excel_curado',date('now'));

-- Vianos: Sierra de Alcaraz = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='02076' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02076','sendero','Sierra de Alcaraz — Vianos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02076','sendero','Sendero de la Sierra','excel_curado',date('now'));

-- Villapalacios: Sierra de Alcaraz = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='02080' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02080','sendero','Sierra de Alcaraz — Villapalacios','excel_curado',date('now'));

-- ============================================================
-- SIERRA DE ALCARAZ / JÚCAR
-- ============================================================

-- Alcalá del Júcar: hoz del Júcar, cuevas, muy fotogénico = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='02003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02003','sendero','Hoz del Júcar — Alcalá','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02003','sendero','Sendero del Castillo al Júcar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02003','sendero','Cueva del Diablo','excel_curado',date('now'));

-- Alcaraz: Sierra de Alcaraz, Parque Natural, patrimonio = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='02004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02004','sendero','Sierra de Alcaraz — Calar del Mundo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02004','sendero','GR-240 tramo Alcaraz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02004','sendero','Sendero del Río Guadalmena','excel_curado',date('now'));

-- Liétor: hoz del Mundo, pueblo encaramado = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='02044' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02044','sendero','Hoz del Río Mundo — Liétor','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02044','sendero','Sendero de la Hoz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02044','sendero','Ruta del Castillo','excel_curado',date('now'));

-- Peñas de San Pedro: sierra, castillo = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='02060' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02060','sendero','Sierra de Peñas de San Pedro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02060','sendero','Sendero del Castillo','excel_curado',date('now'));

-- Peñascosa: Sierra de Alcaraz = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='02021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02021','sendero','Sierra de Alcaraz','excel_curado',date('now'));

-- Jorquera: Júcar, castillo medieval = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='02041' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02041','sendero','Hoz del Júcar — Jorquera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02041','sendero','Sendero del castillo','excel_curado',date('now'));

-- Ossa de Montiel: lagunas periféricas de Ruidera = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='02019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02019','sendero','Lagunas de Ruidera — sector Albacete','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02019','sendero','Laguna Blanca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02019','sendero','Sendero del Alto Guadiana','excel_curado',date('now'));

-- Alcadozo: sierra media = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='02002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02002','sendero','Sierra de Alcadozo','excel_curado',date('now'));

-- ============================================================
-- HELLÍN / TOBARRA / ZONA CENTRAL
-- ============================================================

-- Hellín: termales, sierra media = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='02014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02014','sendero','Baños de Hellín','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02014','sendero','Pinturas rupestres del Tolmo de Minateda','excel_curado',date('now'));

-- Tobarra: sierra baja = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='02025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02025','sendero','Sierra de Tobarra','excel_curado',date('now'));

-- Ontur: sierra baja, Río Mundo = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='02056' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02056','sendero','Entorno sierra','excel_curado',date('now'));

-- Montealegre del Castillo: castillo, sierra media = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='02017' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02017','sendero','Castillo de Montealegre','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02017','sendero','Entorno sierra','excel_curado',date('now'));

-- Almansa: castillo, algo de sierra = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='02005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02005','sendero','Castillo de Almansa','excel_curado',date('now'));

-- ============================================================
-- LA MANCHA / ZONA LLANA
-- ============================================================

-- Albacete capital: llano = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='02001' AND categoria='senderismo';

-- Chinchilla de Montearagón: sierra baja, castillo = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='02010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02010','sendero','Castillo de Chinchilla','excel_curado',date('now'));

-- Villarrobledo: llano = 15
UPDATE puntuaciones SET puntuacion=15 WHERE codigo_ine='02027' AND categoria='senderismo';

-- La Roda: llano = 15
UPDATE puntuaciones SET puntuacion=15 WHERE codigo_ine='02015' AND categoria='senderismo';

-- Casas Ibáñez: llano = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='02008' AND categoria='senderismo';

-- Pozohondo: campiña = 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='02022' AND categoria='senderismo';

-- Viveros: llano = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='02029' AND categoria='senderismo';

-- Caudete: sierra baja = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='02009' AND categoria='senderismo';

-- Fuenteálamo: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='02012' AND categoria='senderismo';

-- Balazote: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='02007' AND categoria='senderismo';

-- Munera: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='02053' AND categoria='senderismo';

-- Lezuza: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='02043' AND categoria='senderismo';

-- Villamalea: viña, llano = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='02026' AND categoria='senderismo';

-- Tarazona de la Mancha: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='02073' AND categoria='senderismo';

-- Madrigueras: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02045' AND categoria='senderismo';

-- Mahora: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02046' AND categoria='senderismo';

-- Minaya: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02048' AND categoria='senderismo';

-- Villavaliente: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='02028' AND categoria='senderismo';

-- San Pedro: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02071' AND categoria='senderismo';

-- Villatoya: Júcar, algo = 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='02082' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02082','sendero','Hoz del Júcar — Villatoya','excel_curado',date('now'));

-- Villa de Ves: Júcar, pequeño = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='02077' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('02077','sendero','Hoz del Júcar','excel_curado',date('now'));

-- Navas de Jorquera: Júcar = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='02054' AND categoria='senderismo';

-- Villalgordo del Júcar: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='02078' AND categoria='senderismo';

-- Fuentealbilla: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02034' AND categoria='senderismo';

-- Motilleja: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02052' AND categoria='senderismo';

-- Higueruela: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='02039' AND categoria='senderismo';

-- Hoya-Gonzalo: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02040' AND categoria='senderismo';

-- Golosalvo: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='02036' AND categoria='senderismo';

-- Montalvos: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='02050' AND categoria='senderismo';

-- Pétrola: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02061' AND categoria='senderismo';

-- Povedilla: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='02062' AND categoria='senderismo';

-- Pozo Cañada: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='02901' AND categoria='senderismo';

-- Pozuelo: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='02065' AND categoria='senderismo';

-- Pozo-Lorente: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='02064' AND categoria='senderismo';

-- La Recueja: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='02066' AND categoria='senderismo';

-- Fuensanta: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02032' AND categoria='senderismo';

-- Fuente-Álamo: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02033' AND categoria='senderismo';

-- La Gineta: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02035' AND categoria='senderismo';

-- La Herrera: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='02038' AND categoria='senderismo';

-- Robledo: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02068' AND categoria='senderismo';

-- Valdeganga: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='02075' AND categoria='senderismo';

-- Villarrobledo (varios): llano
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='02068' AND categoria='senderismo';

-- ============================================================
-- SYNC: copiar puntuaciones MIN → MAX (duplicados)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02013' AND categoria='senderismo') WHERE codigo_ine='02031' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02014' AND categoria='senderismo') WHERE codigo_ine='02037' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02015' AND categoria='senderismo') WHERE codigo_ine='02069' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02016' AND categoria='senderismo') WHERE codigo_ine='02042' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02017' AND categoria='senderismo') WHERE codigo_ine='02051' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02018' AND categoria='senderismo') WHERE codigo_ine='02055' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02019' AND categoria='senderismo') WHERE codigo_ine='02057' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02020' AND categoria='senderismo') WHERE codigo_ine='02058' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02021' AND categoria='senderismo') WHERE codigo_ine='02059' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02022' AND categoria='senderismo') WHERE codigo_ine='02063' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02023' AND categoria='senderismo') WHERE codigo_ine='02067' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02024' AND categoria='senderismo') WHERE codigo_ine='02072' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02025' AND categoria='senderismo') WHERE codigo_ine='02074' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02026' AND categoria='senderismo') WHERE codigo_ine='02079' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02027' AND categoria='senderismo') WHERE codigo_ine='02081' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02028' AND categoria='senderismo') WHERE codigo_ine='02083' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02029' AND categoria='senderismo') WHERE codigo_ine='02085' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='02030' AND categoria='senderismo') WHERE codigo_ine='02086' AND categoria='senderismo';

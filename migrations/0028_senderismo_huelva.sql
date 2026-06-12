-- 0028: Senderismo Huelva curado
-- Generado: 2026-06-08
-- Entidades en códigos MIN: 21xxx para duplicados, 22xxx para únicos solo-22xxx

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '21021','21022','21023','21024','21025','21026','21027','21028','21029','21030',
  '21031','21032','21033','21034','21035','21036','21037','21038','21039','21040',
  '21041','21042','21043','21044','21045','21046','21047','21048','21049','21050',
  '21051','21052','21053','21054','21055','21056','21057','21058','21059','21060',
  '21061','21062','21063','21064','21065','21066','21067','21068','21069','21070',
  '21071','21072','21073','21074','21075','21076','21077','21078','21079','21902',
  '22001','22002','22003','22004','22005','22006','22007','22008','22009','22010',
  '22011','22012','22013','22014','22015','22016','22017','22018','22019','22020',
  '22021','22022','22023','22024'
);

-- 2. Limpiar entidades curadas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine IN (
  '21021','21022','21023','21024','21025','21026','21027','21028','21029','21030',
  '21031','21032','21033','21034','21035','21036','21037','21038','21039','21040',
  '21041','21042','21043','21044','21045','21046','21047','21048','21049','21050',
  '21051','21052','21053','21054','21055','21056','21057','21058','21059','21060',
  '21061','21062','21063','21064','21065','21066','21067','21068','21069','21070',
  '21071','21072','21073','21074','21075','21076','21077','21078','21079','21902',
  '22001','22002','22003','22004','22005','22006','22007','22008','22009','22010',
  '22011','22012','22013','22014','22015','22016','22017','22018','22019','22020',
  '22021','22022','22023','22024'
);

-- ============================================================
-- SIERRA DE ARACENA Y PICOS DE AROCHE (zona estrella)
-- ============================================================

-- Aracena: 89 +5 (Gruta de las Maravillas, artículos nacionales) = 94
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='22004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22004','sendero','Sendero del Castillo de Aracena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22004','sendero','PR-A 26 Sierra de Aracena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22004','sendero','Ruta del Agua de Aracena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22004','sendero','Gruta de las Maravillas entorno','excel_curado',date('now'));

-- Fuenteheridos: 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='21033' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21033','sendero','Fuente de los Doce Caños','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21033','sendero','Sendero de Fuenteheridos a Galaroza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21033','sendero','PR-A Sierra de Aracena','excel_curado',date('now'));

-- Alájar: 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='22003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22003','sendero','Peña de Arias Montano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22003','sendero','Sendero de la Fuente del Peral','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22003','sendero','Ruta de las Fuentes','excel_curado',date('now'));

-- Linares de la Sierra: 80 (pueblo con empedrado único, rutas PR-A famosas)
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='21045' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21045','sendero','PR-A Linares — Aracena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21045','sendero','Sendero del Río Múrtigas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21045','sendero','Ruta de los Castañares','excel_curado',date('now'));

-- Almonaster la Real: 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='22001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22001','sendero','Sendero de la Mezquita','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22001','sendero','Sierra Aracena — Almonaster','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22001','sendero','Ruta del Pico Castaño','excel_curado',date('now'));

-- Zufre: 76 (Pantano de Zufre, cañón espectacular)
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='21079' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21079','sendero','Pantano de Zufre','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21079','sendero','Cañón del Río Rivera de Huelva','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21079','sendero','Sierra de Aracena sur','excel_curado',date('now'));

-- Galaroza: 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='21034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21034','sendero','Sendero de Galaroza a Los Marines','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21034','sendero','Río Múrtigas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21034','sendero','Castañares de Galaroza','excel_curado',date('now'));

-- Los Marines: 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='21048' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21048','sendero','PR-A Los Marines — Fuenteheridos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21048','sendero','Sierra de Aracena alta','excel_curado',date('now'));

-- Minas de Riotinto: 70 (paisaje único, Peña de Hierro, Corta Atalaya)
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='21049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21049','sendero','Peña de Hierro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21049','sendero','Sendero de la Corta Atalaya','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21049','sendero','Río Tinto rojo (Mars on Earth)','excel_curado',date('now'));

-- Castaño del Robledo: 74 (uno de los pueblos más bonitos de Andalucía)
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='21022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21022','sendero','Ruta del Castaño del Robledo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21022','sendero','Sierra Aracena — Castaño','excel_curado',date('now'));

-- Aroche: 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='22005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22005','sendero','GR-48 Ruta de la Plata','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22005','sendero','Sierra de Aroche','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22005','sendero','Sendero de las Murallas Romanas','excel_curado',date('now'));

-- Cortegana: 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='21025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21025','sendero','Castillo de Cortegana entorno','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21025','sendero','Sierra de Aracena oeste','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21025','sendero','Sendero del Río Múrtigas','excel_curado',date('now'));

-- Jabugo: 62 (Sierra + Jamón ibérico)
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='21043' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21043','sendero','Sierra de Aracena — Jabugo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21043','sendero','Sendero del Encinar ibérico','excel_curado',date('now'));

-- Cumbres Mayores: 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='21029' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21029','sendero','Sierra de Aracena norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21029','sendero','Sendero de las Dehesas','excel_curado',date('now'));

-- Puerto Moral: 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='21059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21059','sendero','PR-A Puerto Moral','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21059','sendero','Sierra Aracena — Puerto Moral','excel_curado',date('now'));

-- Santa Ana la Real: 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='21067' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21067','sendero','Sendero del Río Múrtigas bajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21067','sendero','Sierra Aracena sur','excel_curado',date('now'));

-- Valdelarco: 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='21071' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21071','sendero','Sierra Aracena — Valdelarco','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21071','sendero','Castañar centenario','excel_curado',date('now'));

-- Cortelazor: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='21026' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21026','sendero','Sierra Aracena — Cortelazor','excel_curado',date('now'));

-- Higuera de la Sierra: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='21038' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21038','sendero','Sierra Aracena — Higuera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21038','sendero','Sendero del encinar','excel_curado',date('now'));

-- Encinasola: 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='21031' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21031','sendero','Sierra norte de Huelva','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21031','sendero','Embalse del Chanza','excel_curado',date('now'));

-- Hinojales: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='21039' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21039','sendero','Sierra Aracena — Hinojales','excel_curado',date('now'));

-- Cumbres de Enmedio: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='21027' AND categoria='senderismo';

-- Cumbres de San Bartolomé: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='21028' AND categoria='senderismo';

-- Santa Olalla del Cala: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='21069' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21069','sendero','Sierra Norte de Sevilla acceso Huelva','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21069','sendero','Río Rivera de Huelva','excel_curado',date('now'));

-- La Granada de Riotinto: 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='21036' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21036','sendero','Cueva de la Mora','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21036','sendero','Entorno minero Riotinto','excel_curado',date('now'));

-- Nerva: 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='21052' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21052','sendero','Entorno Riotinto','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21052','sendero','Río Tinto tramo Nerva','excel_curado',date('now'));

-- Zalamea la Real: 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='21078' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21078','sendero','Dolmen de Soto','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21078','sendero','Entorno sierra sur Aracena','excel_curado',date('now'));

-- Corteconcepción: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='21024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21024','sendero','Sierra Aracena — acceso','excel_curado',date('now'));

-- El Cerro de Andévalo: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='21023' AND categoria='senderismo';

-- Rosal de la Frontera: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='21062' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21062','sendero','Río Chanza frontera','excel_curado',date('now'));

-- Paymogo: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='21057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21057','sendero','Embalse del Chanza','excel_curado',date('now'));

-- Puebla de Guzmán: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='21058' AND categoria='senderismo';

-- El Granado: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='21037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21037','sendero','Río Guadiana frontera','excel_curado',date('now'));

-- Sanlúcar de Guadiana: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='21065' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21065','sendero','Río Guadiana — Sanlúcar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21065','sendero','Aldea Portuguesa de Alcoutim','excel_curado',date('now'));

-- San Silvestre de Guzmán: 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='21066' AND categoria='senderismo';

-- Santa Bárbara de Casa: 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='21068' AND categoria='senderismo';

-- La Nava: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='21051' AND categoria='senderismo';

-- La Zarza-Perrunal: 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='21902' AND categoria='senderismo';

-- ============================================================
-- DOÑANA / MARISMAS / COSTA
-- ============================================================

-- El Rocío: 82 (Doñana, avifauna, icónico)
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='22011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22011','sendero','Parque Nacional Doñana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22011','sendero','Marismas del Rocío','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22011','sendero','Sendero del Palacio de El Acebrón','excel_curado',date('now'));

-- Almonte: 72 (Doñana — municipio de mayor extensión del PN)
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='22002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22002','sendero','Parque Nacional Doñana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22002','sendero','Marismas del Guadalquivir','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22002','sendero','Sendero de La Rocina','excel_curado',date('now'));

-- Mazagón: 58 (Doñana, dunas, Parque Natural)
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='22019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22019','sendero','Parque Natural Doñana — Mazagón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22019','sendero','Dunas de Mazagón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22019','sendero','Sendero costero Doñana','excel_curado',date('now'));

-- Hinojos: 54 (Doñana interior, marismas)
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='21040' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21040','sendero','Doñana interior','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21040','sendero','Marismas del Guadiamar','excel_curado',date('now'));

-- Moguer: 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='21050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21050','sendero','Marismas del Odiel','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21050','sendero','Paraje Natural Estero Domingo Rubio','excel_curado',date('now'));

-- Matalascañas: 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='22018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22018','sendero','Doñana costa — Matalascañas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22018','sendero','Dunas fósiles Doñana','excel_curado',date('now'));

-- Palos de la Frontera: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='21055' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21055','sendero','Marismas del Odiel','excel_curado',date('now'));

-- Ayamonte: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='22006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22006','sendero','Parque Natural Marismas del Río Piedras','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22006','sendero','Río Guadiana desembocadura','excel_curado',date('now'));

-- Cartaya: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='21021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21021','sendero','Parque Natural Marismas del Río Piedras','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21021','sendero','El Rompido','excel_curado',date('now'));

-- Isla Cristina: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='21042' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21042','sendero','Marismas de Isla Cristina','excel_curado',date('now'));

-- Punta Umbría: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='21060' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21060','sendero','Marismas del Odiel','excel_curado',date('now'));

-- ============================================================
-- RESTO
-- ============================================================
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='21035' AND categoria='senderismo'; -- Gibraleón
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='21041' AND categoria='senderismo'; -- Huelva capital
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='21053' AND categoria='senderismo'; -- Niebla (castillo)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21053','sendero','Entorno murallas de Niebla','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='21046' AND categoria='senderismo'; -- Lucena del Puerto
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='21047' AND categoria='senderismo'; -- Manzanilla
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='21054' AND categoria='senderismo'; -- La Palma del Condado
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='21056' AND categoria='senderismo'; -- Paterna del Campo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='21061' AND categoria='senderismo'; -- Rociana del Condado
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='21063' AND categoria='senderismo'; -- San Bartolomé de la Torre
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='21064' AND categoria='senderismo'; -- San Juan del Puerto
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='21070' AND categoria='senderismo'; -- Trigueros
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='21072' AND categoria='senderismo'; -- Valverde del Camino
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='21073' AND categoria='senderismo'; -- Villablanca
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='21074' AND categoria='senderismo'; -- Villalba del Alcor
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='21075' AND categoria='senderismo'; -- Villanueva de las Cruces
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='21076' AND categoria='senderismo'; -- Villanueva de los Castillejos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='21077' AND categoria='senderismo'; -- Villarrasa
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='21030' AND categoria='senderismo'; -- Chucena
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='21032' AND categoria='senderismo'; -- Escacena del Campo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='21044' AND categoria='senderismo'; -- Lepe
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='21050' AND categoria='senderismo'; -- Moguer (ya arriba, este no aplica)

-- ============================================================
-- SYNC scores: 21xxx → 22xxx para pares duplicados
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21021' AND categoria='senderismo') WHERE codigo_ine='22007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21022' AND categoria='senderismo') WHERE codigo_ine='22008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21025' AND categoria='senderismo') WHERE codigo_ine='22009' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21029' AND categoria='senderismo') WHERE codigo_ine='22010' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21033' AND categoria='senderismo') WHERE codigo_ine='22012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21041' AND categoria='senderismo') WHERE codigo_ine='22013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21042' AND categoria='senderismo') WHERE codigo_ine='22014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21043' AND categoria='senderismo') WHERE codigo_ine='22015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21054' AND categoria='senderismo') WHERE codigo_ine='22016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21044' AND categoria='senderismo') WHERE codigo_ine='22017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21050' AND categoria='senderismo') WHERE codigo_ine='22020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21055' AND categoria='senderismo') WHERE codigo_ine='22021' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21060' AND categoria='senderismo') WHERE codigo_ine='22022' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21072' AND categoria='senderismo') WHERE codigo_ine='22023' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='21079' AND categoria='senderismo') WHERE codigo_ine='22024' AND categoria='senderismo';

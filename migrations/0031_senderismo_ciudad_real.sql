-- 0031: Senderismo Ciudad Real curado (reset + scores + entidades en códigos canónicos)
-- Generado: 2026-06-09
-- IMPORTANTE: entidades solo en código MIN de cada par duplicado

-- 1. Reset scores a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '13001','13002','13003','13004','13005','13006','13007','13008','13009','13010',
  '13011','13012','13013','13014','13015','13016','13017','13018','13019','13020',
  '13021','13022','13023','13024','13025','13026','13027','13028','13029','13030',
  '13031','13032','13033','13034','13035','13036','13037','13038','13039','13040',
  '13041','13042','13043','13044','13045','13046','13047','13048','13049','13050',
  '13051','13052','13053','13054','13055','13056','13057','13058','13059','13060',
  '13061','13062','13063','13064','13065','13066','13067','13068','13069','13070',
  '13071','13072','13073','13074','13075','13076','13077','13078','13079','13080',
  '13081','13082','13083','13084','13085','13086','13087','13088','13089','13090',
  '13091','13092','13093','13094','13095','13096','13097','13098',
  '13901','13902','13903','13904'
);

-- 2. Limpiar entidades curadas previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine IN (
  '13001','13002','13003','13004','13005','13006','13007','13008','13009','13010',
  '13011','13012','13013','13014','13015','13016','13017','13018','13019','13020',
  '13021','13022','13023','13024','13025','13026','13027','13028','13029','13030',
  '13031','13032','13033','13034','13035','13036','13037','13038','13039','13040',
  '13041','13042','13043','13044','13045','13046','13047','13048','13049','13050',
  '13051','13052','13053','13054','13055','13056','13057','13058','13059','13060',
  '13061','13062','13063','13064','13065','13066','13067','13068','13069','13070',
  '13071','13072','13073','13074','13075','13076','13077','13078','13079','13080',
  '13081','13082','13083','13084','13085','13086','13087','13088','13089','13090',
  '13091','13092','13093','13094','13095','13096','13097','13098',
  '13901','13902','13903','13904'
);

-- ============================================================
-- PARQUE NACIONAL CABAÑEROS — zona estrella de Ciudad Real
-- ============================================================

-- Navas de Estena: Parque Nacional Cabañeros, icónico, rutas PR señalizadas = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='13060' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13060','sendero','Parque Nacional Cabañeros — Navas de Estena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13060','sendero','Ruta del Raña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13060','sendero','Sendero del Alcornocal','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13060','sendero','PR-CR 4','excel_curado',date('now'));

-- Horcajo de los Montes: PN Cabañeros, acceso principal, centro de visitantes = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='13049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13049','sendero','Parque Nacional Cabañeros — Horcajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13049','sendero','Ruta del Boquerón del Estena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13049','sendero','Sendero del Alcornocal','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13049','sendero','Centro de Visitantes El Castellar','excel_curado',date('now'));

-- Arroba de los Montes: PN Cabañeros, buenos senderos = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='13021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13021','sendero','Parque Nacional Cabañeros — Arroba','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13021','sendero','Ruta de los Alcornoques','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13021','sendero','Río Bullaque tramo alto','excel_curado',date('now'));

-- Retuerta del Bullaque: PN Cabañeros, entorno = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='13072' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13072','sendero','Parque Nacional Cabañeros — Retuerta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13072','sendero','Río Bullaque','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13072','sendero','Sendero de la Dehesa','excel_curado',date('now'));

-- Fontanarejo: Montes de Toledo/Cabañeros periférico = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='13041' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13041','sendero','Montes de Toledo — Fontanarejo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13041','sendero','Río Estena','excel_curado',date('now'));

-- Navalpino: Montes de Toledo = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='13059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13059','sendero','Montes de Toledo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13059','sendero','Sendero del encinar','excel_curado',date('now'));

-- ============================================================
-- LAGUNAS DE RUIDERA — Parque Natural
-- ============================================================

-- Ruidera: Parque Natural Lagunas de Ruidera, icónico = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='13014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13014','sendero','Lagunas de Ruidera — Parque Natural','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13014','sendero','Sendero de las Lagunas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13014','sendero','Cueva de Montesinos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13014','sendero','PR-CR 1 Ruta de las Lagunas','excel_curado',date('now'));

-- ============================================================
-- SIERRA MORENA / CAMPO DE CALATRAVA
-- ============================================================

-- Fuencaliente: Sierra Morena, pinturas rupestres neolíticas, PN Sierra Madrona = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='13042' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13042','sendero','Parque Natural Sierra Madrona','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13042','sendero','Pinturas rupestres Fuencaliente','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13042','sendero','Sendero del Río Ojailén','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13042','sendero','GR-113 Sierra Morena','excel_curado',date('now'));

-- Brazatortas: Sierra Morena, PN Sierra Madrona = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='13024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13024','sendero','Sierra Madrona — Brazatortas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13024','sendero','Río Fresnedas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13024','sendero','Sendero del encinar y alcornocal','excel_curado',date('now'));

-- Mestanza: Sierra Morena sur = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='13055' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13055','sendero','Sierra Morena — Mestanza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13055','sendero','Río Fresnedas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13055','sendero','GR-113','excel_curado',date('now'));

-- Solana del Pino: Sierra Morena, pueblo entre pinares = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='13080' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13080','sendero','Sierra Madrona — Solana del Pino','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13080','sendero','Sendero del pinar','excel_curado',date('now'));

-- Viso del Marqués: Sierra Morena, Parque Natural = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='13020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13020','sendero','Sierra Morena — Viso del Marqués','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13020','sendero','Parque Natural Sierra Madrona','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13020','sendero','Sendero del Alcornocal','excel_curado',date('now'));

-- Cabezarrubias del Puerto: Sierra Morena = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='13026' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13026','sendero','Sierra Morena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13026','sendero','Sendero del encinar','excel_curado',date('now'));

-- Hinojosas de Calatrava: Sierra Morena = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='13048' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13048','sendero','Sierra Morena — Hinojosas','excel_curado',date('now'));

-- San Lorenzo de Calatrava: Sierra Morena = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='13075' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13075','sendero','Sierra Morena sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13075','sendero','Río Fresnedas','excel_curado',date('now'));

-- Valdemanco del Esteras: Sierra Morena = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='13086' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13086','sendero','Sierra Morena — Valdemanco','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13086','sendero','Río Esteras','excel_curado',date('now'));

-- Guadalmez: Sierra Morena = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='13046' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13046','sendero','Sierra Morena — Guadalmez','excel_curado',date('now'));

-- Chillón: Sierra Morena = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='13038' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13038','sendero','Sierra Morena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13038','sendero','Río Guadalmez','excel_curado',date('now'));

-- Saceruela: Sierra Morena = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='13073' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13073','sendero','Sierra Morena — Saceruela','excel_curado',date('now'));

-- ============================================================
-- MONTES DE TOLEDO / GUADIANA
-- ============================================================

-- Piedrabuena: Montes de Toledo, Río Bullaque = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='13063' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13063','sendero','Río Bullaque','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13063','sendero','Montes de Toledo sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13063','sendero','Sendero del Castillo de Miraflores','excel_curado',date('now'));

-- Porzuna: Montes de Toledo = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='13065' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13065','sendero','Montes de Toledo — Porzuna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13065','sendero','Sendero del encinar','excel_curado',date('now'));

-- Luciana: Montes de Toledo = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='13051' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13051','sendero','Montes de Toledo — Luciana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13051','sendero','Río Esteras','excel_curado',date('now'));

-- Picón: Montes de Toledo = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='13062' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13062','sendero','Montes de Toledo periférico','excel_curado',date('now'));

-- Puebla de Don Rodrigo: Guadiana, Montes = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='13068' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13068','sendero','Río Guadiana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13068','sendero','Montes de Toledo','excel_curado',date('now'));

-- ============================================================
-- TABLAS DE DAIMIEL / CAMPO DE MONTIEL
-- ============================================================

-- Daimiel: Parque Nacional Tablas de Daimiel = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='13005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13005','sendero','Parque Nacional Tablas de Daimiel','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13005','sendero','Sendero Laguna del Pan y del Peces','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13005','sendero','Sendero de Los Escarbos','excel_curado',date('now'));

-- Villahermosa: Campo de Montiel, laguna = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='13089' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13089','sendero','Campo de Montiel','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13089','sendero','Laguna Blanca','excel_curado',date('now'));

-- Montiel: Campo de Montiel, castillo = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='13057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13057','sendero','Castillo de la Estrella — Montiel','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13057','sendero','Campo de Montiel','excel_curado',date('now'));

-- Alambra... not in list. Ossa de Montiel is in Albacete.

-- Terrinches: Campo de Montiel = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='13081' AND categoria='senderismo';

-- Puebla del Príncipe: Campo de Montiel = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='13069' AND categoria='senderismo';

-- Torre de Juan Abad: Campo de Montiel = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='13084' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13084','sendero','Campo de Montiel — Torre de Juan Abad','excel_curado',date('now'));

-- Malagón: Montes de Toledo acceso = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='13008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13008','sendero','Montes de Toledo acceso','excel_curado',date('now'));

-- Cabezarados: Montes de Toledo = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='13025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13025','sendero','Montes de Toledo','excel_curado',date('now'));

-- Fuente el Fresno: llano = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='13044' AND categoria='senderismo';

-- ============================================================
-- CAMPO LLANO / RESTO
-- ============================================================

-- Puertollano: ciudad industrial, algo sierra = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='13013' AND categoria='senderismo';

-- Almagro: llano, histórico = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='13002' AND categoria='senderismo';

-- Ciudad Real capital: llano = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='13004' AND categoria='senderismo';

-- Valdepeñas: llano, vino = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='13018' AND categoria='senderismo';

-- Alcázar de San Juan: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='13001' AND categoria='senderismo';

-- Campo de Criptana: molinos de viento, llano = 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='13028' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13028','sendero','Molinos de viento de Criptana','excel_curado',date('now'));

-- Manzanares: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='13009' AND categoria='senderismo';

-- Tomelloso: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13017' AND categoria='senderismo';

-- Socuéllamos: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13016' AND categoria='senderismo';

-- Argamasilla de Alba: llano, Don Quijote = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='13003' AND categoria='senderismo';

-- Miguelturra: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13011' AND categoria='senderismo';

-- Bolaños de Calatrava: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='13023' AND categoria='senderismo';

-- Villanueva de los Infantes: llano = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='13019' AND categoria='senderismo';

-- La Solana: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13007' AND categoria='senderismo';

-- Membrilla: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='13010' AND categoria='senderismo';

-- Moral de Calatrava: campo = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='13012' AND categoria='senderismo';

-- Calzada de Calatrava: campo = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='13027' AND categoria='senderismo';

-- Santa Cruz de Mudela: llano = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='13015' AND categoria='senderismo';

-- Granatula: campo volcánico, lagunillas = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='13045' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13045','sendero','Lagunas volcánicas del Campo de Calatrava','excel_curado',date('now'));

-- Carrión de Calatrava: campo = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='13031' AND categoria='senderismo';

-- Cañada de Calatrava: campo volcánico = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='13029' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13029','sendero','Volcanes del Campo de Calatrava','excel_curado',date('now'));

-- Corral de Calatrava: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='13030' AND categoria='senderismo';

-- Ballesteros de Calatrava: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13022' AND categoria='senderismo';

-- Los Cortijos: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='13036' AND categoria='senderismo';

-- Pozuelo de Calatrava: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13066' AND categoria='senderismo';

-- Poblete: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='13064' AND categoria='senderismo';

-- Fernán Caballero: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='13040' AND categoria='senderismo';

-- Torralba de Calatrava: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13083' AND categoria='senderismo';

-- Valenzuela de Calatrava: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='13088' AND categoria='senderismo';

-- Pedro Muñoz: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='13061' AND categoria='senderismo';

-- Puerto Lápice: Don Quijote, llano = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='13070' AND categoria='senderismo';

-- Las Labores: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='13050' AND categoria='senderismo';

-- Villarta de San Juan: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='13097' AND categoria='senderismo';

-- Villarrubia de los Ojos: llano, lagunas = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='13096' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('13096','sendero','Lagunas de Villarrubia','excel_curado',date('now'));

-- Fuenllana: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='13043' AND categoria='senderismo';

-- Herencia: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13047' AND categoria='senderismo';

-- Carrizosa: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='13032' AND categoria='senderismo';

-- Fuente el Fresno: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='13044' AND categoria='senderismo';

-- San Carlos del Valle: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13074' AND categoria='senderismo';

-- Villanueva de la Fuente: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='13092' AND categoria='senderismo';

-- Villamanrique: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13090' AND categoria='senderismo';

-- Villamayor de Calatrava: llano = 12
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='13091' AND categoria='senderismo';

-- Villanueva de San Carlos: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='13094' AND categoria='senderismo';

-- Villar del Pozo: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='13095' AND categoria='senderismo';

-- Torrenueva: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='13085' AND categoria='senderismo';

-- Santa Cruz de los Cáñamos: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13076' AND categoria='senderismo';

-- Cózar: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13037' AND categoria='senderismo';

-- Castellar de Santiago: llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='13033' AND categoria='senderismo';

-- El Robledo: llano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='13901' AND categoria='senderismo';

-- Arenales de San Gregorio: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='13903' AND categoria='senderismo';

-- Llanos del Caudillo: llano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='13904' AND categoria='senderismo';

-- ============================================================
-- SYNC: copiar puntuaciones MIN → MAX (duplicados)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13004' AND categoria='senderismo') WHERE codigo_ine='13034' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13005' AND categoria='senderismo') WHERE codigo_ine='13039' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13007' AND categoria='senderismo') WHERE codigo_ine='13079' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13008' AND categoria='senderismo') WHERE codigo_ine='13052' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13009' AND categoria='senderismo') WHERE codigo_ine='13053' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13010' AND categoria='senderismo') WHERE codigo_ine='13054' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13011' AND categoria='senderismo') WHERE codigo_ine='13056' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13012' AND categoria='senderismo') WHERE codigo_ine='13058' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13013' AND categoria='senderismo') WHERE codigo_ine='13071' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13014' AND categoria='senderismo') WHERE codigo_ine='13902' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13015' AND categoria='senderismo') WHERE codigo_ine='13077' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13016' AND categoria='senderismo') WHERE codigo_ine='13078' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13017' AND categoria='senderismo') WHERE codigo_ine='13082' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13018' AND categoria='senderismo') WHERE codigo_ine='13087' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13019' AND categoria='senderismo') WHERE codigo_ine='13093' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='13020' AND categoria='senderismo') WHERE codigo_ine='13098' AND categoria='senderismo';

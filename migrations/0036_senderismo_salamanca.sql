-- 0036: Senderismo Salamanca curado — Sierra de Francia y Béjar
-- Generado: 2026-06-09

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  codigo_ine BETWEEN '37001' AND '37382'
);

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  codigo_ine BETWEEN '37001' AND '37382'
);

-- ============================================================
-- SIERRA DE FRANCIA / PEÑA DE FRANCIA — zona TOP
-- ============================================================

-- Candelario: Parque Natural Sierra de Francia, top España = 95
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='37001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37001','sendero','Parque Natural Sierra de Candelario','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37001','sendero','GR-10 Candelario','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37001','sendero','Sendero de la Garganta del Trampal','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37001','sendero','Ruta de los Castaños','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37001','sendero','Reserva de la Biosfera','excel_curado',date('now'));

-- La Alberca: Reserva Nacional de la Biosfera, pueblo más bonito = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='37005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37005','sendero','Reserva Nacional de la Biosfera Sierra de Francia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37005','sendero','Peña de Francia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37005','sendero','Las Batuecas — Parque Natural','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37005','sendero','PR-SA 1 La Alberca','excel_curado',date('now'));

-- Peña de Francia: cumbre santuario, 1723m = 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='37010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37010','sendero','Peña de Francia — cima 1723m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37010','sendero','Reserva de la Biosfera','excel_curado',date('now'));

-- Miranda del Castañar: medieval, Sierra de Francia = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='37008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37008','sendero','Sierra de Francia — Miranda del Castañar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37008','sendero','Ruta de los Castañares','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37008','sendero','Reserva de la Biosfera','excel_curado',date('now'));

-- Mogarraz: pueblo retrato, Sierra de Francia = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='37009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37009','sendero','Sierra de Francia — Mogarraz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37009','sendero','Reserva de la Biosfera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37009','sendero','Sendero de los Retratos','excel_curado',date('now'));

-- San Martín del Castañar: Sierra de Francia = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='37012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37012','sendero','Sierra de Francia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37012','sendero','Ruta del Castañar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37012','sendero','Reserva de la Biosfera','excel_curado',date('now'));

-- El Cabaco: Sierra de Francia = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='37061' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37061','sendero','Sierra de Francia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37061','sendero','Las Batuecas acceso','excel_curado',date('now'));

-- Garcibuey: Sierra de Francia = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='37147' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37147','sendero','Sierra de Francia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37147','sendero','Ruta de los Nogales','excel_curado',date('now'));

-- Sequeros: Sierra de Francia = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='37305' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37305','sendero','Sierra de Francia','excel_curado',date('now'));

-- Sotoserrano: Las Batuecas entorno = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='37313' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37313','sendero','Parque Natural Las Batuecas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37313','sendero','Sierra de Francia','excel_curado',date('now'));

-- Nava de Francia: Sierra de Francia = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='37214' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37214','sendero','Sierra de Francia','excel_curado',date('now'));

-- Monforte de la Sierra: Sierra de Francia = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='37196' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37196','sendero','Sierra de Francia','excel_curado',date('now'));

-- San Esteban de la Sierra: Sierra de Francia = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='37284' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37284','sendero','Sierra de Francia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37284','sendero','Sendero del Cerezal','excel_curado',date('now'));

-- Tejeda y Segoyuela: sierra = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='37320' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37320','sendero','Sierra de Francia','excel_curado',date('now'));

-- El Maíllo: Sierra de Francia = 75
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='37177' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37177','sendero','Sierra de Francia — El Maíllo','excel_curado',date('now'));

-- Colmenar de Montemayor: sierra = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='37109' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37109','sendero','Sierra de Francia sur','excel_curado',date('now'));

-- Herguijuela de la Sierra: sierra = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='37158' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37158','sendero','Sierra de Francia','excel_curado',date('now'));

-- Cepeda: sierra = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='37002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37002','sendero','Sierra de Francia — Cepeda','excel_curado',date('now'));

-- ============================================================
-- SIERRA DE BÉJAR
-- ============================================================

-- Béjar: Sierra de Béjar, parque, piscinas = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='37046' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37046','sendero','Sierra de Béjar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37046','sendero','Parque Natural Candelario — Béjar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37046','sendero','Puerto de Béjar','excel_curado',date('now'));

-- Montemayor del Río: Sierra de Béjar = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='37201' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37201','sendero','Sierra de Béjar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37201','sendero','Río Cuerpo de Hombre','excel_curado',date('now'));

-- Puente del Congosto: Sierra Béjar = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='37261' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37261','sendero','Sierra de Béjar','excel_curado',date('now'));

-- Fuentes de Béjar: sierra = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='37139' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37139','sendero','Sierra de Béjar','excel_curado',date('now'));

-- Valero: sierra = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='37339' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37339','sendero','Sierra de Béjar','excel_curado',date('now'));

-- Navamorales: Sierra Béjar = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='37218' AND categoria='senderismo';

-- La Cabeza de Béjar: sierra = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='37063' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37063','sendero','Sierra de Béjar','excel_curado',date('now'));

-- Sanchotello: sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='37282' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37282','sendero','Sierra de Béjar','excel_curado',date('now'));

-- La Calzada de Béjar: sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='37071' AND categoria='senderismo';

-- Navalmoral de Béjar: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='37217' AND categoria='senderismo';

-- Valverde de Valdelacasa: sierra = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='37341' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37341','sendero','Sierra de Béjar','excel_curado',date('now'));

-- Nava de Béjar: sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='37213' AND categoria='senderismo';

-- Cantagallo: sierra = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='37080' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37080','sendero','Sierra de Béjar','excel_curado',date('now'));

-- Tremedal de Tormes: sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='37329' AND categoria='senderismo';

-- Santibáñez de Béjar: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='37297' AND categoria='senderismo';

-- Santibáñez de la Sierra: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='37298' AND categoria='senderismo';

-- Valdefuentes de Sangusín: sierra = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='37331' AND categoria='senderismo';

-- ============================================================
-- ARRIBES DEL DUERO / RIBERA
-- ============================================================

-- Aldeadávila de la Ribera: Arribes del Duero, cañón = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='37014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37014','sendero','Arribes del Duero','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37014','sendero','Presa de Aldeadávila','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37014','sendero','Sendero Arribes','excel_curado',date('now'));

-- Hinojosa de Duero: Arribes = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='37004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37004','sendero','Arribes del Duero','excel_curado',date('now'));

-- Saucelle: Arribes = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='37302' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37302','sendero','Arribes del Duero','excel_curado',date('now'));

-- La Fregeneda: Arribes = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='37132' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37132','sendero','Arribes del Duero','excel_curado',date('now'));

-- Sobradillo: Arribes = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='37311' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37311','sendero','Arribes del Duero','excel_curado',date('now'));

-- Vilvestre: Arribes = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='37350' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37350','sendero','Arribes del Duero','excel_curado',date('now'));

-- Pereña de la Ribera: Arribes = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='37250' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37250','sendero','Arribes del Duero','excel_curado',date('now'));

-- Masueco: Arribes = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='37184' AND categoria='senderismo';

-- Trabanca: Arribes = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='37328' AND categoria='senderismo';

-- Mieza: Arribes = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='37190' AND categoria='senderismo';

-- Lumbrales: zona frontera = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='37007' AND categoria='senderismo';

-- ============================================================
-- CIUDAD RODRIGO / CAMPO CHARRO / LLANO
-- ============================================================

-- Ciudad Rodrigo: histórico, catedral, campo = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='37003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37003','sendero','Río Águeda — Ciudad Rodrigo','excel_curado',date('now'));

-- Salamanca capital: patrimonio UNESCO, río Tormes = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='37011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37011','sendero','Río Tormes — Salamanca','excel_curado',date('now'));

-- Peñaranda de Bracamonte: campo = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37246' AND categoria='senderismo';

-- Vitigudino: campo = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37013' AND categoria='senderismo';

-- Ledesma: histórico = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='37006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37006','sendero','Río Tormes — Ledesma','excel_curado',date('now'));

-- Resto campo/llano (asignaciones en bloque, valores bajos)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37015' AND categoria='senderismo'; -- Aldea del Obispo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37016' AND categoria='senderismo'; -- Aldealengua
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37017' AND categoria='senderismo'; -- Aldeanueva de Figueroa
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37018' AND categoria='senderismo'; -- Aldeanueva de la Sierra (sierra)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='37019' AND categoria='senderismo'; -- Aldearrodrigo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='37020' AND categoria='senderismo'; -- Aldearrubia
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='37021' AND categoria='senderismo'; -- Aldeaseca de Alba
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='37022' AND categoria='senderismo'; -- Aldeaseca de la Frontera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37023' AND categoria='senderismo'; -- Aldeatejada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37024' AND categoria='senderismo'; -- Aldeavieja de Tormes
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37025' AND categoria='senderismo'; -- Aldehuela de la Bóveda
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37026' AND categoria='senderismo'; -- Aldehuela de Yeltes
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37027' AND categoria='senderismo'; -- Almenara de Tormes
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37028' AND categoria='senderismo'; -- Almendra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37029' AND categoria='senderismo'; -- Anaya de Alba
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='37030' AND categoria='senderismo'; -- Añover de Tormes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37031' AND categoria='senderismo'; -- Arabayona de Mógica
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37032' AND categoria='senderismo'; -- Arapiles
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37033' AND categoria='senderismo'; -- Arcediano
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37034' AND categoria='senderismo'; -- El Arco
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37035' AND categoria='senderismo'; -- Armenteros
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37036' AND categoria='senderismo'; -- San Miguel del Robledo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37037' AND categoria='senderismo'; -- La Atalaya
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37038' AND categoria='senderismo'; -- Babilafuente
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37039' AND categoria='senderismo'; -- Bañobárez
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37040' AND categoria='senderismo'; -- Barbadillo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37041' AND categoria='senderismo'; -- Barbalos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37042' AND categoria='senderismo'; -- Barceo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37044' AND categoria='senderismo'; -- Barruecopardo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37045' AND categoria='senderismo'; -- La Bastida
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37047' AND categoria='senderismo'; -- Beleña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37049' AND categoria='senderismo'; -- Bermellar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37050' AND categoria='senderismo'; -- Berrocal de Huebra
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37051' AND categoria='senderismo'; -- Berrocal de Salvatierra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37052' AND categoria='senderismo'; -- Boada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37054' AND categoria='senderismo'; -- El Bodón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37055' AND categoria='senderismo'; -- Bogajo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37056' AND categoria='senderismo'; -- La Bouza
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37057' AND categoria='senderismo'; -- Bóveda del Río Almar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37058' AND categoria='senderismo'; -- Brincones
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37059' AND categoria='senderismo'; -- Buenamadre
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37060' AND categoria='senderismo'; -- Buenavista
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37062' AND categoria='senderismo'; -- Cabezabellosa de la Calzada
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37065' AND categoria='senderismo'; -- Cabeza del Caballo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37067' AND categoria='senderismo'; -- Cabrerizos
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='37068' AND categoria='senderismo'; -- Cabrillas (sierra)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37069' AND categoria='senderismo'; -- Calvarrasa de Abajo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37070' AND categoria='senderismo'; -- Calvarrasa de Arriba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37072' AND categoria='senderismo'; -- Calzada de Don Diego
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37073' AND categoria='senderismo'; -- Calzada de Valdunciel
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37074' AND categoria='senderismo'; -- Campillo de Azaba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37079' AND categoria='senderismo'; -- Canillas de Abajo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37081' AND categoria='senderismo'; -- Cantalapiedra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37082' AND categoria='senderismo'; -- Cantalpino
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37083' AND categoria='senderismo'; -- Cantaracillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37085' AND categoria='senderismo'; -- Carbajosa de la Sagrada
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37086' AND categoria='senderismo'; -- Carpio de Azaba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37087' AND categoria='senderismo'; -- Carrascal de Barregas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37088' AND categoria='senderismo'; -- Carrascal del Obispo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37089' AND categoria='senderismo'; -- Casafranca (sierra)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37091' AND categoria='senderismo'; -- Casillas de Flores
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37092' AND categoria='senderismo'; -- Castellanos de Moriscos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37096' AND categoria='senderismo'; -- Castillejo de Martín Viejo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37097' AND categoria='senderismo'; -- Castraz
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37099' AND categoria='senderismo'; -- Cereceda de la Sierra (sierra)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37100' AND categoria='senderismo'; -- Cerezal de Peñahorcada
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37101' AND categoria='senderismo'; -- Cerralbo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37103' AND categoria='senderismo'; -- Cespedosa de Tormes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37104' AND categoria='senderismo'; -- Cilleros de la Bastida
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37106' AND categoria='senderismo'; -- Cipérez
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37108' AND categoria='senderismo'; -- Coca de Alba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37110' AND categoria='senderismo'; -- Cordovilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37112' AND categoria='senderismo'; -- Cristóbal
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37113' AND categoria='senderismo'; -- Chagarcía Medianero
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37114' AND categoria='senderismo'; -- Chagarcía Medianero
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37115' AND categoria='senderismo'; -- Dios le Guarde
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37116' AND categoria='senderismo'; -- Doñinos de Ledesma
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37117' AND categoria='senderismo'; -- Doñinos de Salamanca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37118' AND categoria='senderismo'; -- Éjeme
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37119' AND categoria='senderismo'; -- La Encina
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37120' AND categoria='senderismo'; -- Encina de San Silvestre
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37121' AND categoria='senderismo'; -- Encinas de Abajo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37122' AND categoria='senderismo'; -- Encinas de Arriba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37123' AND categoria='senderismo'; -- Encinasola de los Comendadores
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37124' AND categoria='senderismo'; -- Endrinal
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37125' AND categoria='senderismo'; -- Escurial de la Sierra (sierra)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37126' AND categoria='senderismo'; -- Espadaña
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37127' AND categoria='senderismo'; -- Espeja
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37128' AND categoria='senderismo'; -- Espino de la Orbada
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37129' AND categoria='senderismo'; -- Florida de Liébana
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37130' AND categoria='senderismo'; -- Forfoleda
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37131' AND categoria='senderismo'; -- Frades de la Sierra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37133' AND categoria='senderismo'; -- Fresnedoso
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37134' AND categoria='senderismo'; -- Fresno Alhándiga
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37136' AND categoria='senderismo'; -- Fuenteguinaldo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37137' AND categoria='senderismo'; -- Fuenteliante
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37138' AND categoria='senderismo'; -- Fuenterroble de Salvatierra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37140' AND categoria='senderismo'; -- Fuentes de Oñoro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37141' AND categoria='senderismo'; -- Gajates
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37142' AND categoria='senderismo'; -- Galindo y Perahuy
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37143' AND categoria='senderismo'; -- Galinduste
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37144' AND categoria='senderismo'; -- Galisancho
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37145' AND categoria='senderismo'; -- Gallegos de Argañán
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='37146' AND categoria='senderismo'; -- Gallegos de Solmirón (sierra)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37148' AND categoria='senderismo'; -- Garcihernández
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37149' AND categoria='senderismo'; -- Garcirrey
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37150' AND categoria='senderismo'; -- Gejuelo del Barro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37151' AND categoria='senderismo'; -- Golpejas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37152' AND categoria='senderismo'; -- Gomecello
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37154' AND categoria='senderismo'; -- Guadramiro
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37155' AND categoria='senderismo'; -- Guijo de Ávila (sierra)
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37156' AND categoria='senderismo'; -- Guijuelo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37157' AND categoria='senderismo'; -- Herguijuela de Ciudad Rodrigo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37159' AND categoria='senderismo'; -- Herguijuela del Campo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37161' AND categoria='senderismo'; -- Horcajo de Montemayor
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37162' AND categoria='senderismo'; -- Horcajo Medianero
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37163' AND categoria='senderismo'; -- La Hoya
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37164' AND categoria='senderismo'; -- Huerta
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37165' AND categoria='senderismo'; -- Iruelos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37166' AND categoria='senderismo'; -- Ituero de Azaba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37167' AND categoria='senderismo'; -- Juzbado
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37168' AND categoria='senderismo'; -- Lagunilla (sierra baja)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37169' AND categoria='senderismo'; -- Larrodrigo
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='37171' AND categoria='senderismo'; -- Ledrada (sierra)
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='37172' AND categoria='senderismo'; -- Linares de Riofrío (sierra)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('37172','sendero','Sierra de Francia sur','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37174' AND categoria='senderismo'; -- Macotera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37175' AND categoria='senderismo'; -- Machacón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37176' AND categoria='senderismo'; -- Madroñal
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37178' AND categoria='senderismo'; -- Malpartida
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37179' AND categoria='senderismo'; -- Mancera de Abajo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37180' AND categoria='senderismo'; -- El Manzano
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37181' AND categoria='senderismo'; -- Martiago
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37182' AND categoria='senderismo'; -- Martinamor
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37183' AND categoria='senderismo'; -- Martín de Yeltes
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37185' AND categoria='senderismo'; -- Castellanos de Villiquera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37186' AND categoria='senderismo'; -- La Mata de Ledesma
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37187' AND categoria='senderismo'; -- Matilla de los Caños del Río
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37188' AND categoria='senderismo'; -- La Maya
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37189' AND categoria='senderismo'; -- Membribe de la Sierra
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37191' AND categoria='senderismo'; -- El Milano
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37192' AND categoria='senderismo'; -- Miranda de Azán
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37195' AND categoria='senderismo'; -- Molinillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37197' AND categoria='senderismo'; -- Monleón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37198' AND categoria='senderismo'; -- Monleras
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37199' AND categoria='senderismo'; -- Monsagro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37200' AND categoria='senderismo'; -- Montejo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37202' AND categoria='senderismo'; -- Monterrubio de Armuña
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37203' AND categoria='senderismo'; -- Monterrubio de la Sierra (sierra)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37204' AND categoria='senderismo'; -- Morasverdes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37205' AND categoria='senderismo'; -- Morille
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37206' AND categoria='senderismo'; -- Moríñigo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37207' AND categoria='senderismo'; -- Moriscos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37208' AND categoria='senderismo'; -- Moronta
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37209' AND categoria='senderismo'; -- Mozárbez
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37211' AND categoria='senderismo'; -- Narros de Matalayegua
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37212' AND categoria='senderismo'; -- Navacarros (sierra)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37215' AND categoria='senderismo'; -- Nava de Sotrobal
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37216' AND categoria='senderismo'; -- Navales
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37219' AND categoria='senderismo'; -- Navarredonda de la Rinconada
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37221' AND categoria='senderismo'; -- Navasfrías (sierra)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37222' AND categoria='senderismo'; -- Negrilla de Palencia
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37223' AND categoria='senderismo'; -- Olmedo de Camaces
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37224' AND categoria='senderismo'; -- La Orbada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37225' AND categoria='senderismo'; -- Pajares de la Laguna
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37226' AND categoria='senderismo'; -- Palacios del Arzobispo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37228' AND categoria='senderismo'; -- Palaciosrubios
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37229' AND categoria='senderismo'; -- Palencia de Negrilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37230' AND categoria='senderismo'; -- Parada de Arriba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37231' AND categoria='senderismo'; -- Parada de Rubiales
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37232' AND categoria='senderismo'; -- Paradinas de San Juan
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37233' AND categoria='senderismo'; -- Pastores
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37234' AND categoria='senderismo'; -- El Payo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37235' AND categoria='senderismo'; -- Pedraza de Alba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37236' AND categoria='senderismo'; -- Pedrosillo de Alba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37237' AND categoria='senderismo'; -- Pedrosillo de los Aires
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37238' AND categoria='senderismo'; -- Pedrosillo el Ralo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37239' AND categoria='senderismo'; -- El Pedroso de la Armuña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37240' AND categoria='senderismo'; -- Pelabravo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37241' AND categoria='senderismo'; -- Pelarrodríguez
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37242' AND categoria='senderismo'; -- Pelayos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37243' AND categoria='senderismo'; -- La Peña
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37244' AND categoria='senderismo'; -- Peñacaballera (sierra)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37245' AND categoria='senderismo'; -- Peñaparda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37247' AND categoria='senderismo'; -- Peñarandilla
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37248' AND categoria='senderismo'; -- Peralejos de Abajo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37249' AND categoria='senderismo'; -- Peralejos de Arriba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37251' AND categoria='senderismo'; -- Peromingo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37252' AND categoria='senderismo'; -- Pinedas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37253' AND categoria='senderismo'; -- El Pino de Tormes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37254' AND categoria='senderismo'; -- Pitiegua
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37255' AND categoria='senderismo'; -- Pizarral
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37256' AND categoria='senderismo'; -- Poveda de las Cintas
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37257' AND categoria='senderismo'; -- Pozos de Hinojo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37258' AND categoria='senderismo'; -- Puebla de Azaba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37259' AND categoria='senderismo'; -- Puebla de San Medel
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37260' AND categoria='senderismo'; -- Puebla de Yeltes
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37262' AND categoria='senderismo'; -- Puertas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37263' AND categoria='senderismo'; -- Puerto de Béjar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37264' AND categoria='senderismo'; -- Puerto Seguro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37265' AND categoria='senderismo'; -- Rágama
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37266' AND categoria='senderismo'; -- La Redonda
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37267' AND categoria='senderismo'; -- Retortillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37268' AND categoria='senderismo'; -- La Rinconada de la Sierra
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37269' AND categoria='senderismo'; -- Robleda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37270' AND categoria='senderismo'; -- Robliza de Cojos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37271' AND categoria='senderismo'; -- Rollán
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37272' AND categoria='senderismo'; -- Saelices el Chico
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37273' AND categoria='senderismo'; -- La Sagrada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37275' AND categoria='senderismo'; -- Saldeana
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37276' AND categoria='senderismo'; -- Salmoral
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37277' AND categoria='senderismo'; -- Salvatierra de Tormes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37278' AND categoria='senderismo'; -- San Cristóbal de la Cuesta
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37279' AND categoria='senderismo'; -- Sancti-Spíritus
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37280' AND categoria='senderismo'; -- Sanchón de la Ribera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37281' AND categoria='senderismo'; -- Sanchón de la Sagrada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37283' AND categoria='senderismo'; -- Sando
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37285' AND categoria='senderismo'; -- San Felices de los Gallegos
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37287' AND categoria='senderismo'; -- San Miguel de Valero (sierra)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37288' AND categoria='senderismo'; -- San Morales
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37289' AND categoria='senderismo'; -- San Muñoz
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37290' AND categoria='senderismo'; -- San Pedro del Valle
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37291' AND categoria='senderismo'; -- San Pedro de Rozados
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37292' AND categoria='senderismo'; -- San Pelayo de Guareña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37293' AND categoria='senderismo'; -- Santa María de Sando
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37294' AND categoria='senderismo'; -- Santa Marta de Tormes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37296' AND categoria='senderismo'; -- Santiago de la Puebla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37299' AND categoria='senderismo'; -- Santiz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37301' AND categoria='senderismo'; -- Sardón de los Frailes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37303' AND categoria='senderismo'; -- El Sahugo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37304' AND categoria='senderismo'; -- Sepulcro-Hilario
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37306' AND categoria='senderismo'; -- Serradilla del Arroyo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37307' AND categoria='senderismo'; -- Serradilla del Llano
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37309' AND categoria='senderismo'; -- La Sierpe
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37310' AND categoria='senderismo'; -- Sieteiglesias de Tormes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37312' AND categoria='senderismo'; -- Sorihuela
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37314' AND categoria='senderismo'; -- Tabera de Abajo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37315' AND categoria='senderismo'; -- La Tala
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37316' AND categoria='senderismo'; -- Tamames
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37317' AND categoria='senderismo'; -- Tarazona de Guareña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37318' AND categoria='senderismo'; -- Tardáguila
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37319' AND categoria='senderismo'; -- El Tejado
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37321' AND categoria='senderismo'; -- Tenebrón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37322' AND categoria='senderismo'; -- Terradillos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37323' AND categoria='senderismo'; -- Topas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37324' AND categoria='senderismo'; -- Tordillos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37325' AND categoria='senderismo'; -- El Tornadizo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37327' AND categoria='senderismo'; -- Torresmenudas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37330' AND categoria='senderismo'; -- Valdecarros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37332' AND categoria='senderismo'; -- Valdehijaderos (sierra)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37333' AND categoria='senderismo'; -- Valdelacasa
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='37334' AND categoria='senderismo'; -- Valdelageve (sierra)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37335' AND categoria='senderismo'; -- Valdelosa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37336' AND categoria='senderismo'; -- Valdemierque
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37337' AND categoria='senderismo'; -- Valderrodrigo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37338' AND categoria='senderismo'; -- Valdunciel
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37340' AND categoria='senderismo'; -- Valsalabroso
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37342' AND categoria='senderismo'; -- Valverdón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37343' AND categoria='senderismo'; -- Vallejera de Riofrío
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37344' AND categoria='senderismo'; -- Vecinos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37345' AND categoria='senderismo'; -- Vega de Tirados
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37346' AND categoria='senderismo'; -- Las Veguillas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37347' AND categoria='senderismo'; -- La Vellés
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37348' AND categoria='senderismo'; -- Ventosa del Río Almar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37349' AND categoria='senderismo'; -- La Vídola
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37351' AND categoria='senderismo'; -- Villaflores
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37352' AND categoria='senderismo'; -- Villagonzalo de Tormes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37353' AND categoria='senderismo'; -- Villalba de los Llanos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37354' AND categoria='senderismo'; -- Villamayor
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='37355' AND categoria='senderismo'; -- Villanueva del Conde (sierra)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37356' AND categoria='senderismo'; -- Villar de Argañán
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37357' AND categoria='senderismo'; -- Villar de Ciervo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37358' AND categoria='senderismo'; -- Villar de Gallimazo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37359' AND categoria='senderismo'; -- Villar de la Yegua
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37360' AND categoria='senderismo'; -- Villar de Peralonso
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37361' AND categoria='senderismo'; -- Villar de Samaniego
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37362' AND categoria='senderismo'; -- Villares de la Reina
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37363' AND categoria='senderismo'; -- Villares de Yeltes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37364' AND categoria='senderismo'; -- Villarino de los Aires
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37365' AND categoria='senderismo'; -- Villarmayor
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37366' AND categoria='senderismo'; -- Villarmuerto
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37367' AND categoria='senderismo'; -- Villasbuenas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37368' AND categoria='senderismo'; -- Villasdardo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37369' AND categoria='senderismo'; -- Villaseco de los Gamitos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37370' AND categoria='senderismo'; -- Villaseco de los Reyes
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37371' AND categoria='senderismo'; -- Villasrubias
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37372' AND categoria='senderismo'; -- Villaverde de Guareña
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37373' AND categoria='senderismo'; -- Villavieja de Yeltes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37374' AND categoria='senderismo'; -- Villoria
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37375' AND categoria='senderismo'; -- Villoruela
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='37377' AND categoria='senderismo'; -- Yecla de Yeltes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37378' AND categoria='senderismo'; -- Zamarra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37379' AND categoria='senderismo'; -- Zamayón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37380' AND categoria='senderismo'; -- Zarapicos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='37381' AND categoria='senderismo'; -- La Zarza de Pumareda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='37382' AND categoria='senderismo'; -- Zorita de la Frontera

-- ============================================================
-- SYNC: MIN → MAX (duplicados)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37001' AND categoria='senderismo') WHERE codigo_ine='37078' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37002' AND categoria='senderismo') WHERE codigo_ine='37098' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37003' AND categoria='senderismo') WHERE codigo_ine='37107' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37004' AND categoria='senderismo') WHERE codigo_ine='37160' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37006' AND categoria='senderismo') WHERE codigo_ine='37170' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37007' AND categoria='senderismo') WHERE codigo_ine='37173' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37008' AND categoria='senderismo') WHERE codigo_ine='37193' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37009' AND categoria='senderismo') WHERE codigo_ine='37194' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37011' AND categoria='senderismo') WHERE codigo_ine='37274' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37012' AND categoria='senderismo') WHERE codigo_ine='37286' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='37013' AND categoria='senderismo') WHERE codigo_ine='37376' AND categoria='senderismo';

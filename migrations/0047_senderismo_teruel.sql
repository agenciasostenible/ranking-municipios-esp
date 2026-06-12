-- 0047: Senderismo Teruel curado — Albarracín, Gúdar-Javalambre, Maestrazgo, Matarraña, Puertos de Beceite
-- Generado: 2026-06-09
-- Canónicos: 43xxx (MIN) respecto a 44xxx (MAX); 10 pares
-- Standalone sin dup: 43001 Albarracín, 43002 Alcañiz, 43008 Peñagolosa

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '43001' AND '43013') OR
  (codigo_ine BETWEEN '44014' AND '44268')
);

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '43001' AND '43013') OR
  (codigo_ine BETWEEN '44014' AND '44268')
);

-- ============================================================
-- SIERRA DE ALBARRACÍN
-- ============================================================

-- Albarracín 43001 (standalone): uno de los pueblos más bonitos de España, Serranía = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='43001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43001','sendero','Serranía de Albarracín','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43001','sendero','PR-TE Albarracín','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43001','sendero','Pinar del Rodeno','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43001','sendero','Murallas medievales — entorno','excel_curado',date('now'));

-- Frías de Albarracín: Nacimiento del Tajo, Serranía = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='44109' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44109','sendero','Nacimiento del Río Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44109','sendero','Serranía de Albarracín','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44109','sendero','GR-10 Serranía de Albarracín','excel_curado',date('now'));

-- Griegos: Serranía de Albarracín, Pinar del Rodeno = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='44119' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44119','sendero','Pinar del Rodeno','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44119','sendero','Serranía de Albarracín','excel_curado',date('now'));

-- Villar del Cobo: Nacimiento del Tajo, Serranía = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='44257' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44257','sendero','Nacimiento del Tajo — Villar del Cobo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44257','sendero','Serranía de Albarracín','excel_curado',date('now'));

-- Royuela: Serranía = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='44198' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44198','sendero','Serranía de Albarracín','excel_curado',date('now'));

-- Calomarde: Pozas de Calomarde, Serranía = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='44052' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44052','sendero','Pozas de Calomarde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44052','sendero','Serranía de Albarracín','excel_curado',date('now'));

-- Tramacastilla: Serranía = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='44235' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44235','sendero','Serranía de Albarracín','excel_curado',date('now'));

-- Guadalaviar: Serranía = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='44120' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44120','sendero','Serranía de Albarracín','excel_curado',date('now'));

-- Jabaloyas: Serranía = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='44127' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44127','sendero','Serranía de Albarracín','excel_curado',date('now'));

-- Orihuela del Tremedal: Serranía = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='44174' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44174','sendero','Serranía de Albarracín','excel_curado',date('now'));

-- Torres de Albarracín: Serranía = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='44229' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44229','sendero','Serranía de Albarracín','excel_curado',date('now'));

-- Noguera de Albarracín: Serranía = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='44163' AND categoria='senderismo';

-- Gea de Albarracín: Serranía = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='44117' AND categoria='senderismo';

-- Moscardón: Serranía = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='44159' AND categoria='senderismo';

-- Terriente: Serranía = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='44215' AND categoria='senderismo';

-- Monterde de Albarracín: Serranía = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='44157' AND categoria='senderismo';

-- Veguillas de la Sierra: Serranía = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='44250' AND categoria='senderismo';

-- Bezas: Serranía = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='44041' AND categoria='senderismo';

-- Saldón: Serranía = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='44204' AND categoria='senderismo';

-- Tormón: Serranía = 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='44218' AND categoria='senderismo';

-- El Vallecillo: Serranía = 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='44249' AND categoria='senderismo';

-- Valdecuenca: Serranía = 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='44243' AND categoria='senderismo';

-- Toril y Masegoso: Serranía = 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='44217' AND categoria='senderismo';

-- ============================================================
-- GÚDAR-JAVALAMBRE
-- ============================================================

-- Valdelinares: estación de esquí, punto más alto Teruel = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='44244' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44244','sendero','Sierra de Gúdar — cumbres','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44244','sendero','GR-10 Gúdar','excel_curado',date('now'));

-- Gúdar: Sierra de Gúdar, rutas alpinas = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='44121' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44121','sendero','Sierra de Gúdar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44121','sendero','GR-10 Gúdar','excel_curado',date('now'));

-- Mosqueruela: bosques de pino negro, Sierra de Gúdar = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='44160' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44160','sendero','Sierra de Gúdar — pinar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44160','sendero','GR-10 Gúdar','excel_curado',date('now'));

-- Rubielos de Mora: pueblo medieval, sierra = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='44201' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44201','sendero','Sierra de Gúdar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44201','sendero','Rubielos de Mora — entorno','excel_curado',date('now'));

-- Mora de Rubielos: castillo, sierra = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='43007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43007','sendero','Sierra de Gúdar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43007','sendero','Castillo de Mora de Rubielos','excel_curado',date('now'));

-- Linares de Mora: sierra = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='44137' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44137','sendero','Sierra de Gúdar','excel_curado',date('now'));

-- La Iglesuela del Cid: sierra, pueblo medieval = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='44126' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44126','sendero','Gúdar-Javalambre','excel_curado',date('now'));

-- Cabra de Mora: sierra = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='44048' AND categoria='senderismo';

-- Formiche Alto: sierra = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='44103' AND categoria='senderismo';

-- Fuentes de Rubielos: sierra = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='44113' AND categoria='senderismo';

-- Manzanera: sierra = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='44143' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44143','sendero','Gúdar-Javalambre','excel_curado',date('now'));

-- Valbona: sierra = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='44240' AND categoria='senderismo';

-- Sarrión: acceso sierra = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='44210' AND categoria='senderismo';

-- Nogueruelas: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='44165' AND categoria='senderismo';

-- Olba: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='44171' AND categoria='senderismo';

-- La Puebla de Valverde: sierra = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='44192' AND categoria='senderismo';

-- ============================================================
-- MAESTRAZGO
-- ============================================================

-- Pitarque: Río Pitarque, nacimiento espectacular = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='44183' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44183','sendero','Nacimiento del Río Pitarque','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44183','sendero','Maestrazgo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44183','sendero','GR-8 Maestrazgo','excel_curado',date('now'));

-- Villarluengo: Órganos de Montoro, Maestrazgo = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='43013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43013','sendero','Órganos de Montoro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43013','sendero','GR-8 Maestrazgo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43013','sendero','Maestrazgo','excel_curado',date('now'));

-- Cantavieja: Maestrazgo, castillo = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='44059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44059','sendero','Maestrazgo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44059','sendero','GR-8 Maestrazgo','excel_curado',date('now'));

-- Mirambel: Maestrazgo, pueblo medieval = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='44149' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44149','sendero','Maestrazgo — Mirambel','excel_curado',date('now'));

-- Fortanete: Maestrazgo = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='44106' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44106','sendero','Maestrazgo','excel_curado',date('now'));

-- Castellote: Maestrazgo, rutas = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='44071' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44071','sendero','Maestrazgo — Castellote','excel_curado',date('now'));

-- Tronchón: Maestrazgo = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='44236' AND categoria='senderismo';

-- Cañada de Benatanduz: Maestrazgo = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='44060' AND categoria='senderismo';

-- Bordón: Maestrazgo = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='44044' AND categoria='senderismo';

-- Villarroya de los Pinares: Maestrazgo = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='44262' AND categoria='senderismo';

-- Molinos 43006: Órganos de Molinos = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='43006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43006','sendero','Órganos de Molinos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43006','sendero','Maestrazgo','excel_curado',date('now'));

-- Aliaga: Parque Geológico de Aliaga, famoso = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='44017' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44017','sendero','Parque Geológico de Aliaga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44017','sendero','Maestrazgo','excel_curado',date('now'));

-- Las Parras de Castellote: Maestrazgo = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='44178' AND categoria='senderismo';

-- La Iglesuela del Cid: ya puesto arriba
-- Miravete de la Sierra: Maestrazgo = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='44150' AND categoria='senderismo';

-- Peñagolosa 43008 (standalone): Pico Peñagolosa, techo de Castellón = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='43008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43008','sendero','Pico Peñagolosa — Parque Natural','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43008','sendero','Maestrazgo sur','excel_curado',date('now'));

-- ============================================================
-- MATARRAÑA / PUERTOS DE BECEITE
-- ============================================================

-- Beceite: Parque Natural Puertos de Beceite, Río Matarraña = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='43003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43003','sendero','Parque Natural Puertos de Beceite','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43003','sendero','Río Matarraña — senderos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43003','sendero','GR-8 Puertos de Beceite','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43003','sendero','Pena Roja','excel_curado',date('now'));

-- Valderrobres: castillo, Matarraña = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='43012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43012','sendero','Puertos de Beceite','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43012','sendero','Río Matarraña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43012','sendero','GR-8 Matarraña','excel_curado',date('now'));

-- La Fresneda: Matarraña = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='44108' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44108','sendero','Matarraña','excel_curado',date('now'));

-- Peñarroya de Tastavins: Matarraña = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='43009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43009','sendero','Matarraña','excel_curado',date('now'));

-- Fuentespalda: Matarraña = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='44114' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('44114','sendero','Matarraña','excel_curado',date('now'));

-- Monroyo: Matarraña = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='44154' AND categoria='senderismo';

-- Calaceite: Matarraña = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='43004' AND categoria='senderismo';

-- Cretas: Matarraña = 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='43005' AND categoria='senderismo';

-- Lledó: Matarraña = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='44141' AND categoria='senderismo';

-- Arens de Lledó: Matarraña = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='44027' AND categoria='senderismo';

-- Fórnoles: Matarraña = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='44105' AND categoria='senderismo';

-- ============================================================
-- MUNICIPIOS LLANO / BAJO ARAGÓN / BAJOS
-- ============================================================

UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='43011' AND categoria='senderismo'; -- Teruel capital
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='43002' AND categoria='senderismo'; -- Alcañiz
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44014' AND categoria='senderismo'; -- Alcorisa
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='44016' AND categoria='senderismo'; -- Alfambra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44018' AND categoria='senderismo'; -- Almohaja
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44019' AND categoria='senderismo'; -- Alobras
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44020' AND categoria='senderismo'; -- Alpeñés
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='44021' AND categoria='senderismo'; -- Allepuz
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44022' AND categoria='senderismo'; -- Alloza
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44023' AND categoria='senderismo'; -- Allueva
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44024' AND categoria='senderismo'; -- Anadón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44025' AND categoria='senderismo'; -- Andorra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44026' AND categoria='senderismo'; -- Arcos de las Salinas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44028' AND categoria='senderismo'; -- Argente
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44029' AND categoria='senderismo'; -- Ariño
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44031' AND categoria='senderismo'; -- Azaila
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44032' AND categoria='senderismo'; -- Bádenas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44033' AND categoria='senderismo'; -- Báguena
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44034' AND categoria='senderismo'; -- Bañón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44035' AND categoria='senderismo'; -- Barrachina
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44036' AND categoria='senderismo'; -- Bea
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44038' AND categoria='senderismo'; -- Belmonte de San José
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44039' AND categoria='senderismo'; -- Bello
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44040' AND categoria='senderismo'; -- Berge
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44042' AND categoria='senderismo'; -- Blancas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44043' AND categoria='senderismo'; -- Blesa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44045' AND categoria='senderismo'; -- Bronchales (sierra baja)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44046' AND categoria='senderismo'; -- Bueña
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44047' AND categoria='senderismo'; -- Burbáguena
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44050' AND categoria='senderismo'; -- Calamocha
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44051' AND categoria='senderismo'; -- Calanda
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44053' AND categoria='senderismo'; -- Camañas
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='44054' AND categoria='senderismo'; -- Camarena de la Sierra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44055' AND categoria='senderismo'; -- Camarillas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44056' AND categoria='senderismo'; -- Caminreal
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44061' AND categoria='senderismo'; -- La Cañada de Verich
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44062' AND categoria='senderismo'; -- Cañada Vellida
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44063' AND categoria='senderismo'; -- Cañizar del Olivar
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44064' AND categoria='senderismo'; -- Cascante del Río
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44065' AND categoria='senderismo'; -- Castejón de Tornos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44066' AND categoria='senderismo'; -- Castel de Cabra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44067' AND categoria='senderismo'; -- Castelnou
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44068' AND categoria='senderismo'; -- Castelserás
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44070' AND categoria='senderismo'; -- El Castellar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44074' AND categoria='senderismo'; -- Cedrillas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44075' AND categoria='senderismo'; -- Celadas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44076' AND categoria='senderismo'; -- Cella
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44077' AND categoria='senderismo'; -- La Cerollera
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44080' AND categoria='senderismo'; -- La Codoñera
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44082' AND categoria='senderismo'; -- Corbalán
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44084' AND categoria='senderismo'; -- Cortes de Aragón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44085' AND categoria='senderismo'; -- Cosa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44087' AND categoria='senderismo'; -- Crivillén
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44088' AND categoria='senderismo'; -- La Cuba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44089' AND categoria='senderismo'; -- Cubla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44090' AND categoria='senderismo'; -- Cucalón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44092' AND categoria='senderismo'; -- El Cuervo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44093' AND categoria='senderismo'; -- Cuevas de Almudén
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44094' AND categoria='senderismo'; -- Cuevas Labradas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44096' AND categoria='senderismo'; -- Ejulve
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44097' AND categoria='senderismo'; -- Escorihuela
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44099' AND categoria='senderismo'; -- Escucha
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44100' AND categoria='senderismo'; -- Estercuel
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44101' AND categoria='senderismo'; -- Ferreruela de Huerva
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44102' AND categoria='senderismo'; -- Fonfría
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44107' AND categoria='senderismo'; -- Foz-Calanda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44110' AND categoria='senderismo'; -- Fuenferrada
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44111' AND categoria='senderismo'; -- Fuentes Calientes
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44112' AND categoria='senderismo'; -- Fuentes Claras
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44115' AND categoria='senderismo'; -- Galve
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44116' AND categoria='senderismo'; -- Gargallo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44118' AND categoria='senderismo'; -- La Ginebrosa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44122' AND categoria='senderismo'; -- Híjar
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44123' AND categoria='senderismo'; -- Hinojosa de Jarque
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44124' AND categoria='senderismo'; -- La Hoz de la Vieja
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44125' AND categoria='senderismo'; -- Huesa del Común
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44128' AND categoria='senderismo'; -- Jarque de la Val
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44129' AND categoria='senderismo'; -- Jatiel
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44130' AND categoria='senderismo'; -- Jorcas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44131' AND categoria='senderismo'; -- Josa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44132' AND categoria='senderismo'; -- Lagueruela
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44133' AND categoria='senderismo'; -- Lanzuela
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44135' AND categoria='senderismo'; -- Libros
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44136' AND categoria='senderismo'; -- Lidón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44138' AND categoria='senderismo'; -- Loscos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44142' AND categoria='senderismo'; -- Maicas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44144' AND categoria='senderismo'; -- Martín del Río
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44145' AND categoria='senderismo'; -- Mas de las Matas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44146' AND categoria='senderismo'; -- La Mata de los Olmos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44147' AND categoria='senderismo'; -- Mazaleón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44148' AND categoria='senderismo'; -- Mezquita de Jarque
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44152' AND categoria='senderismo'; -- Monforte de Moyuela
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44153' AND categoria='senderismo'; -- Monreal del Campo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44155' AND categoria='senderismo'; -- Montalbán
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44156' AND categoria='senderismo'; -- Monteagudo del Castillo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44161' AND categoria='senderismo'; -- Muniesa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44164' AND categoria='senderismo'; -- Nogueras
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44167' AND categoria='senderismo'; -- Obón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44168' AND categoria='senderismo'; -- Odón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44169' AND categoria='senderismo'; -- Ojos Negros
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44172' AND categoria='senderismo'; -- Oliete
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44173' AND categoria='senderismo'; -- Los Olmos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44175' AND categoria='senderismo'; -- Orrios
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44176' AND categoria='senderismo'; -- Palomar de Arroyos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44177' AND categoria='senderismo'; -- Pancrudo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44180' AND categoria='senderismo'; -- Peracense
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44181' AND categoria='senderismo'; -- Peralejos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44182' AND categoria='senderismo'; -- Perales del Alfambra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44184' AND categoria='senderismo'; -- Plou
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44185' AND categoria='senderismo'; -- El Pobo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44187' AND categoria='senderismo'; -- La Portellada
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44189' AND categoria='senderismo'; -- Pozondón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44190' AND categoria='senderismo'; -- Pozuel del Campo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44191' AND categoria='senderismo'; -- La Puebla de Híjar
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44194' AND categoria='senderismo'; -- Ráfales
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44195' AND categoria='senderismo'; -- Rillo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44196' AND categoria='senderismo'; -- Riodeva
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44197' AND categoria='senderismo'; -- Ródenas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44199' AND categoria='senderismo'; -- Rubiales
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44200' AND categoria='senderismo'; -- Rubielos de la Cérida
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44203' AND categoria='senderismo'; -- Salcedillo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44205' AND categoria='senderismo'; -- Samper de Calanda
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44206' AND categoria='senderismo'; -- San Agustín
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44207' AND categoria='senderismo'; -- San Martín del Río
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44208' AND categoria='senderismo'; -- Santa Cruz de Nogueras
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44209' AND categoria='senderismo'; -- Santa Eulalia del Campo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44211' AND categoria='senderismo'; -- Segura de los Baños
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44212' AND categoria='senderismo'; -- Seno
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44213' AND categoria='senderismo'; -- Singra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44219' AND categoria='senderismo'; -- Tornos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44220' AND categoria='senderismo'; -- Torralba de los Sisones
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44221' AND categoria='senderismo'; -- Torrecilla de Alcañiz
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44222' AND categoria='senderismo'; -- Torrecilla del Rebollar
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44223' AND categoria='senderismo'; -- Torre de Arcas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44224' AND categoria='senderismo'; -- Torre de las Arcas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44225' AND categoria='senderismo'; -- Torre del Compte
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44226' AND categoria='senderismo'; -- Torrelacárcel
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44227' AND categoria='senderismo'; -- Torre los Negros
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44228' AND categoria='senderismo'; -- Torremocha de Jiloca
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44230' AND categoria='senderismo'; -- Torrevelilla
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44231' AND categoria='senderismo'; -- Torrijas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44232' AND categoria='senderismo'; -- Torrijo del Campo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44234' AND categoria='senderismo'; -- Tramacastiel
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44237' AND categoria='senderismo'; -- Urrea de Gaén
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44238' AND categoria='senderismo'; -- Utrillas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44239' AND categoria='senderismo'; -- Valacloche
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44241' AND categoria='senderismo'; -- Valdealgorfa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44245' AND categoria='senderismo'; -- Valdeltormo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44247' AND categoria='senderismo'; -- Valjunquera
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44251' AND categoria='senderismo'; -- Villafranca del Campo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44252' AND categoria='senderismo'; -- Villahermosa del Campo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44256' AND categoria='senderismo'; -- Villanueva del Rebollar de la Sierra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44258' AND categoria='senderismo'; -- Villar del Salz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='44261' AND categoria='senderismo'; -- Villarquemado
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44263' AND categoria='senderismo'; -- Villastar
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44264' AND categoria='senderismo'; -- Villel
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44265' AND categoria='senderismo'; -- Vinaceite
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44266' AND categoria='senderismo'; -- Visiedo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44267' AND categoria='senderismo'; -- Vivel del Río Martín
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='44268' AND categoria='senderismo'; -- La Zoma

-- ============================================================
-- SYNC: MIN (43xxx) → MAX (44xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='43003' AND categoria='senderismo') WHERE codigo_ine='44037' AND categoria='senderismo'; -- Beceite
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='43004' AND categoria='senderismo') WHERE codigo_ine='44049' AND categoria='senderismo'; -- Calaceite
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='43005' AND categoria='senderismo') WHERE codigo_ine='44086' AND categoria='senderismo'; -- Cretas
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='43006' AND categoria='senderismo') WHERE codigo_ine='44151' AND categoria='senderismo'; -- Molinos
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='43007' AND categoria='senderismo') WHERE codigo_ine='44158' AND categoria='senderismo'; -- Mora de Rubielos
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='43009' AND categoria='senderismo') WHERE codigo_ine='44179' AND categoria='senderismo'; -- Peñarroya de Tastavins
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='43010' AND categoria='senderismo') WHERE codigo_ine='44193' AND categoria='senderismo'; -- Puertomingalvo
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='43011' AND categoria='senderismo') WHERE codigo_ine='44216' AND categoria='senderismo'; -- Teruel
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='43012' AND categoria='senderismo') WHERE codigo_ine='44246' AND categoria='senderismo'; -- Valderrobres
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='43013' AND categoria='senderismo') WHERE codigo_ine='44260' AND categoria='senderismo'; -- Villarluengo

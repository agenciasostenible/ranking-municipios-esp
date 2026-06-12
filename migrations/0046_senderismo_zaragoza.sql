-- 0046: Senderismo Zaragoza curado — Moncayo, Monasterio de Piedra, Prepirineo, Gallocanta
-- Generado: 2026-06-09
-- Canónicos: 49xxx (MIN) respecto a 50xxx (MAX); 11 pares
-- Standalone sin dup: 49001 Ainzón, 49012 Veruela

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '49001' AND '49013') OR
  (codigo_ine BETWEEN '50043' AND '50903')
);

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '49001' AND '49013') OR
  (codigo_ine BETWEEN '50043' AND '50903')
);

-- ============================================================
-- MONCAYO — atractivo principal de Zaragoza
-- ============================================================

-- San Martín de la Virgen de Moncayo: PN Moncayo, cima 2315m = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='50234' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50234','sendero','Pico Moncayo — cima 2315m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50234','sendero','Parque Natural del Moncayo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50234','sendero','GR-90 Moncayo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50234','sendero','Santuario del Moncayo','excel_curado',date('now'));

-- Santa Cruz de Moncayo: PN Moncayo = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='50237' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50237','sendero','Parque Natural del Moncayo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50237','sendero','Senderos del Moncayo','excel_curado',date('now'));

-- Vera de Moncayo: PN Moncayo, Monasterio de Veruela = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='50280' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50280','sendero','Parque Natural del Moncayo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50280','sendero','Monasterio de Veruela — entorno','excel_curado',date('now'));

-- Trasmoz: Moncayo, castillo = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='50265' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50265','sendero','Moncayo sur','excel_curado',date('now'));

-- Veruela 49012 (standalone): entorno Moncayo = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='49012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49012','sendero','Monasterio de Veruela — entorno','excel_curado',date('now'));

-- Tarazona: ciudad histórica, acceso Moncayo = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='49011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49011','sendero','Moncayo — acceso','excel_curado',date('now'));

-- Calcena: Moncayo = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='50069' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50069','sendero','Moncayo sur — Calcena','excel_curado',date('now'));

-- Purujosa: Moncayo = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='50221' AND categoria='senderismo';

-- Los Fayos: Moncayo = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='50106' AND categoria='senderismo';

-- Tabuenca: Moncayo = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='50249' AND categoria='senderismo';

-- ============================================================
-- MONASTERIO DE PIEDRA / PIEDRA-JILOCA
-- ============================================================

-- Nuévalos: Monasterio de Piedra, cascadas icónicas = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='50192' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50192','sendero','Monasterio de Piedra — Cascadas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50192','sendero','Cola de Caballo — Piedra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50192','sendero','Río Piedra — ruta','excel_curado',date('now'));

-- Jaraba: Balnearios, río Mesa = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='50129' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50129','sendero','Río Mesa — Jaraba','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50129','sendero','Hoces del río Mesa','excel_curado',date('now'));

-- Campillo de Aragón: entorno Piedra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='50071' AND categoria='senderismo';

-- Cimballa: Río Mesa = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='50082' AND categoria='senderismo';

-- Ibdes: Río Mesa = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='50125' AND categoria='senderismo';

-- ============================================================
-- LAGUNA DE GALLOCANTA
-- ============================================================

-- Gallocanta: Laguna de Gallocanta, aves (grullas), famosísima = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='50117' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50117','sendero','Laguna de Gallocanta — Reserva Natural','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50117','sendero','Ruta ornitológica Gallocanta','excel_curado',date('now'));

-- Daroca: histórico medieval, entorno = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='49006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49006','sendero','Murallas de Daroca — entorno','excel_curado',date('now'));

-- ============================================================
-- PREPIRINEO ZARAGOZANO / CINCO VILLAS
-- ============================================================

-- Sos del Rey Católico: villa medieval, entorno = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='49010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49010','sendero','Sos del Rey Católico — entorno','excel_curado',date('now'));

-- Uncastillo: villa medieval, Prepirineo = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='50267' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50267','sendero','Uncastillo — sierra','excel_curado',date('now'));

-- Salvatierra de Esca: Pirineos sur = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='50232' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50232','sendero','Foz de Salvatierra','excel_curado',date('now'));

-- Sigüés: Foz de Biniés = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='50245' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50245','sendero','Foz de Biniés','excel_curado',date('now'));

-- Los Pintanos: Sierra de Leyre = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='50210' AND categoria='senderismo';

-- Longás: Prepirineo = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='50144' AND categoria='senderismo';

-- Luesia: Prepirineo = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='50148' AND categoria='senderismo';

-- Undués de Lerda: Camino de Santiago = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='50268' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50268','sendero','Camino de Santiago aragonés','excel_curado',date('now'));

-- Urriés: Prepirineo = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='50270' AND categoria='senderismo';

-- Lobera de Onsella: Prepirineo = 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='50142' AND categoria='senderismo';

-- Navardún: Prepirineo = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='50186' AND categoria='senderismo';

-- Ejea de los Caballeros: Cinco Villas, llano = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='49007' AND categoria='senderismo';

-- Murillo de Gállego: Gállego, Pirineos sur = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='50185' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50185','sendero','Río Gállego — Murillo','excel_curado',date('now'));

-- Santa Eulalia de Gállego: Gállego = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='50238' AND categoria='senderismo';

-- El Frago: Prepirineo = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='50109' AND categoria='senderismo';

-- ============================================================
-- SISTEMA IBÉRICO ZARAGOZANO
-- ============================================================

-- Calatayud: ciudad histórica = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='49004' AND categoria='senderismo';

-- Borja: histórico, vino = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='49003' AND categoria='senderismo';

-- Caspe: Mar de Aragón = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='49005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49005','sendero','Mar de Aragón — rutas embalse','excel_curado',date('now'));

-- Mequinenza: Bajo Segre/Cinca = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='50165' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50165','sendero','Embalse de Mequinenza','excel_curado',date('now'));

-- Belchite: pueblo viejo, histórico = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='49002' AND categoria='senderismo';

-- Fuendetodos: pueblo de Goya = 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='49008' AND categoria='senderismo';

-- Herrera de los Navarros: Ibérico = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='50124' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50124','sendero','Sierra de Herrera','excel_curado',date('now'));

-- Villar de los Navarros: Ibérico = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='50291' AND categoria='senderismo';

-- Cariñena: viñedos, Ibérico = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='50073' AND categoria='senderismo';

-- Ainzón 49001 (standalone): Moncayo sur = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='49001' AND categoria='senderismo';

-- ============================================================
-- MUNICIPIOS LLANO / EBRO / BAJOS
-- ============================================================

UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='49013' AND categoria='senderismo'; -- Zaragoza capital
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50043' AND categoria='senderismo'; -- Bárboles
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50044' AND categoria='senderismo'; -- Bardallur
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50046' AND categoria='senderismo'; -- Belmonte de Gracián
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50047' AND categoria='senderismo'; -- Berdejo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50048' AND categoria='senderismo'; -- Berrueco
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50050' AND categoria='senderismo'; -- Bijuesca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50051' AND categoria='senderismo'; -- Biota
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50052' AND categoria='senderismo'; -- Bisimbre
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50053' AND categoria='senderismo'; -- Boquiñeni
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50054' AND categoria='senderismo'; -- Bordalba
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50056' AND categoria='senderismo'; -- Botorrita
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50057' AND categoria='senderismo'; -- Brea de Aragón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50058' AND categoria='senderismo'; -- Bubierca
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50059' AND categoria='senderismo'; -- Bujaraloz
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50060' AND categoria='senderismo'; -- Bulbuente
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50061' AND categoria='senderismo'; -- Bureta
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50062' AND categoria='senderismo'; -- El Burgo de Ebro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50063' AND categoria='senderismo'; -- El Buste
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50064' AND categoria='senderismo'; -- Cabañas de Ebro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50065' AND categoria='senderismo'; -- Cabolafuente
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50066' AND categoria='senderismo'; -- Cadrete
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50068' AND categoria='senderismo'; -- Calatorao
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50070' AND categoria='senderismo'; -- Calmarza
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50072' AND categoria='senderismo'; -- Carenas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50074' AND categoria='senderismo'; -- Castejón de Alarba
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50075' AND categoria='senderismo'; -- Castejón de las Armas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50076' AND categoria='senderismo'; -- Castejón de Valdejasa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50077' AND categoria='senderismo'; -- Castejón de Valdejasa (dup check)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50078' AND categoria='senderismo'; -- Castiliscar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50079' AND categoria='senderismo'; -- Cervera de la Cañada
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50080' AND categoria='senderismo'; -- Cerveruela
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50081' AND categoria='senderismo'; -- Cetina
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50083' AND categoria='senderismo'; -- Cinco Olivas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50084' AND categoria='senderismo'; -- Clarés de Ribota
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50085' AND categoria='senderismo'; -- Codo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50086' AND categoria='senderismo'; -- Codos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50087' AND categoria='senderismo'; -- Contamina
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50088' AND categoria='senderismo'; -- Cosuenda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50089' AND categoria='senderismo'; -- Cuarte de Huerva
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50090' AND categoria='senderismo'; -- Cubel
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50091' AND categoria='senderismo'; -- Las Cuerlas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50092' AND categoria='senderismo'; -- Chiprana
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50093' AND categoria='senderismo'; -- Chodes
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50096' AND categoria='senderismo'; -- Embid de Ariza
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50098' AND categoria='senderismo'; -- Encinacorba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50099' AND categoria='senderismo'; -- Épila
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50100' AND categoria='senderismo'; -- Erla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50101' AND categoria='senderismo'; -- Escatrón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50102' AND categoria='senderismo'; -- Fabara
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50104' AND categoria='senderismo'; -- Farlete
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50105' AND categoria='senderismo'; -- Fayón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50107' AND categoria='senderismo'; -- Figueruelas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50108' AND categoria='senderismo'; -- Fombuena
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50110' AND categoria='senderismo'; -- El Frasno
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50111' AND categoria='senderismo'; -- Fréscano
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50113' AND categoria='senderismo'; -- Fuendejalón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50115' AND categoria='senderismo'; -- Fuentes de Ebro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50116' AND categoria='senderismo'; -- Fuentes de Jiloca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50118' AND categoria='senderismo'; -- Gallur
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50119' AND categoria='senderismo'; -- Gelsa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50120' AND categoria='senderismo'; -- Godojos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50121' AND categoria='senderismo'; -- Gotor
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50122' AND categoria='senderismo'; -- Grisel
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50123' AND categoria='senderismo'; -- Grisén
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50126' AND categoria='senderismo'; -- Illueca
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50128' AND categoria='senderismo'; -- Isuerre
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50130' AND categoria='senderismo'; -- Jarque
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50131' AND categoria='senderismo'; -- Jaulín
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50132' AND categoria='senderismo'; -- La Joyosa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50133' AND categoria='senderismo'; -- Lagata
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50134' AND categoria='senderismo'; -- Langa del Castillo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50135' AND categoria='senderismo'; -- Layana
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50136' AND categoria='senderismo'; -- Lécera
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50137' AND categoria='senderismo'; -- Leciñena
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50138' AND categoria='senderismo'; -- Lechón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50139' AND categoria='senderismo'; -- Letux
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50140' AND categoria='senderismo'; -- Litago
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50141' AND categoria='senderismo'; -- Lituénigo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50143' AND categoria='senderismo'; -- Longares
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50146' AND categoria='senderismo'; -- Lucena de Jalón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50147' AND categoria='senderismo'; -- Luceni
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50149' AND categoria='senderismo'; -- Luesma
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50150' AND categoria='senderismo'; -- Lumpiaque
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50151' AND categoria='senderismo'; -- Luna
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50152' AND categoria='senderismo'; -- Maella
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50153' AND categoria='senderismo'; -- Magallón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50154' AND categoria='senderismo'; -- Mainar
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50155' AND categoria='senderismo'; -- Malanquilla
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50156' AND categoria='senderismo'; -- Maleján
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50157' AND categoria='senderismo'; -- Malón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50159' AND categoria='senderismo'; -- Maluenda
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50160' AND categoria='senderismo'; -- Mallén
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50161' AND categoria='senderismo'; -- Manchones
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50162' AND categoria='senderismo'; -- Mara
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50163' AND categoria='senderismo'; -- María de Huerva
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50164' AND categoria='senderismo'; -- Mediana de Aragón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50166' AND categoria='senderismo'; -- Mesones de Isuela
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50167' AND categoria='senderismo'; -- Mezalocha
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50168' AND categoria='senderismo'; -- Mianos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50169' AND categoria='senderismo'; -- Miedes de Aragón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50170' AND categoria='senderismo'; -- Monegrillo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50171' AND categoria='senderismo'; -- Moneva
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50172' AND categoria='senderismo'; -- Monreal de Ariza
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50173' AND categoria='senderismo'; -- Monterde
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50174' AND categoria='senderismo'; -- Montón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50175' AND categoria='senderismo'; -- Morata de Jalón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50176' AND categoria='senderismo'; -- Morata de Jiloca
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50177' AND categoria='senderismo'; -- Morés
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50178' AND categoria='senderismo'; -- Moros
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50179' AND categoria='senderismo'; -- Moyuela
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50180' AND categoria='senderismo'; -- Mozota
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50182' AND categoria='senderismo'; -- La Muela
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50183' AND categoria='senderismo'; -- Munébrega
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50184' AND categoria='senderismo'; -- Murero
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50187' AND categoria='senderismo'; -- Nigüella
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50188' AND categoria='senderismo'; -- Nombrevilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50189' AND categoria='senderismo'; -- Nonaspe
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50190' AND categoria='senderismo'; -- Novallas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50191' AND categoria='senderismo'; -- Novillas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50193' AND categoria='senderismo'; -- Nuez de Ebro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50194' AND categoria='senderismo'; -- Olvés
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50195' AND categoria='senderismo'; -- Orcajo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50196' AND categoria='senderismo'; -- Orera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50197' AND categoria='senderismo'; -- Orés
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50198' AND categoria='senderismo'; -- Oseja
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50199' AND categoria='senderismo'; -- Osera de Ebro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50200' AND categoria='senderismo'; -- Paniza
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50201' AND categoria='senderismo'; -- Paracuellos de Jiloca
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50202' AND categoria='senderismo'; -- Paracuellos de la Ribera
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50203' AND categoria='senderismo'; -- Pastriz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50204' AND categoria='senderismo'; -- Pedrola
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50205' AND categoria='senderismo'; -- Las Pedrosas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50206' AND categoria='senderismo'; -- Perdiguera
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50207' AND categoria='senderismo'; -- Piedratajada
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50208' AND categoria='senderismo'; -- Pina de Ebro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50209' AND categoria='senderismo'; -- Pinseque
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50211' AND categoria='senderismo'; -- Plasencia de Jalón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50212' AND categoria='senderismo'; -- Pleitas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50213' AND categoria='senderismo'; -- Plenas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50214' AND categoria='senderismo'; -- Pomer
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50215' AND categoria='senderismo'; -- Pozuel de Ariza
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50216' AND categoria='senderismo'; -- Pozuelo de Aragón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50217' AND categoria='senderismo'; -- Pradilla de Ebro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50218' AND categoria='senderismo'; -- La Puebla de Albortón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50219' AND categoria='senderismo'; -- La Puebla de Alfindén
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50220' AND categoria='senderismo'; -- Puendeluna
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50222' AND categoria='senderismo'; -- Quinto
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50223' AND categoria='senderismo'; -- Remolinos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50224' AND categoria='senderismo'; -- Retascón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50225' AND categoria='senderismo'; -- Ricla
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50227' AND categoria='senderismo'; -- Romanos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50228' AND categoria='senderismo'; -- Rueda de Jalón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50229' AND categoria='senderismo'; -- Ruesca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50230' AND categoria='senderismo'; -- Sádaba
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50231' AND categoria='senderismo'; -- Salillas de Jalón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50233' AND categoria='senderismo'; -- Samper del Salz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50235' AND categoria='senderismo'; -- San Mateo de Gállego
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50236' AND categoria='senderismo'; -- Santa Cruz de Grío
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50239' AND categoria='senderismo'; -- Santed
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50240' AND categoria='senderismo'; -- Sástago
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50241' AND categoria='senderismo'; -- Sabiñán
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50242' AND categoria='senderismo'; -- Sediles
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50243' AND categoria='senderismo'; -- Sestrica
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50244' AND categoria='senderismo'; -- Sierra de Luna
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50246' AND categoria='senderismo'; -- Sisamón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50247' AND categoria='senderismo'; -- Sobradiel
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50250' AND categoria='senderismo'; -- Talamantes
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='50252' AND categoria='senderismo'; -- Tauste
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50253' AND categoria='senderismo'; -- Terrer
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50254' AND categoria='senderismo'; -- Tierga
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50255' AND categoria='senderismo'; -- Tobed
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50256' AND categoria='senderismo'; -- Torralba de los Frailes
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50257' AND categoria='senderismo'; -- Torralba de Ribota
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50258' AND categoria='senderismo'; -- Torralbilla
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50259' AND categoria='senderismo'; -- Torrehermosa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50260' AND categoria='senderismo'; -- Torrelapaja
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50261' AND categoria='senderismo'; -- Torrellas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50262' AND categoria='senderismo'; -- Torres de Berrellén
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50263' AND categoria='senderismo'; -- Torrijo de la Cañada
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50264' AND categoria='senderismo'; -- Tosos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50266' AND categoria='senderismo'; -- Trasobares
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50268' AND categoria='senderismo'; -- Undués de Lerda (ya puesto)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50269' AND categoria='senderismo'; -- Urrea de Jalón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50271' AND categoria='senderismo'; -- Used
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50272' AND categoria='senderismo'; -- Utebo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50273' AND categoria='senderismo'; -- Valdehorna
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50274' AND categoria='senderismo'; -- Val de San Martín
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50275' AND categoria='senderismo'; -- Valmadrid
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50276' AND categoria='senderismo'; -- Valpalmas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50277' AND categoria='senderismo'; -- Valtorres
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50278' AND categoria='senderismo'; -- Velilla de Ebro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50279' AND categoria='senderismo'; -- Velilla de Jiloca
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50281' AND categoria='senderismo'; -- Vierlas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50282' AND categoria='senderismo'; -- La Vilueña
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50283' AND categoria='senderismo'; -- Villadoz
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50284' AND categoria='senderismo'; -- Villafeliche
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50285' AND categoria='senderismo'; -- Villafranca de Ebro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50286' AND categoria='senderismo'; -- Villalba de Perejil
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50287' AND categoria='senderismo'; -- Villalengua
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50288' AND categoria='senderismo'; -- Villanueva de Gállego
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50289' AND categoria='senderismo'; -- Villanueva de Jiloca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50290' AND categoria='senderismo'; -- Villanueva de Huerva
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50292' AND categoria='senderismo'; -- Villarreal de Huerva
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50293' AND categoria='senderismo'; -- Villarroya de la Sierra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50294' AND categoria='senderismo'; -- Villarroya del Campo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50295' AND categoria='senderismo'; -- Vistabella de Huerva
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50296' AND categoria='senderismo'; -- La Zaida
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50298' AND categoria='senderismo'; -- Zuera
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='50901' AND categoria='senderismo'; -- Biel (Prepirineo)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='50902' AND categoria='senderismo'; -- Marracos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='50903' AND categoria='senderismo'; -- Villamayor de Gállego

-- ============================================================
-- SYNC: MIN (49xxx) → MAX (50xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49002' AND categoria='senderismo') WHERE codigo_ine='50045' AND categoria='senderismo'; -- Belchite
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49003' AND categoria='senderismo') WHERE codigo_ine='50055' AND categoria='senderismo'; -- Borja
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49004' AND categoria='senderismo') WHERE codigo_ine='50067' AND categoria='senderismo'; -- Calatayud
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49005' AND categoria='senderismo') WHERE codigo_ine='50074' AND categoria='senderismo'; -- Caspe
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49006' AND categoria='senderismo') WHERE codigo_ine='50094' AND categoria='senderismo'; -- Daroca
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49007' AND categoria='senderismo') WHERE codigo_ine='50095' AND categoria='senderismo'; -- Ejea
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49008' AND categoria='senderismo') WHERE codigo_ine='50114' AND categoria='senderismo'; -- Fuendetodos
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49009' AND categoria='senderismo') WHERE codigo_ine='50181' AND categoria='senderismo'; -- Muel
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49010' AND categoria='senderismo') WHERE codigo_ine='50248' AND categoria='senderismo'; -- Sos del Rey Católico
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49011' AND categoria='senderismo') WHERE codigo_ine='50251' AND categoria='senderismo'; -- Tarazona
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='49013' AND categoria='senderismo') WHERE codigo_ine='50297' AND categoria='senderismo'; -- Zaragoza

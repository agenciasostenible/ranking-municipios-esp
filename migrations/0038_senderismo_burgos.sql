-- 0038: Senderismo Burgos curado — Merindades, Sierra Demanda, Pinares
-- Generado: 2026-06-09

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '09001' AND '09485') OR
  (codigo_ine BETWEEN '09701' AND '09908')
);

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '09001' AND '09485') OR
  (codigo_ine BETWEEN '09701' AND '09908')
);

-- ============================================================
-- LAGUNAS DE NEILA — TOP Burgos
-- ============================================================

-- Neila: Lagunas de Neila, icónico = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='09232' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09232','sendero','Lagunas de Neila','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09232','sendero','Sierra de la Demanda — Neila','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09232','sendero','PR-BU 30','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09232','sendero','Parque Natural Sierra de la Demanda','excel_curado',date('now'));

-- ============================================================
-- MERINDADES / HOCES DEL EBRO / LAS MERINDADES
-- ============================================================

-- Espinosa de los Monteros: Parque Natural, Ojo Guareña, Merindades = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='09006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09006','sendero','Parque Natural Hoces del Ebro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09006','sendero','Ojo Guareña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09006','sendero','Castro Valnera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09006','sendero','GR-73 Merindades','excel_curado',date('now'));

-- Frías: pueblo más bonito de España, Hoces del Ebro = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='09007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09007','sendero','Hoces del Ebro — Frías','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09007','sendero','Parque Natural Hoces del Ebro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09007','sendero','Sendero del castillo','excel_curado',date('now'));

-- Valle de Mena: Parque Natural, excelente = 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='09410' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09410','sendero','Parque Natural Hoces del Ebro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09410','sendero','Monte Santiago','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09410','sendero','GR-73','excel_curado',date('now'));

-- Merindad de Sotoscueva: Simas de Ojo Guareña = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='09215' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09215','sendero','Simas y Cuevas de Ojo Guareña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09215','sendero','Parque Natural Hoces del Ebro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09215','sendero','GR-73 Merindades','excel_curado',date('now'));

-- Merindad de Valdivielso: Hoces del Ebro = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='09217' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09217','sendero','Hoces del Ebro — Valdivielso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09217','sendero','Parque Natural Hoces del Ebro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09217','sendero','Sendero del Ebro','excel_curado',date('now'));

-- Trespaderne: Hoces del Ebro = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='09019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09019','sendero','Hoces del Ebro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09019','sendero','Parque Natural Hoces del Ebro','excel_curado',date('now'));

-- Valle de Zamanzas: Hoces del Ebro = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='09416' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09416','sendero','Hoces del Ebro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09416','sendero','Desfiladero del Ebro','excel_curado',date('now'));

-- Valle de Sedano: Hoces del Ebro = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='09905' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09905','sendero','Hoces del Ebro — Sedano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09905','sendero','Parque Natural Hoces del Ebro','excel_curado',date('now'));

-- Merindad de Montija: Merindades = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='09214' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09214','sendero','Merindades — Montija','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09214','sendero','Parque Natural Hoces del Ebro','excel_curado',date('now'));

-- Oña: Hoces del Ebro = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='09011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09011','sendero','Hoces del Ebro — Oña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09011','sendero','Monasterio de San Salvador','excel_curado',date('now'));

-- Pancorbo: Hoz de Pancorbo = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='09012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09012','sendero','Hoz de Pancorbo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09012','sendero','Sendero del desfiladero','excel_curado',date('now'));

-- Merindad de Cuesta-Urria: Merindades = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='09213' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09213','sendero','Merindades','excel_curado',date('now'));

-- Valle de Manzanedo: Merindades = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='09409' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09409','sendero','Merindades','excel_curado',date('now'));

-- Partido de la Sierra en Tobalina: Hoces Ebro = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='09255' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09255','sendero','Hoces del Ebro — Tobalina','excel_curado',date('now'));

-- Valle de Tobalina: 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='09412' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09412','sendero','Merindades','excel_curado',date('now'));

-- Junta de Traslaloma: 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09189' AND categoria='senderismo';

-- Junta de Villalba de Losa: 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09190' AND categoria='senderismo';

-- Merindad de Valdeporres: 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='09216' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09216','sendero','Merindades','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09216','sendero','Simas de Ojo Guareña','excel_curado',date('now'));

-- Cillaperlata: Hoces Ebro = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09102' AND categoria='senderismo';

-- Merindad de Río Ubierna (09906): 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='09906' AND categoria='senderismo';

-- Valle de Losa (09908): 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09908' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09908','sendero','Merindades — Valle de Losa','excel_curado',date('now'));

-- Valle de las Navas (09904): 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='09904' AND categoria='senderismo';

-- ============================================================
-- SIERRA DE LA DEMANDA
-- ============================================================

-- Santo Domingo de Silos: Cañón del Duratón, monasterio = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='09018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09018','sendero','Cañón del Río Mataviejas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09018','sendero','Monasterio de Santo Domingo de Silos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09018','sendero','Sendero del Cañón','excel_curado',date('now'));

-- Monterrubio de la Demanda: Sierra Demanda = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='09226' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09226','sendero','Sierra de la Demanda','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09226','sendero','Pico San Millán','excel_curado',date('now'));

-- Huerta de Arriba: Sierra Demanda = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='09173' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09173','sendero','Sierra de la Demanda','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09173','sendero','Sendero del Arlanza','excel_curado',date('now'));

-- Barbadillo de Herreros: Sierra Demanda = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='09037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09037','sendero','Sierra de la Demanda','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09037','sendero','Río Pedroso','excel_curado',date('now'));

-- Huerta de Rey: Sierra Demanda = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='09174' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09174','sendero','Sierra de la Demanda','excel_curado',date('now'));

-- Barbadillo del Pez: Sierra Demanda = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='09039' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09039','sendero','Sierra de la Demanda','excel_curado',date('now'));

-- Barbadillo del Mercado: Sierra Demanda = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='09038' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09038','sendero','Sierra de la Demanda','excel_curado',date('now'));

-- Salas de los Infantes: Sierra Demanda = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='09017' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09017','sendero','Sierra de la Demanda','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09017','sendero','GR-82 Demanda','excel_curado',date('now'));

-- Villasur de Herreros: Sierra Demanda = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09463' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09463','sendero','Sierra de la Demanda','excel_curado',date('now'));

-- Carazo: Sierra Demanda = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09070' AND categoria='senderismo';

-- Hortigüela: Cañón del Arlanza = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='09169' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09169','sendero','Cañón del Arlanza','excel_curado',date('now'));

-- Jurisdicción de Lara: Demanda = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='09191' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09191','sendero','Sierra de la Demanda','excel_curado',date('now'));

-- Cascajares de la Sierra: Demanda = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09078' AND categoria='senderismo';

-- Pineda de la Sierra: Demanda = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='09266' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09266','sendero','Sierra de la Demanda','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09266','sendero','Sendero del Pinar','excel_curado',date('now'));

-- Tinieblas de la Sierra: Demanda = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='09381' AND categoria='senderismo';

-- Campolara: Demanda = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='09066' AND categoria='senderismo';

-- ============================================================
-- PINARES DE BURGOS
-- ============================================================

-- Quintanar de la Sierra: Pinares = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='09289' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09289','sendero','Pinares de Burgos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09289','sendero','Río Tera','excel_curado',date('now'));

-- Canicosa de la Sierra: Pinares = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='09067' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09067','sendero','Pinares Soria-Burgos','excel_curado',date('now'));

-- Regumiel de la Sierra: Pinares = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='09309' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09309','sendero','Pinares','excel_curado',date('now'));

-- Hontoria del Pinar: Pinares = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='09163' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09163','sendero','Pinares de Burgos','excel_curado',date('now'));

-- Rabanera del Pinar: Pinares = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09302' AND categoria='senderismo';

-- Palacios de la Sierra: Pinares = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='09246' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09246','sendero','Pinares de Burgos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09246','sendero','Río Lobos acceso','excel_curado',date('now'));

-- Vilviestre del Pinar: Pinares = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09425' AND categoria='senderismo';

-- Riocavado de la Sierra: Demanda/Pinares = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='09318' AND categoria='senderismo';

-- ============================================================
-- COVARRUBIAS / LERMA / CASTILLA
-- ============================================================

-- Covarrubias: medieval, Arlanza = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='09005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09005','sendero','Valle del Arlanza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09005','sendero','Cañón del Arlanza','excel_curado',date('now'));

-- Peñaranda de Duero: medieval = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='09013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09013','sendero','Valle del Duero — Peñaranda','excel_curado',date('now'));

-- Caleruega: histórico = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='09004' AND categoria='senderismo';

-- Lerma: barroco, campo = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='09008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09008','sendero','Valle del Arlanza','excel_curado',date('now'));

-- Roa: Ribera del Duero = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='09016' AND categoria='senderismo';

-- Briviesca: Camino de Santiago, campo = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09002' AND categoria='senderismo';

-- Miranda de Ebro: ciudad, campo = 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='09010' AND categoria='senderismo';

-- Burgos capital: ciudad = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09003','sendero','Río Arlanzón — Burgos','excel_curado',date('now'));

-- Aranda de Duero: Ribera del Duero = 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='09001' AND categoria='senderismo';

-- Medina de Pomar: campo = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09009' AND categoria='senderismo';

-- ============================================================
-- RESTO (campo / cerealista / llano)
-- ============================================================
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09021' AND categoria='senderismo'; -- Arauzo de Salce
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09022' AND categoria='senderismo'; -- Arauzo de Torre
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09023' AND categoria='senderismo'; -- Arcos de la Llana
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09024' AND categoria='senderismo'; -- Arenillas de Riopisuerga
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09025' AND categoria='senderismo'; -- Arija (embalse del Ebro)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09025','sendero','Embalse del Ebro','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='09026' AND categoria='senderismo'; -- Arlanzón (sierra)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09026','sendero','Sierra de la Demanda — Arlanzón','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='09027' AND categoria='senderismo'; -- Arraya de Oca
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='09029' AND categoria='senderismo'; -- Atapuerca (yacimiento)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09029','sendero','Yacimiento de Atapuerca','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09032' AND categoria='senderismo'; -- Avellanosa de Muñó
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09033' AND categoria='senderismo'; -- Bahabón de Esgueva
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09035' AND categoria='senderismo'; -- Baños de Valdearados
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09036' AND categoria='senderismo'; -- Bañuelos de Bureba
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09041' AND categoria='senderismo'; -- Barrio de Muñó
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09044' AND categoria='senderismo'; -- Barrios de Colina
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09045' AND categoria='senderismo'; -- Basconcillos del Tozo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09046' AND categoria='senderismo'; -- Bascuñana
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09047' AND categoria='senderismo'; -- Belbimbre
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09048' AND categoria='senderismo'; -- Belorado (Camino)
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09050' AND categoria='senderismo'; -- Berberana
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09051' AND categoria='senderismo'; -- Berlangas de Roa
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09052' AND categoria='senderismo'; -- Berzosa de Bureba
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09054' AND categoria='senderismo'; -- Bozoó
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09055' AND categoria='senderismo'; -- Brazacorta
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09057' AND categoria='senderismo'; -- Bugedo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09058' AND categoria='senderismo'; -- Buniel
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09060' AND categoria='senderismo'; -- Busto de Bureba
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09061' AND categoria='senderismo'; -- Cabañes de Esgueva
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='09062' AND categoria='senderismo'; -- Cabezón de la Sierra
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('09062','sendero','Sierra de la Demanda acceso','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09065' AND categoria='senderismo'; -- Campillo de Aranda
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09063' AND categoria='senderismo'; -- Cavia
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09068' AND categoria='senderismo'; -- Cantabrana
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09071' AND categoria='senderismo'; -- Carcedo de Bureba
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09072' AND categoria='senderismo'; -- Carcedo de Burgos (sierra)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09073' AND categoria='senderismo'; -- Cardeñadijo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09074' AND categoria='senderismo'; -- Cardeñajimeno
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09075' AND categoria='senderismo'; -- Cardeñuela Riopico
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09076' AND categoria='senderismo'; -- Carrias
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09077' AND categoria='senderismo'; -- Cascajares de Bureba
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09079' AND categoria='senderismo'; -- Castellanos de Castro
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09082' AND categoria='senderismo'; -- Castildelgado
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09083' AND categoria='senderismo'; -- Castil de Peones
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09084' AND categoria='senderismo'; -- Castrillo de la Reina
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09085' AND categoria='senderismo'; -- Castrillo de la Vega
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09086' AND categoria='senderismo'; -- Castrillo del Val
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09088' AND categoria='senderismo'; -- Castrillo de Riopisuerga
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09090' AND categoria='senderismo'; -- Castrillo Mota de Judíos
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09091' AND categoria='senderismo'; -- Castrojeriz (Camino)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09093' AND categoria='senderismo'; -- Cayuela
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09094' AND categoria='senderismo'; -- Cebrecos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09095' AND categoria='senderismo'; -- Celada del Camino
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='09098' AND categoria='senderismo'; -- Cerezo de Río Tirón
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09100' AND categoria='senderismo'; -- Cerratón de Juarros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09101' AND categoria='senderismo'; -- Ciadoncha
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='09103' AND categoria='senderismo'; -- Cilleruelo de Abajo
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='09104' AND categoria='senderismo'; -- Cilleruelo de Arriba
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09105' AND categoria='senderismo'; -- Ciruelos de Cervera
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09108' AND categoria='senderismo'; -- Cogollos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09109' AND categoria='senderismo'; -- Condado de Treviño
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09110' AND categoria='senderismo'; -- Contreras
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09112' AND categoria='senderismo'; -- Coruña del Conde
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09114' AND categoria='senderismo'; -- Cubillo del Campo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09115' AND categoria='senderismo'; -- Cubo de Bureba
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09119' AND categoria='senderismo'; -- Cuevas de San Clemente
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09120' AND categoria='senderismo'; -- Encío
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09122' AND categoria='senderismo'; -- Espinosa de Cervera
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09123' AND categoria='senderismo'; -- Espinosa del Camino
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09125' AND categoria='senderismo'; -- Estépar
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09127' AND categoria='senderismo'; -- Fontioso
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09128' AND categoria='senderismo'; -- Frandovínez
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09129' AND categoria='senderismo'; -- Fresneda de la Sierra Tirón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09130' AND categoria='senderismo'; -- Fresneña
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09131' AND categoria='senderismo'; -- Fresnillo de las Dueñas
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09132' AND categoria='senderismo'; -- Fresno de Río Tirón
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09133' AND categoria='senderismo'; -- Fresno de Rodilla
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09135' AND categoria='senderismo'; -- Fuentebureba
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09136' AND categoria='senderismo'; -- Fuentecén
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09137' AND categoria='senderismo'; -- Fuentelcésped
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09138' AND categoria='senderismo'; -- Fuentelisendo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09139' AND categoria='senderismo'; -- Fuentemolinos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09140' AND categoria='senderismo'; -- Fuentenebro
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09141' AND categoria='senderismo'; -- Fuentespina
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09143' AND categoria='senderismo'; -- Galbarros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09148' AND categoria='senderismo'; -- Grijalba
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09149' AND categoria='senderismo'; -- Grisaleña
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09151' AND categoria='senderismo'; -- Gumiel de Izán
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='09152' AND categoria='senderismo'; -- Gumiel de Mercado
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='09154' AND categoria='senderismo'; -- Hacinas (Demanda)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09155' AND categoria='senderismo'; -- Haza
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='09159' AND categoria='senderismo'; -- Hontanas (Camino)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09160' AND categoria='senderismo'; -- Hontangas
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09162' AND categoria='senderismo'; -- Hontoria de la Cantera
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09164' AND categoria='senderismo'; -- Hontoria de Valdearados
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='09167' AND categoria='senderismo'; -- Hornillos del Camino
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09170' AND categoria='senderismo'; -- Hoyales de Roa
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09172' AND categoria='senderismo'; -- Huérmeces
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09175' AND categoria='senderismo'; -- Humada
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09176' AND categoria='senderismo'; -- Hurones
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09177' AND categoria='senderismo'; -- Ibeas de Juarros
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09178' AND categoria='senderismo'; -- Ibrillos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09179' AND categoria='senderismo'; -- Iglesiarrubia
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09180' AND categoria='senderismo'; -- Iglesias
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09181' AND categoria='senderismo'; -- Isar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09182' AND categoria='senderismo'; -- Itero del Castillo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09183' AND categoria='senderismo'; -- Jaramillo de la Fuente
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09184' AND categoria='senderismo'; -- Jaramillo Quemado
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09192' AND categoria='senderismo'; -- Jurisdicción de San Zadornil
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09195' AND categoria='senderismo'; -- Llano de Bureba
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09030' AND categoria='senderismo'; -- Los Ausines
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09034' AND categoria='senderismo'; -- Los Balbases
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09043' AND categoria='senderismo'; -- Los Barrios de Bureba
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09196' AND categoria='senderismo'; -- Madrigal del Monte
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09197' AND categoria='senderismo'; -- Madrigalejo del Monte
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09198' AND categoria='senderismo'; -- Mahamud
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09199' AND categoria='senderismo'; -- Mambrilla de Castrejón
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09200' AND categoria='senderismo'; -- Mambrillas de Lara
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09201' AND categoria='senderismo'; -- Mamolar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09202' AND categoria='senderismo'; -- Manciles
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09206' AND categoria='senderismo'; -- Mazuela
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09208' AND categoria='senderismo'; -- Mecerreyes
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09211' AND categoria='senderismo'; -- Melgar de Fernamental
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09218' AND categoria='senderismo'; -- Milagros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09220' AND categoria='senderismo'; -- Miraveche
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09221' AND categoria='senderismo'; -- Modúbar de la Emparedada
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09224' AND categoria='senderismo'; -- Monasterio de Rodilla
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09223' AND categoria='senderismo'; -- Monasterio de la Sierra
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09225' AND categoria='senderismo'; -- Moncalvillo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09227' AND categoria='senderismo'; -- Montorio
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09228' AND categoria='senderismo'; -- Moradillo de Roa
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09229' AND categoria='senderismo'; -- Nava de Roa
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09230' AND categoria='senderismo'; -- Navas de Bureba
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09231' AND categoria='senderismo'; -- Nebreda
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09235' AND categoria='senderismo'; -- Olmedillo de Roa
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09236' AND categoria='senderismo'; -- Olmillos de Muñó
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09239' AND categoria='senderismo'; -- Oquillas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09241' AND categoria='senderismo'; -- Orbaneja Riopico
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09242' AND categoria='senderismo'; -- Padilla de Abajo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09243' AND categoria='senderismo'; -- Padilla de Arriba
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09244' AND categoria='senderismo'; -- Padrones de Bureba
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09247' AND categoria='senderismo'; -- Palacios de Riopisuerga
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='09248' AND categoria='senderismo'; -- Palazuelos de la Sierra (Demanda)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09249' AND categoria='senderismo'; -- Palazuelos de Muñó
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09250' AND categoria='senderismo'; -- Pampliega
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09253' AND categoria='senderismo'; -- Pardilla
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09256' AND categoria='senderismo'; -- Pedrosa de Duero
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09257' AND categoria='senderismo'; -- Pedrosa del Páramo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09258' AND categoria='senderismo'; -- Pedrosa del Príncipe
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09259' AND categoria='senderismo'; -- Pedrosa de Río Urbel
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09262' AND categoria='senderismo'; -- Peral de Arlanza
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09265' AND categoria='senderismo'; -- Piérnigas
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09267' AND categoria='senderismo'; -- Pineda Trasmonte
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='09268' AND categoria='senderismo'; -- Pinilla de los Barruecos
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09269' AND categoria='senderismo'; -- Pinilla de los Moros
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09270' AND categoria='senderismo'; -- Pinilla Trasmonte
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09273' AND categoria='senderismo'; -- Prádanos de Bureba
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09274' AND categoria='senderismo'; -- Pradoluengo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09275' AND categoria='senderismo'; -- Presencio
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='09276' AND categoria='senderismo'; -- La Puebla de Arganzón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09277' AND categoria='senderismo'; -- Puentedura
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09279' AND categoria='senderismo'; -- Quemada
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09280' AND categoria='senderismo'; -- Quintanabureba
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09281' AND categoria='senderismo'; -- Quintana del Pidio
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09283' AND categoria='senderismo'; -- Quintanaélez
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09287' AND categoria='senderismo'; -- Quintanaortuño
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09288' AND categoria='senderismo'; -- Quintanapalla
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09292' AND categoria='senderismo'; -- Quintanavides
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09294' AND categoria='senderismo'; -- Quintanilla de la Mata
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09295' AND categoria='senderismo'; -- Quintanilla del Coco
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09297' AND categoria='senderismo'; -- Las Quintanillas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09298' AND categoria='senderismo'; -- Quintanilla San García
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09301' AND categoria='senderismo'; -- Quintanilla Vivar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09015' AND categoria='senderismo'; -- Quintanilla de Vivar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09303' AND categoria='senderismo'; -- Rábanos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09304' AND categoria='senderismo'; -- Rabé de las Calzadas
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09306' AND categoria='senderismo'; -- Rebolledo de la Torre
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='09307' AND categoria='senderismo'; -- Redecilla del Camino
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09308' AND categoria='senderismo'; -- Redecilla del Campo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09310' AND categoria='senderismo'; -- Reinoso
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09311' AND categoria='senderismo'; -- Retuerta
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09314' AND categoria='senderismo'; -- Revilla del Campo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09315' AND categoria='senderismo'; -- Revillarruz
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09316' AND categoria='senderismo'; -- Revilla Vallejera
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09317' AND categoria='senderismo'; -- Rezmondo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09312' AND categoria='senderismo'; -- La Revilla y Ahedo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09323' AND categoria='senderismo'; -- Rojas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09325' AND categoria='senderismo'; -- Royuela de Río Franco
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09326' AND categoria='senderismo'; -- Rubena
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09327' AND categoria='senderismo'; -- Rublacedo de Abajo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09328' AND categoria='senderismo'; -- Rucandio
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09329' AND categoria='senderismo'; -- Salas de Bureba
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09332' AND categoria='senderismo'; -- Saldaña de Burgos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09334' AND categoria='senderismo'; -- Salinillas de Bureba
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09335' AND categoria='senderismo'; -- San Adrián de Juarros
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09337' AND categoria='senderismo'; -- San Juan del Monte
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09338' AND categoria='senderismo'; -- San Mamés de Burgos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09339' AND categoria='senderismo'; -- San Martín de Rubiales
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09340' AND categoria='senderismo'; -- San Millán de Lara
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09360' AND categoria='senderismo'; -- San Vicente del Valle
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09343' AND categoria='senderismo'; -- Santa Cecilia
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09345' AND categoria='senderismo'; -- Santa Cruz de la Salceda
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09346' AND categoria='senderismo'; -- Santa Cruz del Valle Urbión
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09347' AND categoria='senderismo'; -- Santa Gadea del Cid
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09348' AND categoria='senderismo'; -- Santa Inés
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09350' AND categoria='senderismo'; -- Santa María del Campo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09351' AND categoria='senderismo'; -- Santa María del Invierno
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09352' AND categoria='senderismo'; -- Santa María del Mercadillo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09353' AND categoria='senderismo'; -- Santa María Ribarredonda
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09354' AND categoria='senderismo'; -- Santa Olalla de Bureba
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09355' AND categoria='senderismo'; -- Santibáñez de Esgueva
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09356' AND categoria='senderismo'; -- Santibáñez del Val
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09361' AND categoria='senderismo'; -- Sargentes de la Lora
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09362' AND categoria='senderismo'; -- Sarracín
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09363' AND categoria='senderismo'; -- Sasamón
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09365' AND categoria='senderismo'; -- La Sequera de Haza
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09366' AND categoria='senderismo'; -- Solarana
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09368' AND categoria='senderismo'; -- Sordillos
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09369' AND categoria='senderismo'; -- Sotillo de la Ribera
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09372' AND categoria='senderismo'; -- Sotragero
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09373' AND categoria='senderismo'; -- Sotresgudo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09374' AND categoria='senderismo'; -- Susinos del Páramo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09375' AND categoria='senderismo'; -- Tamarón
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09377' AND categoria='senderismo'; -- Tardajos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09378' AND categoria='senderismo'; -- Tejada
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09380' AND categoria='senderismo'; -- Terradillos de Esgueva
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09382' AND categoria='senderismo'; -- Tobar
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09384' AND categoria='senderismo'; -- Tordómar
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09386' AND categoria='senderismo'; -- Torrecilla del Monte
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09387' AND categoria='senderismo'; -- Torregalindo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09388' AND categoria='senderismo'; -- Torrelara
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09389' AND categoria='senderismo'; -- Torrepadre
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09390' AND categoria='senderismo'; -- Torresandino
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09391' AND categoria='senderismo'; -- Tórtoles de Esgueva
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09392' AND categoria='senderismo'; -- Tosantos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09395' AND categoria='senderismo'; -- Tubilla del Agua
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09396' AND categoria='senderismo'; -- Tubilla del Lago
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09398' AND categoria='senderismo'; -- Úrbel del Castillo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09400' AND categoria='senderismo'; -- Vadocondes
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09403' AND categoria='senderismo'; -- Valdeande
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09405' AND categoria='senderismo'; -- Valdezate
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09406' AND categoria='senderismo'; -- Valdorros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09407' AND categoria='senderismo'; -- Valmala
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09408' AND categoria='senderismo'; -- Vallarta de Bureba
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09413' AND categoria='senderismo'; -- Valle de Valdebezana
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09414' AND categoria='senderismo'; -- Valle de Valdelaguna
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09415' AND categoria='senderismo'; -- Valle de Valdelucio
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09417' AND categoria='senderismo'; -- Vallejera
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09418' AND categoria='senderismo'; -- Valles de Palenzuela
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09419' AND categoria='senderismo'; -- Valluércanes
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09422' AND categoria='senderismo'; -- La Vid de Bureba
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09421' AND categoria='senderismo'; -- La Vid y Barrios
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09423' AND categoria='senderismo'; -- Vileña
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09427' AND categoria='senderismo'; -- Villadiego
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09428' AND categoria='senderismo'; -- Villaescusa de Roa
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09429' AND categoria='senderismo'; -- Villaescusa la Sombría
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09430' AND categoria='senderismo'; -- Villaespasa
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09431' AND categoria='senderismo'; -- Villafranca Montes de Oca (Camino)
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09432' AND categoria='senderismo'; -- Villafruela
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09433' AND categoria='senderismo'; -- Villagalijo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09434' AND categoria='senderismo'; -- Villagonzalo Pedernales
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09437' AND categoria='senderismo'; -- Villahoz
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09438' AND categoria='senderismo'; -- Villalba de Duero
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09439' AND categoria='senderismo'; -- Villalbilla de Burgos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09440' AND categoria='senderismo'; -- Villalbilla de Gumiel
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09441' AND categoria='senderismo'; -- Villaldemiro
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09442' AND categoria='senderismo'; -- Villalmanzo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09443' AND categoria='senderismo'; -- Villamayor de los Montes
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09444' AND categoria='senderismo'; -- Villamayor de Treviño
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09445' AND categoria='senderismo'; -- Villambistia
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09446' AND categoria='senderismo'; -- Villamedianilla
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09447' AND categoria='senderismo'; -- Villamiel de la Sierra (Demanda)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09448' AND categoria='senderismo'; -- Villangómez
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09449' AND categoria='senderismo'; -- Villanueva de Argaño
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='09450' AND categoria='senderismo'; -- Villanueva de Carazo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09451' AND categoria='senderismo'; -- Villanueva de Gumiel
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09454' AND categoria='senderismo'; -- Villanueva de Teba
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09455' AND categoria='senderismo'; -- Villaquirán de la Puebla
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09456' AND categoria='senderismo'; -- Villaquirán de los Infantes
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='09020' AND categoria='senderismo'; -- Villarcayo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09903' AND categoria='senderismo'; -- Villarcayo de Merindad
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09458' AND categoria='senderismo'; -- Villariezo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09460' AND categoria='senderismo'; -- Villasandino
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09464' AND categoria='senderismo'; -- Villatuelda
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09466' AND categoria='senderismo'; -- Villaverde del Monte
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09467' AND categoria='senderismo'; -- Villaverde-Mogina
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09471' AND categoria='senderismo'; -- Villayerno Morquillas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09472' AND categoria='senderismo'; -- Villazopeque
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09473' AND categoria='senderismo'; -- Villegas
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='09476' AND categoria='senderismo'; -- Villoruebo (Demanda)
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09424' AND categoria='senderismo'; -- Viloria de Rioja
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='09478' AND categoria='senderismo'; -- Vizcaínos (Demanda)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09480' AND categoria='senderismo'; -- Zael
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09482' AND categoria='senderismo'; -- Zarzosa de Río Pisuerga
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='09483' AND categoria='senderismo'; -- Zazuar
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09485' AND categoria='senderismo'; -- Zuñeda
-- Comunidades
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09701' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='09709' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='09713' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09714' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09715' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='09725' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='09728' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09730' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='09731' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09733' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09734' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='09738' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09739' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09740' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09742' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='09743' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09748' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09751' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09901' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='09902' AND categoria='senderismo';

-- ============================================================
-- SYNC: MIN → MAX (duplicados)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09002' AND categoria='senderismo') WHERE codigo_ine='09056' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09003' AND categoria='senderismo') WHERE codigo_ine='09059' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09004' AND categoria='senderismo') WHERE codigo_ine='09064' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09005' AND categoria='senderismo') WHERE codigo_ine='09113' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09006' AND categoria='senderismo') WHERE codigo_ine='09124' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09007' AND categoria='senderismo') WHERE codigo_ine='09134' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09008' AND categoria='senderismo') WHERE codigo_ine='09194' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09009' AND categoria='senderismo') WHERE codigo_ine='09209' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09010' AND categoria='senderismo') WHERE codigo_ine='09219' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09011' AND categoria='senderismo') WHERE codigo_ine='09238' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09012' AND categoria='senderismo') WHERE codigo_ine='09251' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09013' AND categoria='senderismo') WHERE codigo_ine='09261' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09014' AND categoria='senderismo') WHERE codigo_ine='09272' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09016' AND categoria='senderismo') WHERE codigo_ine='09321' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09017' AND categoria='senderismo') WHERE codigo_ine='09330' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09018' AND categoria='senderismo') WHERE codigo_ine='09358' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='09019' AND categoria='senderismo') WHERE codigo_ine='09394' AND categoria='senderismo';

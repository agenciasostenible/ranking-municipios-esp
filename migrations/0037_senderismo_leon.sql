-- 0037: Senderismo León curado — Picos de Europa, Babia, Bierzo, Ancares
-- Generado: 2026-06-09

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '24098' AND '24230') OR
  (codigo_ine BETWEEN '24901' AND '24902') OR
  (codigo_ine BETWEEN '26001' AND '26019')
);

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '24098' AND '24230') OR
  (codigo_ine BETWEEN '24901' AND '24902') OR
  (codigo_ine BETWEEN '26001' AND '26019')
);

-- ============================================================
-- PICOS DE EUROPA — top de España
-- ============================================================

-- Posada de Valdeón: Garganta del Cares, ruta más famosa España = 96
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine='24116' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24116','sendero','Garganta del Cares — Ruta del Cares','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24116','sendero','Picos de Europa — Valdeón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24116','sendero','PR-LE 14','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24116','sendero','Cain — Picos','excel_curado',date('now'));

-- Oseja de Sajambre: Picos de Europa, Desfiladero de los Beyos = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='24106' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24106','sendero','Desfiladero de los Beyos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24106','sendero','Picos de Europa — Sajambre','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24106','sendero','GR-202 Picos','excel_curado',date('now'));

-- Riaño: Picos, embalse, montaña = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='24130' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24130','sendero','Picos de Europa — Riaño','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24130','sendero','Embalse de Riaño','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24130','sendero','Sendero de la Montaña de Riaño','excel_curado',date('now'));

-- Puebla de Lillo: Picos/Mampodre, Lagos de Ausente = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='24121' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24121','sendero','Mampodre — Puebla de Lillo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24121','sendero','Lagos de Ausente','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24121','sendero','Puerto de San Glorio','excel_curado',date('now'));

-- Acebedo: Picos, Valdeón acceso = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='26001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26001','sendero','Picos de Europa — Acebedo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26001','sendero','Montaña de Riaño','excel_curado',date('now'));

-- Reyero: montaña, Picos zona sur = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='24129' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24129','sendero','Montaña de Riaño','excel_curado',date('now'));

-- Prioro: montaña leonesa = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='24120' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24120','sendero','Montaña de Riaño','excel_curado',date('now'));

-- Valderrueda: montaña = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='24183' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24183','sendero','Montaña de Riaño','excel_curado',date('now'));

-- Prado de la Guzpeña: montaña = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24118' AND categoria='senderismo';

-- ============================================================
-- BABIA / LACIANA
-- ============================================================

-- Cabrillanes: Parque Natural Babia y Luna, espectacular = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='26006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26006','sendero','Parque Natural Babia y Luna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26006','sendero','Lago de Babia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26006','sendero','PR-LE 38','excel_curado',date('now'));

-- San Emiliano: Babia, Reserva = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='24145' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24145','sendero','Parque Natural Babia y Luna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24145','sendero','Reserva de la Biosfera Babia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24145','sendero','Sendero de Babia','excel_curado',date('now'));

-- Babia (comarca): 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='26003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26003','sendero','Comarca de Babia','excel_curado',date('now'));

-- Sena de Luna: Babia = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='24164' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24164','sendero','Babia y Luna','excel_curado',date('now'));

-- Villablino: Laciana, Palacios del Sil = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='24202' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24202','sendero','Valle de Laciana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24202','sendero','Reserva de la Biosfera Laciana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24202','sendero','Pico Cervantes','excel_curado',date('now'));

-- Palacios del Sil: Laciana = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='24109' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24109','sendero','Valle de Laciana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24109','sendero','Parque Natural Babia','excel_curado',date('now'));

-- Páramo del Sil: Bierzo alto = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='24110' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24110','sendero','Alto Bierzo','excel_curado',date('now'));

-- ============================================================
-- ANCARES LEONESES
-- ============================================================

-- Peranzanes: Parque Regional Ancares = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='24112' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24112','sendero','Parque Regional Sierra de los Ancares','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24112','sendero','Palloza de Peranzanes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24112','sendero','GR-73 Ancares','excel_curado',date('now'));

-- Vega de Valcarce: Ancares, Camino de Santiago = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='24198' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24198','sendero','Ancares leoneses','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24198','sendero','Camino Francés — O Cebreiro','excel_curado',date('now'));

-- Trabadelo: Ancares = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='24171' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24171','sendero','Ancares leoneses','excel_curado',date('now'));

-- Oencia: Ancares, Galicia frontera = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='24103' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24103','sendero','Sierra de los Ancares','excel_curado',date('now'));

-- Vega de Espinareda: Ancares acceso = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='24196' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24196','sendero','Ancares leoneses','excel_curado',date('now'));

-- ============================================================
-- BIERZO
-- ============================================================

-- Villafranca del Bierzo: Camino de Santiago, Bierzo = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='24209' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24209','sendero','Camino de Santiago — Bierzo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24209','sendero','Valle del Burbia','excel_curado',date('now'));

-- Molinaseca: Las Médulas próximo, Camino = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='24100' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24100','sendero','Camino de Santiago — Bierzo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24100','sendero','Las Médulas acceso','excel_curado',date('now'));

-- Priaranza del Bierzo: Las Médulas entorno = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='24119' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24119','sendero','Las Médulas — Bierzo','excel_curado',date('now'));

-- Noceda del Bierzo: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24102' AND categoria='senderismo';

-- Toreno: Bierzo = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24169' AND categoria='senderismo';

-- Torre del Bierzo: montaña = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='24170' AND categoria='senderismo';

-- Ponferrada: ciudad, Templar, Bierzo = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='24115' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24115','sendero','Castillo Templario de Ponferrada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24115','sendero','Camino de Santiago','excel_curado',date('now'));

-- Cacabelos: Bierzo = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='26007' AND categoria='senderismo';

-- Bembibre: Bierzo = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='26004' AND categoria='senderismo';

-- Toral de los Vados: Bierzo = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='24206' AND categoria='senderismo';

-- ============================================================
-- OMAÑA / MONTAÑA SUR
-- ============================================================

-- Murias de Paredes: Omaña = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='24101' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24101','sendero','Omaña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24101','sendero','Parque Natural Babia y Luna','excel_curado',date('now'));

-- Riello: Omaña = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='24132' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24132','sendero','Omaña','excel_curado',date('now'));

-- Valdesamario: Omaña = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='24184' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24184','sendero','Omaña','excel_curado',date('now'));

-- Soto y Amío: Omaña = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24167' AND categoria='senderismo';

-- Valdelugueros: montaña = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='24177' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24177','sendero','Montaña Central — Valdelugueros','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24177','sendero','Puertos de Valdelugueros','excel_curado',date('now'));

-- Valdepiélago: montaña = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='24179' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24179','sendero','Montaña Central leonesa','excel_curado',date('now'));

-- Santa Colomba de Curueño: montaña = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='24151' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24151','sendero','Valle del Curueño','excel_curado',date('now'));

-- Vegacervera: Hoces de Vegacervera = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='24194' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24194','sendero','Hoces de Vegacervera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24194','sendero','Montaña Central leonesa','excel_curado',date('now'));

-- La Pola de Gordón: montaña = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='24114' AND categoria='senderismo';

-- La Robla: montaña = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='24134' AND categoria='senderismo';

-- La Vecilla: montaña = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24193' AND categoria='senderismo';

-- Sabero: minas, montaña = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='24137' AND categoria='senderismo';

-- Boñar: montaña, embalse Porma = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='26005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26005','sendero','Embalse del Porma','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26005','sendero','Montaña Central leonesa','excel_curado',date('now'));

-- Cistierna: montaña = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='26008' AND categoria='senderismo';

-- Truchas: Cabrera leonesa = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='24172' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24172','sendero','La Cabrera — Truchas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24172','sendero','Embalse de Truchillas','excel_curado',date('now'));

-- Sobrado: Cabrera = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='24165' AND categoria='senderismo';

-- Quintana del Castillo: Cepeda = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='24123' AND categoria='senderismo';

-- Villagatón: Cepeda = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='24210' AND categoria='senderismo';

-- Las Omañas: Omaña = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24104' AND categoria='senderismo';

-- Vegaquemada: montaña = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='24199' AND categoria='senderismo';

-- Camponaraya / resto Bierzo bajo = 40-48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='24143' AND categoria='senderismo'; -- Sancedo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='24165' AND categoria='senderismo'; -- Sobrado

-- ============================================================
-- LLANO / PÁRAMO / SAHAGÚN
-- ============================================================

-- León capital: ciudad, Catedral = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='26010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26010','sendero','Ribera del Bernesga','excel_curado',date('now'));

-- Astorga: Camino de Santiago = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='26002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26002','sendero','Camino de Santiago — Maragatería','excel_curado',date('now'));

-- Sahagún: Camino de Santiago = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='24139' AND categoria='senderismo';

-- Valencia de Don Juan: Duero = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='24188' AND categoria='senderismo';

-- Valverde de la Virgen: periurbano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24189' AND categoria='senderismo';

-- San Andrés del Rabanedo: periurbano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24142' AND categoria='senderismo';

-- Mansilla de las Mulas: Camino = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='26011' AND categoria='senderismo';

-- La Bañeza: campo = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='26009' AND categoria='senderismo';

-- Puebla de Sanabria (aparece en León DB): montaña = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='26013' AND categoria='senderismo';

-- Resto páramo/llano leonés
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='24098' AND categoria='senderismo'; -- Matallana de Torío
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24099' AND categoria='senderismo'; -- Matanza de los Oteros
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='24105' AND categoria='senderismo'; -- Onzonilla
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='24107' AND categoria='senderismo'; -- Pajares de los Oteros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='24108' AND categoria='senderismo'; -- Palacios de la Valduerna
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='24113' AND categoria='senderismo'; -- Pobladura de Pelayo García
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24117' AND categoria='senderismo'; -- Pozuelo del Páramo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='24122' AND categoria='senderismo'; -- Puente de Domingo Flórez
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24124' AND categoria='senderismo'; -- Quintana del Marco
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24125' AND categoria='senderismo'; -- Quintana y Congosto
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24127' AND categoria='senderismo'; -- Regueras de Arriba
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24131' AND categoria='senderismo'; -- Riego de la Vega
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24133' AND categoria='senderismo'; -- Rioseco de Tapia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24136' AND categoria='senderismo'; -- Roperuelos del Páramo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24141' AND categoria='senderismo'; -- San Adrián del Valle
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24144' AND categoria='senderismo'; -- San Cristóbal de la Polantera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24146' AND categoria='senderismo'; -- San Esteban de Nogales
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24148' AND categoria='senderismo'; -- San Justo de la Vega
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='24149' AND categoria='senderismo'; -- San Millán de los Caballeros
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='24150' AND categoria='senderismo'; -- San Pedro Bercianos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='24152' AND categoria='senderismo'; -- Santa Colomba de Somoza (Maragatería)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='24153' AND categoria='senderismo'; -- Santa Cristina de Valmadrigal
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24154' AND categoria='senderismo'; -- Santa Elena de Jamuz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24155' AND categoria='senderismo'; -- Santa María de la Isla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24156' AND categoria='senderismo'; -- Santa María del Monte de Cea
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='24157' AND categoria='senderismo'; -- Santa María del Páramo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24158' AND categoria='senderismo'; -- Santa María de Ordás
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24159' AND categoria='senderismo'; -- Santa Marina del Rey
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24160' AND categoria='senderismo'; -- Santas Martas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='24161' AND categoria='senderismo'; -- Santiago Millas (Maragatería)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24162' AND categoria='senderismo'; -- Santovenia de la Valdoncina
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24163' AND categoria='senderismo'; -- Sariegos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24166' AND categoria='senderismo'; -- Soto de la Vega
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24168' AND categoria='senderismo'; -- Toral de los Guzmanes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24173' AND categoria='senderismo'; -- Turcia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24174' AND categoria='senderismo'; -- Urdiales del Páramo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24175' AND categoria='senderismo'; -- Valdefresno
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24176' AND categoria='senderismo'; -- Valdefuentes del Páramo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24178' AND categoria='senderismo'; -- Valdemora
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24180' AND categoria='senderismo'; -- Valdepolo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='24181' AND categoria='senderismo'; -- Valderas
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24182' AND categoria='senderismo'; -- Valderrey
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24185' AND categoria='senderismo'; -- Val de San Lorenzo (Maragatería)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24187' AND categoria='senderismo'; -- Valdevimbre
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24190' AND categoria='senderismo'; -- Valverde-Enrique
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24191' AND categoria='senderismo'; -- Vallecillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24197' AND categoria='senderismo'; -- Vega de Infanzones
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24199' AND categoria='senderismo'; -- Vegaquemada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24201' AND categoria='senderismo'; -- Vegas del Condado
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='24203' AND categoria='senderismo'; -- Villabraz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24205' AND categoria='senderismo'; -- Villadangos del Páramo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24207' AND categoria='senderismo'; -- Villademor de la Vega
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24211' AND categoria='senderismo'; -- Villamandos
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='24901' AND categoria='senderismo'; -- Villamanín (montaña)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24901','sendero','Puerto de Pajares','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24213' AND categoria='senderismo'; -- Villamartín de Don Sancho
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24212' AND categoria='senderismo'; -- Villamañán
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24214' AND categoria='senderismo'; -- Villamejil
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24215' AND categoria='senderismo'; -- Villamol
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24216' AND categoria='senderismo'; -- Villamontán de la Valduerna
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='24217' AND categoria='senderismo'; -- Villamoratiel de las Matas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24218' AND categoria='senderismo'; -- Villanueva de las Manzanas
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24219' AND categoria='senderismo'; -- Villaobispo de Otero
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='24902' AND categoria='senderismo'; -- Villaornate y Castro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24221' AND categoria='senderismo'; -- Villaquejida
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24222' AND categoria='senderismo'; -- Villaquilambre
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='24223' AND categoria='senderismo'; -- Villarejo de Órbigo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='24224' AND categoria='senderismo'; -- Villares de Órbigo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24225' AND categoria='senderismo'; -- Villasabariego
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24226' AND categoria='senderismo'; -- Villaselán
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24227' AND categoria='senderismo'; -- Villaturiel
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24228' AND categoria='senderismo'; -- Villazala
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='24229' AND categoria='senderismo'; -- Villazanzo de Valderaduey
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='24230' AND categoria='senderismo'; -- Zotes del Páramo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='26011' AND categoria='senderismo'; -- Mansilla (ya hecho)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='26015' AND categoria='senderismo'; -- Sahagún (26xxx)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='26016' AND categoria='senderismo'; -- San Andrés del Rabanedo (26xxx)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='26017' AND categoria='senderismo'; -- Valencia de Don Juan (26xxx)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='26018' AND categoria='senderismo'; -- Valverde de la Virgen (26xxx)

-- ============================================================
-- SYNC: MIN (24xxx) → MAX (26xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='24115' AND categoria='senderismo') WHERE codigo_ine='26012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='24130' AND categoria='senderismo') WHERE codigo_ine='26014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='24139' AND categoria='senderismo') WHERE codigo_ine='26015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='24142' AND categoria='senderismo') WHERE codigo_ine='26016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='24188' AND categoria='senderismo') WHERE codigo_ine='26017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='24189' AND categoria='senderismo') WHERE codigo_ine='26018' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='24209' AND categoria='senderismo') WHERE codigo_ine='26019' AND categoria='senderismo';

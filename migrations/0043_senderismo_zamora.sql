-- 0043: Senderismo Zamora curado — Lago de Sanabria, Arribes del Duero, Sayago
-- Generado: 2026-06-09

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '48001' AND '48008') OR
  (codigo_ine BETWEEN '49014' AND '49275')
);

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '48001' AND '48008') OR
  (codigo_ine BETWEEN '49014' AND '49275')
);

-- ============================================================
-- PARQUE NATURAL LAGO DE SANABRIA — TOP Zamora
-- ============================================================

-- Puebla de Sanabria: Lago de Sanabria, pueblo medieval = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='49166' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49166','sendero','Lago de Sanabria — Parque Natural','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49166','sendero','GR-44 Sanabria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49166','sendero','Sendero del lago glaciar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49166','sendero','Pueblo medieval de Puebla de Sanabria','excel_curado',date('now'));

-- Galende: PN Lago de Sanabria, acceso directo = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='49085' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49085','sendero','Lago de Sanabria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49085','sendero','Parque Natural Lago de Sanabria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49085','sendero','Ruta circular del lago','excel_curado',date('now'));

-- Sanabria: comarca montañosa = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='48004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48004','sendero','Sierra Segundera — Sanabria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48004','sendero','Parque Natural Lago de Sanabria','excel_curado',date('now'));

-- Palacios de Sanabria: PN, acceso = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='49143' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49143','sendero','Parque Natural Lago de Sanabria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49143','sendero','Sendero del Tera','excel_curado',date('now'));

-- Cobreros: Sanabria = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='49050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49050','sendero','Sanabria — Sierra Segundera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49050','sendero','Embalse de Cernadilla','excel_curado',date('now'));

-- Porto: Sanabria = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='49162' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49162','sendero','Sanabria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49162','sendero','Laguna de Los Peces','excel_curado',date('now'));

-- Trefacio: Sanabria = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='49224' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49224','sendero','Sanabria','excel_curado',date('now'));

-- Requejo: Sanabria = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='49174' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49174','sendero','Sanabria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49174','sendero','Río Tera alto','excel_curado',date('now'));

-- Cernadilla: embalse, Sanabria = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='49048' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49048','sendero','Embalse de Cernadilla','excel_curado',date('now'));

-- Rosinos de la Requejada: Sanabria = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='49181' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49181','sendero','Sanabria','excel_curado',date('now'));

-- Lubián: sierra, puerto montaña = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='49100' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49100','sendero','Puerto de Padornelo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49100','sendero','Sierra Segundera','excel_curado',date('now'));

-- Hermisende: sierra frontera Portugal = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='49094' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49094','sendero','Sierra de la Culebra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49094','sendero','Río Duero frontera','excel_curado',date('now'));

-- Pedralba de la Pradería: sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='49145' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49145','sendero','Sanabria','excel_curado',date('now'));

-- Rionegro del Puente: sierra = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='49177' AND categoria='senderismo';

-- Manzanal de los Infantes: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='49112' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49112','sendero','Sierra Segundera','excel_curado',date('now'));

-- Otero de Bodas: sierra = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='49139' AND categoria='senderismo';

-- Robleda-Cervantes: sierra = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='49179' AND categoria='senderismo';

-- Mombuey: sierra = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='49121' AND categoria='senderismo';

-- Fonfría: sierra = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='49071' AND categoria='senderismo';

-- Pías: sierra = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='49154' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49154','sendero','Sierra de la Culebra','excel_curado',date('now'));

-- Espadañedo: sierra = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='49062' AND categoria='senderismo';

-- Asturianos: sierra = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='49017' AND categoria='senderismo';

-- ============================================================
-- ARRIBES DEL DUERO
-- ============================================================

-- Fermoselle: Arribes del Duero, cañón impresionante = 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='48003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48003','sendero','Arribes del Duero — Fermoselle','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48003','sendero','Parque Natural Arribes del Duero','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48003','sendero','Sendero del Duero encajonado','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48003','sendero','GR-14 Arribes','excel_curado',date('now'));

-- Torregamones: Arribes = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='49221' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49221','sendero','Arribes del Duero','excel_curado',date('now'));

-- Fariza: Arribes = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='49064' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49064','sendero','Arribes del Duero — Sayago','excel_curado',date('now'));

-- Muga de Sayago: Arribes = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='49136' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49136','sendero','Arribes del Duero','excel_curado',date('now'));

-- Vilardiegua de la Ribera: Arribes = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='49265' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49265','sendero','Arribes del Duero','excel_curado',date('now'));

-- Pereruela: Arribes = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='49152' AND categoria='senderismo';

-- Moralina: Arribes = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='49131' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49131','sendero','Arribes del Duero','excel_curado',date('now'));

-- Carbajales de Alba: Arribes = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='49036' AND categoria='senderismo';

-- Moral de Sayago: Sayago/Arribes = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='49124' AND categoria='senderismo';

-- Pino del Oro: Arribes = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='49157' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49157','sendero','Arribes del Duero — Pino del Oro','excel_curado',date('now'));

-- Villar del Buey: Arribes = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='49264' AND categoria='senderismo';

-- Cabañas de Sayago: Sayago = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='49031' AND categoria='senderismo';

-- Bermillo de Sayago: Sayago = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='49023' AND categoria='senderismo';

-- ============================================================
-- LAGUNAS DE VILLAFÁFILA
-- ============================================================

-- Villafáfila: Reserva Natural Lagunas = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='48006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48006','sendero','Reserva Natural Lagunas de Villafáfila','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48006','sendero','Otero de Sariegos','excel_curado',date('now'));

-- ============================================================
-- ALCAÑICES / TÁBARA / CARBALLEDA
-- ============================================================

-- Alcañices: frontera, campo = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='48001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48001','sendero','Ruta de los Arribes — Aliste','excel_curado',date('now'));

-- Tábara: sierra baja = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='49214' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49214','sendero','Sierra de la Culebra','excel_curado',date('now'));

-- Viñas: sierra = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='49273' AND categoria='senderismo';

-- Rabanales: sierra = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='49172' AND categoria='senderismo';

-- Mahíde: sierra = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='49104' AND categoria='senderismo';

-- Carbellino: Arribes/Aliste = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='49037' AND categoria='senderismo';

-- ============================================================
-- LLANO / CAMPO
-- ============================================================

-- Benavente: campo = 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='48002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48002','sendero','Río Órbigo ribera','excel_curado',date('now'));

-- Toro: campo, vino = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='48005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48005','sendero','Ribera del Duero — Toro','excel_curado',date('now'));

-- Zamora capital: campo, catedral = 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='48008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48008','sendero','Ribera del Duero — Zamora','excel_curado',date('now'));

-- Villalpando: campo = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='48007' AND categoria='senderismo';

-- Resto campo / llano zamorano
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49014' AND categoria='senderismo'; -- Arquillinos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49015' AND categoria='senderismo'; -- Arrabalde
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49016' AND categoria='senderismo'; -- Aspariegos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49018' AND categoria='senderismo'; -- Ayoó de Vidriales
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49019' AND categoria='senderismo'; -- Barcial del Barco
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49020' AND categoria='senderismo'; -- Belver de los Montes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49022' AND categoria='senderismo'; -- Benegiles
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49025' AND categoria='senderismo'; -- Bretó
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49026' AND categoria='senderismo'; -- Bretocino
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49027' AND categoria='senderismo'; -- Brime de Sog
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49028' AND categoria='senderismo'; -- Brime de Urz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49029' AND categoria='senderismo'; -- Burganes de Valverde
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49030' AND categoria='senderismo'; -- Bustillo del Oro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49024' AND categoria='senderismo'; -- La Bóveda de Toro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49032' AND categoria='senderismo'; -- Calzadilla de Tera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49033' AND categoria='senderismo'; -- Camarzana de Tera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49034' AND categoria='senderismo'; -- Cañizal
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49035' AND categoria='senderismo'; -- Cañizo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49038' AND categoria='senderismo'; -- Casaseca de Campeán
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49039' AND categoria='senderismo'; -- Casaseca de las Chanas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49040' AND categoria='senderismo'; -- Castrillo de la Guareña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49041' AND categoria='senderismo'; -- Castrogonzalo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49042' AND categoria='senderismo'; -- Castronuevo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49043' AND categoria='senderismo'; -- Castroverde de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49044' AND categoria='senderismo'; -- Cazurra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49046' AND categoria='senderismo'; -- Cerecinos de Campos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49047' AND categoria='senderismo'; -- Cerecinos del Carrizal
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49052' AND categoria='senderismo'; -- Coomonte
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49053' AND categoria='senderismo'; -- Coreses
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49054' AND categoria='senderismo'; -- Corrales del Vino
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49055' AND categoria='senderismo'; -- Cotanes del Monte
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49056' AND categoria='senderismo'; -- Cubillos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49057' AND categoria='senderismo'; -- Cubo de Benavente
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49059' AND categoria='senderismo'; -- Cuelgamures
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49058' AND categoria='senderismo'; -- El Cubo de Tierra del Vino
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49061' AND categoria='senderismo'; -- Entrala
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49063' AND categoria='senderismo'; -- Faramontanos de Tábara
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49066' AND categoria='senderismo'; -- Ferreras de Abajo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49067' AND categoria='senderismo'; -- Ferreras de Arriba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49068' AND categoria='senderismo'; -- Ferreruela
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49069' AND categoria='senderismo'; -- Figueruela de Arriba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49075' AND categoria='senderismo'; -- Fresno de la Polvorosa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49076' AND categoria='senderismo'; -- Fresno de la Ribera
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='49077' AND categoria='senderismo'; -- Fresno de Sayago
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49078' AND categoria='senderismo'; -- Friera de Valverde
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49079' AND categoria='senderismo'; -- Fuente Encalada
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49080' AND categoria='senderismo'; -- Fuentelapeña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49082' AND categoria='senderismo'; -- Fuentes de Ropel
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49081' AND categoria='senderismo'; -- Fuentesaúco
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49083' AND categoria='senderismo'; -- Fuentesecas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49084' AND categoria='senderismo'; -- Fuentespreadas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49086' AND categoria='senderismo'; -- Gallegos del Pan
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49087' AND categoria='senderismo'; -- Gallegos del Río
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49088' AND categoria='senderismo'; -- Gamones
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49090' AND categoria='senderismo'; -- Gema
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49091' AND categoria='senderismo'; -- Granja de Moreruela
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49092' AND categoria='senderismo'; -- Granucillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49093' AND categoria='senderismo'; -- Guarrate
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49095' AND categoria='senderismo'; -- La Hiniesta
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49096' AND categoria='senderismo'; -- Jambrina
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49097' AND categoria='senderismo'; -- Justel
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49098' AND categoria='senderismo'; -- Losacino
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49099' AND categoria='senderismo'; -- Losacio
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49101' AND categoria='senderismo'; -- Luelmo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49102' AND categoria='senderismo'; -- El Maderal
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49103' AND categoria='senderismo'; -- Madridanos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49105' AND categoria='senderismo'; -- Maire de Castroponce
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49107' AND categoria='senderismo'; -- Malva
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49108' AND categoria='senderismo'; -- Manganeses de la Lampreana
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49109' AND categoria='senderismo'; -- Manganeses de la Polvorosa
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49110' AND categoria='senderismo'; -- Manzanal de Arriba (sierra)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49111' AND categoria='senderismo'; -- Manzanal del Barco
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49113' AND categoria='senderismo'; -- Matilla de Arzón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49114' AND categoria='senderismo'; -- Matilla la Seca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49115' AND categoria='senderismo'; -- Mayalde
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49116' AND categoria='senderismo'; -- Melgar de Tera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49117' AND categoria='senderismo'; -- Micereces de Tera
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49118' AND categoria='senderismo'; -- Milles de la Polvorosa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49119' AND categoria='senderismo'; -- Molacillos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49120' AND categoria='senderismo'; -- Molezuelas de la Carballeda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49122' AND categoria='senderismo'; -- Monfarracinos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49123' AND categoria='senderismo'; -- Montamarta
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49125' AND categoria='senderismo'; -- Moraleja del Vino
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49126' AND categoria='senderismo'; -- Moraleja de Sayago
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49127' AND categoria='senderismo'; -- Morales del Vino
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49128' AND categoria='senderismo'; -- Morales de Rey
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49129' AND categoria='senderismo'; -- Morales de Toro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49130' AND categoria='senderismo'; -- Morales de Valverde
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49132' AND categoria='senderismo'; -- Moreruela de los Infanzones
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49133' AND categoria='senderismo'; -- Moreruela de Tábara
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49134' AND categoria='senderismo'; -- Muelas de los Caballeros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49135' AND categoria='senderismo'; -- Muelas del Pan (Duero)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49135','sendero','Embalse de Ricobayo','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49137' AND categoria='senderismo'; -- Navianos de Valverde
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49138' AND categoria='senderismo'; -- Olmillos de Castro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49141' AND categoria='senderismo'; -- Pajares de la Lampreana
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49142' AND categoria='senderismo'; -- Palacios del Pan
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49146' AND categoria='senderismo'; -- El Pego
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49147' AND categoria='senderismo'; -- Peleagonzalo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49148' AND categoria='senderismo'; -- Peleas de Abajo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49150' AND categoria='senderismo'; -- Peque
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49151' AND categoria='senderismo'; -- El Perdigón
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='49149' AND categoria='senderismo'; -- Peñausende
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49153' AND categoria='senderismo'; -- Perilla de Castro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49155' AND categoria='senderismo'; -- Piedrahita de Castro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49156' AND categoria='senderismo'; -- Pinilla de Toro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49158' AND categoria='senderismo'; -- El Piñero
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49159' AND categoria='senderismo'; -- Pobladura del Valle
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49160' AND categoria='senderismo'; -- Pobladura de Valderaduey
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49163' AND categoria='senderismo'; -- Pozoantiguo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49164' AND categoria='senderismo'; -- Pozuelo de Tábara
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49165' AND categoria='senderismo'; -- Prado
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49167' AND categoria='senderismo'; -- Pueblica de Valverde
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49168' AND categoria='senderismo'; -- Quintanilla del Monte
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49169' AND categoria='senderismo'; -- Quintanilla del Olmo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49170' AND categoria='senderismo'; -- Quintanilla de Urz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49171' AND categoria='senderismo'; -- Quiruelas de Vidriales
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49173' AND categoria='senderismo'; -- Rábano de Aliste
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49175' AND categoria='senderismo'; -- Revellinos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49176' AND categoria='senderismo'; -- Riofrío de Aliste
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49178' AND categoria='senderismo'; -- Roales del Pan
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49180' AND categoria='senderismo'; -- Roelos de Sayago
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49183' AND categoria='senderismo'; -- Salce
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49184' AND categoria='senderismo'; -- Samir de los Caños
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49185' AND categoria='senderismo'; -- San Agustín del Pozo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49186' AND categoria='senderismo'; -- San Cebrián de Castro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49187' AND categoria='senderismo'; -- San Cristóbal de Entreviñas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49188' AND categoria='senderismo'; -- San Esteban del Molar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49189' AND categoria='senderismo'; -- San Justo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49190' AND categoria='senderismo'; -- San Martín de Valderaduey
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49191' AND categoria='senderismo'; -- San Miguel de la Ribera
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49192' AND categoria='senderismo'; -- San Miguel del Valle
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49193' AND categoria='senderismo'; -- San Pedro de Ceque
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49194' AND categoria='senderismo'; -- San Pedro de la Nave-Almendra
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49194','sendero','Embalse de Almendra','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49208' AND categoria='senderismo'; -- San Vicente de la Cabeza
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49209' AND categoria='senderismo'; -- San Vitero
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49197' AND categoria='senderismo'; -- Santa Clara de Avedillo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49199' AND categoria='senderismo'; -- Santa Colomba de las Monjas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49200' AND categoria='senderismo'; -- Santa Cristina de la Polvorosa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49201' AND categoria='senderismo'; -- Santa Croya de Tera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49202' AND categoria='senderismo'; -- Santa Eufemia del Barco
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49203' AND categoria='senderismo'; -- Santa María de la Vega
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49204' AND categoria='senderismo'; -- Santa María de Valverde
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49205' AND categoria='senderismo'; -- Santibáñez de Tera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49206' AND categoria='senderismo'; -- Santibáñez de Vidriales
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49207' AND categoria='senderismo'; -- Santovenia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49210' AND categoria='senderismo'; -- Sanzoles
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49216' AND categoria='senderismo'; -- Tapioles
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49220' AND categoria='senderismo'; -- La Torre del Valle
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49222' AND categoria='senderismo'; -- Torres del Carrizal
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49223' AND categoria='senderismo'; -- Trabazos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49225' AND categoria='senderismo'; -- Uña de Quintana
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49226' AND categoria='senderismo'; -- Vadillo de la Guareña
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49227' AND categoria='senderismo'; -- Valcabado
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49228' AND categoria='senderismo'; -- Valdefinjas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49229' AND categoria='senderismo'; -- Valdescorriel
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49230' AND categoria='senderismo'; -- Vallesa de la Guareña
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49231' AND categoria='senderismo'; -- Vega de Tera
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49232' AND categoria='senderismo'; -- Vega de Villalobos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49233' AND categoria='senderismo'; -- Vegalatrave
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49234' AND categoria='senderismo'; -- Venialbo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49235' AND categoria='senderismo'; -- Vezdemarbán
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49236' AND categoria='senderismo'; -- Vidayanes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49237' AND categoria='senderismo'; -- Videmala
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49238' AND categoria='senderismo'; -- Villabrázaro
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49239' AND categoria='senderismo'; -- Villabuena del Puente
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49240' AND categoria='senderismo'; -- Villadepera (Duero)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49240','sendero','Arribes del Duero','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49241' AND categoria='senderismo'; -- Villaescusa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49243' AND categoria='senderismo'; -- Villaferrueña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49244' AND categoria='senderismo'; -- Villageriz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49245' AND categoria='senderismo'; -- Villalazán
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49246' AND categoria='senderismo'; -- Villalba de la Lampreana
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49247' AND categoria='senderismo'; -- Villalcampo (Duero)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('49247','sendero','Embalse de Ricobayo','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49248' AND categoria='senderismo'; -- Villalobos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49249' AND categoria='senderismo'; -- Villalonso
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49251' AND categoria='senderismo'; -- Villalube
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49252' AND categoria='senderismo'; -- Villamayor de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49255' AND categoria='senderismo'; -- Villamor de los Escuderos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49256' AND categoria='senderismo'; -- Villanázar
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49257' AND categoria='senderismo'; -- Villanueva de Azoague
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49258' AND categoria='senderismo'; -- Villanueva de Campeán
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49259' AND categoria='senderismo'; -- Villanueva de las Peras
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49260' AND categoria='senderismo'; -- Villanueva del Campo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49261' AND categoria='senderismo'; -- Villaralbo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='49262' AND categoria='senderismo'; -- Villardeciervos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49263' AND categoria='senderismo'; -- Villar de Fallaves
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='49266' AND categoria='senderismo'; -- Villárdiga (campo)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49267' AND categoria='senderismo'; -- Villardondiego
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49268' AND categoria='senderismo'; -- Villarrín de Campos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='49269' AND categoria='senderismo'; -- Villaseco del Pan (Duero)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49270' AND categoria='senderismo'; -- Villavendimio
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='49271' AND categoria='senderismo'; -- Villaveza del Agua
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='49272' AND categoria='senderismo'; -- Villaveza de Valverde

-- ============================================================
-- SYNC: MIN (48xxx) → MAX (49xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='48002' AND categoria='senderismo') WHERE codigo_ine='49021' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='48003' AND categoria='senderismo') WHERE codigo_ine='49065' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='48005' AND categoria='senderismo') WHERE codigo_ine='49219' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='48006' AND categoria='senderismo') WHERE codigo_ine='49242' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='48007' AND categoria='senderismo') WHERE codigo_ine='49250' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='48008' AND categoria='senderismo') WHERE codigo_ine='49275' AND categoria='senderismo';

-- 0048: Senderismo Barcelona curado — Berguedà/Pedraforca, Montserrat, Montseny, Zona Volcànica, Ripollès
-- Generado: 2026-06-09
-- Canónicos: 08xxx MIN respecto a 08xxx MAX (pares dentro del mismo rango)
-- 11 pares: Calella, Canet de Mar, Cardona, L'Estany, Malgrat de Mar, Manlleu, Pineda de Mar, Sitges, Tavertet, Torelló, Vic

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  codigo_ine BETWEEN '08001' AND '08905'
);

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  codigo_ine BETWEEN '08001' AND '08905'
);

-- 3a. Bulk bajo: 12 por defecto para toda la provincia
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo' AND codigo_ine BETWEEN '08001' AND '08905';

-- ============================================================
-- BERGUEDÀ / PEDRAFORCA / CADÍ-MOIXERÓ
-- ============================================================

-- Saldes: Pedraforca (icónico), PN Cadí-Moixeró = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='08190' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08190','sendero','Pedraforca — Parque Natural Cadí-Moixeró','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08190','sendero','Espadeta del Pedraforca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08190','sendero','GR-7 Cadí-Moixeró','excel_curado',date('now'));

-- Gisclareny: Cadí-Moixeró, alta montaña = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='08093' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08093','sendero','Parque Natural Cadí-Moixeró','excel_curado',date('now'));

-- Guardiola de Berguedà: acceso Pedraforca = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='08099' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08099','sendero','Pedraforca — acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08099','sendero','Parque Natural Cadí-Moixeró','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='08098' AND categoria='senderismo'; -- Guardiola (código histórico)

-- Bagà: Cadí-Moixeró, GR-7 = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='08002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08002','sendero','Parque Natural Cadí-Moixeró','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08002','sendero','GR-7 Cerdanya-Berguedà','excel_curado',date('now'));

-- Castellar del Riu: Berguedà alta montaña = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='08050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08050','sendero','Berguedà — alta montaña','excel_curado',date('now'));

-- Castellar de Nuch (Castellnou de Bages es otro): 08052 = 80 — Berguedà
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='08052' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08052','sendero','Berguedà','excel_curado',date('now'));

-- Vallcebre: Berguedà, Pedraforca área = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='08293' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08293','sendero','Berguedà — Pedraforca área','excel_curado',date('now'));

-- La Pobla de Lillet: Berguedà = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='08166' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08166','sendero','Berguedà — Jardins Artigas','excel_curado',date('now'));

-- Vilada: Berguedà = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='08299' AND categoria='senderismo';

-- Fígols: Berguedà = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='08080' AND categoria='senderismo';

-- Castell del Areny: Berguedà = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='08057' AND categoria='senderismo';

-- Capolat: Berguedà = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='08045' AND categoria='senderismo';

-- Espunyola: Berguedà = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='08078' AND categoria='senderismo';

-- Sagás: Berguedà = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='08188' AND categoria='senderismo';

-- Caserras: Berguedà = 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='08049' AND categoria='senderismo';

-- Montmajor: Berguedà = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='08132' AND categoria='senderismo';

-- Serchs: Berguedà = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='08268' AND categoria='senderismo';

-- Olván: Berguedà = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='08144' AND categoria='senderismo';

-- Berga: capital Berguedà = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='08005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08005','sendero','Berguedà','excel_curado',date('now'));

-- Gironella: Berguedà baix = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='08092' AND categoria='senderismo';

-- Puigreig: Berguedà = 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='08175' AND categoria='senderismo';

-- ============================================================
-- MONTSERRAT
-- ============================================================

-- Collbató: Montserrat, Parque Natural, La Cova = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='08069' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08069','sendero','Montserrat — Parque Natural','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08069','sendero','La Cova de Montserrat','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08069','sendero','GR-96 Montserrat','excel_curado',date('now'));

-- Montserrat (municipio): Parque Natural = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='08014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08014','sendero','Montserrat — Parque Natural','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08014','sendero','Sant Joan de Montserrat — senderos','excel_curado',date('now'));

-- Monistrol de Montserrat: acceso Montserrat = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='08127' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08127','sendero','Montserrat — acceso','excel_curado',date('now'));

-- Esparraguera: Montserrat sud = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='08076' AND categoria='senderismo';

-- Olesa de Montserrat: Montserrat = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='08147' AND categoria='senderismo';

-- Monistrol de Calders: Prepirineo/Sant Llorenç = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='08128' AND categoria='senderismo';

-- ============================================================
-- SANT LLORENÇ DEL MUNT / MONTSERRAT NORD
-- ============================================================

-- Mura: Sant Llorenç del Munt = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='08139' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08139','sendero','Sant Llorenç del Munt i l''Obac','excel_curado',date('now'));

-- Talamanca: Sant Llorenç del Munt = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='08277' AND categoria='senderismo';

-- ============================================================
-- MONTSENY
-- ============================================================

-- Montseny (municipio): PN Montseny = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='08137' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08137','sendero','Parque Natural del Montseny','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08137','sendero','Matagalls — cima Montseny','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08137','sendero','GR-5 Montseny','excel_curado',date('now'));

-- Viladrau: PN Montseny = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='08220' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08220','sendero','Parque Natural del Montseny','excel_curado',date('now'));

-- Gualba: PN Montseny = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='08097' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08097','sendero','Parque Natural del Montseny','excel_curado',date('now'));

-- San Celoni: PN Montseny = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='08202' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08202','sendero','Parque Natural del Montseny','excel_curado',date('now'));

-- Campins: PN Montseny = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='08039' AND categoria='senderismo';

-- Fogars de Montclús: PN Montseny = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='08081' AND categoria='senderismo';

-- Tagamanent: PN Montseny = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='08276' AND categoria='senderismo';

-- Santa María de Palautordera: PN Montseny = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='08259' AND categoria='senderismo';

-- Figaró-Montmany: PN Montseny = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='08134' AND categoria='senderismo';

-- San Esteban de Palautordera: PN Montseny = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='08207' AND categoria='senderismo';

-- La Garriga: acceso Montseny = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='08088' AND categoria='senderismo';

-- ============================================================
-- ZONA VOLCÀNICA DE LA GARROTXA / RIPOLLÈS
-- ============================================================

-- Santa Pau: Zona Volcànica, Fageda d''en Jordà = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='08022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08022','sendero','Fageda d''en Jordà','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08022','sendero','Zona Volcànica de la Garrotxa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08022','sendero','Volcà del Croscat','excel_curado',date('now'));

-- Olot: Zona Volcànica, PN = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='08015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08015','sendero','Zona Volcànica de la Garrotxa','excel_curado',date('now'));

-- Castellfollit de la Roca: Zona Volcànica = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='08010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08010','sendero','Zona Volcànica de la Garrotxa','excel_curado',date('now'));

-- Beget: Pirineos/Ripollès (en la BD como Barcelona) = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='08004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08004','sendero','Ripollès','excel_curado',date('now'));

-- Ripoll: capital Ripollès = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='08018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08018','sendero','Ripollès','excel_curado',date('now'));

-- Sant Joan de les Abadesses: Ripollès = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='08021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08021','sendero','Ripollès — GR-11','excel_curado',date('now'));

-- San Martín del Bas: Ripollès = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='08225' AND categoria='senderismo';

-- ============================================================
-- GUILLERIES / COLLSACABRA
-- ============================================================

-- Rupit i Pruit 08019: pueblo medieval, Cingles Collsacabra = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='08019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08019','sendero','Cingles de Collsacabra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08019','sendero','Rupit — pueblo medieval','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08019','sendero','Guilleries','excel_curado',date('now'));

-- Rupit y Pruït 08901 (standalone, mismo municipio código diferente): 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='08901' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08901','sendero','Cingles de Collsacabra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08901','sendero','Guilleries','excel_curado',date('now'));

-- Tavertet 08024 (MIN dup): Cingles de Collsacabra = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='08024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08024','sendero','Cingles de Collsacabra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08024','sendero','Guilleries','excel_curado',date('now'));

-- L'Esquirol: Guilleries = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='08254' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08254','sendero','Guilleries','excel_curado',date('now'));

-- Vilanova de Sau: Sau, pantano = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='08303' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08303','sendero','Pantà de Sau — Cingles','excel_curado',date('now'));

-- ============================================================
-- SCORES MEDIOS Y BAJOS (zonas metropolitanas, costa, Penedès)
-- ============================================================

-- Sitges 08023 (MIN dup): Garraf, rutas litoral = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='08023' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08023','sendero','Parc Natural del Garraf','excel_curado',date('now'));

-- Cardona 08009 (MIN dup): castillo, sal = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='08009' AND categoria='senderismo';

-- Vic 08026 (MIN dup): ciudad = 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='08026' AND categoria='senderismo';

-- Manlleu 08013 (MIN dup): ciudad = 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='08013' AND categoria='senderismo';

-- Torelló 08025 (MIN dup): Ripollès acceso = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='08025' AND categoria='senderismo';

-- Barcelona 08003: capital = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='08003' AND categoria='senderismo';

-- Manresa 08113: ciudad = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='08113' AND categoria='senderismo';

-- San Sadurní de Noya 08240: Penedès, cava = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='08240' AND categoria='senderismo';

-- Villafranca del Panadés 08305: Penedès = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='08305' AND categoria='senderismo';

-- Villanueva y Geltrú 08307: costa = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='08307' AND categoria='senderismo';

-- Mataró 08121: costa = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='08121' AND categoria='senderismo';

-- Granollers 08096: Vallès = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='08096' AND categoria='senderismo';

-- Sabadell 08187: ciudad = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='08187' AND categoria='senderismo';

-- Tarrasa 08279: ciudad = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='08279' AND categoria='senderismo';

-- Igualada 08102: ciudad = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='08102' AND categoria='senderismo';

-- Calella 08007 (MIN dup): costa = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='08007' AND categoria='senderismo';

-- Canet de Mar 08008 (MIN dup): costa = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='08008' AND categoria='senderismo';

-- Pineda de Mar 08016 (MIN dup): costa = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='08016' AND categoria='senderismo';

-- Malgrat de Mar 08012 (MIN dup): costa = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='08012' AND categoria='senderismo';

-- Blanes 08006: costa = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='08006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('08006','sendero','Camí de Ronda Costa Brava sur','excel_curado',date('now'));

-- Arenys de Mar 08001: costa = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='08001' AND categoria='senderismo';

-- ============================================================
-- SYNC: MIN → MAX
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08007' AND categoria='senderismo') WHERE codigo_ine='08035' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08008' AND categoria='senderismo') WHERE codigo_ine='08040' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08009' AND categoria='senderismo') WHERE codigo_ine='08047' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08011' AND categoria='senderismo') WHERE codigo_ine='08079' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08012' AND categoria='senderismo') WHERE codigo_ine='08110' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08013' AND categoria='senderismo') WHERE codigo_ine='08112' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08016' AND categoria='senderismo') WHERE codigo_ine='08163' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08023' AND categoria='senderismo') WHERE codigo_ine='08270' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08024' AND categoria='senderismo') WHERE codigo_ine='08280' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08025' AND categoria='senderismo') WHERE codigo_ine='08285' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='08026' AND categoria='senderismo') WHERE codigo_ine='08298' AND categoria='senderismo';

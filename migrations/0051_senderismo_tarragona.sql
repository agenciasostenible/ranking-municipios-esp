-- 0051: Senderismo Tarragona curado — Priorat/Montsant, Siurana, Delta Ebro, Puertos Beceite, Terra Alta
-- Generado: 2026-06-09
-- Canónicos: 42xxx (MIN) respecto a 43xxx (MAX); 11 pares
-- Amposta, Calafell, Cambrils, Deltebre, Falset, Gandesa, Reus, Salou, Tarragona, Tortosa, Valls

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '42001' AND '42016') OR
  (codigo_ine BETWEEN '43014' AND '43907')
);

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '42001' AND '42016') OR
  (codigo_ine BETWEEN '43014' AND '43907')
);

-- 3a. Bulk bajo por defecto
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '42001' AND '42016') OR
  (codigo_ine BETWEEN '43014' AND '43907')
);

-- ============================================================
-- PRIORAT / MONTSANT / SIURANA
-- ============================================================

-- Cornudella: Siurana (escalada+senderismo icónico), Montsant = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='43049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43049','sendero','Siurana — Parque Natural Montsant','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43049','sendero','Priorat','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43049','sendero','GR-7 Montsant','excel_curado',date('now'));

-- La Morera de Montsant: PN Montsant = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='43096' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43096','sendero','Parque Natural Montsant','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43096','sendero','GR-7 Montsant','excel_curado',date('now'));

-- Prades: Montsant/Siurana = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='43116' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43116','sendero','Montsant — Prades','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43116','sendero','Siurana — acceso','excel_curado',date('now'));

-- Mont-ral: Montsant = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='43091' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43091','sendero','Montsant','excel_curado',date('now'));

-- Margalef de Montsant: Montsant, escalada = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='43075' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43075','sendero','Parque Natural Montsant','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43075','sendero','Barranc de la Canaleta','excel_curado',date('now'));

-- Ulldemolins: Montsant = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='43157' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43157','sendero','Montsant','excel_curado',date('now'));

-- Arbolí: Priorat = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='43015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43015','sendero','Priorat','excel_curado',date('now'));

-- Cabacés: Montsant = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='43035' AND categoria='senderismo';

-- Capafonts: Prades = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='43039' AND categoria='senderismo';

-- Vilanova de Prades: Prades = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='43168' AND categoria='senderismo';

-- La Febró: Montsant = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='43057' AND categoria='senderismo';

-- Vilaplana: Baix Camp = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='43169' AND categoria='senderismo';

-- Colldejou: Baix Camp = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='43045' AND categoria='senderismo';

-- Pratdip: Baix Camp = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='43118' AND categoria='senderismo';

-- Falset 42006 (MIN dup): Priorat = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='42006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42006','sendero','Priorat','excel_curado',date('now'));

-- El Molar: Priorat = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='43085' AND categoria='senderismo';

-- Bellmunt del Priorato: Priorat = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='43023' AND categoria='senderismo';

-- Gratallops: Priorat = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='43069' AND categoria='senderismo';

-- Poboleda: Priorat = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='43112' AND categoria='senderismo';

-- La Bisbal de Montsant: Montsant = 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='43027' AND categoria='senderismo';

-- La Figuera: Montsant = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='43058' AND categoria='senderismo';

-- Torroja: Priorat = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='43154' AND categoria='senderismo';

-- Vimbodí y Poblet: Monasterio de Poblet = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='43176' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43176','sendero','Monasterio de Poblet — entorno','excel_curado',date('now'));

-- ============================================================
-- DELTA DEL EBRO
-- ============================================================

-- Deltebre 42004 (MIN dup): PN Delta del Ebro = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='42004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42004','sendero','Parque Natural Delta del Ebro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42004','sendero','Ruta ornitológica Delta','excel_curado',date('now'));

-- Amposta 42001 (MIN dup): Delta del Ebro = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='42001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42001','sendero','Parque Natural Delta del Ebro','excel_curado',date('now'));

-- San Jaime de Enveija 43902: Delta = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='43902' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43902','sendero','Delta del Ebro','excel_curado',date('now'));

-- Camarles 43903: Delta = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='43903' AND categoria='senderismo';

-- La Aldea 43904: Delta = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='43904' AND categoria='senderismo';

-- Ampolla 43906: Delta = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='43906' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43906','sendero','Delta del Ebro','excel_curado',date('now'));

-- San Carlos de la Rápita: Delta = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='43136' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43136','sendero','Delta del Ebro — acceso','excel_curado',date('now'));

-- Perelló: Ribera d'Ebre = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='43104' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43104','sendero','Coll de l''Alba — Serra del Pradell','excel_curado',date('now'));

-- ============================================================
-- PUERTOS DE BECEITE / TERRA ALTA
-- ============================================================

-- Horta de San Juan: Puertos de Beceite, Picasso = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='43071' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43071','sendero','Parque Natural Puertos de Beceite','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43071','sendero','GR-8 Puertos de Beceite','excel_curado',date('now'));

-- Arnés: Puertos de Beceite = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='43018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43018','sendero','Puertos de Beceite','excel_curado',date('now'));

-- Caseres: Terra Alta = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='43041' AND categoria='senderismo';

-- Bot: Terra Alta = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='43032' AND categoria='senderismo';

-- Gandesa 42007 (MIN dup): Terra Alta = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='42007' AND categoria='senderismo';

-- Pinell de Bray: Terra Alta = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='43106' AND categoria='senderismo';

-- Cenia: Puertos Tortosa-Beseit = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='43044' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43044','sendero','Ports de Tortosa-Beseit','excel_curado',date('now'));

-- Mas de Barberáns: Puertos = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='43077' AND categoria='senderismo';

-- Freginals: Ports = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='43062' AND categoria='senderismo';

-- ============================================================
-- CONCA DE BARBERÀ
-- ============================================================

-- Montblanch 43086: histórico, monasterio = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='43086' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43086','sendero','Montsant — acceso','excel_curado',date('now'));

-- La Riba: Conca de Barberà = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='43124' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43124','sendero','La Riba — Conca de Barberà','excel_curado',date('now'));

-- Espluga de Francolí 43054: Conca = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='43054' AND categoria='senderismo';

-- ============================================================
-- LITORAL / CITIES BAJOS
-- ============================================================

UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42013' AND categoria='senderismo'; -- Tarragona capital
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42011' AND categoria='senderismo'; -- Reus
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='42012' AND categoria='senderismo'; -- Salou
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42002' AND categoria='senderismo'; -- Calafell
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='42003' AND categoria='senderismo'; -- Cambrils
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42005' AND categoria='senderismo'; -- El Vendrell
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='42014' AND categoria='senderismo'; -- Tortosa
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='42015' AND categoria='senderismo'; -- Valls
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42016' AND categoria='senderismo'; -- Vila-seca
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='42009' AND categoria='senderismo'; -- Montblanc (standalone Conca)
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='42010' AND categoria='senderismo'; -- Poblet (standalone)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42010','sendero','Monasterio de Poblet','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='42008' AND categoria='senderismo'; -- L'Espluga de Francolí
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='43047' AND categoria='senderismo'; -- Constantí
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='43093' AND categoria='senderismo'; -- Mora de Ebro
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='43094' AND categoria='senderismo'; -- Mora la Nueva

-- Vandellós y Hospitalet: Baix Camp, Camino de Ronda = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='43162' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('43162','sendero','Costa Daurada — Camino de Ronda','excel_curado',date('now'));

-- La Canonja 43907: periurbano = 14
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='43907' AND categoria='senderismo';

-- ============================================================
-- SYNC: MIN (42xxx) → MAX (43xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42001' AND categoria='senderismo') WHERE codigo_ine='43014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42002' AND categoria='senderismo') WHERE codigo_ine='43037' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42003' AND categoria='senderismo') WHERE codigo_ine='43038' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42004' AND categoria='senderismo') WHERE codigo_ine='43901' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42006' AND categoria='senderismo') WHERE codigo_ine='43055' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42007' AND categoria='senderismo') WHERE codigo_ine='43064' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42011' AND categoria='senderismo') WHERE codigo_ine='43123' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42012' AND categoria='senderismo') WHERE codigo_ine='43905' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42013' AND categoria='senderismo') WHERE codigo_ine='43148' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42014' AND categoria='senderismo') WHERE codigo_ine='43155' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='42015' AND categoria='senderismo') WHERE codigo_ine='43161' AND categoria='senderismo';

-- 0027: Senderismo Cádiz curado
-- Generado: 2026-06-08
-- Entidades en códigos MIN: 11xxx para duplicados, 16xxx para únicos solo-16xxx

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '11019','11020','11021','11022','11023','11024','11025','11026','11027','11028',
  '11029','11030','11031','11032','11033','11034','11035','11036','11037','11038',
  '11039','11040','11041','11042','11901','11902','11903',
  '16001','16002','16003','16004','16005','16006','16007','16008','16009','16010',
  '16011','16012','16013','16014','16015','16016','16017','16018','16019','16020',
  '16021','16022','16023','16024','16025','16026','16027','16028'
);

-- 2. Limpiar entidades curadas previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine IN (
  '11019','11020','11021','11022','11023','11024','11025','11026','11027','11028',
  '11029','11030','11031','11032','11033','11034','11035','11036','11037','11038',
  '11039','11040','11041','11042','11901','11902','11903',
  '16001','16002','16003','16004','16005','16006','16007','16008','16009','16010',
  '16011','16012','16013','16014','16015','16016','16017','16018','16019','16020',
  '16021','16022','16023','16024','16025','16026','16027','16028'
);

-- ============================================================
-- SIERRA DE GRAZALEMA (Parque Natural — zona estrella de Cádiz)
-- ============================================================

-- Grazalema: 92 +5 (Sendero del Pinsapar, icónico nacional, artículos) = 97
UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine='11019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11019','sendero','Sendero del Pinsapar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11019','sendero','Garganta Verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11019','sendero','Ruta del Torreón (techo del Parque)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11019','sendero','Sendero del Río Guadalete nacimiento','excel_curado',date('now'));

-- Zahara de la Sierra: 94
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='11042' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11042','sendero','Garganta Verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11042','sendero','Sendero del Río Majaceite','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11042','sendero','Ruta del Embalse de Zahara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11042','sendero','Camino al Torreón desde Zahara','excel_curado',date('now'));

-- Villaluenga del Rosario: 82 (pueblo más alto de Cádiz, Grazalema)
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='11040' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11040','sendero','Parque Natural Grazalema — Villaluenga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11040','sendero','Sendero del Cerro del Pinar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11040','sendero','Hoyo del Hundidero','excel_curado',date('now'));

-- Ubrique: 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='11038' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11038','sendero','Sierra del Aljibe','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11038','sendero','Sendero del Río Ubrique','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11038','sendero','Parque Natural Grazalema sur','excel_curado',date('now'));

-- Prado del Rey: 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='11026' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11026','sendero','Sendero del Río Majaceite (tramo bajo)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11026','sendero','Acceso Parque Natural Grazalema','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11026','sendero','Ruta de los Molinos','excel_curado',date('now'));

-- Torre Alháquime: 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='11036' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11036','sendero','Parque Natural Grazalema norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11036','sendero','Sierra de Líjar acceso','excel_curado',date('now'));

-- Olvera: 64 (Vía Verde de la Sierra + Grazalema)
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='11024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11024','sendero','Vía Verde de la Sierra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11024','sendero','Sierra de Líjar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11024','sendero','Sendero de la Ermita','excel_curado',date('now'));

-- Algodonales: 62 (Grazalema, parapente, Río Guadalete)
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='16003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16003','sendero','Sierra de Líjar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16003','sendero','Río Guadalete tramo alto','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16003','sendero','Parque Natural Grazalema acceso norte','excel_curado',date('now'));

-- Setenil de las Bodegas: 58 (+4 artículos destino único = 58, ya famoso por arquitectura)
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='11034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11034','sendero','Tajo de Setenil','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11034','sendero','Sendero del Río Trejo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11034','sendero','Vía Verde de la Sierra','excel_curado',date('now'));

-- Villamartín: 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='11041' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11041','sendero','Embalse de Bornos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11041','sendero','Grazalema acceso este','excel_curado',date('now'));

-- Puerto Serrano: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='11029' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11029','sendero','Sierra de Líjar acceso sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11029','sendero','Río Guadalete','excel_curado',date('now'));

-- ============================================================
-- PARQUE NATURAL LOS ALCORNOCALES
-- ============================================================

-- Alcalá de los Gazules: 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='16001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16001','sendero','Parque Natural Los Alcornocales','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16001','sendero','Río Palmones','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16001','sendero','Cañada del Río del Alamo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16001','sendero','Sendero del Río Palmones','excel_curado',date('now'));

-- Jimena de la Frontera: 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='11021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11021','sendero','Los Alcornocales — Jimena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11021','sendero','Río Hozgarganta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11021','sendero','Sendero del Castillo de Jimena','excel_curado',date('now'));

-- Castellar de la Frontera: 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='16006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16006','sendero','Los Alcornocales — Castellar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16006','sendero','Embalse del Palmones','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16006','sendero','Sendero del Castillo Viejo','excel_curado',date('now'));

-- San Martín del Tesorillo: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='11903' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11903','sendero','Los Alcornocales sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11903','sendero','Río Hozgarganta tramo bajo','excel_curado',date('now'));

-- Los Barrios: 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='16016' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16016','sendero','Los Alcornocales acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16016','sendero','Río Palmones bajo','excel_curado',date('now'));

-- Benalup-Casas Viejas: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='11901' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11901','sendero','Laguna de la Janda','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11901','sendero','Los Alcornocales sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11901','sendero','Sendero del Barbate','excel_curado',date('now'));

-- San Roque: 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='11033' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11033','sendero','Los Alcornocales sur — San Roque','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11033','sendero','Paraje Natural Playa de los Lances','excel_curado',date('now'));

-- Algeciras: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='16002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16002','sendero','Los Alcornocales acceso Campo Gibraltar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16002','sendero','Sierra Carbonera','excel_curado',date('now'));

-- ============================================================
-- PARQUE NATURAL DEL ESTRECHO / COSTA
-- ============================================================

-- Tarifa: 70 (Parque Natural Estrecho, playas vírgenes, caminatas espectaculares)
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='11035' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11035','sendero','Parque Natural del Estrecho','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11035','sendero','Sendero de la Playa de los Lances','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11035','sendero','Sierra del Cabrito','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11035','sendero','Punta Paloma — Valdevaqueros','excel_curado',date('now'));

-- Vejer de la Frontera: 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='11039' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11039','sendero','Parque Natural de la Breña y Marismas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11039','sendero','Sendero de la Playa del Palmar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11039','sendero','Acantilados de Barbate','excel_curado',date('now'));

-- Conil de la Frontera: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='16008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16008','sendero','Acantilados de Conil','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16008','sendero','Sendero costero Roche','excel_curado',date('now'));

-- San José del Valle: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='11902' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11902','sendero','Los Alcornocales — acceso norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11902','sendero','Río Majaceite bajo','excel_curado',date('now'));

-- ============================================================
-- CAMPIÑA / ARCOS / RESTO
-- ============================================================

-- Arcos de la Frontera: 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='16004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16004','sendero','Río Guadalete — Arcos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16004','sendero','Sierra de las Cabras','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16004','sendero','Embalse de Arcos','excel_curado',date('now'));

-- Medina Sidonia: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='11023' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11023','sendero','Sierra de la Plata','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11023','sendero','Entorno campiña gaditana','excel_curado',date('now'));

-- Paterna de Rivera: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='11025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11025','sendero','Entorno campiña','excel_curado',date('now'));

-- Chiclana de la Frontera: 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='16007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16007','sendero','Parque Natural de la Bahía de Cádiz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16007','sendero','Playa de la Barrosa costera','excel_curado',date('now'));

-- Sanlúcar de Barrameda: 34
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='11032' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11032','sendero','Doñana — Bajo Guadalquivir','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11032','sendero','Marismas del Guadalquivir','excel_curado',date('now'));

-- Trebujena: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='11037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11037','sendero','Marismas del Guadalquivir','excel_curado',date('now'));

-- El Puerto de Santa María: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='11027' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11027','sendero','Parque Natural de la Bahía de Cádiz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11027','sendero','Sendero costero El Puerto','excel_curado',date('now'));

-- Puerto Real: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='11028' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11028','sendero','Parque Natural de la Bahía de Cádiz','excel_curado',date('now'));

-- Cádiz capital: 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='16009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16009','sendero','Paseo marítimo y costa','excel_curado',date('now'));

-- Jerez de la Frontera: 26
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='11020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11020','sendero','Entorno campiña y viñedos','excel_curado',date('now'));

-- San Fernando: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='11031' AND categoria='senderismo';

-- Rota: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='11030' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11030','sendero','Costa de la Luz — paseo costero','excel_curado',date('now'));

-- La Línea de la Concepción: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='11022' AND categoria='senderismo';

-- La Silla: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='16015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('16015','sendero','Los Alcornocales este','excel_curado',date('now'));

-- ============================================================
-- SYNC scores: 11xxx → 16xxx para los pares duplicados
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11901' AND categoria='senderismo') WHERE codigo_ine='16005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11027' AND categoria='senderismo') WHERE codigo_ine='16010' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11019' AND categoria='senderismo') WHERE codigo_ine='16011' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11020' AND categoria='senderismo') WHERE codigo_ine='16012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11021' AND categoria='senderismo') WHERE codigo_ine='16013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11022' AND categoria='senderismo') WHERE codigo_ine='16014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11023' AND categoria='senderismo') WHERE codigo_ine='16017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11024' AND categoria='senderismo') WHERE codigo_ine='16018' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11029' AND categoria='senderismo') WHERE codigo_ine='16019' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11030' AND categoria='senderismo') WHERE codigo_ine='16020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11031' AND categoria='senderismo') WHERE codigo_ine='16021' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11033' AND categoria='senderismo') WHERE codigo_ine='16022' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11032' AND categoria='senderismo') WHERE codigo_ine='16023' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11034' AND categoria='senderismo') WHERE codigo_ine='16024' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11035' AND categoria='senderismo') WHERE codigo_ine='16025' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11038' AND categoria='senderismo') WHERE codigo_ine='16026' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11039' AND categoria='senderismo') WHERE codigo_ine='16027' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='11042' AND categoria='senderismo') WHERE codigo_ine='16028' AND categoria='senderismo';

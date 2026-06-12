-- 0055: Senderismo Cantabria curado — Picos de Europa, Saja-Besaya, Campoo, Valles Pasiegos, Costa
-- Generado: 2026-06-09
-- Canónicos: 10xxx MIN → 39xxx MAX (18 pares). 10001 Alto Campoo y 10002 Bárcena de Cicero: standalone
-- NOTA: 10xxx compartido con Cáceres; 39xxx con Segovia → subquery por provincia

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cantabria');

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cantabria');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cantabria');

-- ============================================================
-- PICOS DE EUROPA / LIÉBANA
-- ============================================================

-- Camaleño (39015): Funicular de Fuente Dé, circo glaciar, Picos de Europa interior
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='39015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39015','sendero','Parque Nacional Picos de Europa — Fuente Dé','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39015','sendero','Circo glaciar de Áliva','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39015','sendero','GR-72 Picos de Europa','excel_curado',date('now'));

-- Potes (10012): capital de Liébana, puerta de Picos, GR-72
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='10012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10012','sendero','Parque Nacional Picos de Europa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10012','sendero','Valle de Liébana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10012','sendero','Camino Lebaniego','excel_curado',date('now'));

-- Tresviso (39088): aldea más remota de Picos, rutas a las mayadas, calidad excepcional
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='39088' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39088','sendero','Parque Nacional Picos de Europa — Tresviso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39088','sendero','Hoces del Urdón','excel_curado',date('now'));

-- Cillorigo de Liébana (39022): Desfiladero de La Hermida, Picos sur
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='39022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39022','sendero','Desfiladero de La Hermida','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39022','sendero','Parque Nacional Picos de Europa — acceso','excel_curado',date('now'));

-- Vega de Liébana (39096): Liébana alta, prados de montaña
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='39096' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39096','sendero','Valle de Liébana — alta montaña','excel_curado',date('now'));

-- ============================================================
-- SIERRA DE HIJAR / CAMPOO / CORDILLERA CANTÁBRICA
-- ============================================================

-- Hermandad de Campoo de Suso (10008): Pico Tres Mares 2175m, triple vertiente hidrográfica
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='10008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10008','sendero','Pico Tres Mares 2175m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10008','sendero','Sierra de Hijar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10008','sendero','GR Campoo','excel_curado',date('now'));

-- Alto Campoo (10001 standalone): alta montaña Cantábrica, praos de alta montaña
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='10001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10001','sendero','Alta montaña Cantábrica — Campoo','excel_curado',date('now'));

-- ============================================================
-- PARQUE NATURAL SAJA-BESAYA
-- ============================================================

-- Cabuérniga (39014): corazón PN Saja-Besaya, bosques de roble, rutas señalizadas
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='39014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39014','sendero','Parque Natural Saja-Besaya','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39014','sendero','Bárcena Mayor — pueblo medieval','excel_curado',date('now'));

-- Los Tojos (39086): PN Saja-Besaya, hayedos, osos y lobos
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='39086' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39086','sendero','Parque Natural Saja-Besaya — interior','excel_curado',date('now'));

-- Polaciones (39053): Valle de Polaciones, remoto, majadas de altura
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='39053' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39053','sendero','Valle de Polaciones','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39053','sendero','Puerto de Palombera','excel_curado',date('now'));

-- ============================================================
-- VALLES PASIEGOS / PAS / CASTRO VALNERA
-- ============================================================

-- Soba (39083): macizo Castro Valnera 1718m, Valle de Soba, surgencia de La Gándara
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='39083' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39083','sendero','Macizo Castro Valnera 1718m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39083','sendero','Valle de Soba','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39083','sendero','Surgencia La Gándara','excel_curado',date('now'));

-- Vega de Pas (39097): Valles Pasiegos, Puerto de las Estacas de Trueba
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='39097' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39097','sendero','Valles Pasiegos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39097','sendero','Puerto de las Estacas de Trueba','excel_curado',date('now'));

-- ============================================================
-- COSTA
-- ============================================================

-- San Vicente de la Barquera (10015): costa acantilada, Camino del Norte
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='10015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10015','sendero','Camino del Norte — San Vicente','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10015','sendero','Costa acantilada occidental','excel_curado',date('now'));

-- Santillana del Mar (10017): Cueva de Altamira, rutas medievales
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='10017' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10017','sendero','Entorno Cueva de Altamira','excel_curado',date('now'));

-- Santander (10016): Cabo Mayor, Parque de la Magdalena, costa
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='10016' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10016','sendero','Cabo Mayor — Santander','excel_curado',date('now'));

-- ============================================================
-- SYNC: 10xxx MIN → 39xxx MAX (18 pares exactos por nombre)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10003' AND p2.categoria='senderismo') WHERE codigo_ine='39012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10004' AND p2.categoria='senderismo') WHERE codigo_ine='39016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10005' AND p2.categoria='senderismo') WHERE codigo_ine='39027' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10006' AND p2.categoria='senderismo') WHERE codigo_ine='39020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10007' AND p2.categoria='senderismo') WHERE codigo_ine='39024' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10008' AND p2.categoria='senderismo') WHERE codigo_ine='39032' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10009' AND p2.categoria='senderismo') WHERE codigo_ine='39035' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10010' AND p2.categoria='senderismo') WHERE codigo_ine='39025' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10011' AND p2.categoria='senderismo') WHERE codigo_ine='39051' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10012' AND p2.categoria='senderismo') WHERE codigo_ine='39055' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10013' AND p2.categoria='senderismo') WHERE codigo_ine='39059' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10014' AND p2.categoria='senderismo') WHERE codigo_ine='39068' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10015' AND p2.categoria='senderismo') WHERE codigo_ine='39080' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10016' AND p2.categoria='senderismo') WHERE codigo_ine='39075' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10017' AND p2.categoria='senderismo') WHERE codigo_ine='39076' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10018' AND p2.categoria='senderismo') WHERE codigo_ine='39079' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10019' AND p2.categoria='senderismo') WHERE codigo_ine='39087' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='10020' AND p2.categoria='senderismo') WHERE codigo_ine='39102' AND categoria='senderismo';

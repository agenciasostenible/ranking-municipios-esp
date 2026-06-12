-- 0056: Senderismo Asturias curado — Picos de Europa, Somiedo, Redes, Muniellos, Costa Cantábrica
-- Generado: 2026-06-09
-- Canónicos: 05xxx MIN → 33xxx MAX (14 pares exactos + 1 par nombre distinto: Luarca/Valdés)
-- NOTA: 05xxx compartido con Ávila; 33xxx con Navarra, Málaga, Ourense → subquery por provincia

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Asturias');

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Asturias');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Asturias');

-- ============================================================
-- PARQUE NACIONAL PICOS DE EUROPA
-- ============================================================

-- Onís (05012): Lagos de Covadonga (Enol y Ercina), corazón del PNPE
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='05012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05012','sendero','Parque Nacional Picos de Europa — Lagos de Covadonga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05012','sendero','Lagos de Enol y La Ercina','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05012','sendero','GR-72 Picos de Europa','excel_curado',date('now'));

-- Cabrales (05004): Naranjo de Bulnes / Picu Urriellu, Ruta del Cares, queso icónico
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='05004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05004','sendero','Naranjo de Bulnes / Picu Urriellu 2519m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05004','sendero','Ruta del Cares','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05004','sendero','Parque Nacional Picos de Europa','excel_curado',date('now'));

-- Covadonga (05007): Santuario y Lagos de Covadonga, icono de Asturias
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='05007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05007','sendero','Santuario de Covadonga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05007','sendero','Lagos de Covadonga — PNPE','excel_curado',date('now'));

-- Cangas de Onís (05005): puerta de los Picos, Puente Romano, Ruta del Cares acceso
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='05005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05005','sendero','Parque Nacional Picos de Europa — acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05005','sendero','Ruta del Cares — acceso norte','excel_curado',date('now'));

-- Amieva (05001): Desfiladero de Los Beyos, Ruta del Cares (Cain), acceso sur Picos
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='05001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05001','sendero','Desfiladero de Los Beyos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05001','sendero','Parque Nacional Picos de Europa — sector sur','excel_curado',date('now'));

-- Peñamellera Alta (05015): Picos sector oriental, Ares de Cabrales, hayedos
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='05015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05015','sendero','Parque Nacional Picos de Europa — sector oriental','excel_curado',date('now'));

-- Parres (05014): Desfiladero de Los Beyos norte, Arriondas, Ruta del Sella
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='05014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05014','sendero','Desfiladero de Los Beyos — acceso norte','excel_curado',date('now'));

-- ============================================================
-- PARQUE NATURAL SOMIEDO
-- ============================================================

-- Somiedo (05021): Lagos de Somiedo, oso pardo cantábrico, trashumancia
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='05021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05021','sendero','Parque Natural Somiedo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05021','sendero','Lagos de Somiedo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05021','sendero','Oso pardo cantábrico','excel_curado',date('now'));

-- Pola de Somiedo (05017 standalone): capital del concejo, acceso Lagos
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='05017' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05017','sendero','Parque Natural Somiedo — acceso','excel_curado',date('now'));

-- ============================================================
-- RESERVA INTEGRAL MUNIELLOS / PN FUENTES DEL NARCEA
-- ============================================================

-- Cangas del Narcea (05006): acceso Muniellos (mayor hayedo de la Península), PN Fuentes del Narcea
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='05006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05006','sendero','Reserva Natural Integral de Muniellos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05006','sendero','Parque Natural Fuentes del Narcea','excel_curado',date('now'));

-- Degaña (33022 standalone): núcleo del PN Fuentes del Narcea, hayedos, lobos
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='33022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('33022','sendero','Parque Natural Fuentes del Narcea — Degaña','excel_curado',date('now'));

-- Ibias (33028 standalone): hayedos milenarios, PN Fuentes del Narcea
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='33028' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('33028','sendero','Parque Natural Fuentes del Narcea — Ibias','excel_curado',date('now'));

-- ============================================================
-- PARQUE NATURAL REDES (UNESCO)
-- ============================================================

-- Sobrescobio (33067 standalone): PN Redes Reserva Biosfera UNESCO, hayedos, lobos
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='33067' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('33067','sendero','Parque Natural Redes — Reserva Biosfera UNESCO','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('33067','sendero','Hayedo de Redes','excel_curado',date('now'));

-- Caso (no está en la lista explícita pero Caso pertenece a Redes):
-- Buscamos con Sobrescobio ya cubierto; añadir Proaza (Santuario del Oso):
-- Proaza (33052 standalone): Santuario del Oso, senda del oso, acceso al Parque de Redes
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='33052' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('33052','sendero','Senda del Oso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('33052','sendero','Santuario del Oso — Proaza','excel_curado',date('now'));

-- ============================================================
-- SIERRA UBIÑA / TEVERGA / QUIRÓS
-- ============================================================

-- Quirós (05018): PN Ubiña-La Mesa, Peña Ubiña 2417m, hayedos
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='05018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05018','sendero','Parque Natural Ubiña-La Mesa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05018','sendero','Peña Ubiña 2417m','excel_curado',date('now'));

-- Teverga (05023): Cañón del Teverga, Parque de la Prehistoria, bosques
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='05023' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05023','sendero','Cañón del río Teverga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05023','sendero','Parque de la Prehistoria','excel_curado',date('now'));

-- ============================================================
-- COSTA CANTÁBRICA / CAMINO PRIMITIVO
-- ============================================================

-- Llanes (05010): costa acantilada, Bufones, Camino Costero, playas vírgenes
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='05010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05010','sendero','Bufones de Pría','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05010','sendero','Camino Costero asturiano','excel_curado',date('now'));

-- Taramundi (05022): Oscos-Eo Reserva Biosfera, arquitectura popular, paisaje rural
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='05022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05022','sendero','Reserva Biosfera Oscos-Eo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05022','sendero','Ruta de los molinos — Taramundi','excel_curado',date('now'));

-- Grandas de Salime (33027 standalone): Reserva Biosfera Oscos-Eo, embalse, selvas
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='33027' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('33027','sendero','Reserva Biosfera Oscos-Eo','excel_curado',date('now'));

-- Tineo (05024): Camino Primitivo de Santiago, bosques
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='05024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05024','sendero','Camino Primitivo de Santiago','excel_curado',date('now'));

-- Oviedo (05013): Camino Primitivo, Monte Naranco
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='05013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05013','sendero','Monte Naranco','excel_curado',date('now'));

-- ============================================================
-- SYNC: 05xxx MIN → 33xxx MAX
-- ============================================================
-- Pares exactos (nombre igual)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05009' AND p2.categoria='senderismo') WHERE codigo_ine='33024' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05010' AND p2.categoria='senderismo') WHERE codigo_ine='33036' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05012' AND p2.categoria='senderismo') WHERE codigo_ine='33043' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05013' AND p2.categoria='senderismo') WHERE codigo_ine='33044' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05014' AND p2.categoria='senderismo') WHERE codigo_ine='33045' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05015' AND p2.categoria='senderismo') WHERE codigo_ine='33046' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05016' AND p2.categoria='senderismo') WHERE codigo_ine='33047' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05018' AND p2.categoria='senderismo') WHERE codigo_ine='33053' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05019' AND p2.categoria='senderismo') WHERE codigo_ine='33055' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05020' AND p2.categoria='senderismo') WHERE codigo_ine='33056' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05021' AND p2.categoria='senderismo') WHERE codigo_ine='33068' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05022' AND p2.categoria='senderismo') WHERE codigo_ine='33071' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05023' AND p2.categoria='senderismo') WHERE codigo_ine='33072' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05024' AND p2.categoria='senderismo') WHERE codigo_ine='33073' AND categoria='senderismo';
-- Par con nombre distinto: Luarca (Valdés) ↔ Valdés
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='05011' AND p2.categoria='senderismo') WHERE codigo_ine='33034' AND categoria='senderismo';

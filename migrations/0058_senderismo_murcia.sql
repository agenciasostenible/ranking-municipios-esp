-- 0058: Senderismo Murcia curado — Sierra Espuña, Moratalla, Almadenes, Valle de Ricote, Noroeste
-- Generado: 2026-06-09
-- Canónicos: 30xxx MIN → 31xxx MAX (19 pares exactos)
-- NOTA: 31xxx compartido con Navarra → subquery por provincia

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Murcia');
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Murcia');
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Murcia');

-- ============================================================
-- SIERRA ESPUÑA
-- ============================================================

-- Alhama de Murcia (30008): corazón PN Sierra Espuña, pozos de nieve, pinsapar
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='30008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30008','sendero','Parque Natural Sierra Espuña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30008','sendero','Pozos de nieve de Espuña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30008','sendero','Pinsapar de Espuña','excel_curado',date('now'));

-- Totana (30039): Sierra Espuña sur, Santuario de Santa Eulalia
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='30039' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30039','sendero','Parque Natural Sierra Espuña — Totana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30039','sendero','Santuario de Santa Eulalia','excel_curado',date('now'));

-- Aledo (30006): Sierra Espuña, castillo medieval, rutas por el monte
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='30006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30006','sendero','Sierra Espuña — Aledo','excel_curado',date('now'));

-- Pliego (30032): Sierra Espuña acceso norte
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='30032' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30032','sendero','Sierra Espuña — acceso norte','excel_curado',date('now'));

-- ============================================================
-- NOROESTE MURCIANO
-- ============================================================

-- Moratalla (30028): Sierra Mojantes, Benizar, Revolcadores 2.027m, remoto
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='30028' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30028','sendero','Sierra Mojantes — Moratalla','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30028','sendero','Monte Revolcadores 2027m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30028','sendero','Barranco de Benizar','excel_curado',date('now'));

-- Caravaca de la Cruz (30015): Sierra del Burete, Ciudad Sagrada, cañones
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='30015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30015','sendero','Sierra del Burete','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30015','sendero','Caravaca — Ciudad Sagrada Caminos de la Cruz','excel_curado',date('now'));

-- Bullas (30012): Sierra del Burete, viñedos de montaña, rutas
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='30012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30012','sendero','Sierra del Burete — Bullas','excel_curado',date('now'));

-- Cehegín (30017): Noroeste, Sierra de Burete, río Argos
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='30017' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30017','sendero','Noroeste murciano — Cehegín','excel_curado',date('now'));

-- ============================================================
-- CAÑÓN DEL SEGURA / ALMADENES
-- ============================================================

-- Cieza (30019): Cañón de Almadenes — más largo de España en caliza, kayak y senderismo
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='30019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30019','sendero','Cañón de Almadenes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30019','sendero','Río Segura — Cieza','excel_curado',date('now'));

-- Calasparra (30013): Cañón de la Risca del Segura, arrozales, Santuario
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='30013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30013','sendero','Cañón de la Risca — Segura','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30013','sendero','Santuario de la Esperanza — Calasparra','excel_curado',date('now'));

-- Blanca (30011): Valle de Ricote, jardín de Murcia, Hoces del Segura
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='30011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30011','sendero','Valle de Ricote','excel_curado',date('now'));

-- Ricote (30034): Valle de Ricote, naranjos y limoneros, senderismo huerta
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='30034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30034','sendero','Valle de Ricote — Ricote','excel_curado',date('now'));

-- Murcia (30030): Espacio Natural Cabezo Gordo, Monte Roldán
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='30030' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('30030','sendero','Cabezo Gordo — Murcia','excel_curado',date('now'));

-- ============================================================
-- SYNC: 30xxx MIN → 31xxx MAX (19 pares exactos)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30002' AND p2.categoria='senderismo') WHERE codigo_ine='31001' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30003' AND p2.categoria='senderismo') WHERE codigo_ine='31019' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30009' AND p2.categoria='senderismo') WHERE codigo_ine='31002' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30013' AND p2.categoria='senderismo') WHERE codigo_ine='31003' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30015' AND p2.categoria='senderismo') WHERE codigo_ine='31004' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30016' AND p2.categoria='senderismo') WHERE codigo_ine='31005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30017' AND p2.categoria='senderismo') WHERE codigo_ine='31006' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30019' AND p2.categoria='senderismo') WHERE codigo_ine='31007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30020' AND p2.categoria='senderismo') WHERE codigo_ine='31008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30022' AND p2.categoria='senderismo') WHERE codigo_ine='31009' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30024' AND p2.categoria='senderismo') WHERE codigo_ine='31011' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30026' AND p2.categoria='senderismo') WHERE codigo_ine='31012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30028' AND p2.categoria='senderismo') WHERE codigo_ine='31013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30029' AND p2.categoria='senderismo') WHERE codigo_ine='31014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30030' AND p2.categoria='senderismo') WHERE codigo_ine='31015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30035' AND p2.categoria='senderismo') WHERE codigo_ine='31016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30037' AND p2.categoria='senderismo') WHERE codigo_ine='31017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30041' AND p2.categoria='senderismo') WHERE codigo_ine='31010' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30043' AND p2.categoria='senderismo') WHERE codigo_ine='31018' AND categoria='senderismo';

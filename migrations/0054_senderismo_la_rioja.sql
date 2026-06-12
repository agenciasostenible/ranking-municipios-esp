-- 0054: Senderismo La Rioja curado — Cebollera, Sierra de la Demanda, Cameros, Camino de Santiago
-- Generado: 2026-06-09
-- Solo rango 26xxx (sin duplicados). Precaución: 26xxx comparte 19 municipios con León → subquery

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='La Rioja');

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='La Rioja');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='La Rioja');

-- ============================================================
-- PARQUE NATURAL SIERRA DE CEBOLLERA
-- ============================================================

-- Villoslada de Cameros (26177): corazón PN Cebollera, Laguna de Villoslada, hayedos
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='26177' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26177','sendero','Parque Natural Sierra de Cebollera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26177','sendero','Laguna de Villoslada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26177','sendero','Hayedo de Villoslada','excel_curado',date('now'));

-- Viniegra de Arriba (26179): PN Cebollera, nacimiento del Najerilla, alta montaña
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='26179' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26179','sendero','Parque Natural Sierra de Cebollera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26179','sendero','Nacimiento del Najerilla','excel_curado',date('now'));

-- Viniegra de Abajo (26178): PN Cebollera, rutas de montaña
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='26178' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26178','sendero','Parque Natural Sierra de Cebollera','excel_curado',date('now'));

-- Lumbreras de Cameros (26091): acceso sur PN Cebollera, collados pirenaicos riojanos
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='26091' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26091','sendero','Parque Natural Sierra de Cebollera — acceso sur','excel_curado',date('now'));

-- Ortigosa de Cameros (26112): Lagunas de Portilla de la Sierra, circos glaciares
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='26112' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26112','sendero','Lagunas de Portilla de la Sierra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26112','sendero','Circos glaciares de Ortigosa','excel_curado',date('now'));

-- ============================================================
-- SIERRA DE LA DEMANDA
-- ============================================================

-- Ezcaray (26061): Pico San Lorenzo 2271m, PN Cebollera-Demanda acceso, esquí + senderismo
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='26061' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26061','sendero','Pico San Lorenzo 2271m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26061','sendero','Sierra de la Demanda — Ezcaray','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26061','sendero','GR-93 La Rioja','excel_curado',date('now'));

-- Mansilla de la Sierra (26093): Sierra de la Demanda, Embalse del Mansilla, rutas
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='26093' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26093','sendero','Sierra de la Demanda — Mansilla','excel_curado',date('now'));

-- San Millán de la Cogolla (26130): Monasterios UNESCO, Valle de Cárdenas, rutas culturales
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='26130' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26130','sendero','Monasterios de San Millán — UNESCO','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26130','sendero','Valle de Cárdenas','excel_curado',date('now'));

-- Tobía (26149): Valle del Najerilla, bosques, ruta del Najerilla
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='26149' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26149','sendero','Valle del Najerilla — Tobía','excel_curado',date('now'));

-- ============================================================
-- SIERRA DE CAMEROS / IBÉRICA RIOJANA
-- ============================================================

-- Torrecilla en Cameros (26151): Cameros, Embalse González Lacasa, rutas pastoriles
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='26151' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26151','sendero','Sierra de Cameros — Torrecilla','excel_curado',date('now'));

-- Nieva de Cameros (26107): Cameros alto, Puerto de Piqueras (1710m)
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='26107' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26107','sendero','Puerto de Piqueras 1710m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26107','sendero','Sierra de Cameros','excel_curado',date('now'));

-- ============================================================
-- CAMINO DE SANTIAGO / RIOJA ALTA
-- ============================================================

-- Nájera (26102): Camino de Santiago, Río Najerilla, rutas fluviales
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='26102' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26102','sendero','Camino de Santiago — Nájera','excel_curado',date('now'));

-- Santo Domingo de la Calzada (26138): Camino de Santiago, ciudad histórica
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='26138' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26138','sendero','Camino de Santiago — Santo Domingo','excel_curado',date('now'));

-- Haro (26071): Sierra de Toloño acceso, vinos y senderismo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='26071' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26071','sendero','Sierra de Toloño — acceso','excel_curado',date('now'));

-- Logroño (26089): Parque de la Grajera, Camino de Santiago
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='26089' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('26089','sendero','Parque de la Grajera','excel_curado',date('now'));

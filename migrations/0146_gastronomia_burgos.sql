-- Gastronomía Burgos — generado desde guías gastronómicas Excel
-- Castilla y León
-- Provincias: Burgos
-- Municipios con datos: 19

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Burgos'));

-- 2. Limpiar entidades automáticas OSM/wikidata
DELETE FROM entidades WHERE tipo IN ('gastronomia','producto')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Burgos'));

-- 3. Default 12 para todos
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Burgos'));

-- 4. Scores individuales (19 municipios con datos)
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN ('09003', '09059') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='09001' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine IN ('09008', '09194') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine IN ('09016', '09321') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine IN ('09005', '09113', '09006', '09124') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine IN ('09018', '09358', '09013', '09261') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine IN ('09009', '09209') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine IN ('09002', '09056') AND categoria='gastronomia';

-- 5. Entidades gastronómicas
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09003','gastronomia','Morcilla, Lechazo (I','Morcilla, Lechazo (I.G.P.), Queso fresco. Capital gastronómica, Patrimonio.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09059','gastronomia','Morcilla, Lechazo (I','Morcilla, Lechazo (I.G.P.), Queso fresco. Capital gastronómica, Patrimonio.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09001','gastronomia','Lechazo asado, Vino D','Lechazo asado, Vino D.O. Ribera del Duero. Capital del Lechazo y Ribera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09008','gastronomia','Lechazo, Postres conventuales','Lechazo, Postres conventuales. Conjunto monumental, tradición.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09194','gastronomia','Lechazo, Postres conventuales','Lechazo, Postres conventuales. Conjunto monumental, tradición.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09005','gastronomia','Sopas castellanas, asados','Sopas castellanas, asados. Villa medieval, vino Arlanza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09113','gastronomia','Sopas castellanas, asados','Sopas castellanas, asados. Villa medieval, vino Arlanza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09018','gastronomia','Productos de matanza, repostería','Productos de matanza, repostería. Tradición monástica.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09358','gastronomia','Productos de matanza, repostería','Productos de matanza, repostería. Tradición monástica.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09009','gastronomia','Repostería, carnes de la Merindad','Repostería, carnes de la Merindad. Capital de las Merindades.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09209','gastronomia','Repostería, carnes de la Merindad','Repostería, carnes de la Merindad. Capital de las Merindades.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09006','gastronomia','Sobao pasiego, quesos, embutidos','Sobao pasiego, quesos, embutidos. Tradición ganadera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09124','gastronomia','Sobao pasiego, quesos, embutidos','Sobao pasiego, quesos, embutidos. Tradición ganadera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09002','gastronomia','Legumbres, productos de huerta','Legumbres, productos de huerta. Capital de La Bureba.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09056','gastronomia','Legumbres, productos de huerta','Legumbres, productos de huerta. Capital de La Bureba.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09016','gastronomia','Vinos D','Vinos D.O. Ribera del Duero, asados. Corazón del vino Ribera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09321','gastronomia','Vinos D','Vinos D.O. Ribera del Duero, asados. Corazón del vino Ribera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09013','gastronomia','Vinos Ribera, lechazo','Vinos Ribera, lechazo. Villa histórica.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('09261','gastronomia','Vinos Ribera, lechazo','Vinos Ribera, lechazo. Villa histórica.','excel_curado',date('now'));
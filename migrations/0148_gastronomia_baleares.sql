-- Gastronomía Baleares — generado desde guías gastronómicas Excel
-- Provincias: Baleares, Islas Baleares | Municipios: 39

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Baleares', 'Islas Baleares'));
DELETE FROM entidades WHERE tipo IN ('gastronomia','producto') AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Baleares', 'Islas Baleares'));
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Baleares', 'Islas Baleares'));

-- Scores individuales
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN ('07015') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine IN ('07006') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine IN ('07009') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine IN ('07017', '07023') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine IN ('07001', '07012', '07063') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine IN ('07020', '07027', '07037') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine IN ('07004', '07008', '07021', '07031', '07052', '07056') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine IN ('07002', '07005', '07018', '07022', '07902', '07039', '07045', '07055', '07058', '07062') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine IN ('07014', '07016', '07024', '07029', '07034', '07053', '07047') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine IN ('07003', '07007', '07019', '07030', '07035') AND categoria='gastronomia';

-- Entidades
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07001','gastronomia','Cocina marinera, ensaimadas','Cocina marinera, ensaimadas.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07002','gastronomia','Cocina tradicional mallorquina','Cocina tradicional mallorquina.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07003','gastronomia','Cocina de la comarca del Pla','Cocina de la comarca del Pla.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07004','gastronomia','Sobrassada, cocina de la comarca','Sobrassada, cocina de la comarca.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07005','gastronomia','Sobrassada, cocina de la zona','Sobrassada, cocina de la zona.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07006','gastronomia','Caldereta de langosta, cocina histórica','Caldereta de langosta, cocina histórica.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07007','gastronomia','Cocina rural mallorquina','Cocina rural mallorquina.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07008','gastronomia','Vinos, sobrassada, cocina tradicional','Vinos, sobrassada, cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07009','gastronomia','Peix sec, ensalada payesa, cocina isleña','Peix sec, ensalada payesa, cocina isleña.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07012','gastronomia','Empanadas, cocina tradicional','Empanadas, cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07014','gastronomia','Cocina de la comarca del Pla','Cocina de la comarca del Pla.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07015','gastronomia','Gastronomía de autor, mercado del Olivar','Gastronomía de autor, mercado del Olivar.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07016','gastronomia','Repostería, cocina tradicional','Repostería, cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07017','gastronomia','Cocina de la Serra, arroces','Cocina de la Serra, arroces.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07018','gastronomia','Sobrassada, cocina de la comarca','Sobrassada, cocina de la comarca.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07019','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07020','gastronomia','Cocina mediterránea, pescado fresco','Cocina mediterránea, pescado fresco.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07021','gastronomia','Sal de Es Trenc, cocina marinera','Sal de Es Trenc, cocina marinera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07022','gastronomia','Cocina tradicional, mercado histórico','Cocina tradicional, mercado histórico.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07023','gastronomia','Gamba de Sóller, cítricos, cocina local','Gamba de Sóller, cítricos, cocina local.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07024','gastronomia','Cocina tradicional (melón)','Cocina tradicional (melón).','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07027','gastronomia','Frito mallorquín, hornos tradicionales','Frito mallorquín, hornos tradicionales.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07029','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07030','gastronomia','Cocina de la comarca del Pla','Cocina de la comarca del Pla.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07031','gastronomia','Cocina mediterránea y local','Cocina mediterránea y local.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07034','gastronomia','Cocina de montaña','Cocina de montaña.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07035','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07037','gastronomia','Caldereta de langosta','Caldereta de langosta.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07902','gastronomia','Cocina tradicional menorquina','Cocina tradicional menorquina.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07039','gastronomia','Cocina de la zona de s''Albufera','Cocina de la zona de s''Albufera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07045','gastronomia','Cocina de montaña','Cocina de montaña.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07052','gastronomia','Cocina marinera','Cocina marinera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07053','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07055','gastronomia','Cocina mediterránea','Cocina mediterránea.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07056','gastronomia','Vinos, cocina de interior','Vinos, cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07058','gastronomia','Cocina de montaña','Cocina de montaña.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07047','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07062','gastronomia','Cocina marinera','Cocina marinera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('07063','gastronomia','Coca de patata, cocina tradicional','Coca de patata, cocina tradicional.','excel_curado',date('now'));
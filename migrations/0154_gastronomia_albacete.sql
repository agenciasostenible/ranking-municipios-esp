-- Gastronomía Albacete — generado desde guías gastronómicas Excel
-- Provincias: Albacete | Municipios: 83

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Albacete'));
DELETE FROM entidades WHERE tipo IN ('gastronomia','producto') AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Albacete'));
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Albacete'));

-- Scores individuales
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine IN ('02001') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine IN ('02005', '02014', '02037', '02027', '02081') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine IN ('02003', '02010', '02023', '02067', '02015', '02069') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine IN ('02004', '02009', '02030', '02086') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine IN ('02016', '02042', '02073', '02025', '02074') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine IN ('02006', '02008', '02011', '02018', '02055', '02019', '02057') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine IN ('02007', '02034', '02044', '02045', '02049', '02017', '02051', '02053', '02020', '02058', '02026', '02079') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine IN ('02013', '02031', '02033', '02035', '02039', '02041', '02043', '02046', '02048', '02052', '02056', '02060', '02021', '02059', '02901', '02068', '02070', '02024', '02072', '02075', '02078', '02080', '02084') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine IN ('02002', '02032', '02036', '02038', '02040', '02047', '02050', '02054', '02022', '02063', '02064', '02065', '02071', '02076', '02077', '02082', '02028', '02083', '02029', '02085') AND categoria='gastronomia';

-- Entidades
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02004','gastronomia','Cocina de la Sierra de Alcaraz','Cocina de la Sierra de Alcaraz.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02001','gastronomia','Atascaburras, gazpacho manchego','Atascaburras, gazpacho manchego.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02002','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02003','gastronomia','Cocina de la ribera del Júcar','Cocina de la ribera del Júcar.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02005','gastronomia','Vinos D','Vinos D.O., cocina de frontera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02006','gastronomia','Cocina de sierra, setas','Cocina de sierra, setas.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02007','gastronomia','Cocina de huerta','Cocina de huerta.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02008','gastronomia','Cocina de la Manchuela','Cocina de la Manchuela.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02009','gastronomia','Repostería, cocina del Vinalopó','Repostería, cocina del Vinalopó.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02010','gastronomia','Cocina histórica, guisos','Cocina histórica, guisos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02011','gastronomia','Cocina de la Sierra del Segura','Cocina de la Sierra del Segura.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02013','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02031','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02032','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02033','gastronomia','Cocina de interior','Cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02034','gastronomia','Cocina de la Manchuela','Cocina de la Manchuela.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02035','gastronomia','Cocina de la llanura','Cocina de la llanura.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02036','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02014','gastronomia','Arroz con conejo, dulces, vinos','Arroz con conejo, dulces, vinos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02037','gastronomia','Arroz con conejo, dulces, vinos','Arroz con conejo, dulces, vinos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02038','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02039','gastronomia','Cocina de interior','Cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02040','gastronomia','Cocina de interior','Cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02041','gastronomia','Cocina de la ribera','Cocina de la ribera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02016','gastronomia','Cocina de la Sierra del Segura','Cocina de la Sierra del Segura.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02042','gastronomia','Cocina de la Sierra del Segura','Cocina de la Sierra del Segura.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02043','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02044','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02045','gastronomia','Cocina de la Manchuela','Cocina de la Manchuela.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02046','gastronomia','Cocina de la Manchuela','Cocina de la Manchuela.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02047','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02048','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02049','gastronomia','Cocina de la Sierra del Segura','Cocina de la Sierra del Segura.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02050','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02017','gastronomia','Vinos, cocina de interior','Vinos, cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02051','gastronomia','Vinos, cocina de interior','Vinos, cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02052','gastronomia','Cocina de la ribera','Cocina de la ribera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02053','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02054','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02018','gastronomia','Nueces, cocina de la Sierra del Segura','Nueces, cocina de la Sierra del Segura.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02055','gastronomia','Nueces, cocina de la Sierra del Segura','Nueces, cocina de la Sierra del Segura.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02056','gastronomia','Vinos, cocina de interior','Vinos, cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02019','gastronomia','Cocina de las Lagunas de Ruidera','Cocina de las Lagunas de Ruidera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02057','gastronomia','Cocina de las Lagunas de Ruidera','Cocina de las Lagunas de Ruidera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02020','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02058','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02060','gastronomia','Cocina de interior','Cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02021','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02059','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02901','gastronomia','Cocina de interior','Cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02022','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02063','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02064','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02065','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02023','gastronomia','Cocina de la Sierra del Segura, setas','Cocina de la Sierra del Segura, setas.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02067','gastronomia','Cocina de la Sierra del Segura, setas','Cocina de la Sierra del Segura, setas.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02068','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02015','gastronomia','Miguelitos de La Roda, cocina manchega','Miguelitos de La Roda, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02069','gastronomia','Miguelitos de La Roda, cocina manchega','Miguelitos de La Roda, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02070','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02071','gastronomia','Cocina de interior','Cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02024','gastronomia','Cocina de la Sierra del Segura','Cocina de la Sierra del Segura.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02072','gastronomia','Cocina de la Sierra del Segura','Cocina de la Sierra del Segura.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02073','gastronomia','Cocina de la Manchuela','Cocina de la Manchuela.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02025','gastronomia','Repostería, cocina manchega','Repostería, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02074','gastronomia','Repostería, cocina manchega','Repostería, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02075','gastronomia','Cocina de la ribera','Cocina de la ribera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02076','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02077','gastronomia','Cocina de interior','Cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02078','gastronomia','Cocina de la ribera','Cocina de la ribera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02026','gastronomia','Cocina de la Manchuela','Cocina de la Manchuela.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02079','gastronomia','Cocina de la Manchuela','Cocina de la Manchuela.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02080','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02027','gastronomia','Vinos, cocina manchega','Vinos, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02081','gastronomia','Vinos, cocina manchega','Vinos, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02082','gastronomia','Cocina de interior','Cocina de interior.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02028','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02083','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02084','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02029','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02085','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02030','gastronomia','Cocina de la Sierra del Segura','Cocina de la Sierra del Segura.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('02086','gastronomia','Cocina de la Sierra del Segura','Cocina de la Sierra del Segura.','excel_curado',date('now'));
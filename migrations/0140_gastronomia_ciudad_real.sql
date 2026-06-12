-- Gastronomía Ciudad Real — generado desde guías gastronómicas Excel
-- Castilla-La Mancha
-- Provincias: Ciudad Real
-- Municipios con datos: 101

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Ciudad Real'));

-- 2. Limpiar entidades automáticas OSM/wikidata
DELETE FROM entidades WHERE tipo IN ('gastronomia','producto')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Ciudad Real'));

-- 3. Default 12 para todos
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Ciudad Real'));

-- 4. Scores individuales (101 municipios con datos)
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='13002' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine IN ('13018', '13087') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine IN ('13004', '13034', '13017', '13082') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine IN ('13001', '13028', '13005', '13039') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine IN ('13042', '13009', '13053', '13019', '13093') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine IN ('13013', '13071', '13014', '13902') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine IN ('13016', '13078', '13096') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine IN ('13047', '13023', '13061', '13070', '13007', '13079') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine IN ('13003', '13010', '13054', '13011', '13056', '13012', '13058', '13015', '13077') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine IN ('13027', '13008', '13052', '13063', '13083', '13020', '13098') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine IN ('13031', '13044', '13049', '13057', '13064', '13065', '13066', '13068', '13072', '13074', '13085', '13089', '13097') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine IN ('13903', '13024', '13026', '13032', '13033', '13038', '13035', '13040', '13045', '13904', '13051', '13055', '13062', '13901', '13073', '13075', '13084', '13088', '13090', '13091', '13092') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine IN ('13021', '13022', '13025', '13029', '13030', '13036', '13037', '13041', '13043', '13046', '13048', '13050', '13059', '13060', '13067', '13069', '13076', '13080', '13081', '13086', '13094', '13095') AND categoria='gastronomia';

-- 5. Entidades gastronómicas
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13042','gastronomia','Vino Malvasía volcánico, almendrados','Vino Malvasía volcánico, almendrados. Grandes bodegas históricas asentadas sobre ceniza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13047','gastronomia','Quesos, platos de matanza, vinos','Quesos, platos de matanza, vinos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13001','gastronomia','Bizcochadas, guisos manchegos, vinos','Bizcochadas, guisos manchegos, vinos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13002','gastronomia','Berenjena de Almagro (I','Berenjena de Almagro (I.G.P.), asados.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13903','gastronomia','Vinos de La Mancha','Vinos de La Mancha.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13003','gastronomia','Cocina quijotesca, platos manchegos','Cocina quijotesca, platos manchegos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13021','gastronomia','Cocina de monte','Cocina de monte.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13022','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13023','gastronomia','Berenjenas, cocina manchega','Berenjenas, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13024','gastronomia','Cocina del Valle de Alcudia','Cocina del Valle de Alcudia.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13025','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13026','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13027','gastronomia','Aceite, platos tradicionales','Aceite, platos tradicionales.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13028','gastronomia','Dulces, platos manchegos típicos','Dulces, platos manchegos típicos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13029','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13030','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13031','gastronomia','Cocina de cercanía','Cocina de cercanía.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13032','gastronomia','Cocina del Campo de Montiel','Cocina del Campo de Montiel.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13033','gastronomia','Cocina de sierra','Cocina de sierra.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13038','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13004','gastronomia','Pisto, asadillo, berenjenas, caza','Pisto, asadillo, berenjenas, caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13034','gastronomia','Pisto, asadillo, berenjenas, caza','Pisto, asadillo, berenjenas, caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13035','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13036','gastronomia','Cocina de monte','Cocina de monte.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13037','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13005','gastronomia','Cocina de Tablas de Daimiel, caza','Cocina de Tablas de Daimiel, caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13039','gastronomia','Cocina de Tablas de Daimiel, caza','Cocina de Tablas de Daimiel, caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13040','gastronomia','Cocina de vega','Cocina de vega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13041','gastronomia','Cocina de monte','Cocina de monte.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13043','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13044','gastronomia','Cocina de cercanía','Cocina de cercanía.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13045','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13046','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13048','gastronomia','Cocina serrana','Cocina serrana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13049','gastronomia','Cocina de Cabañeros, caza','Cocina de Cabañeros, caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13050','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13904','gastronomia','Cocina de huerta','Cocina de huerta.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13051','gastronomia','Cocina de ribera','Cocina de ribera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13008','gastronomia','Cocina manchega, repostería','Cocina manchega, repostería.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13052','gastronomia','Cocina manchega, repostería','Cocina manchega, repostería.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13009','gastronomia','Quesos, asados, cocina pastoril','Quesos, asados, cocina pastoril.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13053','gastronomia','Quesos, asados, cocina pastoril','Quesos, asados, cocina pastoril.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13010','gastronomia','Melón, cocina manchega','Melón, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13054','gastronomia','Melón, cocina manchega','Melón, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13055','gastronomia','Cocina de sierra','Cocina de sierra.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13011','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13056','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13057','gastronomia','Cocina histórica, legumbres','Cocina histórica, legumbres.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13012','gastronomia','Vinos, cocina tradicional','Vinos, cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13058','gastronomia','Vinos, cocina tradicional','Vinos, cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13059','gastronomia','Cocina de monte','Cocina de monte.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13060','gastronomia','Cocina de Cabañeros','Cocina de Cabañeros.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13061','gastronomia','Vinos, platos manchegos','Vinos, platos manchegos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13062','gastronomia','Cocina de ribera','Cocina de ribera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13063','gastronomia','Cocina de monte, caza','Cocina de monte, caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13064','gastronomia','Cocina de cercanía','Cocina de cercanía.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13065','gastronomia','Cocina de sierra, carne de caza','Cocina de sierra, carne de caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13066','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13067','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13068','gastronomia','Cocina de ribera y monte','Cocina de ribera y monte.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13069','gastronomia','Cocina de campo','Cocina de campo.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13070','gastronomia','Cocina quijotesca, asados','Cocina quijotesca, asados.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13013','gastronomia','Cocina de interior, guisos','Cocina de interior, guisos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13071','gastronomia','Cocina de interior, guisos','Cocina de interior, guisos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13072','gastronomia','Caza, cocina de Cabañeros','Caza, cocina de Cabañeros.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13901','gastronomia','Cocina de ribera','Cocina de ribera.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13014','gastronomia','Cocina de las Lagunas, caza','Cocina de las Lagunas, caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13902','gastronomia','Cocina de las Lagunas, caza','Cocina de las Lagunas, caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13073','gastronomia','Cocina de campo','Cocina de campo.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13074','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13075','gastronomia','Cocina de sierra','Cocina de sierra.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13076','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13015','gastronomia','Cocina de paso, platos manchegos','Cocina de paso, platos manchegos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13077','gastronomia','Cocina de paso, platos manchegos','Cocina de paso, platos manchegos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13016','gastronomia','Vinos D','Vinos D.O., cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13078','gastronomia','Vinos D','Vinos D.O., cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13007','gastronomia','Cocina manchega, legumbres','Cocina manchega, legumbres.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13079','gastronomia','Cocina manchega, legumbres','Cocina manchega, legumbres.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13080','gastronomia','Cocina de sierra','Cocina de sierra.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13081','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13017','gastronomia','Vinos, aguardientes, cocina manchega','Vinos, aguardientes, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13082','gastronomia','Vinos, aguardientes, cocina manchega','Vinos, aguardientes, cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13083','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13084','gastronomia','Cocina del Campo de Montiel','Cocina del Campo de Montiel.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13085','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13086','gastronomia','Cocina de monte','Cocina de monte.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13018','gastronomia','Vinos D','Vinos D.O., platos de bodega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13087','gastronomia','Vinos D','Vinos D.O., platos de bodega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13088','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13089','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13090','gastronomia','Cocina tradicional','Cocina tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13091','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13092','gastronomia','Cocina de monte','Cocina de monte.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13019','gastronomia','Cocina histórica, potajes, postres','Cocina histórica, potajes, postres.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13093','gastronomia','Cocina histórica, potajes, postres','Cocina histórica, potajes, postres.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13094','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13095','gastronomia','Cocina rural','Cocina rural.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13096','gastronomia','Aceite, vinos, cocina de monte','Aceite, vinos, cocina de monte.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13097','gastronomia','Cocina manchega','Cocina manchega.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13020','gastronomia','Cocina de sierra','Cocina de sierra.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('13098','gastronomia','Cocina de sierra','Cocina de sierra.','excel_curado',date('now'));
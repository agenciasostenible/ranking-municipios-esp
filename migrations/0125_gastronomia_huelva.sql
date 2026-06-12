-- Gastronomía Huelva — generado desde guías gastronómicas Excel
-- Andalucía
-- Provincias: Huelva
-- Municipios con datos: 33

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Huelva'));

-- 2. Limpiar entidades automáticas OSM/wikidata
DELETE FROM entidades WHERE tipo IN ('gastronomia','producto')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Huelva'));

-- 3. Default 12 para todos
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Huelva'));

-- 4. Scores individuales (33 municipios con datos)
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN ('21043', '22015') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine IN ('21041', '22004', '22013') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine IN ('21042', '22014') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='22006' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine IN ('21060', '22022') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='22002' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine IN ('21054', '22016') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=43 WHERE codigo_ine IN ('21050', '21055', '21025', '22009', '22020', '22021') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=39 WHERE codigo_ine IN ('21044', '21021', '22001', '22007', '22017') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='22005' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine IN ('21072', '21070', '22023', '21076') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='21035' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine IN ('21064', '21049') AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=15 WHERE codigo_ine='21052' AND categoria='gastronomia';

-- 5. Entidades gastronómicas
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21041','gastronomia','Tierra de la Gamba Blanca de Huelva','Tierra de la Gamba Blanca de Huelva. las coquinas. el choco frito (origen de su gentilicio).','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21044','gastronomia','Famosa por sus fresas y frutos rojos aplicados a postres y ensaladas','Famosa por sus fresas y frutos rojos aplicados a postres y ensaladas. y su cocina marinera basada en el puerto de El Terrón (arroces y pescados).','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22002','gastronomia','Gastronomía marismeña en Doñana y El Rocío','Gastronomía marismeña en Doñana y El Rocío. Destaca la carne de mostrenca (vaca autóctona). la caldereta de cordero. los camarones y los vinos del Condado.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21050','gastronomia','Famoso por sus fresones','Famoso por sus fresones. sus vinos y el vino de naranja artesanal. Platos de pescados frescos y repostería de pasteles finos de hojaldre.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21042','gastronomia','Una de las lonjas de pescado fresco más importantes de España','Una de las lonjas de pescado fresco más importantes de España. Templo del atún. la mojama. la raya en pimentón.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22006','gastronomia','Cocina fronteriza con Portugal: destaca el arroz portugués','Cocina fronteriza con Portugal: destaca el arroz portugués. los pescados de roca. las coquinas a la marinera y el emblemático atún a la ayamontina.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21021','gastronomia','Excelente marisco fresco en El Rompido','Excelente marisco fresco en El Rompido. arroces marineros con habitas. setas de temporada de sus pinares y repostería tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21060','gastronomia','Famosa por sus chirlas','Famosa por sus chirlas. los espetos de sardinas en la playa. el choco frito o en albóndigas y una de las mejores cocinas marineras estivales.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21072','gastronomia','Cocina de transición a la sierra: destacan las gurumelos (setas exquisitas de la zona)','Cocina de transición a la sierra: destacan las gurumelos (setas exquisitas de la zona). las calderetas de cordero y los piñonates dulces.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21035','gastronomia','Famoso por su aceite de oliva de almazara','Famoso por su aceite de oliva de almazara. el mosto local de sus tabernas y platos rústicos como el potaje de castañas.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21054','gastronomia','Destaca por sus prestigiosas bodegas de vino y brandy con DOP Condado de Huelva','Destaca por sus prestigiosas bodegas de vino y brandy con DOP Condado de Huelva. y platos tradicionales como las habas con poleo.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21055','gastronomia','Cuna del fresón de Huelva de exportación mundial','Cuna del fresón de Huelva de exportación mundial. Cocina marinera clásica. guisos de chopo y repostería basada en frutos rojos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21064','gastronomia','Guisos tradicionales de la campiña onubense','Guisos tradicionales de la campiña onubense. calderetas de carne de cordero y raciones marinas frescas de la ría.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22004','gastronomia','Centro turístico de la sierra','Centro turístico de la sierra. Templo de las setas de temporada (gurumelo. tana). las carnes selectas de cerdo ibérico y los quesos artesanos de cabra.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21043','gastronomia','Nombre universal del Jamón Ibérico de Bellota (DOP Jabugo)','Nombre universal del Jamón Ibérico de Bellota (DOP Jabugo). Destaca por la pureza de sus embutidos. presa. secreto y pluma ibérica a la brasa.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21025','gastronomia','Gastronomía de la Sierra de Aracena: embutidos de calidad ibérica superior','Gastronomía de la Sierra de Aracena: embutidos de calidad ibérica superior. guisos de setas salvajes. castañas y carnes de caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22005','gastronomia','Famoso por sus "salchichas de Aroche" (embutido con toque de vino)','Famoso por sus "salchichas de Aroche" (embutido con toque de vino). guisos de patatas con costillas ibéricas y setas de la sierra.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22001','gastronomia','Cocina rústica serrana basada en la matanza del cerdo ibérico','Cocina rústica serrana basada en la matanza del cerdo ibérico. los gurumelos salteados. migas de patata y dulces tradicionales de miel.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21049','gastronomia','Cocina de la cuenca minera: platos contundentes como las migas','Cocina de la cuenca minera: platos contundentes como las migas. las patatas con rabo de toro y dulces ingleses heredados de la época colonial.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21052','gastronomia','Guisos tradicionales de cuchara','Guisos tradicionales de cuchara. carnes de monte estofadas. migas rústicas de pan y repostería casera de pestiños.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21070','gastronomia','Famoso por sus capeas y su rica gastronomía: potaje de garbanzos triguereños','Famoso por sus capeas y su rica gastronomía: potaje de garbanzos triguereños. tostadas con aceite local y repostería artesana.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22007','gastronomia','Excelente marisco fresco en El Rompido','Excelente marisco fresco en El Rompido. arroces marineros con habitas. setas de temporada de sus pinares y repostería tradicional.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22009','gastronomia','Gastronomía de la Sierra de Aracena: embutidos de calidad ibérica superior','Gastronomía de la Sierra de Aracena: embutidos de calidad ibérica superior. guisos de setas salvajes. castañas y carnes de caza.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22013','gastronomia','Tierra de la Gamba Blanca de Huelva','Tierra de la Gamba Blanca de Huelva. las coquinas. el choco frito (origen de su gentilicio).','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22014','gastronomia','Una de las lonjas de pescado fresco más importantes de España','Una de las lonjas de pescado fresco más importantes de España. Templo del atún. la mojama. la raya en pimentón.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22015','gastronomia','Nombre universal del Jamón Ibérico de Bellota (DOP Jabugo)','Nombre universal del Jamón Ibérico de Bellota (DOP Jabugo). Destaca por la pureza de sus embutidos. presa. secreto y pluma ibérica a la brasa.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22016','gastronomia','Destaca por sus prestigiosas bodegas de vino y brandy con DOP Condado de Huelva','Destaca por sus prestigiosas bodegas de vino y brandy con DOP Condado de Huelva. y platos tradicionales como las habas con poleo.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22017','gastronomia','Famosa por sus fresas y frutos rojos aplicados a postres y ensaladas','Famosa por sus fresas y frutos rojos aplicados a postres y ensaladas. y su cocina marinera basada en el puerto de El Terrón (arroces y pescados).','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22020','gastronomia','Famoso por sus fresones','Famoso por sus fresones. sus vinos y el vino de naranja artesanal. Platos de pescados frescos y repostería de pasteles finos de hojaldre.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22021','gastronomia','Cuna del fresón de Huelva de exportación mundial','Cuna del fresón de Huelva de exportación mundial. Cocina marinera clásica. guisos de chopo y repostería basada en frutos rojos.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22022','gastronomia','Famosa por sus chirlas','Famosa por sus chirlas. los espetos de sardinas en la playa. el choco frito o en albóndigas y una de las mejores cocinas marineras estivales.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('22023','gastronomia','Cocina de transición a la sierra: destacan las gurumelos (setas exquisitas de la zona)','Cocina de transición a la sierra: destacan las gurumelos (setas exquisitas de la zona). las calderetas de cordero y los piñonates dulces.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('21076','gastronomia','Cocina de la Ribera Alta','Cocina de la Ribera Alta.','excel_curado',date('now'));
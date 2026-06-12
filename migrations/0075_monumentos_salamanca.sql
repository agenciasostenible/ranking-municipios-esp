-- Monumentos Salamanca
-- Duplicados MIN 37xxx -> MAX 37xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Salamanca');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Salamanca');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Salamanca');

-- 4. Scores individuales

-- Salamanca (37011): ciudad vieja UNESCO
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='37011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37011','conjunto_historico','Ciudad Vieja de Salamanca','Patrimonio Mundial UNESCO. La Universidad mas antigua de Espana, las dos catedrales, la Casa de las Conchas y la Plaza Mayor barroca, joya de la piedra dorada de Villamayor.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37011','monumento','Universidad de Salamanca','Fundada en 1218, la mas antigua de Espana. Fachada plateresca con la celebre rana. BIC. Cumplio ocho siglos en 2018.','BIC',date('now'));

-- Ciudad Rodrigo (37003): conjunto amurallado + catedral + castillo
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='37003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37003','conjunto_historico','Conjunto Historico de Ciudad Rodrigo','Ciudad amurallada con catedral romanico-gotica, castillo de Enrique II (Parador) y palacios. BIC. Plaza fuerte en la raya con Portugal.','BIC',date('now'));

-- La Alberca (37005): primer conjunto historico de Espana
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='37005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37005','conjunto_historico','Conjunto Historico de La Alberca','Primer pueblo de Espana declarado Conjunto Historico-Artistico, en 1940. Arquitectura serrana de entramado de madera y piedra en la Sierra de Francia. BIC.','BIC',date('now'));

-- Miranda del Castañar (37008): villa medieval amurallada
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='37008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37008','conjunto_historico','Villa de Miranda del Castañar','Conjunto medieval amurallado con castillo y plaza de toros antigua, en la Sierra de Francia. BIC.','BIC',date('now'));

-- Mogarraz (37009): pueblo serrano de los retratos
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='37009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37009','conjunto_historico','Conjunto Historico de Mogarraz','Pueblo serrano de casas de entramado con cientos de retratos pintados en sus fachadas. BIC. Joya de la Sierra de Francia.','BIC',date('now'));

-- San Martin del Castañar (37012): conjunto serrano + castillo
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='37012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37012','conjunto_historico','Conjunto Historico de San Martin del Castañar','Pueblo serrano con castillo, plaza de toros del s.XVIII e iglesia mudejar. BIC. Uno de los mas bonitos de Espana.','BIC',date('now'));

-- Bejar (37046): conjunto + jardin renacentista El Bosque
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='37046' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37046','conjunto_historico','Conjunto Historico de Bejar','Villa textil con palacio ducal de los Zuniga y El Bosque, uno de los pocos jardines renacentistas conservados en Espana. BIC.','BIC',date('now'));

-- Candelario (37001): pueblo serrano singular
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='37001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37001','conjunto_historico','Conjunto Historico de Candelario','Pueblo de montaña con sus caracteristicas batipuertas y regaderas, arquitectura de los chacineros. BIC.','BIC',date('now'));

-- Ledesma (37006): conjunto amurallado + puente
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='37006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37006','conjunto_historico','Conjunto Historico de Ledesma','Villa amurallada sobre el Tormes con puente medieval, iglesias y palacios. BIC.','BIC',date('now'));

-- San Felices de los Gallegos (37285): castillo fronterizo
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='37285' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37285','castillo','Castillo de San Felices de los Gallegos','Fortaleza medieval reforzada por los Reyes Catolicos en la raya con Portugal. BIC. Conjunto historico fronterizo.','BIC',date('now'));

-- Peñaranda de Bracamonte (37246): plaza y conjunto
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='37246' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37246','conjunto_historico','Casco de Peñaranda de Bracamonte','Villa de plazas porticadas y la colegiata, importante mercado historico de la campiña salmantina. ','excel_curado',date('now'));

-- Lumbrales (37007): castro de las Merchanas
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='37007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37007','yacimiento','Castro de Las Merchanas','Poblado fortificado veton con verracos de piedra y necropolis, en plena comarca de los Arribes. ','excel_curado',date('now'));

-- Sequeros (37305): conjunto serrano
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='37305' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('37305','conjunto_historico','Casco de Sequeros','Pueblo serrano con la ermita del Robledo y mirador sobre la Sierra de Francia. ','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37001' AND p2.categoria='monumentos') WHERE codigo_ine='37078' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37002' AND p2.categoria='monumentos') WHERE codigo_ine='37098' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37003' AND p2.categoria='monumentos') WHERE codigo_ine='37107' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37004' AND p2.categoria='monumentos') WHERE codigo_ine='37160' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37006' AND p2.categoria='monumentos') WHERE codigo_ine='37170' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37007' AND p2.categoria='monumentos') WHERE codigo_ine='37173' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37008' AND p2.categoria='monumentos') WHERE codigo_ine='37193' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37009' AND p2.categoria='monumentos') WHERE codigo_ine='37194' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37011' AND p2.categoria='monumentos') WHERE codigo_ine='37274' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37012' AND p2.categoria='monumentos') WHERE codigo_ine='37286' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='37013' AND p2.categoria='monumentos') WHERE codigo_ine='37376' AND categoria='monumentos';

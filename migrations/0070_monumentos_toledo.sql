-- Monumentos Toledo
-- Duplicados: MIN 44xxx -> MAX 45xxx. Resto canonicos en 45xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Toledo');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Toledo');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Toledo');

-- 4. Scores individuales

-- Toledo (44012): ciudad entera Patrimonio Mundial UNESCO
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='44012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44012','conjunto_historico','Ciudad Historica de Toledo','Patrimonio Mundial UNESCO. La ciudad de las tres culturas: catedral primada gotica, Alcazar, sinagogas, mezquita del Cristo de la Luz y el legado de El Greco.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44012','catedral','Catedral Primada de Toledo','Una de las mayores catedrales goticas de Espana, sede primada, del s.XIII-XV. El Transparente barroco y el tesoro de la Custodia de Arfe. BIC.','BIC',date('now'));

-- Consuegra (44001): molinos + castillo de la Muela
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='44001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44001','castillo','Molinos y Castillo de la Muela','Hilera de molinos de viento manchegos junto al castillo de los Hospitalarios. BIC. Una de las estampas mas iconicas de La Mancha quijotesca.','BIC',date('now'));

-- Talavera de la Reina (44010): ceramica + Basilica del Prado + murallas
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='44010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44010','monumento','Ermita de la Virgen del Prado','La capilla sixtina de la ceramica: ermita revestida de azulejeria talaverana, arte ceramico Patrimonio Inmaterial UNESCO. Junto a las murallas medievales.','UNESCO',date('now'));

-- Guadamur (45070): castillo muy bien conservado
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='45070' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45070','castillo','Castillo de Guadamur','Fortaleza-palacio del s.XV, uno de los castillos mejor conservados de Espana. BIC. Cerca se hallo el tesoro visigodo de Guarrazar.','BIC',date('now'));

-- Oropesa (44008): castillo-parador + conjunto
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='44008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44008','castillo','Castillo de Oropesa','Fortaleza medieval de los condes de Oropesa, hoy Parador Nacional. BIC. Conjunto historico con vistas a Gredos.','BIC',date('now'));

-- Ocaña (44006): Plaza Mayor monumental
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='44006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44006','conjunto_historico','Plaza Mayor de Ocaña','Una de las plazas mayores barrocas mas bellas de Castilla, del s.XVIII. Junto a la Fuente Grande renacentista de Covarrubias. BIC.','BIC',date('now'));

-- Tembleque (44011): Plaza Mayor porticada
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='44011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44011','conjunto_historico','Plaza Mayor de Tembleque','Plaza porticada manchega del s.XVII de madera en tres pisos, una de las mejor conservadas de Espana. BIC.','BIC',date('now'));

-- Escalona (45061): castillo y murallas sobre el Alberche
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45061' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45061','castillo','Castillo de Escalona','Fortaleza mudejar del s.XV de don Alvaro de Luna sobre el rio Alberche. BIC. Villa amurallada con plaza porticada.','BIC',date('now'));

-- El Toboso (45167): Dulcinea y el Quijote
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45167' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45167','conjunto_historico','Casa de Dulcinea del Toboso','Casona manchega del s.XVI convertida en museo cervantino. El pueblo de la amada de Don Quijote, con la iglesia de San Antonio Abad. ','excel_curado',date('now'));

-- San Martin de Montalban (45151): Castillo de Montalban + ermita visigoda de Melque
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='45151' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45151','monumento','Santa Maria de Melque','Iglesia visigoda del s.VII-VIII, una de las mejor conservadas de Espana. BIC. Junto al imponente Castillo de Montalban.','BIC',date('now'));

-- Orgaz (44007): castillo + vinculo con El Greco
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='44007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44007','castillo','Castillo de Orgaz','Fortaleza del s.XV junto al puente y la iglesia barroca. BIC. El conde de Orgaz inmortalizado por El Greco fue señor de la villa.','BIC',date('now'));

-- Maqueda (45091): Castillo de la Vela
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='45091' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45091','castillo','Castillo de la Vela','Fortaleza mudejar del s.XV muy bien conservada, en la villa donde sirvio Santa Teresa. BIC.','BIC',date('now'));

-- Illescas (44002): Hospital de la Caridad con El Greco
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='44002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44002','monumento','Santuario de la Caridad','Conjunto con cinco lienzos de El Greco y la torre mudejar de Illescas. BIC.','BIC',date('now'));

-- La Puebla de Montalban (45136): cuna de La Celestina
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='45136' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45136','palacio','Palacio de los Tellez-Giron','Casona renacentista en la villa natal de Fernando de Rojas, autor de La Celestina. Plaza Mayor porticada.','excel_curado',date('now'));

-- El Puente del Arzobispo (45138): ceramica + puente medieval
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='45138' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45138','monumento','Puente medieval sobre el Tajo','Puente fortificado del s.XIV que da nombre a la villa, famosa por su ceramica, arte Patrimonio Inmaterial UNESCO junto a Talavera.','UNESCO',date('now'));

-- Castillo de Bayuela (45043): castro veton
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='45043' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45043','yacimiento','Castro del Cerro de la Mesa','Poblado veton y verracos de piedra prerromanos. Vestigios del castillo medieval que da nombre al pueblo.','excel_curado',date('now'));

-- Barcience (45018): castillo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='45018' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('45018','castillo','Castillo de Barcience','Fortaleza del s.XV de los Silva sobre un cerro en la campiña toledana. BIC.','BIC',date('now'));

-- Madridejos (44004): conjunto y molinos
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='44004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('44004','conjunto_historico','Casco de Madridejos','Villa manchega con la iglesia del Salvador, el convento de los franciscanos y molino-museo de viento. ','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44001' AND p2.categoria='monumentos') WHERE codigo_ine='45053' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44002' AND p2.categoria='monumentos') WHERE codigo_ine='45081' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44003' AND p2.categoria='monumentos') WHERE codigo_ine='45082' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44004' AND p2.categoria='monumentos') WHERE codigo_ine='45087' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44005' AND p2.categoria='monumentos') WHERE codigo_ine='45106' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44006' AND p2.categoria='monumentos') WHERE codigo_ine='45121' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44007' AND p2.categoria='monumentos') WHERE codigo_ine='45124' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44008' AND p2.categoria='monumentos') WHERE codigo_ine='45125' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44009' AND p2.categoria='monumentos') WHERE codigo_ine='45142' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44010' AND p2.categoria='monumentos') WHERE codigo_ine='45165' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44011' AND p2.categoria='monumentos') WHERE codigo_ine='45166' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44012' AND p2.categoria='monumentos') WHERE codigo_ine='45168' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='44013' AND p2.categoria='monumentos') WHERE codigo_ine='45177' AND categoria='monumentos';

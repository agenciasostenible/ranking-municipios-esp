-- Monumentos Cadiz
-- Duplicados: MIN 11xxx -> MAX 16xxx. Cadiz capital 16009 y Arcos 16004 solo en 16xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cádiz');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cádiz');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Cádiz');

-- 4. Scores individuales

-- Jerez de la Frontera (11020): Alcazar, Catedral, Cartuja, Real Escuela, bodegas
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='11020' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11020','castillo','Alcazar de Jerez','Fortaleza almohade del s.XII con mezquita, banos arabes y jardines. BIC. Uno de los conjuntos almohades mejor conservados de Andalucia.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11020','monumento','Cartuja de Santa Maria de la Defension','Monasterio cartujo del s.XV con fachada barroca, cuna del caballo cartujano. BIC.','BIC',date('now'));

-- Arcos de la Frontera (16004, codigo unico): pueblo blanco sobre peña
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='16004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16004','conjunto_historico','Conjunto Historico de Arcos de la Frontera','Pueblo blanco encaramado en un tajo sobre el Guadalete. Castillo, basilica de Santa Maria y plaza del Cabildo. Cabecera de la Ruta de los Pueblos Blancos. BIC.','BIC',date('now'));

-- Cadiz (16009, codigo unico): ciudad mas antigua de occidente
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='16009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16009','catedral','Catedral de Cadiz','La Catedral Nueva, barroco-neoclasica con su Torre del Reloj y cupula dorada sobre el Atlantico. BIC.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16009','conjunto_historico','Casco historico de Cadiz','Una de las ciudades habitadas mas antiguas de Occidente, fundada por los fenicios hace 3.000 anos. Torre Tavira, teatro romano y barrio del Populo. BIC.','BIC',date('now'));

-- Tarifa (11035): Baelo Claudia + Castillo de Guzman el Bueno
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='11035' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11035','yacimiento','Conjunto Arqueologico de Baelo Claudia','Ciudad romana del s.II a.C. junto a la playa de Bolonia, con foro, basilica, teatro y fabricas de garum. Una de las mejor conservadas de Hispania. BIC.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11035','castillo','Castillo de Guzman el Bueno','Fortaleza califal del s.X escenario de la leyenda de Guzman el Bueno. BIC.','BIC',date('now'));

-- Vejer de la Frontera (11039): pueblo blanco amurallado
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='11039' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11039','conjunto_historico','Conjunto Historico de Vejer de la Frontera','Uno de los pueblos mas bonitos de Espana. Recinto amurallado medieval, castillo y calles blancas sobre una colina. BIC.','BIC',date('now'));

-- Sanlucar de Barrameda (11032): Palacio ducal, Las Covachas, manzanilla
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='11032' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11032','conjunto_historico','Conjunto Historico de Sanlucar','Puerto de partida de Magallanes y Colon. Palacio de los Medina Sidonia, Las Covachas goticas y bodegas de manzanilla. BIC.','BIC',date('now'));

-- Setenil de las Bodegas (11034): casas bajo la roca
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='11034' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11034','conjunto_historico','Casas bajo la roca de Setenil','Pueblo unico con calles excavadas y viviendas cobijadas bajo enormes salientes de roca. Castillo nazari. BIC.','BIC',date('now'));

-- Zahara de la Sierra (11042): castillo nazari sobre peña + embalse
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='11042' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11042','castillo','Castillo de Zahara de la Sierra','Torre nazari del s.XIII en lo alto de un risco sobre el pueblo blanco y el embalse. BIC. Su toma en 1481 desato la guerra de Granada.','BIC',date('now'));

-- El Puerto de Santa Maria (11027): Castillo San Marcos, plaza de toros, bodegas
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='11027' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11027','castillo','Castillo de San Marcos','Fortaleza-iglesia del s.XIII sobre una antigua mezquita. BIC. Ciudad de las bodegas y de los Cargadores a Indias.','BIC',date('now'));

-- Medina Sidonia (11023): conjunto historico + restos romanos
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='11023' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11023','conjunto_historico','Conjunto Historico de Medina Sidonia','Una de las ciudades mas antiguas de Europa, con conjunto arqueologico romano, alcazar y la iglesia mayor de Santa Maria la Coronada. BIC.','BIC',date('now'));

-- Olvera (11024): castillo arabe + iglesia neoclasica
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='11024' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11024','castillo','Castillo de Olvera','Fortaleza nazari del s.XII sobre el pueblo blanco, junto a la iglesia neoclasica de la Encarnacion. BIC. Estampa iconica de los Pueblos Blancos.','BIC',date('now'));

-- Castellar de la Frontera (16006, codigo unico): castillo habitado
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='16006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16006','castillo','Castillo de Castellar','Fortaleza medieval del s.XIII cuyo recinto amurallado alberga un pueblo habitado en su interior. BIC. Caso unico en Andalucia.','BIC',date('now'));

-- Jimena de la Frontera (11021): castillo
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='11021' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11021','castillo','Castillo de Jimena de la Frontera','Fortaleza arabe sobre restos romanos en lo alto del cerro. BIC. Domina el valle del Hozgarganta y el Campo de Gibraltar.','BIC',date('now'));

-- Grazalema (11019): pueblo blanco en la sierra
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='11019' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11019','conjunto_historico','Conjunto Historico de Grazalema','Pueblo blanco por excelencia en el corazon del parque natural de la Sierra de Grazalema. Casco de calles empinadas e iglesias barrocas. BIC.','BIC',date('now'));

-- San Fernando (11031): Real Isla de Leon, historia constitucional
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='11031' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11031','monumento','Real Teatro de las Cortes','Donde se reunieron las Cortes que aprobaron la Constitucion de 1812. Junto al casco isleño y el Castillo de San Romualdo. BIC.','BIC',date('now'));

-- Alcala de los Gazules (16001, codigo unico): conjunto historico
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='16001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16001','conjunto_historico','Conjunto Historico de Alcala de los Gazules','Pueblo blanco en el Parque de los Alcornocales, con restos del castillo y la iglesia de San Jorge. BIC.','BIC',date('now'));

-- Ubrique (11038): Ocuri (yacimiento romano)
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='11038' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11038','yacimiento','Ciudad romana de Ocuri','Yacimiento romano sobre el cerro del Salto de la Mora, con mausoleo y murallas ciclopeas. BIC. Cuna de la piel y la marroquineria.','BIC',date('now'));

-- Rota (11030): Castillo de Luna
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='11030' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('11030','castillo','Castillo de Luna','Fortaleza medieval del s.XIII en el centro de Rota, hoy sede del ayuntamiento. BIC.','BIC',date('now'));

-- Algeciras (16002, codigo unico): mezquita y patrimonio
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='16002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16002','yacimiento','Murallas Meriníes y Villa Vieja','Restos de la antigua medina meriní del s.XIV y murallas medievales. Mercado modernista de Torroja. Conjunto historico.','excel_curado',date('now'));

-- Algodonales (16003, codigo unico): pueblo blanco
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='16003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16003','iglesia','Iglesia de Santa Ana','Templo neoclasico monumental del s.XVIII, uno de los mayores de la Sierra de Cadiz. Pueblo blanco a los pies de la Sierra de Lijar.','excel_curado',date('now'));

-- Conil de la Frontera (16008, codigo unico): Torre de Guzman
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='16008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('16008','torre','Torre de Guzman','Torre defensiva del s.XV vinculada a las almadrabas de atun. Casco blanco junto a las playas de la Costa de la Luz.','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11901' AND p2.categoria='monumentos') WHERE codigo_ine='16005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11027' AND p2.categoria='monumentos') WHERE codigo_ine='16010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11019' AND p2.categoria='monumentos') WHERE codigo_ine='16011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11020' AND p2.categoria='monumentos') WHERE codigo_ine='16012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11021' AND p2.categoria='monumentos') WHERE codigo_ine='16013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11022' AND p2.categoria='monumentos') WHERE codigo_ine='16014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11023' AND p2.categoria='monumentos') WHERE codigo_ine='16017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11024' AND p2.categoria='monumentos') WHERE codigo_ine='16018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11029' AND p2.categoria='monumentos') WHERE codigo_ine='16019' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11030' AND p2.categoria='monumentos') WHERE codigo_ine='16020' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11031' AND p2.categoria='monumentos') WHERE codigo_ine='16021' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11033' AND p2.categoria='monumentos') WHERE codigo_ine='16022' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11032' AND p2.categoria='monumentos') WHERE codigo_ine='16023' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11034' AND p2.categoria='monumentos') WHERE codigo_ine='16024' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11035' AND p2.categoria='monumentos') WHERE codigo_ine='16025' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11038' AND p2.categoria='monumentos') WHERE codigo_ine='16026' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11039' AND p2.categoria='monumentos') WHERE codigo_ine='16027' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11042' AND p2.categoria='monumentos') WHERE codigo_ine='16028' AND categoria='monumentos';

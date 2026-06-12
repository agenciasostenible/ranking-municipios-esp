-- Monumentos Malaga
-- Duplicados: MIN 29xxx -> MAX 32xxx. Antequera 32002, Archidona 32003, Ardales 32004, Alora 32025, Alozaina 32001 solo en 32xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Málaga');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Málaga');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Málaga');

-- 4. Scores individuales

-- Antequera (32002): Dolmenes UNESCO + Peña de los Enamorados + El Torcal
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='32002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('32002','yacimiento','Dolmenes de Antequera','Patrimonio Mundial UNESCO. Conjunto megalitico de Menga, Viera y El Romeral, de hace 6.000 anos, orientado a la Peña de los Enamorados y El Torcal. Uno de los mas importantes de Europa.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('32002','conjunto_historico','Conjunto Historico de Antequera','La ciudad de las iglesias con la Alcazaba, el Arco de los Gigantes y la Real Colegiata de Santa Maria. BIC.','BIC',date('now'));

-- Ronda (29084): Puente Nuevo, plaza de toros, casco
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='29084' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29084','monumento','Puente Nuevo de Ronda','Puente del s.XVIII de 98 metros sobre el Tajo. Una de las imagenes mas iconicas de Espana. BIC.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29084','monumento','Plaza de Toros de la Real Maestranza','Una de las plazas de toros mas antiguas y monumentales de Espana, del s.XVIII. Cuna del toreo a pie. BIC.','BIC',date('now'));

-- Malaga (29067): Alcazaba, Teatro Romano, Catedral, Gibralfaro
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='29067' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29067','castillo','Alcazaba y Castillo de Gibralfaro','Alcazaba palaciega del s.XI conectada con el castillo de Gibralfaro. BIC. Uno de los conjuntos militares arabes mejor conservados de Espana.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29067','catedral','Catedral de Malaga (La Manquita)','Catedral renacentista del s.XVI, conocida como La Manquita por su torre sur inacabada. BIC. Junto al Teatro Romano.','BIC',date('now'));

-- Frigiliana (29053): pueblo mas bonito, barrio morisco
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='29053' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29053','conjunto_historico','Barrio Morisco de Frigiliana','Uno de los conjuntos mozarabes mejor conservados de Andalucia. Considerado uno de los pueblos mas bonitos de Espana. BIC.','BIC',date('now'));

-- Nerja (29075): Cueva de Nerja + Balcon de Europa
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='29075' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29075','yacimiento','Cueva de Nerja','Gran cavidad con pinturas rupestres de hasta 42.000 anos y la mayor columna estalagmitica del mundo. BIC. Uno de los sitios mas visitados de Andalucia.','BIC',date('now'));

-- Casares (29041): pueblo blanco, castillo, cuna de Blas Infante
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='29041' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29041','castillo','Castillo y casco de Casares','Pueblo blanco encaramado bajo una fortaleza nazari, cuna de Blas Infante, padre de la patria andaluza. BIC.','BIC',date('now'));

-- Archidona (32003): Plaza Ochavada + santuario sobre alcazaba
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='32003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('32003','conjunto_historico','Plaza Ochavada de Archidona','Plaza barroca octogonal unica del s.XVIII. Junto al santuario de la Virgen de Gracia, levantado sobre una alcazaba arabe. BIC.','BIC',date('now'));

-- Velez-Malaga (29094): Fortaleza + casco historico
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='29094' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29094','castillo','Fortaleza de Velez-Malaga','Castillo nazari del s.XIII sobre la capital de la Axarquia, con su torre del homenaje. BIC.','BIC',date('now'));

-- Teba (29089): Castillo de la Estrella, corazon de Robert Bruce
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='29089' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29089','castillo','Castillo de la Estrella','Gran fortaleza del s.XIII donde murio Sir James Douglas portando el corazon de Robert Bruce de Escocia. BIC.','BIC',date('now'));

-- Alora (32025): castillo arabe-romano
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='32025' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('32025','castillo','Castillo de Alora','Fortaleza de origen romano reconstruida por los arabes sobre el pueblo blanco del valle del Guadalhorce. BIC.','BIC',date('now'));

-- Ardales (32004): Cueva de Ardales + castillo (cerca del Caminito del Rey)
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='32004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('32004','yacimiento','Cueva de Ardales','Cavidad con arte rupestre paleolitico de mas de 50.000 anos, de los mas antiguos de Europa. BIC. Puerta del Caminito del Rey.','BIC',date('now'));

-- Comares (29044): pueblo balcon de la Axarquia
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='29044' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29044','conjunto_historico','Casco de Comares','Pueblo blanco mas alto de la Axarquia, llamado el balcon de la Axarquia, con restos de la fortaleza arabe. ','excel_curado',date('now'));

-- Marbella (29069): casco antiguo + murallas
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='29069' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29069','conjunto_historico','Casco Antiguo de Marbella','Trazado medieval con la muralla del castillo arabe, la Plaza de los Naranjos renacentista y la iglesia de la Encarnacion. BIC.','BIC',date('now'));

-- Cañete la Real (29035): castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='29035' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29035','castillo','Castillo del Hierro','Fortaleza medieval sobre el pueblo, escenario de las luchas fronterizas entre Castilla y el reino nazari. BIC.','BIC',date('now'));

-- Casarabonela (29040): castillo arabe
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='29040' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29040','castillo','Castillo de Casarabonela','Fortaleza arabe del s.IX sobre el pueblo blanco, en la sierra Prieta. BIC.','BIC',date('now'));

-- Cartama (29038): castillo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='29038' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29038','castillo','Castillo de Cartama','Fortaleza de origen romano y arabe sobre el cerro de la Villa, con la ermita de los Remedios. BIC.','BIC',date('now'));

-- Mijas (29070): pueblo blanco
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='29070' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29070','conjunto_historico','Casco de Mijas Pueblo','Pueblo blanco colgado de la sierra con restos de muralla, ermita de la Virgen de la Peña y plaza de toros ovalada. ','excel_curado',date('now'));

-- Carratraca (29036): balneario historico
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='29036' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29036','monumento','Balneario de Carratraca','Balneario decimononico de aguas sulfurosas que visitaron Lord Byron, la emperatriz Sissi y Rilke. BIC.','BIC',date('now'));

-- Rincon de la Victoria (29082): Cueva del Tesoro
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='29082' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29082','yacimiento','Cueva del Tesoro','Una de las tres unicas cuevas de origen marino visitables del mundo, con arte rupestre. BIC.','BIC',date('now'));

-- Manilva (29068): termas romanas + Castillo de la Duquesa
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='29068' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29068','yacimiento','Termas romanas de la Hedionda','Baños romanos de aguas sulfurosas donde, segun la tradicion, se baño Julio Cesar. Junto al Castillo de la Duquesa.','excel_curado',date('now'));

-- Macharaviaya (29066): el pequeño Versalles
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='29066' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29066','iglesia','Iglesia de San Jacinto','Templo monumental costeado por la familia Galvez en el s.XVIII, lo que valio al pueblo el apodo de pequeño Versalles. ','excel_curado',date('now'));

-- Estepona (29051): casco y torre del reloj
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='29051' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('29051','conjunto_historico','Casco antiguo de Estepona','Trazado de calles blancas floridas con la torre del reloj sobre la antigua iglesia y restos del castillo de San Luis. ','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29033' AND p2.categoria='monumentos') WHERE codigo_ine='32005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29041' AND p2.categoria='monumentos') WHERE codigo_ine='32006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29031' AND p2.categoria='monumentos') WHERE codigo_ine='32008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29051' AND p2.categoria='monumentos') WHERE codigo_ine='32009' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29053' AND p2.categoria='monumentos') WHERE codigo_ine='32010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29054' AND p2.categoria='monumentos') WHERE codigo_ine='32011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29056' AND p2.categoria='monumentos') WHERE codigo_ine='32012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29061' AND p2.categoria='monumentos') WHERE codigo_ine='32013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29069' AND p2.categoria='monumentos') WHERE codigo_ine='32014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29070' AND p2.categoria='monumentos') WHERE codigo_ine='32015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29067' AND p2.categoria='monumentos') WHERE codigo_ine='32016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29075' AND p2.categoria='monumentos') WHERE codigo_ine='32017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29076' AND p2.categoria='monumentos') WHERE codigo_ine='32018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29084' AND p2.categoria='monumentos') WHERE codigo_ine='32019' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29086' AND p2.categoria='monumentos') WHERE codigo_ine='32020' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29090' AND p2.categoria='monumentos') WHERE codigo_ine='32021' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29091' AND p2.categoria='monumentos') WHERE codigo_ine='32022' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29094' AND p2.categoria='monumentos') WHERE codigo_ine='32023' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='29100' AND p2.categoria='monumentos') WHERE codigo_ine='32024' AND categoria='monumentos';

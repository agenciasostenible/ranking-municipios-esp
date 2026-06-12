-- Monumentos Cordoba
-- Canonicos MIN: 14xxx | Duplicados MAX: 17xxx
-- Municipios solo en 17xxx (sin duplicado): Aguilar 17001, Almodovar 17002, Baena 17003, Belalcazar 17004, Bujalance 17005, Cabra 17006

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Córdoba');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Córdoba');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Córdoba');

-- 4. Scores individuales (codigo canonico MIN)

-- Cordoba (14021): Mezquita-Catedral UNESCO + Medina Azahara UNESCO + centro historico UNESCO + patios
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='14021' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14021','monumento','Mezquita-Catedral de Cordoba','Patrimonio Mundial UNESCO. La mayor mezquita del mundo islamico medieval con su bosque de 850 columnas y arcos bicolor. Catedral renacentista en su interior.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14021','yacimiento','Medina Azahara','Patrimonio Mundial UNESCO desde 2018. Ciudad palatina del califato omeya del s.X, construida por Abd al-Rahman III. Uno de los mayores yacimientos arqueologicos de Europa.','UNESCO',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14021','conjunto_historico','Casco historico y Patios de Cordoba','Centro historico Patrimonio Mundial UNESCO. Los Patios de Cordoba son Patrimonio Inmaterial UNESCO. Sinagoga medieval, Alcazar de los Reyes Cristianos y puente romano.','UNESCO',date('now'));

-- Priego de Cordoba (14055): capital del barroco cordobes
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='14055' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14055','monumento','Fuente del Rey','Monumento barroco con 139 chorros y mas de 100 caños. BIC. Uno de los conjuntos hidraulicos mas espectaculares de Espana.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14055','iglesia','Iglesia de la Asuncion','Joya del barroco cordobes con su Sagrario, obra maestra del rococo andaluz. BIC.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14055','conjunto_historico','Barrio de la Villa y Castillo','Casco medieval de calles blancas declarado conjunto historico. Castillo del s.XIII. Cuna del Barroco en la provincia.','excel_curado',date('now'));

-- Almodovar del Rio (17002, codigo unico): Castillo medieval (Juego de Tronos)
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='17002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17002','castillo','Castillo de Almodovar del Rio','Fortaleza de origen omeya del s.VIII, uno de los castillos medievales mejor conservados de Andalucia. BIC. Escenario de Juego de Tronos.','BIC',date('now'));

-- Baena (17003, codigo unico): Castillo + conjunto historico + Torreparedones
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='17003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17003','conjunto_historico','Conjunto Historico de Baena','Casco medieval con la Almedina y el Castillo del s.IX. BIC. Famosa por su aceite DOP y su Semana Santa.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17003','yacimiento','Torreparedones','Ciudad ibero-romana con foro, termas y santuario. Uno de los yacimientos mejor conservados de la Campiña cordobesa. BIC.','BIC',date('now'));

-- Zuheros (14075): Castillo sobre roca + pueblo blanco + cueva
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='14075' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14075','castillo','Castillo de Zuheros','Fortaleza arabe del s.IX encaramada en un risco. BIC. Uno de los pueblos mas bonitos de Espana, asomado a la Subbetica.','BIC',date('now'));

-- Lucena (14038): Castillo del Moral + Sagrario barroco + Santuario de Araceli
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='14038' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14038','castillo','Castillo del Moral','Fortaleza medieval donde estuvo preso Boabdil, ultimo rey nazari de Granada. BIC.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14038','iglesia','Sagrario de San Mateo','Capilla del Sagrario, obra cumbre del barroco andaluz del s.XVIII. BIC.','BIC',date('now'));

-- Belalcazar (17004, codigo unico): Castillo con la torre del homenaje mas alta de Espana
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='17004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17004','castillo','Castillo de Belalcazar','Fortaleza del s.XV con la torre del homenaje mas alta de la Espana cristiana: 47 metros. BIC.','BIC',date('now'));

-- Montoro (14043): conjunto historico de piedra roja sobre meandro
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='14043' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14043','conjunto_historico','Conjunto Historico de Montoro','Casco antiguo de piedra molinaza roja sobre un meandro del Guadalquivir. BIC. Puente de las Donadas del s.XVI.','BIC',date('now'));

-- Cabra (17006, codigo unico): Castillo de los Condes + santuario de la Virgen de la Sierra
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='17006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17006','castillo','Castillo de los Condes de Cabra','Fortaleza medieval reconvertida en palacio, hoy instituto. BIC. Domina la villa egabrense.','BIC',date('now'));

-- Iznajar (14037): pueblo blanco sobre embalse + castillo
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='14037' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14037','castillo','Castillo de Iznajar','Fortaleza arabe del s.VIII en lo alto del pueblo blanco, asomado al mayor embalse de Andalucia. BIC.','BIC',date('now'));

-- Palma del Rio (14049): murallas almohades + convento Santa Clara
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='14049' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14049','monumento','Murallas almohades de Palma del Rio','Recinto amurallado almohade del s.XII, de los mejor conservados de Andalucia. BIC.','BIC',date('now'));

-- Aguilar de la Frontera (17001, codigo unico): Plaza Ochavada + torre del Reloj
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='17001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17001','conjunto_historico','Plaza de San Jose (Ochavada)','Plaza barroca octogonal unica en Andalucia, del s.XVIII. BIC. Junto a la torre del Reloj.','BIC',date('now'));

-- Fuente Obejuna (14029): plaza y patrimonio de la villa de Lope de Vega
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='14029' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14029','conjunto_historico','Conjunto Historico de Fuente Obejuna','Villa inmortalizada por Lope de Vega en Fuenteovejuna. Casco con casas modernistas, iglesia gotica y plaza historica.','excel_curado',date('now'));

-- Montilla (14042): Castillo + casa del Inca Garcilaso + bodegas
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='14042' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14042','castillo','Castillo de Montilla y casco historico','Solar del castillo de los Aguilar y casa del Inca Garcilaso de la Vega. Capital del vino Montilla-Moriles.','excel_curado',date('now'));

-- Bujalance (17005, codigo unico): Castillo de las Siete Torres + torre iglesia
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='17005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('17005','castillo','Castillo de Bujalance','Alcazaba califal del s.X, llamada de las Siete Torres. BIC. La torre de la iglesia es una de las mas altas de Andalucia.','BIC',date('now'));

-- Espejo (14025): Castillo de los Fernandez de Cordoba
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='14025' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14025','castillo','Castillo de Espejo','Fortaleza gotico-mudejar del s.XIV de los Fernandez de Cordoba, muy bien conservada. BIC.','BIC',date('now'));

-- Hinojosa del Duque (14035): Catedral de la Sierra
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='14035' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14035','iglesia','Iglesia de San Juan Bautista','Conocida como la Catedral de la Sierra por su monumentalidad. Gotico-renacentista del s.XVI. BIC.','BIC',date('now'));

-- Montemayor (14041): Castillo ducal habitado
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='14041' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14041','castillo','Castillo Ducal de Montemayor','Fortaleza del s.XIV de los duques de Frias, una de las pocas habitadas de la provincia. BIC.','BIC',date('now'));

-- Castro del Rio (14019): Castillo + casco cervantino
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='14019' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14019','castillo','Castillo y carcel de Cervantes','Fortaleza medieval donde, segun la tradicion, estuvo preso Miguel de Cervantes. BIC.','BIC',date('now'));

-- Luque (14039): Castillo arabe sobre roca
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='14039' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14039','castillo','Castillo de Luque','Fortaleza arabe del s.IX sobre roca en plena Subbetica. BIC.','BIC',date('now'));

-- Hornachuelos (14036): Castillo + casco en parque natural
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='14036' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14036','conjunto_historico','Casco antiguo de Hornachuelos','Villa medieval colgada sobre el rio Bembezar, en plena Sierra. Castillo arabe y arco del Portillo.','excel_curado',date('now'));

-- Pedroche (14051): torre de la iglesia + comarca de Los Pedroches
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='14051' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14051','iglesia','Iglesia del Salvador de Pedroche','Su torre de granito del s.XVI es uno de los simbolos del Valle de los Pedroches. BIC.','BIC',date('now'));

-- Dos Torres (14023): conjunto historico de Los Pedroches
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='14023' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14023','conjunto_historico','Conjunto Historico de Dos Torres','Casco de arquitectura serrana con plaza porticada y casas blasonadas de granito. BIC.','BIC',date('now'));

-- Santaella (14060): castillo y casco
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='14060' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14060','conjunto_historico','Casco historico de Santaella','Pueblo sobre cerro con restos del castillo, iglesia de la Asuncion y museo arqueologico.','excel_curado',date('now'));

-- Rute (14058): anis, belen y patrimonio
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='14058' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14058','conjunto_historico','Casco de Rute','Villa de la Subbetica famosa por el anis y el mayor belen de chocolate del mundo. Iglesia de Santa Catalina.','excel_curado',date('now'));

-- Doña Mencia (14022): castillo y casco vinatero
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='14022' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('14022','castillo','Castillo de Doña Mencia','Fortaleza del s.XV de los Fernandez de Cordoba en plena Subbetica. Casco de tradicion vinatera.','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14019' AND p2.categoria='monumentos') WHERE codigo_ine='17007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14021' AND p2.categoria='monumentos') WHERE codigo_ine='17008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14025' AND p2.categoria='monumentos') WHERE codigo_ine='17009' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14029' AND p2.categoria='monumentos') WHERE codigo_ine='17011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14035' AND p2.categoria='monumentos') WHERE codigo_ine='17012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14037' AND p2.categoria='monumentos') WHERE codigo_ine='17013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14017' AND p2.categoria='monumentos') WHERE codigo_ine='17014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14038' AND p2.categoria='monumentos') WHERE codigo_ine='17015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14042' AND p2.categoria='monumentos') WHERE codigo_ine='17016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14043' AND p2.categoria='monumentos') WHERE codigo_ine='17017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14049' AND p2.categoria='monumentos') WHERE codigo_ine='17018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14052' AND p2.categoria='monumentos') WHERE codigo_ine='17019' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14053' AND p2.categoria='monumentos') WHERE codigo_ine='17020' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14054' AND p2.categoria='monumentos') WHERE codigo_ine='17021' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14055' AND p2.categoria='monumentos') WHERE codigo_ine='17022' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14056' AND p2.categoria='monumentos') WHERE codigo_ine='17023' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14058' AND p2.categoria='monumentos') WHERE codigo_ine='17024' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='14069' AND p2.categoria='monumentos') WHERE codigo_ine='17025' AND categoria='monumentos';

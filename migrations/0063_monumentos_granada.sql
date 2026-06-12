-- Monumentos Granada
-- Canonicos MIN: 18xxx | Duplicados MAX: 19xxx

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Granada');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Granada');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Granada');

-- 4. Scores individuales (codigo canonico MIN siempre)

-- Granada (18087): Alhambra+Generalife UNESCO + Albaicin UNESCO + Catedral BIC + Capilla Real
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='18087' AND categoria='monumentos';
-- entidades UNESCO/BIC ya existen en 18087, no reinsertar

-- Guadix (18089): unica ciudad con barrio troglodita habitado + Catedral BIC + Alcazaba
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='18089' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18089','monumento','Catedral de Guadix','Barroco granadino del s.XVI-XVIII. Junto a la Alcazaba y el barrio de cuevas, forma uno de los conjuntos historicos mas singulares de Andalucia.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18089','conjunto_historico','Barrio de Cuevas de Guadix','La mayor concentracion de viviendas trogloditas habitadas de Europa: mas de 2.000 personas viven en cuevas excavadas en la roca. BIC.','excel_curado',date('now'));

-- Montefrio (18135): Iglesia de la Villa + Dolmenes + vista National Geographic
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='18135' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18135','iglesia','Iglesia de la Villa','Sobre una roca de 200 metros. National Geographic la eligio como una de las 10 mejores vistas del mundo. BIC.','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18135','iglesia','Iglesia de la Encarnacion','Cupula circular unica en Espana, inspirada en el Panteon de Roma. Disenada por Ventura Rodriguez en el s.XVIII. BIC.','BIC',date('now'));
-- Dolmenes ya estan en 18135 con fuente BIC

-- Baza (18023): Alcazaba BIC + Colegiata BIC + lugar de la Dama de Baza
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='18023' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18023','castillo','Alcazaba de Baza','Fortaleza arabe del s.IX sobre cerro estrategico. BIC. Domina el nucleo historico de Baza.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18023','yacimiento','Yacimiento de la Dama de Baza','En 1971 se descubrio aqui la Dama de Baza, escultura iberica del s.IV a.C. hoy en el Museo Arqueologico Nacional. BIC.','excel_curado',date('now'));

-- Alhama de Granada (19001 - codigo unico, no duplicado)
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='19001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19001','conjunto_historico','Conjunto Historico de Alhama','Declarado BIC. Casco medieval con murallas, castillo arabe, iglesia del Carmen y termales con uso continuo desde epoca romana.','excel_curado',date('now'));
-- Balneario arabe ya existe en 19001 con fuente BIC

-- La Calahorra (18114): castillo-palacio renacentista unico en Espana
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='18114' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18114','castillo','Castillo de La Calahorra','Palacio renacentista del s.XVI con patio interior de marmol de Carrara importado de Italia. Unico en Espana por combinar fortaleza exterior medieval con interior renacentista italiano. BIC.','BIC',date('now'));

-- Santa Fe (18175): ciudad fundada en 1491, Capitulaciones con Colon
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='18175' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18175','conjunto_historico','Santa Fe, Ciudad Real de la Reconquista','Fundada en 1491 por los Reyes Catolicos como campamento para el sitio de Granada. Aqui se firmaron las Capitulaciones con Colon. Unico trazado en cuadricula de la epoca. BIC.','excel_curado',date('now'));

-- Loja (18122): Castillo BIC + Iglesia de la Encarnacion BIC
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='18122' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18122','castillo','Castillo de Loja','Fortaleza arabe del s.IX, puerta estrategica entre Granada y Malaga. BIC. Torres bien conservadas con vistas a la vega.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18122','iglesia','Iglesia de la Encarnacion de Loja','Templo renacentista del s.XVI construido sobre la antigua mezquita mayor. BIC.','BIC',date('now'));

-- Orce (18146): yacimiento humanos mas antiguos Europa Occidental
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='18146' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18146','yacimiento','Venta Micena y Fuente Nueva','Yacimientos con restos humanos de 1,3 millones de anos: los mas antiguos de Europa Occidental. BIC. Museo monografico en el pueblo.','BIC',date('now'));

-- Salobrena (18173): Castillo arabe BIC sobre roca junto al mar
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='18173' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18173','castillo','Castillo de Salobrena','Fortaleza arabe del s.X sobre roca de 100m junto al Mediterraneo. BIC. Una de las imagenes mas icónicas de la Costa Granadina.','BIC',date('now'));

-- Gorafe (18086): ruta de los dolmenes del rio Gor
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='18086' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18086','yacimiento','Dolmenes del rio Gor','Mas de 200 monumentos megalíticos a lo largo del rio Gor. Uno de los conjuntos dolmenicos mas grandes y mejor conservados de Europa. BIC.','BIC',date('now'));

-- Galera (18082): necropolis iberica + yacimiento fenicio
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='18082' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18082','yacimiento','Necropolis iberica de Galera','Mas de 300 tumbas ibericas del s.V-II a.C. con rico ajuar funerario. BIC. Museo de Prehistoria en el municipio.','BIC',date('now'));

-- Huescar (18098): Colegiata BIC + plaza Mayor
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='18098' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18098','iglesia','Colegiata de Santa Maria de la Encarnacion','Una de las iglesias mas grandes de la comarca del Altiplano. Gotico-renacentista del s.XVI. BIC.','BIC',date('now'));

-- Moclin (18132): Castillo de Moclin BIC - frontera del Reino de Granada
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='18132' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18132','castillo','Castillo de Moclin','Fortaleza nazari del s.XIII en la linea fronteriza del Reino de Granada. BIC. Vista panoramica de Sierra Nevada y la Vega de Granada.','BIC',date('now'));

-- Illora (18102): Castillo + Iglesia BIC
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='18102' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18102','castillo','Castillo de Illora','Fortaleza nazari del s.XIV sobre cerro estrategico. BIC. Control de la ruta entre Granada y el Poniente.','BIC',date('now'));

-- Viznar (18189): Conjunto historico BIC + Palacio del Arzobispo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='18189' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18189','palacio','Palacio del Arzobispo de Viznar','Palacio neoclasico del s.XVIII mandado construir por el Arzobispo de Granada. Lugar historico relacionado con Federico Garcia Lorca. BIC.','BIC',date('now'));

-- Fuente Vaqueros (18079): Casa natal Garcia Lorca
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='18079' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18079','monumento','Casa natal de Federico Garcia Lorca','Casa donde nacio el poeta en 1898, convertida en museo. BIC. La mas visitada del municipio y referencia del patrimonio literario de Andalucia.','excel_curado',date('now'));

-- Fonelas (18076): yacimiento paleontologico Fonelas P-1
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18076' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18076','yacimiento','Yacimiento paleontologico de Fonelas','Fonelas P-1: uno de los yacimientos de fauna pliocena (2,5 Ma) mas importantes de Europa. Ha aportado centenares de fosiles de grandes mamiferos.','excel_curado',date('now'));

-- Lanjaron (18116): Castillo arabe BIC
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18116' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18116','castillo','Castillo de Lanjaron','Fortaleza arabe del s.XVI sobre roca. BIC. Escenario de la ultima resistencia morisca en 1500. Puerta natural a la Alpujarra.','BIC',date('now'));

-- Pinos Puente (18158): Puente romano BIC
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18158' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18158','monumento','Puente Romano de Pinos Puente','Puente medieval sobre cimientos romanos, rehabilitado en el s.XIV. BIC. Da nombre al municipio.','BIC',date('now'));

-- Castril (18046): Castillo BIC
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='18046' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18046','castillo','Castillo de Castril','Fortaleza arabe sobre roca vertical de 200m. BIC. Vista unica sobre el canon del rio Castril y la reserva natural.','BIC',date('now'));

-- Capileira (18042): Conjunto historico alpujarreno BIC
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='18042' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18042','conjunto_historico','Conjunto historico de Capileira','Arquitectura alpujarrena tradicional declarada BIC. Calles empedradas, tinaos y chimeneas cilindricas unicas de la Alpujarra Alta.','excel_curado',date('now'));

-- Almunecar (19002 - codigo unico, no duplicado)
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='19002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19002','castillo','Castillo de San Miguel','Fortaleza arabe del s.VII sobre colina entre las dos playas de Almunecar. BIC. Vista panoramica de la costa.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19002','yacimiento','Cueva de los Siete Palacios','Cripta romana del s.I d.C. unica en la Peninsula. BIC. Hoy alberga el Museo Arqueologico de Almunecar.','BIC',date('now'));

-- Bubion (18032): Conjunto historico alpujarreno BIC
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='18032' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18032','conjunto_historico','Conjunto historico de Bubion','Arquitectura tradicional alpujarrena BIC. Uno de los pueblos mejor conservados de la Alpujarra Alta con terrazas y acequias moriscas.','excel_curado',date('now'));

-- Benamaurel (18029): Castillo + cuevas habitadas
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='18029' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18029','castillo','Castillo y cuevas de Benamaurel','Recinto amurallado arabe con cuevas habitadas en la roca. BIC. Similar a Guadix pero en escala menor.','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18087' AND p2.categoria='monumentos') WHERE codigo_ine='19009' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18089' AND p2.categoria='monumentos') WHERE codigo_ine='19010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18023' AND p2.categoria='monumentos') WHERE codigo_ine='19003' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18030' AND p2.categoria='monumentos') WHERE codigo_ine='19005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18032' AND p2.categoria='monumentos') WHERE codigo_ine='19004' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18035' AND p2.categoria='monumentos') WHERE codigo_ine='19008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18042' AND p2.categoria='monumentos') WHERE codigo_ine='19006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18046' AND p2.categoria='monumentos') WHERE codigo_ine='19007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18098' AND p2.categoria='monumentos') WHERE codigo_ine='19012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18116' AND p2.categoria='monumentos') WHERE codigo_ine='19013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18122' AND p2.categoria='monumentos') WHERE codigo_ine='19014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18134' AND p2.categoria='monumentos') WHERE codigo_ine='19016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18135' AND p2.categoria='monumentos') WHERE codigo_ine='19017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18140' AND p2.categoria='monumentos') WHERE codigo_ine='19018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18146' AND p2.categoria='monumentos') WHERE codigo_ine='19020' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18163' AND p2.categoria='monumentos') WHERE codigo_ine='19023' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18173' AND p2.categoria='monumentos') WHERE codigo_ine='19024' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18175' AND p2.categoria='monumentos') WHERE codigo_ine='19025' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18180' AND p2.categoria='monumentos') WHERE codigo_ine='19026' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18182' AND p2.categoria='monumentos') WHERE codigo_ine='19027' AND categoria='monumentos';

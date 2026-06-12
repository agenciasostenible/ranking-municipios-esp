-- Monumentos Almeria
-- Todos los codigos en 04xxx. Duplicados MIN -> MAX dentro de 04xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Almería');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Almería');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Almería');

-- 4. Scores individuales

-- Almeria (04004): Alcazaba + Catedral-fortaleza
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='04004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04004','castillo','Alcazaba de Almeria','Segunda fortaleza musulmana mas grande de Espana tras la Alhambra. Levantada en el s.X por Abd al-Rahman III. BIC.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04004','catedral','Catedral de Almeria','Catedral-fortaleza del s.XVI con aspecto de castillo, construida para resistir los ataques de piratas berberiscos. BIC.','BIC',date('now'));

-- Velez-Blanco (04098): Castillo Fajardo + Cueva de los Letreros (UNESCO)
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='04098' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04098','castillo','Castillo de Velez-Blanco','Fortaleza-palacio renacentista del s.XVI de los Fajardo. Su patio de marmol fue desmontado y hoy se exhibe en el Metropolitan de Nueva York. BIC.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04098','yacimiento','Cueva de los Letreros','Arte rupestre Patrimonio Mundial UNESCO. Aqui se halla el Indalo, simbolo de Almeria, pintado hace miles de anos.','UNESCO',date('now'));

-- Mojacar (04016): pueblo blanco iconico
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='04016' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04016','conjunto_historico','Casco de Mojacar Pueblo','Pueblo blanco encaramado a un cerro sobre el Mediterraneo, de trazado morisco. Uno de los pueblos mas bonitos de Espana. La Fuente Mora y la iglesia-fortaleza. ','excel_curado',date('now'));

-- Tabernas (04088): Castillo + desierto del cine
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='04088' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04088','castillo','Castillo de Tabernas','Fortaleza nazari donde se aposentaron los Reyes Catolicos antes de tomar Almeria. BIC. En el unico desierto de Europa, escenario de los spaghetti westerns.','BIC',date('now'));

-- Velez-Rubio (04099): Iglesia de la Encarnacion
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='04099' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04099','iglesia','Iglesia de Nuestra Señora de la Encarnacion','El mayor templo de la provincia de Almeria, joya del barroco del s.XVIII levantada por los marqueses de Villafranca. BIC.','BIC',date('now'));

-- Sorbas (04026): pueblo colgado + karst en yesos
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='04026' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04026','conjunto_historico','Casco colgado de Sorbas','Casas colgadas al borde de una carcava sobre el rio Aguas, estampa conocida como la pequeña Cuenca. Junto al Karst en Yesos.','excel_curado',date('now'));

-- Cuevas del Almanzora (04035): Castillo del Marques de los Velez
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='04035' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04035','castillo','Castillo del Marques de los Velez','Fortaleza-palacio del s.XVI con la torre del Homenaje. BIC. Alberga museos y la coleccion de arte de la villa.','BIC',date('now'));

-- Nijar (04017): casco, ceramica, Cabo de Gata
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='04017' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04017','conjunto_historico','Casco de Nijar','Pueblo de tradicion alfarera y de jarapas, con iglesia mudejar del s.XVI. Puerta del Parque Natural de Cabo de Gata-Nijar.','excel_curado',date('now'));

-- Laujar de Andarax (04014): capital de la Alpujarra almeriense
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='04014' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04014','conjunto_historico','Casco de Laujar de Andarax','Capital de la Alpujarra almeriense y ultima corte de Boabdil, ultimo rey nazari. Iglesia de la Encarnacion y fuentes barrocas.','excel_curado',date('now'));

-- Purchena (04022): Alcazaba
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='04022' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04022','castillo','Alcazaba de Purchena','Fortaleza arabe sobre el rio Almanzora. BIC. Famosa por los Juegos Moriscos celebrados en 1569.','BIC',date('now'));

-- Fiñana (04009): rauda (antigua mezquita) + castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='04009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04009','monumento','La Rauda de Fiñana','Antigua mezquita almohade del s.XII con mihrab conservado, caso raro en Andalucia oriental. Junto al castillo. BIC.','BIC',date('now'));

-- Adra (04002): restos fenicios y punicos
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='04002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04002','yacimiento','Cerro de Montecristo (Abdera)','Antigua ciudad fenicia y romana, una de las mas antiguas de la costa almeriense. Restos de factorias de salazon.','excel_curado',date('now'));

-- Vera (04029): iglesia-fortaleza
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='04029' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04029','iglesia','Iglesia de la Encarnacion de Vera','Iglesia-fortaleza del s.XVI con cuatro torres, construida para defenderse de los ataques berberiscos. BIC.','BIC',date('now'));

-- Seron (04025): castillo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='04025' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04025','castillo','Castillo de Seron','Fortaleza nazari sobre el pueblo, en las faldas de la Sierra de los Filabres. BIC.','BIC',date('now'));

-- Roquetas de Mar (04023): Castillo de Santa Ana + faro
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='04023' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('04023','castillo','Castillo de Santa Ana','Fortaleza costera del s.XVII frente a los piratas, junto al faro y el casco viejo marinero de Roquetas. ','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04006' AND p2.categoria='monumentos') WHERE codigo_ine='04032' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04008' AND p2.categoria='monumentos') WHERE codigo_ine='04902' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04009' AND p2.categoria='monumentos') WHERE codigo_ine='04045' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04010' AND p2.categoria='monumentos') WHERE codigo_ine='04046' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04011' AND p2.categoria='monumentos') WHERE codigo_ine='04049' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04012' AND p2.categoria='monumentos') WHERE codigo_ine='04050' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04013' AND p2.categoria='monumentos') WHERE codigo_ine='04053' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04014' AND p2.categoria='monumentos') WHERE codigo_ine='04057' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04015' AND p2.categoria='monumentos') WHERE codigo_ine='04062' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04016' AND p2.categoria='monumentos') WHERE codigo_ine='04064' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04017' AND p2.categoria='monumentos') WHERE codigo_ine='04066' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04018' AND p2.categoria='monumentos') WHERE codigo_ine='04067' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04019' AND p2.categoria='monumentos') WHERE codigo_ine='04069' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04020' AND p2.categoria='monumentos') WHERE codigo_ine='04073' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04021' AND p2.categoria='monumentos') WHERE codigo_ine='04075' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04022' AND p2.categoria='monumentos') WHERE codigo_ine='04076' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04023' AND p2.categoria='monumentos') WHERE codigo_ine='04079' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04025' AND p2.categoria='monumentos') WHERE codigo_ine='04083' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04026' AND p2.categoria='monumentos') WHERE codigo_ine='04086' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04027' AND p2.categoria='monumentos') WHERE codigo_ine='04090' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04028' AND p2.categoria='monumentos') WHERE codigo_ine='04093' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04029' AND p2.categoria='monumentos') WHERE codigo_ine='04100' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='04030' AND p2.categoria='monumentos') WHERE codigo_ine='04102' AND categoria='monumentos';

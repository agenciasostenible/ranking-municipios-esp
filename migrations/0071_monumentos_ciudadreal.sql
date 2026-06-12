-- Monumentos Ciudad Real
-- Duplicados MIN -> MAX dentro de 13xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ciudad Real');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ciudad Real');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ciudad Real');

-- 4. Scores individuales

-- Almagro (13002): Plaza Mayor + Corral de Comedias
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='13002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13002','monumento','Corral de Comedias de Almagro','Unico teatro del Siglo de Oro conservado integro en el mundo, del s.XVII. BIC. Sede del Festival Internacional de Teatro Clasico.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13002','conjunto_historico','Plaza Mayor de Almagro','Plaza porticada con galerias acristaladas verdes de influencia flamenca, unica en Espana. BIC. Capital historica del Campo de Calatrava.','BIC',date('now'));

-- Villanueva de los Infantes (13019): conjunto renacentista
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='13019' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13019','conjunto_historico','Conjunto Historico de Villanueva de los Infantes','Una de las villas renacentistas mejor conservadas de Espana, donde murio Quevedo. Plaza Mayor porticada e iglesia de San Andres. BIC.','BIC',date('now'));

-- Campo de Criptana (13028): molinos de viento del Quijote
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='13028' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13028','monumento','Molinos de Viento de Campo de Criptana','Los molinos manchegos mas iconicos, identificados con los gigantes del Quijote. BIC. Algunos conservan la maquinaria original del s.XVI.','BIC',date('now'));

-- Calzada de Calatrava (13027): Calatrava la Nueva / Salvatierra
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='13027' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13027','castillo','Sacro Convento-Castillo de Calatrava la Nueva','Imponente fortaleza-monasterio del s.XIII, sede de la Orden de Calatrava, sobre un cerro del Campo de Calatrava. BIC. Frente al castillo de Salvatierra.','BIC',date('now'));

-- Viso del Marques (13020): Palacio del Marques de Santa Cruz
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='13020' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13020','palacio','Palacio del Marques de Santa Cruz','Palacio renacentista del s.XVI con frescos italianos, unico en plena Mancha. BIC. Hoy Archivo General de la Marina.','BIC',date('now'));

-- Ciudad Real (13004): Puerta de Toledo + catedral
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='13004' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13004','monumento','Puerta de Toledo','Unica puerta conservada de las murallas medievales fundadas por Alfonso X, del s.XIV. BIC. Junto a la catedral de Santa Maria del Prado.','BIC',date('now'));

-- Alcazar de San Juan (13001): molinos + torreon
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='13001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13001','monumento','Molinos y Torreon del Gran Prior','Cerro de molinos de viento junto al torreon medieval de la Orden de San Juan. Yacimiento romano con mosaicos en el subsuelo.','excel_curado',date('now'));

-- Argamasilla de Alba (13003): Cueva de Medrano + castillo de Peñarroya
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='13003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13003','monumento','Cueva de Medrano','Lugar donde, segun la tradicion, Cervantes estuvo preso y concibio el Quijote. Cerca, el castillo de Peñarroya sobre las Lagunas de Ruidera.','excel_curado',date('now'));

-- Terrinches (13081): Castillo + villa romana de Jamila
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='13081' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13081','castillo','Castillo de Terrinches y villa de la Contenta','Fortaleza calatrava del s.XIII junto a la villa romana y visigoda de la Ontavia. BIC.','BIC',date('now'));

-- Daimiel (13005): Motilla del Azuer
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='13005' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13005','yacimiento','Motilla del Azuer','Fortificacion prehistorica de la Edad del Bronce (2200 a.C.) con el pozo mas antiguo de la Peninsula. BIC. Junto a las Tablas de Daimiel.','BIC',date('now'));

-- Carrion de Calatrava (13031): Calatrava la Vieja
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='13031' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13031','yacimiento','Calatrava la Vieja','Ciudad medieval islamica y primera sede de la Orden de Calatrava, sobre el Guadiana. BIC. Gran yacimiento con alcazaba y murallas.','BIC',date('now'));

-- Manzanares (13009): Castillo de Pilas Bonas
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='13009' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13009','castillo','Castillo de Pilas Bonas','Fortaleza calatrava del s.XIII reconvertida en hotel monumento. Junto a la iglesia de la Asuncion.','excel_curado',date('now'));

-- Bolaños de Calatrava (13023): castillo de Doña Berenguela
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='13023' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13023','castillo','Castillo de Doña Berenguela','Una de las fortalezas medievales mas grandes del Campo de Calatrava, del s.XIII. BIC.','BIC',date('now'));

-- Valdepeñas (13018): vino y patrimonio
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='13018' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13018','conjunto_historico','Casco de Valdepeñas','Capital del vino manchego con la Plaza de España, la iglesia de la Asuncion y el Molino de Gregorio Prieto. ','excel_curado',date('now'));

-- Granatula de Calatrava (13045): Oretum
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='13045' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13045','yacimiento','Oretum','Antigua capital de la Oretania ibero-romana. Cuna del general Espartero. Cerro volcanico de notable interes arqueologico.','excel_curado',date('now'));

-- Fuencaliente (13042): pinturas rupestres
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='13042' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13042','yacimiento','Pinturas rupestres de Peña Escrita','Conjunto de arte rupestre esquematico en Sierra Morena, de los mas notables de la Meseta. BIC.','BIC',date('now'));

-- Malagon (13008): castillo y conjunto
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='13008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('13008','castillo','Castillo de Malagon','Restos de la fortaleza medieval sobre el cerro. Convento fundado por Santa Teresa de Jesus en 1568.','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13004' AND p2.categoria='monumentos') WHERE codigo_ine='13034' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13005' AND p2.categoria='monumentos') WHERE codigo_ine='13039' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13007' AND p2.categoria='monumentos') WHERE codigo_ine='13079' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13008' AND p2.categoria='monumentos') WHERE codigo_ine='13052' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13009' AND p2.categoria='monumentos') WHERE codigo_ine='13053' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13010' AND p2.categoria='monumentos') WHERE codigo_ine='13054' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13011' AND p2.categoria='monumentos') WHERE codigo_ine='13056' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13012' AND p2.categoria='monumentos') WHERE codigo_ine='13058' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13013' AND p2.categoria='monumentos') WHERE codigo_ine='13071' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13014' AND p2.categoria='monumentos') WHERE codigo_ine='13902' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13015' AND p2.categoria='monumentos') WHERE codigo_ine='13077' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13016' AND p2.categoria='monumentos') WHERE codigo_ine='13078' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13017' AND p2.categoria='monumentos') WHERE codigo_ine='13082' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13018' AND p2.categoria='monumentos') WHERE codigo_ine='13087' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13019' AND p2.categoria='monumentos') WHERE codigo_ine='13093' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='13020' AND p2.categoria='monumentos') WHERE codigo_ine='13098' AND categoria='monumentos';

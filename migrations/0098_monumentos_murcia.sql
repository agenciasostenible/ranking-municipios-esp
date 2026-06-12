-- Monumentos Murcia
-- Duplicados MIN 30xxx -> MAX 31xxx. Aledo 30006, Alhama 30008 singles.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Murcia');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Murcia');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Murcia');

-- 4. Scores individuales

-- Cartagena (30016): Teatro Romano + Cartago Nova
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='30016' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30016','yacimiento','Teatro Romano de Cartagena','Teatro romano del s.I a.C. redescubierto en 1988, uno de los mas espectaculares de Espana. BIC. Junto al patrimonio punico, romano y modernista de la antigua Cartago Nova.','BIC',date('now'));

-- Caravaca de la Cruz (30015): Santuario de la Vera Cruz
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='30015' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30015','castillo','Basilica-Santuario de la Vera Cruz','Conjunto fortificado que custodia la Vera Cruz. BIC. Una de las cinco Ciudades Santas del mundo con jubileo perpetuo cada Año Santo.','BIC',date('now'));

-- Lorca (30024): castillo + ciudad barroca
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='30024' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30024','castillo','Castillo de Lorca (Fortaleza del Sol)','Gran fortaleza medieval con la Torre del Espolon y la Torre Alfonsina. BIC. Preside la Ciudad del Barroco, con palacios e iglesias monumentales.','BIC',date('now'));

-- Murcia (30030): Catedral + Real Casino
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='30030' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30030','catedral','Catedral de Murcia','Catedral con una de las mejores fachadas barrocas de Europa y una torre de 98 metros. BIC. Junto al Real Casino modernista.','BIC',date('now'));

-- Cehegin (30017): conjunto historico
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='30017' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30017','conjunto_historico','Conjunto Historico de Cehegin','Casco noble sobre un cerro con palacios blasonados barrocos e iglesia de la Magdalena, mirador del valle del Quipar. BIC.','BIC',date('now'));

-- Mula (30029): castillo de los Velez
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='30029' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30029','castillo','Castillo de los Velez','Fortaleza renacentista del s.XVI sobre el casco antiguo de Mula. BIC. Cerca, el santuario y el yacimiento de la Cueva de la Plata.','BIC',date('now'));

-- Moratalla (30028): castillo + conjunto
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='30028' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30028','castillo','Castillo de Moratalla','Torre del homenaje de la Orden de Santiago, del s.XV, sobre el laberinto de calles empinadas del casco. BIC. Junto a abrigos de arte rupestre UNESCO.','BIC',date('now'));

-- Jumilla (30022): castillo + vino
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='30022' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30022','castillo','Castillo de Jumilla','Fortaleza del s.XV del Marquesado de Villena sobre el cerro del Castillo. BIC. Capital vinicola con bodegas centenarias.','BIC',date('now'));

-- Aledo (30006): torre del homenaje
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='30006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30006','torre','Torre de la Calahorra de Aledo','Esbelta torre del homenaje medieval sobre un risco, atalaya de Sierra Espuña. BIC.','BIC',date('now'));

-- Cieza (30019): Medina Siyasa
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='30019' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30019','yacimiento','Yacimiento de Medina Siyasa','Ciudad andalusi del s.XI-XIII con casas de arquerias de yeso de gran refinamiento, reconstruidas en su museo. BIC.','BIC',date('now'));

-- Calasparra (30013): santuario rupestre
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='30013' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30013','ermita','Santuario de la Virgen de la Esperanza','Santuario excavado en la roca a orillas del rio Segura, en un canon espectacular. Junto a los abrigos rupestres del Pozo (UNESCO).','excel_curado',date('now'));

-- Yecla (30043): Cerro del Castillo
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='30043' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30043','conjunto_historico','Cerro del Castillo de Yecla','Conjunto con el castillo medieval y la Iglesia Vieja, sobre la ciudad. Junto al santuario iberico del Cerro de los Santos. ','excel_curado',date('now'));

-- Alhama de Murcia (30008): castillo + termas
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='30008' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30008','castillo','Castillo de Alhama','Fortaleza medieval sobre el casco, junto a los baños termales de origen romano que dan nombre a la villa. BIC.','BIC',date('now'));

-- Aguilas (30003): Castillo de San Juan
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='30003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('30003','castillo','Castillo de San Juan de las Aguilas','Fortaleza del s.XVIII sobre un cerro entre las dos bahias, simbolo de la villa costera. BIC.','BIC',date('now'));

-- 5. Sync duplicados puntuacion (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30002' AND p2.categoria='monumentos') WHERE codigo_ine='31001' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30009' AND p2.categoria='monumentos') WHERE codigo_ine='31002' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30013' AND p2.categoria='monumentos') WHERE codigo_ine='31003' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30015' AND p2.categoria='monumentos') WHERE codigo_ine='31004' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30016' AND p2.categoria='monumentos') WHERE codigo_ine='31005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30017' AND p2.categoria='monumentos') WHERE codigo_ine='31006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30019' AND p2.categoria='monumentos') WHERE codigo_ine='31007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30020' AND p2.categoria='monumentos') WHERE codigo_ine='31008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30022' AND p2.categoria='monumentos') WHERE codigo_ine='31009' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30041' AND p2.categoria='monumentos') WHERE codigo_ine='31010' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30024' AND p2.categoria='monumentos') WHERE codigo_ine='31011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30026' AND p2.categoria='monumentos') WHERE codigo_ine='31012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30028' AND p2.categoria='monumentos') WHERE codigo_ine='31013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30029' AND p2.categoria='monumentos') WHERE codigo_ine='31014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30030' AND p2.categoria='monumentos') WHERE codigo_ine='31015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30035' AND p2.categoria='monumentos') WHERE codigo_ine='31016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30037' AND p2.categoria='monumentos') WHERE codigo_ine='31017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30043' AND p2.categoria='monumentos') WHERE codigo_ine='31018' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='30003' AND p2.categoria='monumentos') WHERE codigo_ine='31019' AND categoria='monumentos';

-- 6. Sync entidades monumentos entre ambos codigos del par (Murcia)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE ma.provincia='Murcia'
  AND e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

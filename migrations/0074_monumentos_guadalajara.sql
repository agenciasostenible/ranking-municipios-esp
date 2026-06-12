-- Monumentos Guadalajara
-- Duplicados MIN 19xxx -> MAX 20xxx. Resto canonicos en 19xxx.

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Guadalajara');

-- 2. Limpiar entidades basura wikidata/OSM
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita','fortaleza','torre','conjunto_historico')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Guadalajara');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Guadalajara');

-- 4. Scores individuales

-- Sigüenza (19257): Catedral-fortaleza + castillo + conjunto
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='19257' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19257','catedral','Catedral de Sigüenza','Catedral-fortaleza del s.XII-XVI que combina romanico y gotico. BIC. Alberga la celebre escultura del Doncel.','BIC',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19257','castillo','Castillo de Sigüenza','Alcazaba arabe reconvertida en palacio de los obispos, hoy Parador. BIC. Corona el conjunto medieval de la ciudad.','BIC',date('now'));

-- Pastrana (19212): Palacio ducal + colegiata + tapices
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='19212' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19212','palacio','Palacio Ducal de Pastrana','Palacio renacentista donde vivio recluida la princesa de Eboli. BIC. La colegiata custodia los celebres tapices goticos de Alfonso V.','BIC',date('now'));

-- Molina de Aragon (19190): gran castillo + conjunto
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='19190' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19190','castillo','Castillo de Molina de Aragon','Uno de los mayores recintos fortificados de Espana, del s.X-XII, con la torre de Aragon. BIC. Domina la villa medieval.','BIC',date('now'));

-- Atienza (19044): villa medieval + castillo
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='19044' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19044','conjunto_historico','Villa medieval de Atienza','Conjunto con castillo roquero, plazas porticadas e iglesias romanicas. BIC. Escenario del Cantar de Mio Cid y de la Caballada.','BIC',date('now'));

-- Brihuega (19053): murallas + Real Fabrica de Paños
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='19053' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19053','conjunto_historico','Conjunto Historico de Brihuega','Villa amurallada con el castillo de la Piedra Bermeja y la Real Fabrica de Paños circular del s.XVIII. BIC. Famosa por sus campos de lavanda.','BIC',date('now'));

-- Jadraque (19156): Castillo del Cid
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='19156' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19156','castillo','Castillo del Cid','Fortaleza medieval sobre un cerro de perfil perfecto, una de las siluetas castellanas mas fotografiadas. BIC.','BIC',date('now'));

-- Guadalajara (19130): Palacio del Infantado
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='19130' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19130','palacio','Palacio del Infantado','Joya del gotico-mudejar civil del s.XV, con su fachada de puntas de diamante y patio de los Leones. BIC. Obra maestra de los Mendoza.','BIC',date('now'));

-- Cogolludo (19092): Palacio de Medinaceli
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='19092' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19092','palacio','Palacio de los Duques de Medinaceli','Considerado el primer palacio renacentista de Espana, del s.XV. BIC. Preside la plaza Mayor porticada de Cogolludo.','BIC',date('now'));

-- Zorita de los Canes (19335): Castillo + Recopolis
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='19335' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19335','yacimiento','Recopolis','Una de las pocas ciudades fundadas de nuevo en la Europa de la Alta Edad Media, creada por el rey visigodo Leovigildo en el s.VI. BIC. Junto al castillo de Zorita.','BIC',date('now'));

-- Hita (19138): villa medieval del Arcipreste
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19138' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19138','conjunto_historico','Villa medieval de Hita','Recinto amurallado con la puerta de Santa Maria, cuna literaria del Arcipreste de Hita. BIC.','BIC',date('now'));

-- Torija (19274): castillo (museo Cela)
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='19274' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19274','castillo','Castillo de Torija','Fortaleza del s.XV restaurada, alberga el Museo del Viaje a la Alcarria de Camilo Jose Cela. BIC.','BIC',date('now'));

-- Cifuentes (19086): castillo e iglesia
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='19086' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19086','castillo','Castillo de Cifuentes','Fortaleza del s.XIV de don Juan Manuel, junto a la iglesia del Salvador con su portada gotica. BIC.','BIC',date('now'));

-- Trillo (19291): balneario y conjunto
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='19291' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19291','monumento','Balneario de Trillo','Balneario decimononico en la confluencia del Tajo y el Cifuentes, junto a la cascada del Molino. ','excel_curado',date('now'));

-- Tendilla (19266): villa de la feria historica
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='19266' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19266','conjunto_historico','Casco de Tendilla','Villa de larga calle porticada, sede de una de las ferias mas antiguas de Castilla, concedida en el s.XV. ','excel_curado',date('now'));

-- 5. Sync duplicados (MIN -> MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19044' AND p2.categoria='monumentos') WHERE codigo_ine='20001' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19046' AND p2.categoria='monumentos') WHERE codigo_ine='20002' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19053' AND p2.categoria='monumentos') WHERE codigo_ine='20003' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19054' AND p2.categoria='monumentos') WHERE codigo_ine='20004' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19058' AND p2.categoria='monumentos') WHERE codigo_ine='20005' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19086' AND p2.categoria='monumentos') WHERE codigo_ine='20006' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19130' AND p2.categoria='monumentos') WHERE codigo_ine='20007' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19138' AND p2.categoria='monumentos') WHERE codigo_ine='20008' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19143' AND p2.categoria='monumentos') WHERE codigo_ine='20009' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19190' AND p2.categoria='monumentos') WHERE codigo_ine='20011' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19192' AND p2.categoria='monumentos') WHERE codigo_ine='20012' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19212' AND p2.categoria='monumentos') WHERE codigo_ine='20013' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19245' AND p2.categoria='monumentos') WHERE codigo_ine='20014' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19257' AND p2.categoria='monumentos') WHERE codigo_ine='20015' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19274' AND p2.categoria='monumentos') WHERE codigo_ine='20016' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19291' AND p2.categoria='monumentos') WHERE codigo_ine='20017' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='19331' AND p2.categoria='monumentos') WHERE codigo_ine='20018' AND categoria='monumentos';

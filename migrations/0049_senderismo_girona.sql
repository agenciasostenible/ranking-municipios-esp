-- 0049: Senderismo Girona curado — Ripollès/Núria, Zona Volcànica, Cap de Creus, Cerdanya, Costa Brava
-- Generado: 2026-06-09
-- Canónicos: 17xxx (MIN) respecto a 18xxx (MAX); 6 pares
-- Standalones 18xxx: Begur, Besalú, Camprodon, Girona, L'Escala, Llívia, Peratallada, Puigcerdà, Roses, Setcases, Tossa de Mar

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '17026' AND '17903') OR
  (codigo_ine BETWEEN '18001' AND '18017')
);

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '17026' AND '17903') OR
  (codigo_ine BETWEEN '18001' AND '18017')
);

-- 3a. Bulk bajo por defecto
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '17026' AND '17903') OR
  (codigo_ine BETWEEN '18001' AND '18017')
);

-- ============================================================
-- RIPOLLÈS — PIRINEO / VALL DE NÚRIA
-- ============================================================

-- Queralbs 17043 (MIN dup): Valle de Núria, Cremallera, GR-11 = 95
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='17043' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17043','sendero','Valle de Núria — Santuari','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17043','sendero','GR-11 Pirineos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17043','sendero','Coma de Vaca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17043','sendero','Puig de la Font Llebreta','excel_curado',date('now'));

-- Ribes de Freser: acceso cremallera Núria, GR-11 = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='17145' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17145','sendero','Ribes de Freser — Cremallera de Núria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17145','sendero','GR-11 Pirineos','excel_curado',date('now'));

-- Setcasas 17192 (MIN dup): Ulldeter, GR-11 = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='17192' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17192','sendero','Ulldeter — Pirineos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17192','sendero','GR-11 Pirineos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17192','sendero','Coll de la Marrana','excel_curado',date('now'));

-- Setcases 18015 (standalone, mismo municipio): 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='18015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('18015','sendero','Ulldeter — Pirineos','excel_curado',date('now'));

-- Camprodón 17039: Pirineo, GR-11, valle = 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='17039' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17039','sendero','Vall de Camprodon','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17039','sendero','GR-11 Pirineos','excel_curado',date('now'));

-- Camprodon 18004 (standalone): 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='18004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('18004','sendero','Vall de Camprodon','excel_curado',date('now'));

-- Molló: Pirineo, Coll d''Ares = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='17107' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17107','sendero','Pirineo — Coll d''Ares','excel_curado',date('now'));

-- Vilallonga de Ter: Pirineo = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='17224' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17224','sendero','Vall de Camprodon — Pirineos','excel_curado',date('now'));

-- Planolas: Pirineo = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='17134' AND categoria='senderismo';

-- Gombreny: Pirineo = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='17080' AND categoria='senderismo';

-- Sant Joan de les Abadesses 17167: Ripollès = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='17167' AND categoria='senderismo';

-- Ripoll 17147: capital Ripollès = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='17147' AND categoria='senderismo';

-- Ogassa: Ripollès = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='17112' AND categoria='senderismo';

-- Campdevánol: Ripollès = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='17036' AND categoria='senderismo';

-- ============================================================
-- CERDANYA
-- ============================================================

-- Puigcerdà 17141: Cerdanya = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='17141' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17141','sendero','Cerdanya — Pirineos','excel_curado',date('now'));

-- Puigcerdà 18012 (standalone): 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='18012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('18012','sendero','Cerdanya — Pirineos','excel_curado',date('now'));

-- Das: Cerdanya = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='17061' AND categoria='senderismo';

-- Fontanals de Cerdaña: Cerdanya = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='17069' AND categoria='senderismo';

-- Llívia 17094 (MIN dup): Cerdanya, enclave = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='17094' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17094','sendero','Llívia — enclave Cerdanya','excel_curado',date('now'));

-- Llívia 18008 (standalone): 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='18008' AND categoria='senderismo';

-- Maranges: Cerdanya alta = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='17099' AND categoria='senderismo';

-- Guils de Cerdaña: Cerdanya = 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='17082' AND categoria='senderismo';

-- Urús: Cerdanya = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='17206' AND categoria='senderismo';

-- Ger: Cerdanya = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='17078' AND categoria='senderismo';

-- Isóbol: Cerdanya = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='17084' AND categoria='senderismo';

-- ============================================================
-- CAP DE CREUS / COSTA BRAVA NORD
-- ============================================================

-- Cadaqués 17032 (MIN dup): Cap de Creus, PN = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='17032' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17032','sendero','Cap de Creus — Parque Natural','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17032','sendero','Camí de Ronda Costa Brava','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17032','sendero','GR-92 Cap de Creus','excel_curado',date('now'));

-- El Puerto de la Selva: Cap de Creus = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='17140' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17140','sendero','Cap de Creus','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17140','sendero','Camí de Ronda','excel_curado',date('now'));

-- La Selva de Mar: Cap de Creus = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='17188' AND categoria='senderismo';

-- Colera: Cap de Creus = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='17054' AND categoria='senderismo';

-- Llansà: Camino de Ronda = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='17092' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17092','sendero','Camí de Ronda Costa Brava','excel_curado',date('now'));

-- Portbou: Costa Brava nord = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='17138' AND categoria='senderismo';

-- Rosas 17152: Costa Brava = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='17152' AND categoria='senderismo';

-- Roses 18014 (standalone): 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='18014' AND categoria='senderismo';

-- Roses area: 17128 Pau: 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='17128' AND categoria='senderismo';

-- Begur 18001 (standalone): Camí de Ronda = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='18001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('18001','sendero','Camí de Ronda — Begur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('18001','sendero','Parc Natural del Cap de Creus — zona','excel_curado',date('now'));

-- Pals 17124 (MIN dup): Costa Brava = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='17124' AND categoria='senderismo';

-- Torroella de Montgrí 17199 (MIN dup): Massís del Montgrí = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='17199' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17199','sendero','Massís del Montgrí — PN','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17199','sendero','Camí de Ronda','excel_curado',date('now'));

-- Palamós 17118 (MIN dup): Costa Brava = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='17118' AND categoria='senderismo';

-- Lloret de Mar 17095 (MIN dup): Costa Brava, Camino de Ronda = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='17095' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17095','sendero','Camí de Ronda Costa Brava','excel_curado',date('now'));

-- Palafrugell: Costa Brava = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='17117' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17117','sendero','Camí de Ronda Costa Brava','excel_curado',date('now'));

-- Tossa de Mar 17202 / 18017: Camino de Ronda = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='17202' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17202','sendero','Camí de Ronda Costa Brava','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='18017' AND categoria='senderismo';

-- L'Escala 18006 (standalone): Costa Brava, Empúries = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='18006' AND categoria='senderismo';

-- Calonge: Costa Brava = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='17034' AND categoria='senderismo';

-- San Feliu de Guíxols: Costa Brava = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='17160' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17160','sendero','Camí de Ronda Costa Brava','excel_curado',date('now'));

-- ============================================================
-- ZONA VOLCÀNICA / GARROTXA
-- ============================================================

-- Santa Pau 17184: Zona Volcànica, Fageda d''en Jordà = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='17184' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17184','sendero','Fageda d''en Jordà','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17184','sendero','Volcà del Croscat','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17184','sendero','Parque Natural Zona Volcànica Garrotxa','excel_curado',date('now'));

-- Olot 17114: Zona Volcànica, PN = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='17114' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17114','sendero','Parque Natural Zona Volcànica Garrotxa','excel_curado',date('now'));

-- Montagut y Oix: Garrotxa = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='17109' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17109','sendero','Garrotxa — Oix','excel_curado',date('now'));

-- Sant Joan les Fonts 17185: Garrotxa = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='17185' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17185','sendero','Garrotxa — Sant Joan les Fonts','excel_curado',date('now'));

-- Castellfullit de la Roca 17046: Zona Volcànica = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='17046' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17046','sendero','Parque Natural Zona Volcànica Garrotxa','excel_curado',date('now'));

-- Les Planes d'Hostoles: Garrotxa = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='17133' AND categoria='senderismo';

-- Vall de Bas: Garrotxa = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='17207' AND categoria='senderismo';

-- Besalú 18002 (standalone): histórico = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='18002' AND categoria='senderismo';

-- Peratallada 18011 (standalone): pueblo medieval = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='18011' AND categoria='senderismo';

-- ============================================================
-- GUILLERIES / LA SELVA
-- ============================================================

-- Susqueda: Guilleries, embalse = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='17194' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17194','sendero','Guilleries — Susqueda','excel_curado',date('now'));

-- Osor: Guilleries = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='17116' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17116','sendero','Guilleries','excel_curado',date('now'));

-- San Hilario Sacalm: Guilleries = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='17164' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('17164','sendero','Guilleries','excel_curado',date('now'));

-- Hostalric: La Selva = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='17083' AND categoria='senderismo';

-- Massanet de Cabrenys: Empordà = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='17102' AND categoria='senderismo';

-- ============================================================
-- GIRONA CAPITAL Y BAJOS
-- ============================================================

-- Girona 17079: capital = 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='17079' AND categoria='senderismo';

-- Girona 18005 (standalone): 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='18005' AND categoria='senderismo';

-- Figueras 17066: ciudad = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='17066' AND categoria='senderismo';

-- Blanes-area: 17027 Breda: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='17027' AND categoria='senderismo';

-- Llagostera: 17089: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='17089' AND categoria='senderismo';

-- ============================================================
-- SYNC: MIN (17xxx) → MAX (18xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='17032' AND categoria='senderismo') WHERE codigo_ine='18003' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='17095' AND categoria='senderismo') WHERE codigo_ine='18007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='17118' AND categoria='senderismo') WHERE codigo_ine='18009' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='17124' AND categoria='senderismo') WHERE codigo_ine='18010' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='17043' AND categoria='senderismo') WHERE codigo_ine='18013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='17199' AND categoria='senderismo') WHERE codigo_ine='18016' AND categoria='senderismo';

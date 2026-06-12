-- 0040: Senderismo Soria curado — Laguna Negra, Pinares, Río Lobos
-- Generado: 2026-06-09

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '41001' AND '41011') OR
  (codigo_ine BETWEEN '42017' AND '42219') OR
  codigo_ine='42701'
);

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '41001' AND '41011') OR
  (codigo_ine BETWEEN '42017' AND '42219') OR
  codigo_ine='42701'
);

-- ============================================================
-- PINARES / LAGUNA NEGRA — TOP Soria
-- ============================================================

-- Vinuesa: Laguna Negra, icónico NatGeo, top España = 94
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='41010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41010','sendero','Laguna Negra de Vinuesa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41010','sendero','Parque Natural Laguna Negra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41010','sendero','GR-82 Pinares','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41010','sendero','Picos de Urbión','excel_curado',date('now'));

-- Duruelo de la Sierra: Laguna Negra inicio, Pinares = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='42078' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42078','sendero','Acceso Laguna Negra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42078','sendero','Parque Natural Laguna Negra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42078','sendero','Pinares de Soria','excel_curado',date('now'));

-- Covaleda: Pinares, Laguna Negra acceso = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='41003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41003','sendero','Pinares de Soria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41003','sendero','Laguna Negra — acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41003','sendero','GR-82','excel_curado',date('now'));

-- Laguna Negra (41005): área protegida = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='41005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41005','sendero','Laguna Negra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41005','sendero','Parque Natural Laguna Negra','excel_curado',date('now'));

-- Navaleno: Pinares = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='41006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41006','sendero','Pinares de Soria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41006','sendero','Sendero del pinar','excel_curado',date('now'));

-- Molinos de Duero: Pinares = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='42117' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42117','sendero','Pinares — Molinos de Duero','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42117','sendero','Río Duero nacimiento','excel_curado',date('now'));

-- Salduero: Pinares = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='42161' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42161','sendero','Pinares de Soria','excel_curado',date('now'));

-- El Royo: Pinares = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='42160' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42160','sendero','Pinares','excel_curado',date('now'));

-- Cabrejas del Pinar: Pinares = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='42045' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42045','sendero','Pinares de Soria','excel_curado',date('now'));

-- Sotillo del Rincón: Pinares = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='42174' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42174','sendero','Pinares','excel_curado',date('now'));

-- Talveila: Pinares = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='42178' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42178','sendero','Pinares de Soria','excel_curado',date('now'));

-- ============================================================
-- CAÑÓN DEL RÍO LOBOS
-- ============================================================

-- San Leonardo de Yagüe: Cañón del Río Lobos, Pinares = 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='42164' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42164','sendero','Parque Natural Cañón del Río Lobos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42164','sendero','Ermita de San Bartolomé','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42164','sendero','Pinares de Soria','excel_curado',date('now'));

-- El Burgo de Osma: Cañón del Río Lobos = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='41004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41004','sendero','Parque Natural Cañón del Río Lobos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41004','sendero','Cañón del Río Lobos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41004','sendero','Catedral de El Burgo de Osma','excel_curado',date('now'));

-- El Burgo de Osma-Ciudad de Osma: idem
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='42043' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42043','sendero','Parque Natural Cañón del Río Lobos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42043','sendero','Sendero del Río Lobos','excel_curado',date('now'));

-- Ucero: Cañón del Río Lobos = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='42189' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42189','sendero','Cañón del Río Lobos — Ucero','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42189','sendero','Parque Natural Cañón del Río Lobos','excel_curado',date('now'));

-- Nafría de Ucero: Río Lobos = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='42127' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42127','sendero','Cañón del Río Lobos','excel_curado',date('now'));

-- Casarejos: Río Lobos = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='42055' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42055','sendero','Cañón del Río Lobos','excel_curado',date('now'));

-- ============================================================
-- SIERRA / CAMEROS
-- ============================================================

-- Montenegro de Cameros: sierra = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='42121' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42121','sendero','Sierra de Cameros','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42121','sendero','Río Iregua','excel_curado',date('now'));

-- San Pedro Manrique: Paso del Fuego, sierra = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='42165' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42165','sendero','Sierra de San Pedro Manrique','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42165','sendero','Paso del Fuego','excel_curado',date('now'));

-- Yanguas: sierra = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='42218' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42218','sendero','Sierra de la Alcarama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42218','sendero','Sendero de sierra','excel_curado',date('now'));

-- Oncala: sierra = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='42135' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42135','sendero','Sierra de la Alcarama','excel_curado',date('now'));

-- Valdeavellano de Tera: sierra = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='42191' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42191','sendero','Sierra de Cameros','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42191','sendero','Río Tera alto','excel_curado',date('now'));

-- Villar del Ala: sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='42207' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42207','sendero','Sierra de Cameros','excel_curado',date('now'));

-- Cidones: sierra = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='42061' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42061','sendero','Sierra de Cidones','excel_curado',date('now'));

-- Muriel de la Fuente: sierra = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='42124' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42124','sendero','Sierra — Muriel','excel_curado',date('now'));

-- Muriel Viejo: sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='42125' AND categoria='senderismo';

-- Santa Cruz de Yanguas: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='42166' AND categoria='senderismo';

-- Vizmanos: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='42216' AND categoria='senderismo';

-- Trévago: sierra = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='42188' AND categoria='senderismo';

-- Vozmediano: sierra = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='42217' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42217','sendero','Moncayo soriano','excel_curado',date('now'));

-- ============================================================
-- CALATAÑAZOR / MEDINACELI / BERLANGA
-- ============================================================

-- Calatañazor: pueblo medieval, campo = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='42046' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42046','sendero','Castillo de Calatañazor','excel_curado',date('now'));

-- Medinaceli: histórico, campo = 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='42113' AND categoria='senderismo';

-- Berlanga de Duero: histórico = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='41002' AND categoria='senderismo';

-- San Esteban de Gormaz: campo = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='41008' AND categoria='senderismo';

-- Almazán: campo = 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='41001' AND categoria='senderismo';

-- Soria capital: campo, Machado = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='41009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41009','sendero','Río Duero — Soria','excel_curado',date('now'));

-- Ágreda: muralla medieval = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='41011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('41011','sendero','Moncayo acceso','excel_curado',date('now'));

-- Ólvega: campo = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='41007' AND categoria='senderismo';

-- Resto campo soriano
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42017' AND categoria='senderismo'; -- Almajano
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42018' AND categoria='senderismo'; -- Almaluez
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='42019' AND categoria='senderismo'; -- Almarza (sierra)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42019','sendero','Sierra de Cameros','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42021' AND categoria='senderismo'; -- Almazul
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42022' AND categoria='senderismo'; -- Almenar de Soria
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42023' AND categoria='senderismo'; -- Alpanseque
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42024' AND categoria='senderismo'; -- Arancón
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42025' AND categoria='senderismo'; -- Arcos de Jalón
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42026' AND categoria='senderismo'; -- Arenillas
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='42027' AND categoria='senderismo'; -- Arévalo de la Sierra (sierra)
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='42028' AND categoria='senderismo'; -- Ausejo de la Sierra
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42029' AND categoria='senderismo'; -- Baraona
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42030' AND categoria='senderismo'; -- Barca
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42031' AND categoria='senderismo'; -- Barcones
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42032' AND categoria='senderismo'; -- Bayubas de Abajo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42033' AND categoria='senderismo'; -- Bayubas de Arriba
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='42034' AND categoria='senderismo'; -- Beratón (Moncayo)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42034','sendero','Moncayo — Beratón','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42036' AND categoria='senderismo'; -- Blacos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42037' AND categoria='senderismo'; -- Bliecos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42038' AND categoria='senderismo'; -- Borjabad
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='42039' AND categoria='senderismo'; -- Borobia (Moncayo)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42039','sendero','Moncayo soriano','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42041' AND categoria='senderismo'; -- Buberos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42042' AND categoria='senderismo'; -- Buitrago
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='42044' AND categoria='senderismo'; -- Cabrejas del Campo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42048' AND categoria='senderismo'; -- Caltojar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42049' AND categoria='senderismo'; -- Candilichera
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42050' AND categoria='senderismo'; -- Cañamaque
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42051' AND categoria='senderismo'; -- Carabantes
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='42052' AND categoria='senderismo'; -- Caracena (castillo)
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42053' AND categoria='senderismo'; -- Carrascosa de Abajo
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='42054' AND categoria='senderismo'; -- Carrascosa de la Sierra
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('42054','sendero','Sierra de Cameros','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42056' AND categoria='senderismo'; -- Castilfrío de la Sierra
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42057' AND categoria='senderismo'; -- Castilruiz
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='42058' AND categoria='senderismo'; -- Castillejo de Robledo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42059' AND categoria='senderismo'; -- Centenera de Andaluz
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42060' AND categoria='senderismo'; -- Cerbón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42062' AND categoria='senderismo'; -- Cigudosa
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42063' AND categoria='senderismo'; -- Cihuela
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42064' AND categoria='senderismo'; -- Ciria
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42065' AND categoria='senderismo'; -- Cirujales del Río
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42068' AND categoria='senderismo'; -- Coscurita
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42070' AND categoria='senderismo'; -- Cubilla
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42071' AND categoria='senderismo'; -- Cubo de la Solana
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='42073' AND categoria='senderismo'; -- Cueva de Ágreda
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42075' AND categoria='senderismo'; -- Dévanos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42076' AND categoria='senderismo'; -- Deza
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42079' AND categoria='senderismo'; -- Escobosa de Almazán
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='42080' AND categoria='senderismo'; -- Espeja de San Marcelino
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42081' AND categoria='senderismo'; -- Espejón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42082' AND categoria='senderismo'; -- Estepa de San Juan
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42083' AND categoria='senderismo'; -- Frechilla de Almazán
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42084' AND categoria='senderismo'; -- Fresno de Caracena
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42085' AND categoria='senderismo'; -- Fuentearmegil
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42086' AND categoria='senderismo'; -- Fuentecambrón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42087' AND categoria='senderismo'; -- Fuentecantos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42088' AND categoria='senderismo'; -- Fuentelmonge
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42089' AND categoria='senderismo'; -- Fuentelsaz de Soria
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42090' AND categoria='senderismo'; -- Fuentepinilla
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42092' AND categoria='senderismo'; -- Fuentes de Magaña
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42093' AND categoria='senderismo'; -- Fuentestrún
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42094' AND categoria='senderismo'; -- Garray
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42095' AND categoria='senderismo'; -- Golmayo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42096' AND categoria='senderismo'; -- Gómara
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42097' AND categoria='senderismo'; -- Gormaz
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42098' AND categoria='senderismo'; -- Herrera de Soria
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42100' AND categoria='senderismo'; -- Hinojosa del Campo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42103' AND categoria='senderismo'; -- Langa de Duero
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42105' AND categoria='senderismo'; -- Liceras
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42106' AND categoria='senderismo'; -- La Losilla
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42107' AND categoria='senderismo'; -- Magaña
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42108' AND categoria='senderismo'; -- Maján
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42110' AND categoria='senderismo'; -- Matalebreras
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42111' AND categoria='senderismo'; -- Matamala de Almazán
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42115' AND categoria='senderismo'; -- Miño de Medinaceli
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42116' AND categoria='senderismo'; -- Miño de San Esteban
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42118' AND categoria='senderismo'; -- Momblona
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42119' AND categoria='senderismo'; -- Monteagudo de las Vicarías
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='42120' AND categoria='senderismo'; -- Montejo de Tiermes
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42123' AND categoria='senderismo'; -- Morón de Almazán
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42128' AND categoria='senderismo'; -- Narros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42130' AND categoria='senderismo'; -- Nepas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42131' AND categoria='senderismo'; -- Nolay
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='42132' AND categoria='senderismo'; -- Noviercas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42134' AND categoria='senderismo'; -- Ólvega (42)
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42139' AND categoria='senderismo'; -- Pinilla del Campo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42140' AND categoria='senderismo'; -- Portillo de Soria
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42141' AND categoria='senderismo'; -- La Póveda de Soria
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42142' AND categoria='senderismo'; -- Pozalmuro
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42144' AND categoria='senderismo'; -- Quintana Redonda
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42145' AND categoria='senderismo'; -- Quintanas de Gormaz
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42148' AND categoria='senderismo'; -- Quiñonería
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42149' AND categoria='senderismo'; -- Los Rábanos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42151' AND categoria='senderismo'; -- Rebollar
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42152' AND categoria='senderismo'; -- Recuerda
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42153' AND categoria='senderismo'; -- Rello
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42154' AND categoria='senderismo'; -- Renieblas
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42155' AND categoria='senderismo'; -- Retortillo de Soria
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42156' AND categoria='senderismo'; -- Reznos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42157' AND categoria='senderismo'; -- La Riba de Escalote
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42158' AND categoria='senderismo'; -- Rioseco de Soria
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42159' AND categoria='senderismo'; -- Rollamienta
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42162' AND categoria='senderismo'; -- San Esteban de Gormaz (42)
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42163' AND categoria='senderismo'; -- San Felices
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='42167' AND categoria='senderismo'; -- Santa María de Huerta
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='42168' AND categoria='senderismo'; -- Santa María de las Hoyas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42171' AND categoria='senderismo'; -- Serón de Nágima
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42172' AND categoria='senderismo'; -- Soliedra
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42173' AND categoria='senderismo'; -- Soria (42)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42175' AND categoria='senderismo'; -- Suellacabras
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42176' AND categoria='senderismo'; -- Tajahuerce
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42177' AND categoria='senderismo'; -- Tajueco
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42181' AND categoria='senderismo'; -- Tardelcuende
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42182' AND categoria='senderismo'; -- Taroda
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42183' AND categoria='senderismo'; -- Tejado
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42184' AND categoria='senderismo'; -- Torlengua
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42185' AND categoria='senderismo'; -- Torreblacos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42187' AND categoria='senderismo'; -- Torrubia de Soria
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42190' AND categoria='senderismo'; -- Vadillo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42192' AND categoria='senderismo'; -- Valdegeña
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42193' AND categoria='senderismo'; -- Valdelagua del Cerro
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42194' AND categoria='senderismo'; -- Valdemaluque
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42195' AND categoria='senderismo'; -- Valdenebro
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42196' AND categoria='senderismo'; -- Valdeprado
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42197' AND categoria='senderismo'; -- Valderrodilla
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42198' AND categoria='senderismo'; -- Valtajeros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42200' AND categoria='senderismo'; -- Velamazán
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='42201' AND categoria='senderismo'; -- Velilla de la Sierra
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42202' AND categoria='senderismo'; -- Velilla de los Ajos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42204' AND categoria='senderismo'; -- Viana de Duero
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42205' AND categoria='senderismo'; -- Villaciervos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='42206' AND categoria='senderismo'; -- Villanueva de Gormaz
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42208' AND categoria='senderismo'; -- Villar del Campo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='42209' AND categoria='senderismo'; -- Villar del Río
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42211' AND categoria='senderismo'; -- Los Villares de Soria
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42212' AND categoria='senderismo'; -- Villasayas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42213' AND categoria='senderismo'; -- Villaseca de Arciel
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='42219' AND categoria='senderismo'; -- Yelo
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='42701' AND categoria='senderismo'; -- Comunidad de Herrera

-- ============================================================
-- SYNC: MIN (41xxx) → MAX (42xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='41001' AND categoria='senderismo') WHERE codigo_ine='42020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='41002' AND categoria='senderismo') WHERE codigo_ine='42035' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='41003' AND categoria='senderismo') WHERE codigo_ine='42069' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='41006' AND categoria='senderismo') WHERE codigo_ine='42129' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='41008' AND categoria='senderismo') WHERE codigo_ine='42162' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='41009' AND categoria='senderismo') WHERE codigo_ine='42173' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='41010' AND categoria='senderismo') WHERE codigo_ine='42215' AND categoria='senderismo';

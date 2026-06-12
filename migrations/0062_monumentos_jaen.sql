-- 0062_monumentos_jaen.sql
-- Categoria: monumentos — Jaén
-- Criterios de puntuacion:
--   100  = Patrimonio Mundial UNESCO
--   85-95 = BIC excepcional / conjunto renacentista / castillo singular
--   70-84 = Conjunto historico BIC / catedral / fortaleza relevante
--   55-69 = Monumento BIC individual / yacimiento arqueologico importante
--   40-54 = Castillo / iglesia / torre con valor patrimonial
--   20-39 = Patrimonio local menor
--   12    = default (sin monumentos destacados)
-- Nota: nombres sin apostrofes para compatibilidad con wrangler D1

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaén');

-- 2. Limpiar entidades tipo monumento de fuente wikidata/OSM (datos basura)
DELETE FROM entidades WHERE tipo IN ('monumento','castillo','iglesia','palacio','catedral','yacimiento','ermita')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaén');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='monumentos'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaén');

-- 4. Scores individuales

-- UNESCO PATRIMONIO MUNDIAL (Ciudades del Renacimiento)
-- 23092 Ubeda: Plaza Vazquez de Molina, Sacra Capilla del Salvador, Palacio del Dean Ortega...
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='23092' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23092','monumento','Conjunto Renacentista de Ubeda — Patrimonio Mundial UNESCO','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23092','monumento','Sacra Capilla del Salvador — Ubeda (Juan de Herrera)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23092','monumento','Plaza Vazquez de Molina — conjunto renacentista UNESCO','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23092','monumento','Palacio del Dean Ortega — Ubeda','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23092','monumento','Iglesia de Santa Maria de los Reales Alcazares — Ubeda','excel_curado',date('now'));

-- 24010 Baeza: catedral, fuente de Santa Maria, palacio de Jabalquinto... (singleton, sin par 23xxx)
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='24010' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24010','monumento','Conjunto Renacentista de Baeza — Patrimonio Mundial UNESCO','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24010','monumento','Catedral de la Natividad de Nuestra Senora — Baeza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24010','monumento','Palacio de Jabalquinto — Baeza (plateresco)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24010','monumento','Fuente de Santa Maria — Baeza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24010','monumento','Antigua Universidad de Baeza — siglo XVI','excel_curado',date('now'));

-- BIC EXCEPCIONALES
-- 24012 Banos de la Encina: Castillo de Burgalimar, mejor conservado de Al-Andalus (siglo X) (singleton)
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='24012' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24012','castillo','Castillo de Burgalimar — siglo X, mejor conservado de Al-Andalus','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24012','monumento','Ermita de Cristo del Llano — Banos de la Encina','excel_curado',date('now'));

-- 23050 Jaen: Catedral, Castillo Santa Catalina, Banos Arabes BIC
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='23050' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23050','catedral','Catedral de la Asuncion de Jaen — BIC (Andres de Vandelvira)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23050','castillo','Castillo de Santa Catalina — Jaen (siglo XIII)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23050','monumento','Banos Arabes del Palacio de Villardompardo — BIC (siglo XI)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23050','monumento','Museo Provincial de Jaen — coleccion iberica unica','excel_curado',date('now'));

-- 24002 Alcala la Real: Fortaleza de la Mota BIC (ciudad en altura), necrópolis medieval (singleton)
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='24002' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24002','castillo','Fortaleza de la Mota — BIC, ciudad medieval en altura','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24002','monumento','Abadia de la Mota — Alcala la Real (ruinas renacentistas)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24002','monumento','Necropolis medieval — Fortaleza de la Mota','excel_curado',date('now'));

-- 23081 Segura de la Sierra: castillo medieval BIC, pueblo de las Siete Villas, cuna de Garcilaso
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='23081' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23081','castillo','Castillo de Segura de la Sierra — BIC, siglo XII','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23081','monumento','Conjunto historico de Segura de la Sierra — BIC','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23081','monumento','Banos Arabes — Segura de la Sierra','excel_curado',date('now'));

-- CONJUNTOS HISTORICOS Y BIC SIGNIFICATIVOS
-- 24003 Alcaudete: Castillo de Alcaudete BIC, Iglesia de San Pedro (singleton)
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='24003' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24003','castillo','Castillo de Alcaudete — BIC (siglo XIII)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24003','iglesia','Iglesia de San Pedro — Alcaudete (BIC)','excel_curado',date('now'));

-- 23075 Sabiote: Castillo-palacio de Sabiote BIC, conjunto historico
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='23075' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23075','castillo','Castillo-palacio de Sabiote — BIC (Andres de Vandelvira)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23075','monumento','Conjunto historico de Sabiote — murallas medievales','excel_curado',date('now'));

-- 23048 Iznatoraf: Conjunto Historico BIC, pueblo amurallado medieval en altozano
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='23048' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23048','monumento','Conjunto Historico de Iznatoraf — BIC, pueblo medieval amurallado','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23048','castillo','Castillo de Iznatoraf — murallas medievales','excel_curado',date('now'));

-- 23055 Linares: Castulo (ciudad iberorromana), yacimiento arqueologico excepcional
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='23055' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23055','yacimiento','Castulo — ciudad iberorromana (Bicha de Balazote)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23055','monumento','Iglesia de Santa Maria la Mayor — Linares (BIC)','excel_curado',date('now'));

-- 23069 Porcuna: Obulco iberorromana, tesoro escultórico iberico excepcional
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='23069' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23069','yacimiento','Obulco — ciudad iberorromana de Porcuna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23069','monumento','Conjunto escultorico iberico de Cerrillo Blanco — BIC','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23069','castillo','Castillo de Porcuna — BIC','excel_curado',date('now'));

-- 23028 Cazorla: Castillo de la Yedra BIC, ruinas de Santa Maria
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='23028' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23028','castillo','Castillo de la Yedra — Cazorla (BIC, siglo XIV)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23028','monumento','Ruinas de la Iglesia de Santa Maria — Cazorla','excel_curado',date('now'));

-- 24006 Andújar: Iglesia Santa Maria la Mayor BIC, Puente Romano BIC (singleton)
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='24006' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24006','iglesia','Iglesia de Santa Maria la Mayor — Andujar (BIC)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24006','monumento','Puente Romano de Andujar — BIC','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24006','yacimiento','Yacimiento romano de Iliturgi — Andujar','excel_curado',date('now'));

-- 23087 Torredonjimeno: Tesoro visigodo de Guarrazar (hallado aqui), museo
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='23087' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23087','monumento','Tesoro visigodo de Guarrazar — hallado en Torredonjimeno','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23087','yacimiento','Cerro Conejeros — yacimiento iberorromano','excel_curado',date('now'));

-- 23043 Hornos: Castillo medieval BIC, pueblo en la sierra
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='23043' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23043','castillo','Castillo de Hornos — BIC, sierra de Segura','excel_curado',date('now'));

-- 23047 La Iruela: Castillo templario BIC sobre penon, unico en su tipo
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='23047' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23047','castillo','Castillo de La Iruela — BIC, fortaleza templaria sobre penon','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23047','monumento','Ruinas de la Iglesia de Santo Domingo — La Iruela','excel_curado',date('now'));

-- 24011 Bailén: Monumento Batalla de Bailén (1808), iglesia neoclasica (singleton)
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='24011' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24011','monumento','Monumento a la Batalla de Bailén — 1808 (derrota Napoleon)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24011','iglesia','Iglesia de la Encarnacion — Bailén (neoclasica)','excel_curado',date('now'));

-- 23060 Martos: Pena de Martos (castillo BIC), Iglesia de Santa Marta BIC
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='23060' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23060','castillo','Castillo de la Pena de Martos — BIC (siglo XIII)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23060','iglesia','Iglesia de Santa Marta — Martos (BIC)','excel_curado',date('now'));

-- 23044 Huelma: Castillo de Huelma BIC
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='23044' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23044','castillo','Castillo de Huelma — BIC (siglo XV)','excel_curado',date('now'));

-- 24001 Albanchez de Magina: Castillo BIC, municipio de la Sierra Magina
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='24001' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24001','castillo','Castillo de Albanchez — BIC, Sierra Magina','excel_curado',date('now'));

-- 23073 Quesada: Conjunto historico, casa natal de Rafael Zabaleta
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='23073' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23073','monumento','Museo Zabaleta — Quesada (pintura moderna)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23073','castillo','Castillo de Tíscar — Quesada (BIC)','excel_curado',date('now'));

-- 23056 Lopera: Castillo medieval
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='23056' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23056','castillo','Castillo de Lopera — BIC (siglo XIII)','excel_curado',date('now'));

-- 23026 Castillo de Locubín: Castillo árabe
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='23026' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23026','castillo','Castillo de Locubín — restos medievales','excel_curado',date('now'));

-- 23053 Jodar: Castillo medieval
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='23053' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23053','castillo','Castillo de Jodar — BIC','excel_curado',date('now'));

-- 23088 Torreperogil: Torre del Homenaje, castillo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='23088' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23088','castillo','Torre del Homenaje de Torreperogil — BIC','excel_curado',date('now'));

-- 24007 Arjona: Castillo, yacimiento Urgao iberorromano (singleton)
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='24007' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24007','yacimiento','Urgao — ciudad iberorromana de Arjona','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('24007','monumento','Iglesia de Santa Maria — Arjona (BIC)','excel_curado',date('now'));

-- 23066 Peal de Becerro: Necropolis iberica de Tugia, excepcional
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='23066' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23066','yacimiento','Necropolis iberica de Tugia — Peal de Becerro (BIC)','excel_curado',date('now'));

-- 23024 La Carolina: Ciudad de la Ilustracion, trazado urbano siglo XVIII
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='23024' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23024','monumento','Casco historico de La Carolina — ciudad ilustrada siglo XVIII','excel_curado',date('now'));

-- 23098 Villardompardo: Castillo de los condes de Villardompardo (patron Jaen)
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='23098' AND categoria='monumentos';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23098','castillo','Castillo de Villardompardo — BIC','excel_curado',date('now'));

-- 5. Sync duplicados (MIN 23xxx -> MAX 24xxx)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23092' AND p2.categoria='monumentos') WHERE codigo_ine='24097' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23050' AND p2.categoria='monumentos') WHERE codigo_ine='24049' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23081' AND p2.categoria='monumentos') WHERE codigo_ine='24080' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23075' AND p2.categoria='monumentos') WHERE codigo_ine='24075' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23048' AND p2.categoria='monumentos') WHERE codigo_ine='24047' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23055' AND p2.categoria='monumentos') WHERE codigo_ine='24057' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23069' AND p2.categoria='monumentos') WHERE codigo_ine='24070' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23028' AND p2.categoria='monumentos') WHERE codigo_ine='24028' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23087' AND p2.categoria='monumentos') WHERE codigo_ine='24084' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23043' AND p2.categoria='monumentos') WHERE codigo_ine='24042' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23047' AND p2.categoria='monumentos') WHERE codigo_ine='24046' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23060' AND p2.categoria='monumentos') WHERE codigo_ine='24062' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23044' AND p2.categoria='monumentos') WHERE codigo_ine='24043' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23053' AND p2.categoria='monumentos') WHERE codigo_ine='24051' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23056' AND p2.categoria='monumentos') WHERE codigo_ine='24058' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23073' AND p2.categoria='monumentos') WHERE codigo_ine='24073' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23066' AND p2.categoria='monumentos') WHERE codigo_ine='24068' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23088' AND p2.categoria='monumentos') WHERE codigo_ine='24085' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23024' AND p2.categoria='monumentos') WHERE codigo_ine='24024' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23026' AND p2.categoria='monumentos') WHERE codigo_ine='24026' AND categoria='monumentos';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='23098' AND p2.categoria='monumentos') WHERE codigo_ine='24094' AND categoria='monumentos';

-- 0062b_monumentos_jaen_desc.sql
-- Reformateo entidades Jaen: nombre limpio + descripcion separada
-- Borra excel_curado de monumentos y re-inserta con formato correcto

DELETE FROM entidades WHERE fuente='excel_curado'
  AND tipo IN ('monumento','castillo','catedral','iglesia','yacimiento','palacio','ermita','fortaleza')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaen');

-- Extra: limpiar los que tienen provincia 'Jaén' (con tilde)
DELETE FROM entidades WHERE fuente='excel_curado'
  AND tipo IN ('monumento','castillo','catedral','iglesia','yacimiento','palacio','ermita','fortaleza')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaén');

-- 23092 Ubeda — UNESCO
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23092','monumento','Conjunto Renacentista de Ubeda','Patrimonio Mundial UNESCO — la ciudad del Renacimiento espanol mas autentica','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23092','monumento','Sacra Capilla del Salvador','Obra maestra del Renacimiento (Diego de Siloe y Andres de Vandelvira, s.XVI)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23092','monumento','Plaza Vazquez de Molina','Conjunto monumental renacentista unico — considerada la plaza mas bella del Renacimiento espanol','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23092','monumento','Palacio del Dean Ortega','Parador nacional — palacio renacentista del siglo XVI frente a la Capilla del Salvador','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23092','iglesia','Iglesia de Santa Maria de los Reales Alcazares','Antigua mezquita reconvertida — claustro gotico-renacentista de gran belleza','excel_curado',date('now'));

-- 24010 Baeza — UNESCO
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24010','monumento','Conjunto Renacentista de Baeza','Patrimonio Mundial UNESCO — ciudad episcopal del Renacimiento con mas de 30 monumentos BIC','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24010','catedral','Catedral de la Natividad de Nuestra Senora','Catedral BIC construida sobre la antigua mezquita mayor — Andres de Vandelvira (s.XVI)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24010','monumento','Palacio de Jabalquinto','Fachada plateresca del siglo XV — una de las mas elaboradas del gotico hispanoflamencol','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24010','monumento','Antigua Universidad de Baeza','Primera universidad de Andalucia (1538) — Antonio Machado impartio clases aqui','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24010','monumento','Fuente de Santa Maria','Fuente renacentista arco triunfal (1564) — simbolo de la ciudad de Baeza','excel_curado',date('now'));

-- 24012 Banos de la Encina
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24012','castillo','Castillo de Burgalimar','Siglo X — uno de los castillos arabes mejor conservados de Espana, 14 torres almenadas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24012','ermita','Ermita de Cristo del Llano','Ermita medieval con imagen del Cristo de Burgalimar, patrono de la localidad','excel_curado',date('now'));

-- 23050 Jaen ciudad
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23050','catedral','Catedral de la Asuncion de Jaen','BIC — obra cumbre de Andres de Vandelvira (s.XVI-XVIII), guarda el Santo Rostro de Jesus','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23050','castillo','Castillo de Santa Catalina','BIC — fortaleza del siglo XIII sobre cerro con vistas panoramicas de la ciudad y la campiña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23050','monumento','Banos Arabes del Palacio de Villardompardo','BIC — los banos arabes mejor conservados de Espana (siglo XI), bajo el palacio renacentista','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23050','monumento','Museo Provincial de Jaen','Coleccion iberica excepcional — 20 esfinges ibericas y la Dama de Iponuba','excel_curado',date('now'));

-- 24002 Alcala la Real
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24002','castillo','Fortaleza de la Mota','BIC — ciudad medieval en altura con iglesia mayor, necropolis y restos del alcazar arabe','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24002','monumento','Fuente Renacentista de Carlos V','Fuente monumental del siglo XVI, joya del Renacimiento civil en Alcala la Real','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24002','monumento','Abadia de la Mota','Ruinas de la iglesia mayor BIC dentro de la fortaleza — arquitectura renacentista del siglo XVI','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24002','monumento','Palacio Abacial','Arquitectura civil del siglo XVIII — sede del museo arqueologico municipal','excel_curado',date('now'));

-- 23081 Segura de la Sierra
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23081','castillo','Castillo de Segura de la Sierra','BIC siglo XII — fortaleza medieval con piscina arabe y torre del homenaje, cuna de Garcilaso de la Vega','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23081','monumento','Conjunto historico de Segura de la Sierra','BIC — pueblo medieval amurallado con casco historico excepcional en la sierra de Segura','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23081','monumento','Banos Arabes de Segura de la Sierra','Restos de banos arabes medievales en el interior de la fortaleza','excel_curado',date('now'));

-- 24003 Alcaudete
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24003','castillo','Castillo de Alcaudete','BIC — fortaleza del siglo XIII con torre del homenaje y recinto amurallado sobre cerro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24003','iglesia','Iglesia de San Pedro','BIC — templo del siglo XV con torre mudejar y portada renacentista','excel_curado',date('now'));

-- 23075 Sabiote
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23075','castillo','Castillo-palacio de Sabiote','BIC — Andres de Vandelvira reforma el castillo medieval en palacio renacentista (s.XVI)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23075','monumento','Conjunto historico de Sabiote','BIC — murallas medievales y casco historico bien conservado en la campiña de Jaen','excel_curado',date('now'));

-- 23048 Iznatoraf
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23048','monumento','Conjunto historico de Iznatoraf','BIC — pueblo medieval amurallado sobre altozano con panoramicas de la campiña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23048','castillo','Murallas medievales de Iznatoraf','Recinto amurallado BIC casi integro — uno de los mejor conservados de la provincia','excel_curado',date('now'));

-- 23055 Linares
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23055','yacimiento','Castulo','Ciudad iberorromana BIC — cuna de la Bicha de Balazote y esculturas ibericas de primer orden','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23055','iglesia','Iglesia de Santa Maria la Mayor','BIC — templo del siglo XVI con torre campanario renacentista','excel_curado',date('now'));

-- 23069 Porcuna
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23069','yacimiento','Obulco — ciudad iberorromana','Antigua ciudad ibera y romana con uno de los tesoros escultóricos ibericos mas importantes de Espana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23069','monumento','Conjunto escultorico de Cerrillo Blanco','BIC — esculturas ibericas del siglo V a.C. descubiertas en Porcuna, obras maestras del arte iberico','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23069','castillo','Castillo de Porcuna','BIC — fortaleza medieval sobre el antiguo oppidum iberico de Obulco','excel_curado',date('now'));

-- 23028 Cazorla
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23028','castillo','Castillo de la Yedra','BIC siglo XIV — fortaleza sobre roca con museo de artes y costumbres populares','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23028','monumento','Ruinas de la Iglesia de Santa Maria','Icono fotografico de Cazorla — iglesia renacentista (Vandelvira) en ruinas junto al castillo','excel_curado',date('now'));

-- 23047 La Iruela
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23047','castillo','Castillo de La Iruela','BIC — fortaleza templaria del siglo XIII sobre un penon de roca, imagen emblematica de la sierra de Cazorla','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23047','monumento','Ruinas de la Iglesia de Santo Domingo','Ruinas medievales al pie del castillo de La Iruela','excel_curado',date('now'));

-- 24006 Andujar
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24006','iglesia','Iglesia de Santa Maria la Mayor','BIC — templo del siglo XVI que alberga el San Juan Bautista de El Greco','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24006','monumento','Puente Romano de Andujar','BIC — puente romano sobre el Guadalquivir, uno de los mejor conservados de Andalucia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24006','yacimiento','Yacimiento romano de Iliturgi','Ciudad romana donde se conservan restos de termas, teatros y necrópolis iberorromana','excel_curado',date('now'));

-- 23087 Torredonjimeno
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23087','monumento','Tesoro visigodo de Guarrazar','Conjunto de coronas y cruces votivas visigodas hallado en Torredonjimeno — hoy en el Museo Arqueologico Nacional','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23087','yacimiento','Cerro Conejeros','Yacimiento iberorromano con restos de la antigua ciudad de Ossigi','excel_curado',date('now'));

-- 23043 Hornos
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23043','castillo','Castillo de Hornos','BIC — fortaleza medieval del siglo XIII en la sierra de Segura con vistas al embalse de El Tranco','excel_curado',date('now'));

-- 23066 Peal de Becerro
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23066','yacimiento','Necropolis iberica de Tugia','BIC — necropolis del siglo IV a.C. con camara funeraria intacta, una de las mas importantes de Espana','excel_curado',date('now'));

-- 23060 Martos
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23060','castillo','Castillo de la Pena de Martos','BIC siglo XIII — imponente fortaleza sobre la pena de Martos, vinculada al fin de los Templarios','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23060','iglesia','Iglesia de Santa Marta','BIC — templo del siglo XVI con torre renacentista en el casco historico de Martos','excel_curado',date('now'));

-- 24007 Arjona
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24007','yacimiento','Urgao — ciudad iberorromana','Antigua capital iberica y romana de la campiña, con teatro y termas documentados','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24007','iglesia','Iglesia de Santa Maria','BIC — templo donde se guardan los restos de San Bonoso y San Maximiano, martires del siglo IV','excel_curado',date('now'));

-- 24011 Bailén
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24011','monumento','Monumento a la Batalla de Bailén','Conmemora la victoria espanola de 1808 sobre Napoleon — primera derrota del ejercito napoleonico en campo abierto','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24011','iglesia','Iglesia de la Encarnacion','Templo neoclasico del siglo XVIII con torre de estilo herreriano','excel_curado',date('now'));

-- 23073 Quesada
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23073','castillo','Castillo de Tiscar','BIC — fortaleza arabigo-cristiana del siglo XII sobre roca, con santuario rupestre de la Virgen de Tiscar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23073','monumento','Museo Zabaleta','Museo dedicado a Rafael Zabaleta, pintor vanguardista del siglo XX nacido en Quesada','excel_curado',date('now'));

-- 23056 Lopera
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23056','castillo','Castillo de Lopera','BIC siglo XIII — castillo de la Orden de Calatrava con torre del homenaje y aljibe','excel_curado',date('now'));

-- 23044 Huelma
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23044','castillo','Castillo de Huelma','BIC siglo XV — fortaleza tardomedieval con torre albarrana conservada','excel_curado',date('now'));

-- 24001 Albanchez de Magina
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('24001','castillo','Castillo de Albanchez','BIC — fortaleza medieval en la sierra de Magina con vistas al pico Magina','excel_curado',date('now'));

-- 23026 Castillo de Locubín
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23026','castillo','Castillo de Locubín','Restos medievales de la fortaleza arabe sobre cerro — da nombre al municipio','excel_curado',date('now'));

-- 23053 Jodar
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23053','castillo','Castillo de Jodar','BIC — castillo medieval sobre cerro con restos de la muralla y torre del homenaje','excel_curado',date('now'));

-- 23088 Torreperogil
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23088','castillo','Torre del Homenaje de Torreperogil','BIC — torre medieval del siglo XIV que da nombre al municipio','excel_curado',date('now'));

-- 23024 La Carolina
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23024','monumento','Casco historico de La Carolina','Ciudad de nueva planta del siglo XVIII — trazado urbano ilustrado en cuadricula ordenado por Carlos III','excel_curado',date('now'));

-- 23098 Villardompardo
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('23098','castillo','Castillo de Villardompardo','BIC — castillo de los condes de Villardompardo, cuyos sucesores construyeron el palacio de Jaen','excel_curado',date('now'));

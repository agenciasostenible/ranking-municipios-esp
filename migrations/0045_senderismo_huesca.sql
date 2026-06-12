-- 0045: Senderismo Huesca curado — Ordesa, Benasque, Ansó/Hecho, Tena, Guara, Ribagorza
-- Generado: 2026-06-09
-- Canónicos: 22xxx (MIN) respecto a 23xxx (MAX)
-- 14 pares duplicados + 23001 Ainsa-Sobrarbe y 23009 Hecho como standalone

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '22025' AND '22909') OR
  (codigo_ine BETWEEN '23001' AND '23016')
);

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '22025' AND '22909') OR
  (codigo_ine BETWEEN '23001' AND '23016')
);

-- ============================================================
-- PARQUE NACIONAL ORDESA Y MONTE PERDIDO
-- ============================================================

-- Torla-Ordesa: portal PN Ordesa, Cañón de Ordesa, Cola de Caballo = 98
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine='22230' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22230','sendero','Cañón de Ordesa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22230','sendero','Cola de Caballo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22230','sendero','Parque Nacional Ordesa y Monte Perdido','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22230','sendero','GR-11 Pirineos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22230','sendero','Faja de Pelay','excel_curado',date('now'));

-- Bielsa: Circo de Pineta, Monte Perdido = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='22057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22057','sendero','Circo de Pineta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22057','sendero','Monte Perdido — ascensión','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22057','sendero','Parque Nacional Ordesa y Monte Perdido','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22057','sendero','GR-11 Pirineos','excel_curado',date('now'));

-- Fanlo: Cañón de Añisclo, Escuaín = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='22107' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22107','sendero','Cañón de Añisclo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22107','sendero','Gargantas de Escuaín','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22107','sendero','Parque Nacional Ordesa y Monte Perdido','excel_curado',date('now'));

-- Puértolas: Cañón de Añisclo = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='22189' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22189','sendero','Cañón de Añisclo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22189','sendero','Parque Nacional Ordesa y Monte Perdido','excel_curado',date('now'));

-- Tella-Sin: Cañón de Añisclo, ermitas de Tella = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='22227' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22227','sendero','Ermitas de Tella','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22227','sendero','Cañón de Añisclo — acceso','excel_curado',date('now'));

-- Broto: acceso PN Ordesa, Valle del Ara = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='22069' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22069','sendero','Valle del Ara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22069','sendero','Parque Nacional Ordesa y Monte Perdido','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22069','sendero','GR-15 Sobrarbe','excel_curado',date('now'));

-- Boltaña: Sobrarbe, acceso PN = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='22066' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22066','sendero','Sobrarbe — GR-15','excel_curado',date('now'));

-- Laspuña: Cañón Añisclo acceso sur = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='22144' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22144','sendero','Cañón de Añisclo','excel_curado',date('now'));

-- Ainsa-Sobrarbe 23001 (standalone): villa medieval, cruce Sobrarbe = 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='23001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23001','sendero','Ainsa — Sobrarbe — GR-15','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23001','sendero','Valle del Cinca','excel_curado',date('now'));

-- Aínsa-Sobrarbe 22907 (standalone, no dup): mismo municipio = 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='22907' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22907','sendero','Ainsa — Sobrarbe — GR-15','excel_curado',date('now'));

-- ============================================================
-- VALLE DE BENASQUE / ANETO
-- ============================================================

-- Benasque: Pico Aneto 3404m (techo España), Maladeta, GR-11 = 97
UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine='22054' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22054','sendero','Pico Aneto — techo de España','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22054','sendero','Glaciar de la Maladeta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22054','sendero','GR-11 Pirineos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22054','sendero','Valle de Benasque','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22054','sendero','Refugio de la Renclusa','excel_curado',date('now'));

-- Castejón de Sos: Valle de Benasque, Cerler esquí = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='22084' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22084','sendero','Valle de Benasque norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22084','sendero','GR-11 Pirineos','excel_curado',date('now'));

-- Sahún: Valle de Benasque, Cerler = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='22200' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22200','sendero','Valle de Benasque — Cerler','excel_curado',date('now'));

-- Seira: Valle del Ésera, Benasque sur = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='22215' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22215','sendero','Valle del Ésera','excel_curado',date('now'));

-- Chía: entre Chistau y Benasque = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='22095' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22095','sendero','Ribagorza — Pirineo central','excel_curado',date('now'));

-- ============================================================
-- VALLE DE CHISTAU (Gistaín/Plan)
-- ============================================================

-- Gistaín: Valle de Chistau, GR-19 = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='22114' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22114','sendero','Valle de Chistau','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22114','sendero','GR-19 Chistau','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22114','sendero','GR-11 Pirineos','excel_curado',date('now'));

-- Plan: Valle de Chistau = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='22182' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22182','sendero','Valle de Chistau','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22182','sendero','GR-19 Chistau','excel_curado',date('now'));

-- San Juan de Plan: Valle de Chistau = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='22207' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22207','sendero','Valle de Chistau','excel_curado',date('now'));

-- ============================================================
-- VALLES OCCIDENTALES (Ansó/Hecho)
-- ============================================================

-- Ansó: Valle de Ansó, Reserva Biosfera, GR-11 = 93
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine='22028' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22028','sendero','Valle de Ansó — Reserva Biosfera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22028','sendero','GR-11 Pirineos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22028','sendero','Foz de Biniés','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22028','sendero','Selva de Oza','excel_curado',date('now'));

-- Valle de Hecho 22901: Selva de Oza, Siresa = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='22901' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22901','sendero','Selva de Oza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22901','sendero','GR-11 Pirineos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22901','sendero','Valle de Hecho','excel_curado',date('now'));

-- Hecho 23009 (standalone): Valle de Hecho = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='23009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23009','sendero','Valle de Hecho','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('23009','sendero','Selva de Oza','excel_curado',date('now'));

-- Fago: Sierra de San Juan de la Peña = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='22106' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22106','sendero','Valles Occidentales','excel_curado',date('now'));

-- ============================================================
-- VALLE DE TENA (Sallent/Panticosa)
-- ============================================================

-- Sallent de Gállego: Valle de Tena, Formigal, GR-11 = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='22204' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22204','sendero','Valle de Tena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22204','sendero','Pico Anayet','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22204','sendero','GR-11 Pirineos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22204','sendero','Ibón de Respomuso','excel_curado',date('now'));

-- Panticosa: Baños de Panticosa, ibones = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='22170' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22170','sendero','Baños de Panticosa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22170','sendero','Ibones de Panticosa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22170','sendero','GR-11 Pirineos','excel_curado',date('now'));

-- Hoz de Jaca: Valle de Tena = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='22122' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22122','sendero','Valle de Tena','excel_curado',date('now'));

-- Biescas: Valle de Tena, acceso = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='22059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22059','sendero','Valle de Tena','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22059','sendero','Valle del Gállego','excel_curado',date('now'));

-- Yésero: Valle de Tena = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='22253' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22253','sendero','Valle de Tena','excel_curado',date('now'));

-- Yebra de Basa: Valle del Gállego = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='22252' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22252','sendero','Valle del Gállego','excel_curado',date('now'));

-- ============================================================
-- SIERRA DE GUARA (Cañones)
-- ============================================================

-- Las Peñas de Riglos: Mallos de Riglos (icónico) = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='22173' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22173','sendero','Mallos de Riglos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22173','sendero','Río Gállego — canal','excel_curado',date('now'));

-- Bierge: Cañones de Guara, cañonismo = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='22058' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22058','sendero','Cañones de Guara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22058','sendero','Parque Natural Sierra y Cañones de Guara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22058','sendero','Barranco del Mascún','excel_curado',date('now'));

-- Nueno: Sierra de Guara = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='22163' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22163','sendero','Parque Natural Sierra y Cañones de Guara','excel_curado',date('now'));

-- Colungo: Cañones de Guara = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='22090' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22090','sendero','Cañones de Guara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22090','sendero','Barranco de Fornocal','excel_curado',date('now'));

-- Bárcabo: Cañones de Guara = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='22051' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22051','sendero','Cañones de Guara','excel_curado',date('now'));

-- Arguis: Sierra de Guara, embalse = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='22037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22037','sendero','Sierra de Guara','excel_curado',date('now'));

-- Loarre: Castillo de Loarre + sierra = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='22149' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22149','sendero','Castillo de Loarre — entorno','excel_curado',date('now'));

-- Casbas de Huesca: Sierra de Guara = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='22081' AND categoria='senderismo';

-- Hoz y Costeán 22908: Sierra de Guara = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='22908' AND categoria='senderismo';

-- Santa María de Dulcis 22906: Sierra de Guara sur = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='22906' AND categoria='senderismo';

-- ============================================================
-- PREPIRINEO / JACETANIA / CANAL DE BERDÚN
-- ============================================================

-- Canfranc: Estación de Canfranc, GR-11 = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='22078' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22078','sendero','Puerto de Somport — GR-11','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22078','sendero','Estación de Canfranc','excel_curado',date('now'));

-- Jaca: capital pirenaica, Camino de Santiago = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='22130' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22130','sendero','Camino de Santiago francés','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22130','sendero','Ciudadela de Jaca — entorno','excel_curado',date('now'));

-- Sabiñánigo: acceso valles = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='22199' AND categoria='senderismo';

-- Santa Cruz de la Serós: románico + naturaleza = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='22209' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22209','sendero','San Juan de la Peña — entorno','excel_curado',date('now'));

-- Aragüés del Puerto: Valles Occidentales = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='22032' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22032','sendero','Sierra de Bernera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22032','sendero','Valles Occidentales','excel_curado',date('now'));

-- Borau: Valle del Aragón = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='22068' AND categoria='senderismo';

-- Canal de Berdún: Valle del Aragón = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='22076' AND categoria='senderismo';

-- Puente la Reina de Jaca 22902: Camino de Santiago = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='22902' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22902','sendero','Camino de Santiago francés','excel_curado',date('now'));

-- Castiello de Jaca: Valle del Aragón = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='22086' AND categoria='senderismo';

-- Bailo: Prepirineo = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='22044' AND categoria='senderismo';

-- Santa Cilia: Canal de Berdún = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='22208' AND categoria='senderismo';

-- Jasa: Valle del Aragón = 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='22131' AND categoria='senderismo';

-- Caldearenas: Prepirineo = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='22072' AND categoria='senderismo';

-- Biscarrués: Prepirineo = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='22063' AND categoria='senderismo';

-- ============================================================
-- RIBAGORZA
-- ============================================================

-- Montanuy: Ribagorza alta, GR-11 = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='22157' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22157','sendero','Ribagorza alta — GR-11','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22157','sendero','Ibones de Anglios','excel_curado',date('now'));

-- Laspaúles: Ribagorza alta = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='22143' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22143','sendero','Ribagorza alta','excel_curado',date('now'));

-- Beranuy 22246: Ribagorza = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='22246' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22246','sendero','Ribagorza — Noguera Ribagorzana','excel_curado',date('now'));

-- Bisaurri: Ribagorza = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='22062' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22062','sendero','Ribagorza central','excel_curado',date('now'));

-- Isábena: Valle del Isábena = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='22129' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22129','sendero','Valle del Isábena','excel_curado',date('now'));

-- Sesué: Ribagorza = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='22221' AND categoria='senderismo';

-- Foradada del Toscar: Ribagorza = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='22111' AND categoria='senderismo';

-- Bonansa: Ribagorza = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='22067' AND categoria='senderismo';

-- Campo: Ribagorza/Sobrarbe = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='22074' AND categoria='senderismo';

-- La Fueva: Sobrarbe = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='22113' AND categoria='senderismo';

-- Graus: Ribagorza capital = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='22117' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22117','sendero','Ribagorza','excel_curado',date('now'));

-- El Pueyo de Araguás: Sobrarbe = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='22190' AND categoria='senderismo';

-- Labuerda: Sobrarbe = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='22133' AND categoria='senderismo';

-- Capella: Prepirineo = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='22080' AND categoria='senderismo';

-- Muro de Roda 22598: Ribagorza = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='22598' AND categoria='senderismo';

-- Valle de Bardají: Ribagorza = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='22243' AND categoria='senderismo';

-- Valle de Lierp: Ribagorza = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='22244' AND categoria='senderismo';

-- Monesma y Cajigar: Ribagorza = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='22155' AND categoria='senderismo';

-- Palo: Sobrarbe = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='22168' AND categoria='senderismo';

-- Sopeira: Ribagorza, Collegats cercano = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='22223' AND categoria='senderismo';

-- Torre la Ribera: Ribagorza = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='22233' AND categoria='senderismo';

-- Viacamp y Litera: Ribagorza = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='22247' AND categoria='senderismo';

-- Puente de Montañana: Ribagorza = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='22188' AND categoria='senderismo';

-- ============================================================
-- HOYA DE HUESCA / SOMONTANO / LLANO (valores bajos)
-- ============================================================

UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='22125' AND categoria='senderismo'; -- Huesca capital
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='22048' AND categoria='senderismo'; -- Barbastro (Somontano)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22048','sendero','Sierra de Guara — acceso sur','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='22158' AND categoria='senderismo'; -- Monzón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22112' AND categoria='senderismo'; -- Fraga
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22213' AND categoria='senderismo'; -- Sariñena
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22061' AND categoria='senderismo'; -- Binéfar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22225' AND categoria='senderismo'; -- Tamarite de Litera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22052' AND categoria='senderismo'; -- Belver de Cinca
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22119' AND categoria='senderismo'; -- Gurrea de Gállego
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22226' AND categoria='senderismo'; -- Tardienta
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22136' AND categoria='senderismo'; -- Lalueza
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22137' AND categoria='senderismo'; -- Lanaja
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22083' AND categoria='senderismo'; -- Castejón de Monegros
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22077' AND categoria='senderismo'; -- Candasnos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22077' AND categoria='senderismo'; -- Candasnos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22254' AND categoria='senderismo'; -- Zaidín
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22060' AND categoria='senderismo'; -- Binaced
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22103' AND categoria='senderismo'; -- Estadilla
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='22115' AND categoria='senderismo'; -- El Grado
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='22116' AND categoria='senderismo'; -- Grañén
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22025' AND categoria='senderismo'; -- Altorricón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22184' AND categoria='senderismo'; -- Poleñino
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22217' AND categoria='senderismo'; -- Sena
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22218' AND categoria='senderismo'; -- Senés de Alcubierre
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22242' AND categoria='senderismo'; -- Valfarta
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22165' AND categoria='senderismo'; -- Ontiñena
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22167' AND categoria='senderismo'; -- Osso de Cinca
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22234' AND categoria='senderismo'; -- Torrente de Cinca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22197' AND categoria='senderismo'; -- Robres
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22232' AND categoria='senderismo'; -- Torralba de Aragón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22236' AND categoria='senderismo'; -- Torres de Barbués
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22239' AND categoria='senderismo'; -- Tramaced
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22203' AND categoria='senderismo'; -- Salillas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22220' AND categoria='senderismo'; -- Sesa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22222' AND categoria='senderismo'; -- Siétamo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22027' AND categoria='senderismo'; -- Angüés
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22029' AND categoria='senderismo'; -- Antillón
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22036' AND categoria='senderismo'; -- Argavieso
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22039' AND categoria='senderismo'; -- Ayerbe
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22040' AND categoria='senderismo'; -- Azanuy-Alins
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22041' AND categoria='senderismo'; -- Azara
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22042' AND categoria='senderismo'; -- Azlor
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22043' AND categoria='senderismo'; -- Baélls
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22045' AND categoria='senderismo'; -- Baldellou
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22046' AND categoria='senderismo'; -- Ballobar
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22047' AND categoria='senderismo'; -- Banastás
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22049' AND categoria='senderismo'; -- Barbués
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22050' AND categoria='senderismo'; -- Barbuñales
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22053' AND categoria='senderismo'; -- Benabarre
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22055' AND categoria='senderismo'; -- Berbegal
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22064' AND categoria='senderismo'; -- Blecua y Torres
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22075' AND categoria='senderismo'; -- Camporrélls
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22079' AND categoria='senderismo'; -- Capdesaso
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22082' AND categoria='senderismo'; -- Castejón del Puente
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22085' AND categoria='senderismo'; -- Castelflorite
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22087' AND categoria='senderismo'; -- Castigaleu
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22088' AND categoria='senderismo'; -- Castillazuelo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22089' AND categoria='senderismo'; -- Castillonroy
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22094' AND categoria='senderismo'; -- Chalamera
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22096' AND categoria='senderismo'; -- Chimillas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22099' AND categoria='senderismo'; -- Esplús
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22102' AND categoria='senderismo'; -- Estada
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='22105' AND categoria='senderismo'; -- Estopiñán del Castillo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22110' AND categoria='senderismo'; -- Fonz
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='22124' AND categoria='senderismo'; -- Huerto
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22126' AND categoria='senderismo'; -- Ibieca
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22127' AND categoria='senderismo'; -- Igriés
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22128' AND categoria='senderismo'; -- Ilche
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22135' AND categoria='senderismo'; -- Laluenga
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22139' AND categoria='senderismo'; -- Laperdiguera
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22141' AND categoria='senderismo'; -- Lascellas-Ponzano
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22142' AND categoria='senderismo'; -- Lascuarre
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22149' AND categoria='senderismo'; -- Loarre (ya score 70 arriba, no pisar)
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22150' AND categoria='senderismo'; -- Loporzano
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22151' AND categoria='senderismo'; -- Loscorrales
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22156' AND categoria='senderismo'; -- Monflorite-Lascasas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22160' AND categoria='senderismo'; -- Naval
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22162' AND categoria='senderismo'; -- Novales
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22164' AND categoria='senderismo'; -- Olvena
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22172' AND categoria='senderismo'; -- Peñalba (Monegros)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22174' AND categoria='senderismo'; -- Peralta de Alcofea
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22175' AND categoria='senderismo'; -- Peralta de Calasanz
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22176' AND categoria='senderismo'; -- Peraltilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22177' AND categoria='senderismo'; -- Perarrúa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22178' AND categoria='senderismo'; -- Pertusa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22181' AND categoria='senderismo'; -- Piracés
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22193' AND categoria='senderismo'; -- Pueyo de Santa Cruz
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22195' AND categoria='senderismo'; -- Quicena
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22187' AND categoria='senderismo'; -- La Puebla de Castro
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22201' AND categoria='senderismo'; -- Salas Altas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22202' AND categoria='senderismo'; -- Salas Bajas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22205' AND categoria='senderismo'; -- San Esteban de Litera
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22206' AND categoria='senderismo'; -- Sangarrén
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22212' AND categoria='senderismo'; -- Santaliestra y San Quílez
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22214' AND categoria='senderismo'; -- Secastilla
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22235' AND categoria='senderismo'; -- Torres de Alcanadre
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22245' AND categoria='senderismo'; -- Velilla de Cinca
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22248' AND categoria='senderismo'; -- Vicién
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22249' AND categoria='senderismo'; -- Villanova
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22251' AND categoria='senderismo'; -- Villanueva de Sigena
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22903' AND categoria='senderismo'; -- San Miguel del Cinca
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='22904' AND categoria='senderismo'; -- La Sotonera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='22905' AND categoria='senderismo'; -- Lupiñén-Ortilla
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='22909' AND categoria='senderismo'; -- Vencillón
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='22186' AND categoria='senderismo'; -- Pozán de Vero

-- Villanuá: Canfranc, pirenaico = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='22250' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('22250','sendero','Valle del Aragón — Canfranc','excel_curado',date('now'));

-- ============================================================
-- SYNC: MIN (22xxx) → MAX (23xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22028' AND categoria='senderismo') WHERE codigo_ine='23002' AND categoria='senderismo'; -- Ansó
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22048' AND categoria='senderismo') WHERE codigo_ine='23003' AND categoria='senderismo'; -- Barbastro
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22054' AND categoria='senderismo') WHERE codigo_ine='23004' AND categoria='senderismo'; -- Benasque
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22057' AND categoria='senderismo') WHERE codigo_ine='23005' AND categoria='senderismo'; -- Bielsa
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22066' AND categoria='senderismo') WHERE codigo_ine='23006' AND categoria='senderismo'; -- Boltaña
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22069' AND categoria='senderismo') WHERE codigo_ine='23007' AND categoria='senderismo'; -- Broto
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22114' AND categoria='senderismo') WHERE codigo_ine='23008' AND categoria='senderismo'; -- Gistaín
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22125' AND categoria='senderismo') WHERE codigo_ine='23010' AND categoria='senderismo'; -- Huesca
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22130' AND categoria='senderismo') WHERE codigo_ine='23011' AND categoria='senderismo'; -- Jaca
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22158' AND categoria='senderismo') WHERE codigo_ine='23012' AND categoria='senderismo'; -- Monzón
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22170' AND categoria='senderismo') WHERE codigo_ine='23013' AND categoria='senderismo'; -- Panticosa
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22182' AND categoria='senderismo') WHERE codigo_ine='23014' AND categoria='senderismo'; -- Plan
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22199' AND categoria='senderismo') WHERE codigo_ine='23015' AND categoria='senderismo'; -- Sabiñánigo
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='22230' AND categoria='senderismo') WHERE codigo_ine='23016' AND categoria='senderismo'; -- Torla-Ordesa

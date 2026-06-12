-- 0035: Senderismo Ávila curado — Sierra de Gredos (top España)
-- Generado: 2026-06-09
-- Canónicos: 05xxx (siempre MIN respecto a 51xxx)

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '05025' AND '05267') OR
  (codigo_ine BETWEEN '05901' AND '05905') OR
  (codigo_ine BETWEEN '51001' AND '51025')
);

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '05025' AND '05267') OR
  (codigo_ine BETWEEN '05901' AND '05905') OR
  (codigo_ine BETWEEN '51001' AND '51025')
);

-- ============================================================
-- SIERRA DE GREDOS — zona TOP de España
-- ============================================================

-- Navarredonda de Gredos: Circo de Gredos, Pico Almanzor (3492m), icónico = 97
UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine='05165' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05165','sendero','Circo de Gredos — Laguna Grande',  'excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05165','sendero','Pico Almanzor — techo del Sistema Central','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05165','sendero','Sendero de la Laguna Grande de Gredos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05165','sendero','GR-10 Gredos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05165','sendero','Parque Regional Sierra de Gredos','excel_curado',date('now'));

-- Hoyos del Espino: acceso principal al Circo, Plataforma de Gredos = 95
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='05105' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05105','sendero','Plataforma de Gredos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05105','sendero','Laguna Grande de Gredos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05105','sendero','GR-10 Gredos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05105','sendero','Parque Regional Sierra de Gredos','excel_curado',date('now'));

-- San Lorenzo de Tormes: acceso Laguna Grande norte, bonito valle = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='05214' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05214','sendero','Valle del Tormes alto','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05214','sendero','Laguna Grande de Gredos acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05214','sendero','Parque Regional Sierra de Gredos','excel_curado',date('now'));

-- San Martín del Pimpollar: Gredos norte, Laguna del Duque = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='05216' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05216','sendero','Laguna del Duque','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05216','sendero','Sierra de Gredos norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05216','sendero','Parque Regional Sierra de Gredos','excel_curado',date('now'));

-- Bohoyo: Laguna del Duque, Gredos norte = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='05037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05037','sendero','Laguna del Duque','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05037','sendero','Parque Regional Sierra de Gredos','excel_curado',date('now'));

-- GREDOS SUR (Cinco Villas + Valle del Tiétar)
-- Arenas de San Pedro: portal del Gredos sur, castañar = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='51001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('51001','sendero','Garganta de Chilla','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('51001','sendero','Castañar de Arenas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('51001','sendero','Parque Regional Sierra de Gredos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('51001','sendero','Sendero de la Garganta de Arenas','excel_curado',date('now'));

-- El Arenal: Gredos sur, rutas gargantas = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='51008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('51008','sendero','Garganta de El Arenal','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('51008','sendero','Sierra de Gredos sur','excel_curado',date('now'));

-- Candeleda: Gredos sur, Ruta de las Gargantas = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='05047' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05047','sendero','Garganta de Candeleda','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05047','sendero','Sierra de Gredos — Gredos Sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05047','sendero','Parque Regional Sierra de Gredos','excel_curado',date('now'));

-- Guisando: Gredos sur, Toros de Guisando = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='05089' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05089','sendero','Garganta de Guisando','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05089','sendero','Parque Regional Sierra de Gredos','excel_curado',date('now'));

-- San Esteban del Valle: Gredos sur = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='05207' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05207','sendero','Garganta del Valle','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05207','sendero','Cinco Villas de Gredos','excel_curado',date('now'));

-- Mombeltrán: Gredos sur, pueblo medieval = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='05132' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05132','sendero','Cinco Villas de Gredos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05132','sendero','Garganta de Mombeltrán','excel_curado',date('now'));

-- Poyales del Hoyo: Gredos sur = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='05189' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05189','sendero','Garganta de Poyales','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05189','sendero','Parque Regional Sierra de Gredos','excel_curado',date('now'));

-- El Hornillo: Gredos sur = 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='05100' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05100','sendero','Garganta del Hornillo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05100','sendero','Cinco Villas de Gredos','excel_curado',date('now'));

-- Pedro Bernardo: Gredos sur = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='05182' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05182','sendero','Gredos sur — Pedro Bernardo','excel_curado',date('now'));

-- Gavilanes: Gredos sur = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='05082' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05082','sendero','Garganta de Gavilanes','excel_curado',date('now'));

-- Casavieja: Gredos sur = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='05054' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05054','sendero','Gredos sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05054','sendero','Garganta de Casavieja','excel_curado',date('now'));

-- Mijares: Gredos sur = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='05127' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05127','sendero','Gredos sur — Mijares','excel_curado',date('now'));

-- Casillas: Gredos sur = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='05055' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05055','sendero','Gredos sur','excel_curado',date('now'));

-- Piedralaves: Gredos sur = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='05187' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05187','sendero','Gredos sur','excel_curado',date('now'));

-- Cuevas del Valle: Gredos sur = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='05066' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05066','sendero','Garganta de Cuevas del Valle','excel_curado',date('now'));

-- Santa Cruz del Valle: Gredos sur = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='05221' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05221','sendero','Gredos sur — Cinco Villas','excel_curado',date('now'));

-- Villarejo del Valle: Gredos sur = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='05262' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05262','sendero','Gredos sur','excel_curado',date('now'));

-- Lanzahíta: Gredos sur = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='05110' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05110','sendero','Gredos sur','excel_curado',date('now'));

-- San Juan del Molinillo: Gredos = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='05212' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05212','sendero','Gredos este','excel_curado',date('now'));

-- GREDOS NORTE / TORMES
-- Cepeda la Mora: Gredos oeste, Tornavacas = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='05058' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05058','sendero','Sierra de Gredos oeste','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05058','sendero','Puerto de Tornavacas','excel_curado',date('now'));

-- Navarrevisca: Gredos oeste = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='05167' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05167','sendero','Gredos oeste','excel_curado',date('now'));

-- Navalonguilla: Gredos norte = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='05159' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05159','sendero','Garganta de Navalonguilla','excel_curado',date('now'));

-- Tormellas: Gredos norte = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='05244' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05244','sendero','Gredos norte','excel_curado',date('now'));

-- Solana de Ávila: Gredos norte = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='05236' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05236','sendero','Gredos norte','excel_curado',date('now'));

-- Navalperal de Tormes: Gredos norte = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='05162' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05162','sendero','Gredos norte','excel_curado',date('now'));

-- El Losar del Barco: Gredos norte = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='05112' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05112','sendero','Valle del Tormes','excel_curado',date('now'));

-- Piedrahíta: Gredos norte, Valdecorneja = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='05186' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05186','sendero','Gredos norte — Valdecorneja','excel_curado',date('now'));

-- El Barco de Ávila: Gredos norte, capital comarca = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='51003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('51003','sendero','Valle del Tormes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('51003','sendero','Gredos norte','excel_curado',date('now'));

-- La Horcajada: Gredos norte = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='05097' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05097','sendero','Gredos norte','excel_curado',date('now'));

-- El Mirón: Gredos norte = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='05129' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05129','sendero','Gredos norte','excel_curado',date('now'));

-- Tórtoles de la Sierra: Gredos norte = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='05246' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05246','sendero','Gredos norte','excel_curado',date('now'));

-- ZONA PARAMERA / ALBERCHE
-- Burgohondo: Alberche, Gredos este = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='05041' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05041','sendero','Embalse de Burguillo — Alberche','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05041','sendero','Gredos este','excel_curado',date('now'));

-- Navaluenga: Alberche = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='05163' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05163','sendero','Río Alberche','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05163','sendero','Gredos este','excel_curado',date('now'));

-- San Martín de la Vega del Alberche: Alberche = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='05215' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05215','sendero','Río Alberche','excel_curado',date('now'));

-- Navalacruz: Paramera = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='05157' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05157','sendero','Paramera de Ávila','excel_curado',date('now'));

-- Solosancho: Paramera = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='05238' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05238','sendero','Paramera de Ávila','excel_curado',date('now'));

-- Hoyocasero: Gredos = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='05101' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05101','sendero','Gredos central','excel_curado',date('now'));

-- GUADARRAMA / SIERRA ESTE
-- Peguerinos: Sierra de Guadarrama = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='05184' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05184','sendero','Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05184','sendero','El Escorial entorno','excel_curado',date('now'));

-- Las Navas del Marqués: Guadarrama = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='05168' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05168','sendero','Sierra de Guadarrama — Las Navas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05168','sendero','Sendero del Pinar','excel_curado',date('now'));

-- El Hoyo de Pinares: Guadarrama = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='05102' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05102','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Navalperal de Pinares: Guadarrama = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='05161' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05161','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Herradón de Pinares: Guadarrama = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='05093' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05093','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Cebreros: Guadarrama = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='05057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05057','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- El Tiemblo: Guadarrama = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='05241' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05241','sendero','Embalse de Burguillo','excel_curado',date('now'));

-- Sotillo de la Adrada: Gredos este = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='05240' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05240','sendero','Gredos este','excel_curado',date('now'));

-- La Adrada: Gredos este = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='51015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('51015','sendero','Gredos este','excel_curado',date('now'));

-- El Espinar (Segovia border): Guadarrama = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='51010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('51010','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- OTROS SIERRA MEDIA
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='05063' AND categoria='senderismo'; -- Collado del Mirón
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05063','sendero','Gredos norte','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='05062' AND categoria='senderismo'; -- Collado de Contreras
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='05148' AND categoria='senderismo'; -- Narros del Puerto
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='05061' AND categoria='senderismo'; -- La Colilla
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='05195' AND categoria='senderismo'; -- Riofrío
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='05085' AND categoria='senderismo'; -- Gil-García
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='05084' AND categoria='senderismo'; -- Gilbuena
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='05081' AND categoria='senderismo'; -- Garganta del Villar
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05081','sendero','Garganta del Villar','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='05199' AND categoria='senderismo'; -- San Bartolomé de Béjar
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='05126' AND categoria='senderismo'; -- Mesegar de Corneja
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='05171' AND categoria='senderismo'; -- Neila de San Miguel
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='05116' AND categoria='senderismo'; -- Malpartida de Corneja
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='05124' AND categoria='senderismo'; -- Medinilla
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='05206' AND categoria='senderismo'; -- San Esteban de los Patos... not sierra

-- MORAÑA / MESETA (valores bajos)
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='51025' AND categoria='senderismo'; -- Ávila capital
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='51002' AND categoria='senderismo'; -- Arévalo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05114' AND categoria='senderismo'; -- Madrigal de las Altas Torres
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05026' AND categoria='senderismo'; -- Bercial de Zapardiel
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05029' AND categoria='senderismo'; -- Bernuy-Zapardiel
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05030' AND categoria='senderismo'; -- Berrocalejo de Aragona
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05033' AND categoria='senderismo'; -- Blascomillán
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05034' AND categoria='senderismo'; -- Blasconuño de Matacabras
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05035' AND categoria='senderismo'; -- Blascosancho
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='05038' AND categoria='senderismo'; -- Bonilla de la Sierra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05039' AND categoria='senderismo'; -- Brabos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05040' AND categoria='senderismo'; -- Bularros
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05042' AND categoria='senderismo'; -- Cabezas de Alambre
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05043' AND categoria='senderismo'; -- Cabezas del Pozo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05044' AND categoria='senderismo'; -- Cabezas del Villar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05045' AND categoria='senderismo'; -- Cabizuela
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='05046' AND categoria='senderismo'; -- Canales (sierra)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05048' AND categoria='senderismo'; -- Cantiveros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='05049' AND categoria='senderismo'; -- Cardeñosa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05025' AND categoria='senderismo'; -- Becedillas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05027' AND categoria='senderismo'; -- Las Berlanas
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='05051' AND categoria='senderismo'; -- La Carrera
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='05052' AND categoria='senderismo'; -- Casas del Puerto (sierra)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05052','sendero','Puerto de Casas — Gredos','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05053' AND categoria='senderismo'; -- Casasola
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='05056' AND categoria='senderismo'; -- Castellanos de Zapardiel → sierra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05059' AND categoria='senderismo'; -- Cillán
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05060' AND categoria='senderismo'; -- Cisla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05064' AND categoria='senderismo'; -- Constanzana
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05065' AND categoria='senderismo'; -- Crespos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05069' AND categoria='senderismo'; -- Donjimeno
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05070' AND categoria='senderismo'; -- Donvidas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='05072' AND categoria='senderismo'; -- Espinosa de los Caballeros
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05073' AND categoria='senderismo'; -- Flores de Ávila
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05074' AND categoria='senderismo'; -- Fontiveros
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='05075' AND categoria='senderismo'; -- Fresnedilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05076' AND categoria='senderismo'; -- El Fresno
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05077' AND categoria='senderismo'; -- Fuente el Saúz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05078' AND categoria='senderismo'; -- Fuentes de Año
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05079' AND categoria='senderismo'; -- Gallegos de Altamiros
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05080' AND categoria='senderismo'; -- Gallegos de Sobrinos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05083' AND categoria='senderismo'; -- Gemuño
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05086' AND categoria='senderismo'; -- Gimialcón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05087' AND categoria='senderismo'; -- Gotarrendura
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05088' AND categoria='senderismo'; -- Grandes y San Martín
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05090' AND categoria='senderismo'; -- Gutierre-Muñoz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05092' AND categoria='senderismo'; -- Hernansancho
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05094' AND categoria='senderismo'; -- Herreros de Suso
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05095' AND categoria='senderismo'; -- Higuera de las Dueñas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05099' AND categoria='senderismo'; -- Horcajo de las Torres
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='05103' AND categoria='senderismo'; -- Hoyorredondo (sierra)
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='05104' AND categoria='senderismo'; -- Hoyos del Collado
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05104','sendero','Gredos — Hoyos del Collado','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='05106' AND categoria='senderismo'; -- Hoyos de Miguel Muñoz
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05107' AND categoria='senderismo'; -- Hurtumpascual
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05108' AND categoria='senderismo'; -- Junciana
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05109' AND categoria='senderismo'; -- Langa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05113' AND categoria='senderismo'; -- Los Llanos de Tormes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05115' AND categoria='senderismo'; -- Maello
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05117' AND categoria='senderismo'; -- Mamblas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05118' AND categoria='senderismo'; -- Mancera de Arriba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05119' AND categoria='senderismo'; -- Manjabálago
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05120' AND categoria='senderismo'; -- Marlín
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05121' AND categoria='senderismo'; -- Martiherrero
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05122' AND categoria='senderismo'; -- Martínez
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05123' AND categoria='senderismo'; -- Mediana de Voltoya
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='05124' AND categoria='senderismo'; -- Medinilla (sierra)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05125' AND categoria='senderismo'; -- Mengamuñoz
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='05128' AND categoria='senderismo'; -- Mingorría
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05130' AND categoria='senderismo'; -- Mironcillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05131' AND categoria='senderismo'; -- Mirueña de los Infanzones
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05133' AND categoria='senderismo'; -- Monsalupe
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05134' AND categoria='senderismo'; -- Moraleja de Matacabras
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05135' AND categoria='senderismo'; -- Muñana
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05136' AND categoria='senderismo'; -- Muñico
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05138' AND categoria='senderismo'; -- Muñogalindo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05139' AND categoria='senderismo'; -- Muñogrande
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05140' AND categoria='senderismo'; -- Muñomer del Peco
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05141' AND categoria='senderismo'; -- Muñopepe
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05142' AND categoria='senderismo'; -- Muñosancho
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05143' AND categoria='senderismo'; -- Muñotello
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05144' AND categoria='senderismo'; -- Narrillos del Álamo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05145' AND categoria='senderismo'; -- Narrillos del Rebollar
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05147' AND categoria='senderismo'; -- Narros del Castillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05149' AND categoria='senderismo'; -- Narros de Saldueña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05152' AND categoria='senderismo'; -- Nava de Arévalo
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='05153' AND categoria='senderismo'; -- Nava del Barco (sierra)
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='05151' AND categoria='senderismo'; -- Navacepedilla de Corneja
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='05154' AND categoria='senderismo'; -- Navadijos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05155' AND categoria='senderismo'; -- Navaescurial
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='05156' AND categoria='senderismo'; -- Navahondilla
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='05158' AND categoria='senderismo'; -- Navalmoral (sierra)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05158','sendero','Gredos norte','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='05160' AND categoria='senderismo'; -- Navalosa
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05160','sendero','Paramera de Ávila','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05164' AND categoria='senderismo'; -- Navaquesera
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='05166' AND categoria='senderismo'; -- Navarredondilla
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='05169' AND categoria='senderismo'; -- Navatalgordo
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05169','sendero','Gredos este','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='05170' AND categoria='senderismo'; -- Navatejares
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05172' AND categoria='senderismo'; -- Niharra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05173' AND categoria='senderismo'; -- Ojos-Albos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05174' AND categoria='senderismo'; -- Orbita
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05175' AND categoria='senderismo'; -- El Oso
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05176' AND categoria='senderismo'; -- Padiernos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05177' AND categoria='senderismo'; -- Pajares de Adaja
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05178' AND categoria='senderismo'; -- Palacios de Goda
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05179' AND categoria='senderismo'; -- Papatrigo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05180' AND categoria='senderismo'; -- El Parral
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05181' AND categoria='senderismo'; -- Pascualcobo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05183' AND categoria='senderismo'; -- Pedro-Rodríguez
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='05185' AND categoria='senderismo'; -- Peñalba de Ávila
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='05188' AND categoria='senderismo'; -- Poveda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05190' AND categoria='senderismo'; -- Pozanco
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05191' AND categoria='senderismo'; -- Pradosegar
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='05192' AND categoria='senderismo'; -- Puerto Castilla
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05192','sendero','Puerto Castilla — Gredos','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05193' AND categoria='senderismo'; -- Rasueros
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05194' AND categoria='senderismo'; -- Riocabado
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05196' AND categoria='senderismo'; -- Rivilla de Barajas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05197' AND categoria='senderismo'; -- Salobral
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05198' AND categoria='senderismo'; -- Salvadiós
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05200' AND categoria='senderismo'; -- San Bartolomé de Corneja
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='05201' AND categoria='senderismo'; -- San Bartolomé de Pinares
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05204' AND categoria='senderismo'; -- Sanchidrián
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='05205' AND categoria='senderismo'; -- Sanchorreja
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05206' AND categoria='senderismo'; -- San Esteban de los Patos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05208' AND categoria='senderismo'; -- San Esteban de Zapardiel
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05209' AND categoria='senderismo'; -- San García de Ingelmos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05210' AND categoria='senderismo'; -- San Juan de la Encinilla
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='05211' AND categoria='senderismo'; -- San Juan de la Nava (sierra)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05213' AND categoria='senderismo'; -- San Juan del Olmo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05217' AND categoria='senderismo'; -- San Miguel de Corneja
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05218' AND categoria='senderismo'; -- San Miguel de Serrezuela
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05219' AND categoria='senderismo'; -- San Pascual
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05220' AND categoria='senderismo'; -- San Pedro del Arroyo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05231' AND categoria='senderismo'; -- San Vicente de Arévalo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='05222' AND categoria='senderismo'; -- Santa Cruz de Pinares (pinar)
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='05224' AND categoria='senderismo'; -- Santa María del Arroyo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05225' AND categoria='senderismo'; -- Santa María del Berrocal
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05226' AND categoria='senderismo'; -- Santa María de los Caballeros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='05227' AND categoria='senderismo'; -- Santa María del Tiétar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05228' AND categoria='senderismo'; -- Santiago del Collado
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05229' AND categoria='senderismo'; -- Santo Domingo de las Posadas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05230' AND categoria='senderismo'; -- Santo Tomé de Zabarcos
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='05233' AND categoria='senderismo'; -- Serranillos (sierra)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05233','sendero','Gredos este','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05234' AND categoria='senderismo'; -- Sigeres
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05235' AND categoria='senderismo'; -- Sinlabajos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05237' AND categoria='senderismo'; -- Solana de Rioalmar
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='05239' AND categoria='senderismo'; -- Sotalbo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05242' AND categoria='senderismo'; -- Tiñosillos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05243' AND categoria='senderismo'; -- Tolbaños
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05245' AND categoria='senderismo'; -- Tornadizos de Ávila
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05247' AND categoria='senderismo'; -- La Torre
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05249' AND categoria='senderismo'; -- Umbrías
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='05251' AND categoria='senderismo'; -- Vadillo de la Sierra
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05252' AND categoria='senderismo'; -- Valdecasa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05253' AND categoria='senderismo'; -- Vega de Santa María
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05254' AND categoria='senderismo'; -- Velayos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='05256' AND categoria='senderismo'; -- Villaflor
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='05257' AND categoria='senderismo'; -- Villafranca de la Sierra (sierra)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05258' AND categoria='senderismo'; -- Villanueva de Gómez
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05259' AND categoria='senderismo'; -- Villanueva del Aceral
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='05260' AND categoria='senderismo'; -- Villanueva del Campillo
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('05260','sendero','Gredos norte','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='05261' AND categoria='senderismo'; -- Villar de Corneja
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05263' AND categoria='senderismo'; -- Villatoro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05264' AND categoria='senderismo'; -- Viñegra de Moraña
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05265' AND categoria='senderismo'; -- Vita
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05266' AND categoria='senderismo'; -- Zapardiel de la Cañada
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05267' AND categoria='senderismo'; -- Zapardiel de la Ribera
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='05901' AND categoria='senderismo'; -- San Juan de Gredos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05902' AND categoria='senderismo'; -- Santa María del Cubillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='05903' AND categoria='senderismo'; -- Diego del Carpio
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='05904' AND categoria='senderismo'; -- Santiago de Tormes
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='05905' AND categoria='senderismo'; -- Villanueva de Ávila
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='51009' AND categoria='senderismo'; -- El Barco de Ávila (51)

-- ============================================================
-- SYNC: MIN (05xxx) → MAX (51xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05037' AND categoria='senderismo') WHERE codigo_ine='51004' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05047' AND categoria='senderismo') WHERE codigo_ine='51005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05057' AND categoria='senderismo') WHERE codigo_ine='51006' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05058' AND categoria='senderismo') WHERE codigo_ine='51007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05241' AND categoria='senderismo') WHERE codigo_ine='51011' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05074' AND categoria='senderismo') WHERE codigo_ine='51012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05089' AND categoria='senderismo') WHERE codigo_ine='51013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05105' AND categoria='senderismo') WHERE codigo_ine='51014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05114' AND categoria='senderismo') WHERE codigo_ine='51016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05165' AND categoria='senderismo') WHERE codigo_ine='51017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05167' AND categoria='senderismo') WHERE codigo_ine='51018' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05182' AND categoria='senderismo') WHERE codigo_ine='51019' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05184' AND categoria='senderismo') WHERE codigo_ine='51020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05186' AND categoria='senderismo') WHERE codigo_ine='51021' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05187' AND categoria='senderismo') WHERE codigo_ine='51022' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05207' AND categoria='senderismo') WHERE codigo_ine='51023' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='05240' AND categoria='senderismo') WHERE codigo_ine='51024' AND categoria='senderismo';

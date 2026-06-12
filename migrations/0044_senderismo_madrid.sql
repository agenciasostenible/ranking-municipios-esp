-- 0044: Senderismo Madrid curado — Sierra de Guadarrama, Sierra Norte, Sierra Oeste
-- Generado: 2026-06-09
-- Canónicos: 28xxx (siempre MIN respecto a 29xxx)
-- Duplicados: 16 pares (ver sync al final)

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '28014' AND '28183') OR
  (codigo_ine BETWEEN '28501' AND '28514') OR
  (codigo_ine BETWEEN '28901' AND '28903') OR
  (codigo_ine BETWEEN '29001' AND '29020')
);

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '28014' AND '28183') OR
  (codigo_ine BETWEEN '28501' AND '28514') OR
  (codigo_ine BETWEEN '28901' AND '28903') OR
  (codigo_ine BETWEEN '29001' AND '29020')
);

-- ============================================================
-- PARQUE NACIONAL SIERRA DE GUADARRAMA — zona TOP
-- ============================================================

-- Cercedilla: estación clásica de montaña, Camino Schmidl, GR-10, Las Dehesas = 96
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine='28038' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28038','sendero','Camino Schmidl — Las Dehesas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28038','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28038','sendero','GR-10 Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28038','sendero','Sendero de los Siete Picos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28038','sendero','Valle de la Fuenfría','excel_curado',date('now'));

-- Rascafría: Valle del Lozoya, Laguna de Peñalara, Monasterio El Paular = 95
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='28120' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28120','sendero','Laguna de Peñalara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28120','sendero','Valle del Lozoya','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28120','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28120','sendero','GR-10 Lozoya','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28120','sendero','Monasterio de El Paular — entorno','excel_curado',date('now'));

-- Navacerrada: Puerto de Navacerrada, Siete Picos, acceso cumbres = 93
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine='28093' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28093','sendero','Puerto de Navacerrada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28093','sendero','Siete Picos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28093','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28093','sendero','GR-10 Guadarrama','excel_curado',date('now'));

-- Manzanares el Real: La Pedriza (icónico), Parque Regional, Embalse Santillana = 94
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='28082' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28082','sendero','La Pedriza — Parque Regional','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28082','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28082','sendero','Embalse de Santillana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28082','sendero','Senda de La Pedriza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28082','sendero','GR-10 Guadarrama','excel_curado',date('now'));

-- El Paular (29009): enclave monástico en Valle del Lozoya, PN Guadarrama = 90
-- Ojo: 29009 no tiene duplicado 28xxx — es canónico propio
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='29009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('29009','sendero','Monasterio de El Paular — entorno','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('29009','sendero','Valle del Lozoya','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('29009','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));

-- Los Molinos: PN Guadarrama, acceso Siete Picos norte = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='28087' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28087','sendero','Siete Picos — acceso norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28087','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28087','sendero','PR-M Guadarrama','excel_curado',date('now'));

-- Guadarrama: PN Guadarrama, PR-M, Puerto de Guadarrama = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='28068' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28068','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28068','sendero','PR-M Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28068','sendero','Puerto de Guadarrama','excel_curado',date('now'));

-- Becerril de la Sierra: Guadarrama, acceso cumbres = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='28018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28018','sendero','Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28018','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));

-- Soto del Real: Guadarrama, La Pedriza entorno, vías pecuarias = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='28144' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28144','sendero','Entorno La Pedriza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28144','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Miraflores de la Sierra: Guadarrama, PR-M, bonitas rutas = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='28085' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28085','sendero','Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28085','sendero','PR-M Miraflores','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28085','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));

-- Collado Mediano: Guadarrama, acceso Siete Picos = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='28046' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28046','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Collado Villalba: Guadarrama, rutas periurbanas = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='28047' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28047','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Hoyo de Manzanares: Guadarrama, próximo La Pedriza = 75
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='28072' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28072','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Colmenar Viejo: Guadarrama, rutas, acceso Manzanares = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='28045' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28045','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Colmenarejo: Guadarrama periurbano = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='28044' AND categoria='senderismo';

-- Moralzarzal: Guadarrama, rutas = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='28090' AND categoria='senderismo';

-- El Boalo: Guadarrama, acceso Manzanares = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='28023' AND categoria='senderismo';

-- Guadalix de la Sierra: Guadarrama norte, embalse = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='28067' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28067','sendero','Embalse de Pedrezuela — entorno','excel_curado',date('now'));

-- ============================================================
-- SIERRA NORTE DE MADRID
-- ============================================================

-- Montejo de la Sierra: Hayedo de Montejo (Reserva Biosfera UNESCO) = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='28088' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28088','sendero','Hayedo de Montejo — Reserva Biosfera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28088','sendero','Sierra Norte de Madrid','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28088','sendero','GR-10 Sierra Norte','excel_curado',date('now'));

-- Canencia: Puerto de Canencia, bonito valle = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='28034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28034','sendero','Puerto de Canencia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28034','sendero','Valle de Canencia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28034','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Somosierra: Puerto de Somosierra, GR, pinar = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='28143' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28143','sendero','Puerto de Somosierra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28143','sendero','GR Sierra Norte','excel_curado',date('now'));

-- Puebla de la Sierra: hayedo, Sierra Norte = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='28118' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28118','sendero','Hayedo de Puebla de la Sierra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28118','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Pinilla del Valle: Valle del Lozoya, PN Guadarrama = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='28112' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28112','sendero','Valle del Lozoya','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28112','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));

-- Lozoya: Valle del Lozoya, PN Guadarrama = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='28076' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28076','sendero','Valle del Lozoya','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28076','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));

-- Garganta de los Montes: Valle del Lozoya = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='28062' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28062','sendero','Garganta de los Montes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28062','sendero','Valle del Lozoya','excel_curado',date('now'));

-- Gargantilla del Lozoya y Pinilla de Buitrago: Valle del Lozoya = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='28063' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28063','sendero','Valle del Lozoya','excel_curado',date('now'));

-- Buitrago del Lozoya: Sierra Norte, embalse = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='28027' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28027','sendero','Embalse de Buitrago','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28027','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Horcajuelo de la Sierra: Sierra Norte, muy rural = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='28071' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28071','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- La Hiruela: Sierra Norte, pinar = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='28069' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28069','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Gascones: Sierra Norte = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='28064' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28064','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Horcajo de la Sierra-Aoslos: Sierra Norte = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='28070' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28070','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Braojos de la Sierra: Sierra Norte = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='28024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28024','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Robregordo: Sierra Norte = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='28126' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28126','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Prádena del Rincón: Sierra Norte = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='28117' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28117','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Berzosa del Lozoya: Sierra Norte = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='28020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28020','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Madarcos: Sierra Norte, muy pequeño = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='28078' AND categoria='senderismo';

-- Navarredonda y San Mamés: Sierra Norte = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='28097' AND categoria='senderismo';

-- Piñuécar-Gandullas: Sierra Norte = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='28114' AND categoria='senderismo';

-- Bustarviejo: Sierra Norte = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='28028' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28028','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Patones: Sierra Norte, Patones de Arriba (pueblo medieval) = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='28107' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28107','sendero','Patones de Arriba — senderos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28107','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Valdemanco: Sierra Norte = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='28158' AND categoria='senderismo';

-- Cervera de Buitrago: Sierra Norte = 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='28039' AND categoria='senderismo';

-- Cabanillas de la Sierra: Sierra Norte = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='28029' AND categoria='senderismo';

-- La Cabrera: Sierra Norte, acceso Cuenca Alta Manzanares = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='28030' AND categoria='senderismo';

-- El Berrueco: Sierra Norte, embalse = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='28021' AND categoria='senderismo';

-- Torrelaguna: Sierra Norte = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='28151' AND categoria='senderismo';

-- El Molar: Sierra Norte, acceso embalse = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='28086' AND categoria='senderismo';

-- Navalafuente: Sierra Norte = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='28094' AND categoria='senderismo';

-- Venturada: Sierra Norte = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='28169' AND categoria='senderismo';

-- Pedrezuela: Sierra Norte = 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='28108' AND categoria='senderismo';

-- Lozoyuela-Navas-Sieteiglesias 28901: Sierra Norte = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='28901' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28901','sendero','Sierra Norte de Madrid','excel_curado',date('now'));

-- Puentes Viejas 28902: Sierra Norte, embalse = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='28902' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28902','sendero','Embalse de Puentes Viejas','excel_curado',date('now'));

-- Villavieja del Lozoya: Sierra Norte = 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='28182' AND categoria='senderismo';

-- La Serna del Monte: Sierra Norte = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='28138' AND categoria='senderismo';

-- Serrada de la Fuente: Sierra Norte = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='28139' AND categoria='senderismo';

-- ============================================================
-- SIERRA OESTE (Gredos madrileño, Alberche)
-- ============================================================

-- Santa María de la Alameda: Puerto Cruz Verde, Sierra del Valle, alto = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='28135' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28135','sendero','Puerto de la Cruz Verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28135','sendero','Valle de Iruelas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28135','sendero','Sierra del Valle','excel_curado',date('now'));

-- El Escorial: Monte Abantos, monumental + senderismo = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='28054' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28054','sendero','Monte Abantos — PR-M 24','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28054','sendero','Sierra del Guadarrama oeste','excel_curado',date('now'));

-- San Lorenzo de El Escorial: Monte Abantos, entorno Monasterio = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='28131' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28131','sendero','Monte Abantos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28131','sendero','PR-M Guadarrama oeste','excel_curado',date('now'));

-- Robledo de Chavela: Sierra Oeste = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='28125' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28125','sendero','Sierra Oeste de Madrid','excel_curado',date('now'));

-- Rozas de Puerto Real: Sierra Oeste, Puerto Real = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='28128' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28128','sendero','Puerto Real — Sierra Oeste','excel_curado',date('now'));

-- Zarzalejo: Sierra Oeste, entorno El Escorial = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='28183' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28183','sendero','Sierra Oeste de Madrid','excel_curado',date('now'));

-- Cadalso de los Vidrios: Sierra Oeste, Toros de Guisando cercano = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='28031' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28031','sendero','Sierra Oeste de Madrid','excel_curado',date('now'));

-- San Martín de Valdeiglesias: Sierra Oeste, embalse San Juan = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='28133' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28133','sendero','Embalse de San Juan','excel_curado',date('now'));

-- Pelayos de la Presa: Sierra Oeste, embalse = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='28109' AND categoria='senderismo';

-- Valdemaqueda: Sierra Oeste = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='28159' AND categoria='senderismo';

-- Navas del Rey: Sierra Oeste = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='28099' AND categoria='senderismo';

-- Chapinería: Sierra Oeste = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='28051' AND categoria='senderismo';

-- Fresnedillas de la Oliva: Sierra Oeste = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='28056' AND categoria='senderismo';

-- Navalagamella: Sierra Oeste = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='28095' AND categoria='senderismo';

-- Colmenar del Arroyo: Sierra Oeste = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='28042' AND categoria='senderismo';

-- Villa del Prado: Sierra Oeste, ribera Alberche = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='28171' AND categoria='senderismo';

-- Cenicientos: Sierra Oeste = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='28037' AND categoria='senderismo';

-- Navalcarnero: campiña = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='28096' AND categoria='senderismo';

-- Galapagar: periurbano Guadarrama = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='28061' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28061','sendero','Sierra de Guadarrama — acceso','excel_curado',date('now'));

-- Torrelodones: periurbano Guadarrama = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='28152' AND categoria='senderismo';

-- Las Rozas de Madrid: periurbano = 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='28127' AND categoria='senderismo';

-- ============================================================
-- SUDESTE — Tajo / Tajuña / Vegas
-- ============================================================

-- Aranjuez (29003): Jardines Históricos, Ribera del Tajo = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='29003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('29003','sendero','Ribera del Tajo — Aranjuez','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('29003','sendero','Soto de las Infantas','excel_curado',date('now'));

-- Chinchón: vino/patrimonio, senderismo moderado = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='28052' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28052','sendero','Caminos de Chinchón — entorno','excel_curado',date('now'));

-- Fuentidueña de Tajo: ribera = 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='28060' AND categoria='senderismo';

-- Morata de Tajuña: Tajuña = 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='28091' AND categoria='senderismo';

-- Perales de Tajuña: Tajuña = 34
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='28110' AND categoria='senderismo';

-- Orusco de Tajuña: Tajuña = 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='28102' AND categoria='senderismo';

-- Villarejo de Salvanés: campiña = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='28180' AND categoria='senderismo';

-- Arganda del Rey: Jarama = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='28014' AND categoria='senderismo';

-- Belmonte de Tajo: campiña = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='28019' AND categoria='senderismo';

-- Estremera: campiña = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='28055' AND categoria='senderismo';

-- Titulcia: Tajo = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='28147' AND categoria='senderismo';

-- ============================================================
-- MUNICIPIOS METROPOLITANOS / MESETA (valores bajos)
-- ============================================================

UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='28079' AND categoria='senderismo'; -- Madrid capital
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='28022' AND categoria='senderismo'; -- Boadilla del Monte
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='28026' AND categoria='senderismo'; -- Brunete
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28032' AND categoria='senderismo'; -- Camarma de Esteruelas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28033' AND categoria='senderismo'; -- Campo Real
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28035' AND categoria='senderismo'; -- Carabaña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28036' AND categoria='senderismo'; -- Casarrubuelos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28040' AND categoria='senderismo'; -- Ciempozuelos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28041' AND categoria='senderismo'; -- Cobeña
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='28043' AND categoria='senderismo'; -- Colmenar de Oreja
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28048' AND categoria='senderismo'; -- Corpa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28049' AND categoria='senderismo'; -- Coslada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28050' AND categoria='senderismo'; -- Cubas de la Sagra
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28053' AND categoria='senderismo'; -- Daganzo de Arriba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28057' AND categoria='senderismo'; -- Fresno de Torote
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28058' AND categoria='senderismo'; -- Fuenlabrada
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28059' AND categoria='senderismo'; -- Fuente el Saz de Jarama
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28065' AND categoria='senderismo'; -- Getafe
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28066' AND categoria='senderismo'; -- Griñón
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28073' AND categoria='senderismo'; -- Humanes de Madrid
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28074' AND categoria='senderismo'; -- Leganés
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28075' AND categoria='senderismo'; -- Loeches
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28080' AND categoria='senderismo'; -- Majadahonda
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28083' AND categoria='senderismo'; -- Meco
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28084' AND categoria='senderismo'; -- Mejorada del Campo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28089' AND categoria='senderismo'; -- Moraleja de Enmedio
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28092' AND categoria='senderismo'; -- Móstoles
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28100' AND categoria='senderismo'; -- Nuevo Baztán
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28101' AND categoria='senderismo'; -- Olmeda de las Fuentes
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28104' AND categoria='senderismo'; -- Paracuellos de Jarama
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28106' AND categoria='senderismo'; -- Parla
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28111' AND categoria='senderismo'; -- Pezuela de las Torres
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28113' AND categoria='senderismo'; -- Pinto
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28115' AND categoria='senderismo'; -- Pozuelo de Alarcón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28116' AND categoria='senderismo'; -- Pozuelo del Rey
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28119' AND categoria='senderismo'; -- Quijorna
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28121' AND categoria='senderismo'; -- Redueña
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28122' AND categoria='senderismo'; -- Ribatejada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28123' AND categoria='senderismo'; -- Rivas-Vaciamadrid
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28124' AND categoria='senderismo'; -- Robledillo de la Jara
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28129' AND categoria='senderismo'; -- San Agustín del Guadalix
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28130' AND categoria='senderismo'; -- San Fernando de Henares
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28132' AND categoria='senderismo'; -- San Martín de la Vega
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28134' AND categoria='senderismo'; -- San Sebastián de los Reyes
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28136' AND categoria='senderismo'; -- Santorcaz
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28137' AND categoria='senderismo'; -- Los Santos de la Humosa
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28140' AND categoria='senderismo'; -- Serranillos del Valle
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28141' AND categoria='senderismo'; -- Sevilla la Nueva
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28145' AND categoria='senderismo'; -- Talamanca de Jarama
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28146' AND categoria='senderismo'; -- Tielmes
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28148' AND categoria='senderismo'; -- Torrejón de Ardoz
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28149' AND categoria='senderismo'; -- Torrejón de la Calzada
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28150' AND categoria='senderismo'; -- Torrejón de Velasco
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28153' AND categoria='senderismo'; -- Torremocha de Jarama
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28154' AND categoria='senderismo'; -- Torres de la Alameda
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28155' AND categoria='senderismo'; -- Valdaracete
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28156' AND categoria='senderismo'; -- Valdeavero
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28157' AND categoria='senderismo'; -- Valdelaguna
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28160' AND categoria='senderismo'; -- Valdemorillo
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28161' AND categoria='senderismo'; -- Valdemoro
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28162' AND categoria='senderismo'; -- Valdeolmos-Alalpardo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28163' AND categoria='senderismo'; -- Valdepiélagos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28164' AND categoria='senderismo'; -- Valdetorres de Jarama
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28165' AND categoria='senderismo'; -- Valdilecha
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28166' AND categoria='senderismo'; -- Valverde de Alcalá
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28167' AND categoria='senderismo'; -- Velilla de San Antonio
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28168' AND categoria='senderismo'; -- El Vellón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28170' AND categoria='senderismo'; -- Villaconejos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28172' AND categoria='senderismo'; -- Villalbilla
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28173' AND categoria='senderismo'; -- Villamanrique de Tajo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28174' AND categoria='senderismo'; -- Villamanta
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28175' AND categoria='senderismo'; -- Villamantilla
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28176' AND categoria='senderismo'; -- Villanueva de la Cañada
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28177' AND categoria='senderismo'; -- Villanueva del Pardillo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28178' AND categoria='senderismo'; -- Villanueva de Perales
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28179' AND categoria='senderismo'; -- Villar del Olmo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28181' AND categoria='senderismo'; -- Villaviciosa de Odón
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28017' AND categoria='senderismo'; -- Batres
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28025' AND categoria='senderismo'; -- Brea de Tajo

-- Municipios históricos de Madrid (28501-28514) — todos bajos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28501' AND categoria='senderismo'; -- Aravaca
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28504' AND categoria='senderismo'; -- Canillas
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28505' AND categoria='senderismo'; -- Canillejas
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28506' AND categoria='senderismo'; -- Carabanchel Alto
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28507' AND categoria='senderismo'; -- Carabanchel Bajo
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28508' AND categoria='senderismo'; -- Chamartín de la Rosa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='28509' AND categoria='senderismo'; -- Fuencarral (monte)
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='28510' AND categoria='senderismo'; -- Hortaleza
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28512' AND categoria='senderismo'; -- Húmera
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='28513' AND categoria='senderismo'; -- El Pardo (monte)
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='28514' AND categoria='senderismo'; -- Vallecas

-- Tres Cantos 28903: periurbano = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='28903' AND categoria='senderismo';

-- Alcalá de Henares 29001: histórico, Henares = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='29001' AND categoria='senderismo';

-- Alcorcón 29002: metropolitano = 10
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='29002' AND categoria='senderismo';

-- ============================================================
-- SYNC: MIN (28xxx) → MAX (29xxx) para los 16 pares
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28027' AND categoria='senderismo') WHERE codigo_ine='29004' AND categoria='senderismo'; -- Buitrago
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28038' AND categoria='senderismo') WHERE codigo_ine='29005' AND categoria='senderismo'; -- Cercedilla
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28052' AND categoria='senderismo') WHERE codigo_ine='29006' AND categoria='senderismo'; -- Chinchón
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28045' AND categoria='senderismo') WHERE codigo_ine='29007' AND categoria='senderismo'; -- Colmenar Viejo
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28054' AND categoria='senderismo') WHERE codigo_ine='29008' AND categoria='senderismo'; -- El Escorial
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28058' AND categoria='senderismo') WHERE codigo_ine='29010' AND categoria='senderismo'; -- Fuenlabrada
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28065' AND categoria='senderismo') WHERE codigo_ine='29011' AND categoria='senderismo'; -- Getafe
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28074' AND categoria='senderismo') WHERE codigo_ine='29012' AND categoria='senderismo'; -- Leganés
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28087' AND categoria='senderismo') WHERE codigo_ine='29013' AND categoria='senderismo'; -- Los Molinos
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28079' AND categoria='senderismo') WHERE codigo_ine='29014' AND categoria='senderismo'; -- Madrid
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28082' AND categoria='senderismo') WHERE codigo_ine='29015' AND categoria='senderismo'; -- Manzanares el Real
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28092' AND categoria='senderismo') WHERE codigo_ine='29016' AND categoria='senderismo'; -- Móstoles
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28093' AND categoria='senderismo') WHERE codigo_ine='29017' AND categoria='senderismo'; -- Navacerrada
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28107' AND categoria='senderismo') WHERE codigo_ine='29018' AND categoria='senderismo'; -- Patones
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28120' AND categoria='senderismo') WHERE codigo_ine='29019' AND categoria='senderismo'; -- Rascafría
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='28131' AND categoria='senderismo') WHERE codigo_ine='29020' AND categoria='senderismo'; -- San Lorenzo de El Escorial

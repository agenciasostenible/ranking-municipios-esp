-- 0041: Senderismo Palencia curado — Fuentes Carrionas, Camino de Santiago
-- Generado: 2026-06-09

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '34015' AND '34246') OR
  (codigo_ine BETWEEN '34901' AND '34904') OR
  (codigo_ine BETWEEN '35001' AND '35010')
);

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '34015' AND '34246') OR
  (codigo_ine BETWEEN '34901' AND '34904') OR
  (codigo_ine BETWEEN '35001' AND '35010')
);

-- ============================================================
-- FUENTES CARRIONAS — TOP Palencia
-- ============================================================

-- Cervera de Pisuerga: Fuentes Carrionas, espectacular = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='34056' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34056','sendero','Parque Natural Fuentes Carrionas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34056','sendero','Río Carrión alto','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34056','sendero','PR-P 8','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34056','sendero','Bosque de Valdecebollas','excel_curado',date('now'));

-- Triollo: Fuentes Carrionas = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='34185' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34185','sendero','Parque Natural Fuentes Carrionas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34185','sendero','Pico Espiguete','excel_curado',date('now'));

-- Guardo: Fuentes Carrionas = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='34080' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34080','sendero','Parque Natural Fuentes Carrionas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34080','sendero','Sendero del Río Carrión','excel_curado',date('now'));

-- Velilla del Río Carrión: Fuentes Carrionas = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='34199' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34199','sendero','Fuentes Carrionas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34199','sendero','Río Carrión','excel_curado',date('now'));

-- Brañosera: montaña, Puerto de Brañosera = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='34036' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34036','sendero','Montaña Palentina','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34036','sendero','Puerto de Brañosera','excel_curado',date('now'));

-- Barruelo de Santullán: montaña = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='34027' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34027','sendero','Montaña Palentina','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34027','sendero','Minas y sierra','excel_curado',date('now'));

-- Respenda de la Peña: montaña = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='34151' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34151','sendero','Montaña Palentina','excel_curado',date('now'));

-- Castrejón de la Peña: montaña = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='34049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34049','sendero','Montaña Palentina','excel_curado',date('now'));

-- Pomar de Valdivia: montaña = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='34135' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34135','sendero','Montaña Palentina','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34135','sendero','Valle de Valdavia','excel_curado',date('now'));

-- Dehesa de Montejo: montaña, hayedo = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='34067' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34067','sendero','Montaña Palentina','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34067','sendero','Hayedo','excel_curado',date('now'));

-- Berzosilla: montaña = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='34032' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34032','sendero','Montaña Palentina','excel_curado',date('now'));

-- Salinas de Pisuerga: montaña = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='34158' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34158','sendero','Montaña Palentina','excel_curado',date('now'));

-- San Cebrián de Mudá: montaña = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='34160' AND categoria='senderismo';

-- Mudá: montaña = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='34110' AND categoria='senderismo';

-- Santibáñez de la Peña: montaña = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='34171' AND categoria='senderismo';

-- Polentinos: montaña = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='34134' AND categoria='senderismo';

-- La Pernía: montaña = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='34904' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34904','sendero','Fuentes Carrionas — La Pernía','excel_curado',date('now'));

-- Aguilar de Campoo: embalse, sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='35001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35001','sendero','Embalse de Aguilar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35001','sendero','Montaña Palentina','excel_curado',date('now'));

-- Herrera de Pisuerga: Pisuerga, campo = 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='34083' AND categoria='senderismo';

-- ============================================================
-- CAMINO DE SANTIAGO
-- ============================================================

-- Frómista: Camino de Santiago = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='34074' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34074','sendero','Camino de Santiago Francés','excel_curado',date('now'));

-- Carrión de los Condes: Camino de Santiago = 26
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='34047' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34047','sendero','Camino de Santiago Francés','excel_curado',date('now'));

-- Villalcázar de Sirga: Camino = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='34215' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34215','sendero','Camino de Santiago Francés','excel_curado',date('now'));

-- Paredes de Nava: Camino = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='34123' AND categoria='senderismo';

-- Palencia capital: ciudad = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='34120' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34120','sendero','Río Carrión — Palencia','excel_curado',date('now'));

-- ============================================================
-- CAMPO / CEREALISTA
-- ============================================================
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34015' AND categoria='senderismo'; -- Arconada
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='34017' AND categoria='senderismo'; -- Astudillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34018' AND categoria='senderismo'; -- Autilla del Pino
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34019' AND categoria='senderismo'; -- Autillo de Campos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34020' AND categoria='senderismo'; -- Ayuela
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='34022' AND categoria='senderismo'; -- Baltanás (cerrato)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34022','sendero','Cerrato Palentino','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34024' AND categoria='senderismo'; -- Baquerín de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34025' AND categoria='senderismo'; -- Bárcena de Campos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34027' AND categoria='senderismo'; -- ya hecho (Barruelo)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34028' AND categoria='senderismo'; -- Báscones de Ojeda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34031' AND categoria='senderismo'; -- Belmonte de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34033' AND categoria='senderismo'; -- Boada de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34034' AND categoria='senderismo'; -- Boadilla del Camino
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='34035' AND categoria='senderismo'; -- Boadilla de Rioseco
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34037' AND categoria='senderismo'; -- Buenavista de Valdavia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34038' AND categoria='senderismo'; -- Bustillo de la Vega
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34039' AND categoria='senderismo'; -- Bustillo del Páramo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34041' AND categoria='senderismo'; -- Calahorra de Boedo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34042' AND categoria='senderismo'; -- Calzada de los Molinos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34045' AND categoria='senderismo'; -- Capillas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34046' AND categoria='senderismo'; -- Cardeñosa de Volpejera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34048' AND categoria='senderismo'; -- Castil de Vela
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34050' AND categoria='senderismo'; -- Castrillo de Don Juan
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34051' AND categoria='senderismo'; -- Castrillo de Onielo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34052' AND categoria='senderismo'; -- Castrillo de Villavega
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34053' AND categoria='senderismo'; -- Castromocho
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34055' AND categoria='senderismo'; -- Cervatos de la Cueza
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34057' AND categoria='senderismo'; -- Cevico de la Torre
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34058' AND categoria='senderismo'; -- Cevico Navero
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34059' AND categoria='senderismo'; -- Cisneros
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='34060' AND categoria='senderismo'; -- Cobos de Cerrato (cerrato)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34061' AND categoria='senderismo'; -- Collazos de Boedo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34062' AND categoria='senderismo'; -- Congosto de Valdavia
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34063' AND categoria='senderismo'; -- Cordovilla la Real (cerrato)
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='34066' AND categoria='senderismo'; -- Cubillas de Cerrato
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34068' AND categoria='senderismo'; -- Dehesa de Romanos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34069' AND categoria='senderismo'; -- Dueñas
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='34070' AND categoria='senderismo'; -- Espinosa de Cerrato
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34071' AND categoria='senderismo'; -- Espinosa de Villagonzalo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34072' AND categoria='senderismo'; -- Frechilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34073' AND categoria='senderismo'; -- Fresno del Río
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34076' AND categoria='senderismo'; -- Fuentes de Nava
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34077' AND categoria='senderismo'; -- Fuentes de Valdepero
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34079' AND categoria='senderismo'; -- Grijota
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34081' AND categoria='senderismo'; -- Guaza de Campos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34082' AND categoria='senderismo'; -- Hérmedes de Cerrato
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34084' AND categoria='senderismo'; -- Herrera de Valdecañas
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='34086' AND categoria='senderismo'; -- Hontoria de Cerrato
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='34087' AND categoria='senderismo'; -- Hornillos de Cerrato
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34088' AND categoria='senderismo'; -- Husillos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34089' AND categoria='senderismo'; -- Itero de la Vega
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34091' AND categoria='senderismo'; -- Lagartos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34092' AND categoria='senderismo'; -- Lantadilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34093' AND categoria='senderismo'; -- La Vid de Ojeda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34094' AND categoria='senderismo'; -- Ledigos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34096' AND categoria='senderismo'; -- Lomas de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34098' AND categoria='senderismo'; -- Magaz de Pisuerga
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34099' AND categoria='senderismo'; -- Manquillos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34100' AND categoria='senderismo'; -- Mantinos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34101' AND categoria='senderismo'; -- Marcilla de Campos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34102' AND categoria='senderismo'; -- Mazariegos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34103' AND categoria='senderismo'; -- Mazuecos de Valdeginate
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34104' AND categoria='senderismo'; -- Melgar de Yuso
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34106' AND categoria='senderismo'; -- Meneses de Campos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34107' AND categoria='senderismo'; -- Micieces de Ojeda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34108' AND categoria='senderismo'; -- Monzón de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34109' AND categoria='senderismo'; -- Moratinos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34112' AND categoria='senderismo'; -- Nogal de las Huertas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34113' AND categoria='senderismo'; -- Olea de Boedo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34114' AND categoria='senderismo'; -- Olmos de Ojeda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34116' AND categoria='senderismo'; -- Osornillo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34901' AND categoria='senderismo'; -- Osorno la Mayor
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34121' AND categoria='senderismo'; -- Palenzuela
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34122' AND categoria='senderismo'; -- Páramo de Boedo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34124' AND categoria='senderismo'; -- Payo de Ojeda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34125' AND categoria='senderismo'; -- Pedraza de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34126' AND categoria='senderismo'; -- Pedrosa de la Vega
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34127' AND categoria='senderismo'; -- Perales
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34129' AND categoria='senderismo'; -- Pino del Río
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34130' AND categoria='senderismo'; -- Piña de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34131' AND categoria='senderismo'; -- Población de Arroyo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34132' AND categoria='senderismo'; -- Población de Campos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='34133' AND categoria='senderismo'; -- Población de Cerrato
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34136' AND categoria='senderismo'; -- Poza de la Vega
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34137' AND categoria='senderismo'; -- Pozo de Urama
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='34139' AND categoria='senderismo'; -- Prádanos de Ojeda (sierra)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34139','sendero','Montaña Palentina','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34141' AND categoria='senderismo'; -- Quintana del Puente
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34143' AND categoria='senderismo'; -- Quintanilla de Onsoña
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='34146' AND categoria='senderismo'; -- Reinoso de Cerrato
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34147' AND categoria='senderismo'; -- Renedo de la Vega
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34149' AND categoria='senderismo'; -- Requena de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34152' AND categoria='senderismo'; -- Revenga de Campos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34154' AND categoria='senderismo'; -- Revilla de Collazos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34155' AND categoria='senderismo'; -- Ribas de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34156' AND categoria='senderismo'; -- Riberos de la Cueza
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34159' AND categoria='senderismo'; -- San Cebrián de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34161' AND categoria='senderismo'; -- San Cristóbal de Boedo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34163' AND categoria='senderismo'; -- San Mamés de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34165' AND categoria='senderismo'; -- San Román de la Cuba
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34167' AND categoria='senderismo'; -- Santa Cecilia del Alcor
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34168' AND categoria='senderismo'; -- Santa Cruz de Boedo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34169' AND categoria='senderismo'; -- Santervás de la Vega
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34170' AND categoria='senderismo'; -- Santibáñez de Ecla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34174' AND categoria='senderismo'; -- Santoyo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34175' AND categoria='senderismo'; -- La Serna
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34176' AND categoria='senderismo'; -- Sotobañado y Priorato
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34177' AND categoria='senderismo'; -- Soto de Cerrato
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34178' AND categoria='senderismo'; -- Tabanera de Cerrato
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34179' AND categoria='senderismo'; -- Tabanera de Valdavia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34180' AND categoria='senderismo'; -- Támara de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34181' AND categoria='senderismo'; -- Tariego de Cerrato
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34182' AND categoria='senderismo'; -- Torquemada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34184' AND categoria='senderismo'; -- Torremormojón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34186' AND categoria='senderismo'; -- Valbuena de Pisuerga
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34189' AND categoria='senderismo'; -- Valdeolmillos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34190' AND categoria='senderismo'; -- Valderrábano
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34192' AND categoria='senderismo'; -- Valde-Ucieza
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34196' AND categoria='senderismo'; -- Valle de Cerrato
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34902' AND categoria='senderismo'; -- Valle del Retortillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34903' AND categoria='senderismo'; -- Loma de Ucieza
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='34201' AND categoria='senderismo'; -- Vertavillo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34202' AND categoria='senderismo'; -- Villabasta
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34204' AND categoria='senderismo'; -- Villacidaler
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34205' AND categoria='senderismo'; -- Villaconancio
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34206' AND categoria='senderismo'; -- Villada
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34208' AND categoria='senderismo'; -- Villaeles de Valdavia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34210' AND categoria='senderismo'; -- Villahán
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34211' AND categoria='senderismo'; -- Villaherreros
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34213' AND categoria='senderismo'; -- Villalaco
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='34214' AND categoria='senderismo'; -- Villalba de Guardo (montaña)
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34216' AND categoria='senderismo'; -- Villalcón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34217' AND categoria='senderismo'; -- Villalobón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34218' AND categoria='senderismo'; -- Villaluenga de la Vega
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34220' AND categoria='senderismo'; -- Villamartín de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34221' AND categoria='senderismo'; -- Villamediana
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34222' AND categoria='senderismo'; -- Villameriel
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34223' AND categoria='senderismo'; -- Villamoronta
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34224' AND categoria='senderismo'; -- Villamuera de la Cueza
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34225' AND categoria='senderismo'; -- Villamuriel de Cerrato
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34227' AND categoria='senderismo'; -- Villanueva del Rebollar
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34228' AND categoria='senderismo'; -- Villanuño de Valdavia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34229' AND categoria='senderismo'; -- Villaprovedo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34230' AND categoria='senderismo'; -- Villarmentero de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34231' AND categoria='senderismo'; -- Villarrabé
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34232' AND categoria='senderismo'; -- Villarramiel
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34233' AND categoria='senderismo'; -- Villasarracino
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34234' AND categoria='senderismo'; -- Villasila de Valdavia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34236' AND categoria='senderismo'; -- Villaturde
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34237' AND categoria='senderismo'; -- Villaumbrales
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34238' AND categoria='senderismo'; -- Villaviudas
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34240' AND categoria='senderismo'; -- Villerías de Campos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34241' AND categoria='senderismo'; -- Villodre
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34242' AND categoria='senderismo'; -- Villodrigo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34243' AND categoria='senderismo'; -- Villoldo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='34245' AND categoria='senderismo'; -- Villota del Páramo
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='34246' AND categoria='senderismo'; -- Villovieco
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='34023' AND categoria='senderismo'; -- Venta de Baños

-- ============================================================
-- SYNC: MIN → MAX
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='34029' AND categoria='senderismo') WHERE codigo_ine='35002' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='34047' AND categoria='senderismo') WHERE codigo_ine='35003' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='34056' AND categoria='senderismo') WHERE codigo_ine='35004' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='34069' AND categoria='senderismo') WHERE codigo_ine='35005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='34074' AND categoria='senderismo') WHERE codigo_ine='35006' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='34080' AND categoria='senderismo') WHERE codigo_ine='35007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='34120' AND categoria='senderismo') WHERE codigo_ine='35008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='34157' AND categoria='senderismo') WHERE codigo_ine='35009' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='34215' AND categoria='senderismo') WHERE codigo_ine='35010' AND categoria='senderismo';

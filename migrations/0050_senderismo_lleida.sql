-- 0050: Senderismo Lleida curado — Aigüestortes, Val d''Aran, Pallars Sobirà, Cadí-Moixeró, Montsec
-- Generado: 2026-06-09
-- Canónicos: 25xxx (MIN) respecto a 27xxx (MAX); 6 pares
-- Standalones 27xxx: Baqueira-Beret, Esterri d''Àneu, La Seu d'Urgell, Les (Val d''Aran), Lleida, Mollerussa, Tàrrega, Vielha e Mijaran, Àger

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '25015' AND '25913') OR
  (codigo_ine BETWEEN '27001' AND '27015')
);

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '25015' AND '25913') OR
  (codigo_ine BETWEEN '27001' AND '27015')
);

-- 3a. Bulk bajo por defecto
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '25015' AND '25913') OR
  (codigo_ine BETWEEN '27001' AND '27015')
);

-- ============================================================
-- PARQUE NACIONAL AIGÜESTORTES I ESTANY DE SANT MAURICI
-- ============================================================

-- Valle de Bohí 25043: PN Aigüestortes, icónico — Laguna de Sant Maurici, Caldes de Boí = 98
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine='25043' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25043','sendero','PN Aigüestortes i Estany de Sant Maurici','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25043','sendero','Caldes de Boí','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25043','sendero','Estany de Sant Maurici','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25043','sendero','GR-11 Pirineos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25043','sendero','Circ de Colomers','excel_curado',date('now'));

-- Espot 25082 (MIN dup): PN Aigüestortes, entrada principal = 96
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine='25082' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25082','sendero','PN Aigüestortes i Estany de Sant Maurici','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25082','sendero','Estany de Sant Maurici','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25082','sendero','GR-11 Pirineos','excel_curado',date('now'));

-- El Pont de Suert 25173: entrada Valle de Bohí = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='25173' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25173','sendero','Acceso Valle de Bohí','excel_curado',date('now'));

-- Vilaller: Alta Ribagorça = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='25245' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25245','sendero','Alta Ribagorça — GR-11','excel_curado',date('now'));

-- Sarroca de Bellera: Pallars Jussà = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='25201' AND categoria='senderismo';

-- La Torre de Cabdella: Pallars Jussà = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='25227' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25227','sendero','Pallars Jussà — alta montaña','excel_curado',date('now'));

-- Senterada: Pallars Jussà = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='25202' AND categoria='senderismo';

-- Castell de Mur 25904: castillo románico, Pallars Jussà = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='25904' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25904','sendero','Castell de Mur','excel_curado',date('now'));

-- ============================================================
-- VAL D'ARAN
-- ============================================================

-- Baqueira-Beret 27002 (standalone): Val d''Aran, esquí+senderismo = 94
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='27002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27002','sendero','Baqueira-Beret — Val d''Aran','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27002','sendero','Circ de Colomers','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27002','sendero','GR-11 Val d''Aran','excel_curado',date('now'));

-- Vielha e Mijaran 27014 (standalone): Val d''Aran capital = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='27014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27014','sendero','Val d''Aran','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27014','sendero','GR-11 Val d''Aran','excel_curado',date('now'));

-- Viella y Medio Arán 25243: misma área (código distinto) = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='25243' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25243','sendero','Val d''Aran','excel_curado',date('now'));

-- Alto Arán 25025: Val d''Aran = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='25025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25025','sendero','Val d''Aran alta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25025','sendero','GR-11 Pirineos','excel_curado',date('now'));

-- Les (Val d''Aran) 27007 (standalone): Val d''Aran = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='27007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27007','sendero','Val d''Aran','excel_curado',date('now'));

-- Lés 25121: Val d''Aran = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='25121' AND categoria='senderismo';

-- Bosost 25059: Val d''Aran = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='25059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25059','sendero','Val d''Aran','excel_curado',date('now'));

-- Las Bordas 25057: Val d''Aran = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='25057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25057','sendero','Val d''Aran — Artiga de Lin','excel_curado',date('now'));

-- Caneján 25063: Val d''Aran = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='25063' AND categoria='senderismo';

-- Bausen 25045: Val d''Aran = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='25045' AND categoria='senderismo';

-- Vilamós 25247: Val d''Aran = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='25247' AND categoria='senderismo';

-- ============================================================
-- PALLARS SOBIRÀ
-- ============================================================

-- Alto Aneu 25024: PN Aigüestortes, Pallars Sobirà = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='25024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25024','sendero','PN Aigüestortes — Pallars Sobirà','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25024','sendero','GR-11 Pirineos','excel_curado',date('now'));

-- Esterri de Aneu 25086: Pallars Sobirà = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='25086' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25086','sendero','Pallars Sobirà','excel_curado',date('now'));

-- Esterri d''Àneu 27005 (standalone): mismo municipio área = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='27005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27005','sendero','Pallars Sobirà','excel_curado',date('now'));

-- Lladorre 25123: Pallars Sobirà = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='25123' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25123','sendero','Pallars Sobirà alta','excel_curado',date('now'));

-- Vall de Cardós 25901: Pallars Sobirà = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='25901' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25901','sendero','Vall de Cardós','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25901','sendero','GR-11 Pirineos','excel_curado',date('now'));

-- Esterri de Cardós 25087: Pallars Sobirà = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='25087' AND categoria='senderismo';

-- Isil 25549: Pallars Sobirà = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='25549' AND categoria='senderismo';

-- Valencia de Aneu 25589: Pallars Sobirà = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='25589' AND categoria='senderismo';

-- La Guingueta d''Àneu 25903: Pallars Sobirà = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='25903' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25903','sendero','Pallars Sobirà','excel_curado',date('now'));

-- Farrera 25089: Pallars Sobirà = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='25089' AND categoria='senderismo';

-- Tirvia 25221: Pallars Sobirà = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='25221' AND categoria='senderismo';

-- Sort 25209 (MIN dup): capital Pallars Sobirà, GR = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='25209' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25209','sendero','Pallars Sobirà','excel_curado',date('now'));

-- Rialp 25183: Pallars Sobirà = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='25183' AND categoria='senderismo';

-- Llavorsí 25126: Noguera Pallaresa, rafting = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='25126' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25126','sendero','Noguera Pallaresa — senderismo','excel_curado',date('now'));

-- Salás de Pallars 25190: Pallars Sobirà = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='25190' AND categoria='senderismo';

-- Bajo Pallars 25039: Pallars Sobirà = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='25039' AND categoria='senderismo';

-- Aransís 25508: Pallars Sobirà = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='25508' AND categoria='senderismo';

-- Son del Pino 25577: Pallars = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='25577' AND categoria='senderismo';

-- Sorpe 25578: Pallars = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='25578' AND categoria='senderismo';

-- Soriguera 25208: Pallars Sobirà = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='25208' AND categoria='senderismo';

-- ============================================================
-- PALLARS JUSSÀ / CONGOST DE COLLEGATS
-- ============================================================

-- Gavet de la Conca 25098: Congost de Collegats, Pyrénées = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='25098' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25098','sendero','Congost de Collegats','excel_curado',date('now'));

-- Isona y Conca Dellá 25115: Prepirineo = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='25115' AND categoria='senderismo';

-- Tremp 25234 (MIN dup): capital Pallars Jussà = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='25234' AND categoria='senderismo';

-- Puebla de Segur 25171: acceso Aigüestortes = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='25171' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25171','sendero','Acceso PN Aigüestortes','excel_curado',date('now'));

-- Torreflor 25907: Pallars = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='25907' AND categoria='senderismo';

-- Sant Esteve de la Sarga 25196: Pallars = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='25196' AND categoria='senderismo';

-- Conca de Dalt 25161: Pallars = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='25161' AND categoria='senderismo';

-- Benavent de Tremp 25523: Pallars = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='25523' AND categoria='senderismo';

-- La Pobleta de Bellveí 25565: Pallars = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='25565' AND categoria='senderismo';

-- ============================================================
-- CADÍ-MOIXERÓ / ALT URGELL / CERDANYA
-- ============================================================

-- Gósol 25100: Cadí-Moixeró, Pedraforca área = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='25100' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25100','sendero','Cadí-Moixeró — Pedraforca área','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25100','sendero','GR-7 Cerdanya-Berguedà','excel_curado',date('now'));

-- La Coma i la Pedra 25163: Cerdanya/Pre-Pirineos = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='25163' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25163','sendero','Pre-Pirineos lleida','excel_curado',date('now'));

-- Bellver de Cerdaña 25051: Cerdanya = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='25051' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25051','sendero','Cerdanya','excel_curado',date('now'));

-- Montellá Martinet 25139: Cerdanya = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='25139' AND categoria='senderismo';

-- Prullans 25179: Cerdanya = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='25179' AND categoria='senderismo';

-- Prats y Sampsor 25175: Cerdanya = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='25175' AND categoria='senderismo';

-- Fígols y Aliñá 25908: Cadí-Moixeró = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='25908' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25908','sendero','Cadí-Moixeró','excel_curado',date('now'));

-- La Vansa Fornols 25909: Cadí = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='25909' AND categoria='senderismo';

-- Josá Tuixent 25910: Cadí-Moixeró = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='25910' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25910','sendero','Cadí-Moixeró','excel_curado',date('now'));

-- Riu 25913: Cerdanya = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='25913' AND categoria='senderismo';

-- Seo de Urgel 25203: Alt Urgell capital = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='25203' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25203','sendero','Alt Urgell','excel_curado',date('now'));

-- La Seu d'Urgell 27006 (standalone): Alt Urgell = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='27006' AND categoria='senderismo';

-- Montferrer Castellbó 25140: Alt Urgell = 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='25140' AND categoria='senderismo';

-- Valls d'Aguilar 25906: Alt Urgell = 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='25906' AND categoria='senderismo';

-- Orgañá 25155: Alt Urgell, congostos = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='25155' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25155','sendero','Congost d''Organyà','excel_curado',date('now'));

-- Coll de Nargó 25077: Prepirineo = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='25077' AND categoria='senderismo';

-- Oliana 25149: Prepirineo = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='25149' AND categoria='senderismo';

-- Peramola 25165: Prepirineo = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='25165' AND categoria='senderismo';

-- Bassella 25044: Prepirineo = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='25044' AND categoria='senderismo';

-- San Lorenzo de Morunys 25193: Prepirineo, Cadí = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='25193' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25193','sendero','Pedraforca área — Solsonès','excel_curado',date('now'));

-- ============================================================
-- MONTSEC / NOGUERA RIBAGORÇANA
-- ============================================================

-- Àger 27015 (standalone): Montsec, Mont-rebei = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='27015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27015','sendero','Congost de Mont-rebei — Montsec','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27015','sendero','Sierra del Montsec','excel_curado',date('now'));

-- Camarasa 25062: Montsec = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='25062' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25062','sendero','Sierra del Montsec','excel_curado',date('now'));

-- Os de Balaguer 25156: Montsec = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='25156' AND categoria='senderismo';

-- Artesa de Segre 25034: Prepirineo = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='25034' AND categoria='senderismo';

-- Cubells 25079: Noguera = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='25079' AND categoria='senderismo';

-- ============================================================
-- PLANA BAJOS (Lleida, Urgell, Segarra, Garrigues)
-- ============================================================

UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='25120' AND categoria='senderismo'; -- Lérida capital
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='27008' AND categoria='senderismo'; -- Lleida standalone
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='25137' AND categoria='senderismo'; -- Mollerusa
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='27009' AND categoria='senderismo'; -- Mollerussa standalone
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='25217' AND categoria='senderismo'; -- Tárrega
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='27013' AND categoria='senderismo'; -- Tàrrega standalone
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='25072' AND categoria='senderismo'; -- Cervera
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='25040' AND categoria='senderismo'; -- Balaguer
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='25207' AND categoria='senderismo'; -- Solsona

-- ============================================================
-- SYNC: MIN (25xxx) → MAX (27xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='25040' AND categoria='senderismo') WHERE codigo_ine='27001' AND categoria='senderismo'; -- Balaguer
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='25072' AND categoria='senderismo') WHERE codigo_ine='27003' AND categoria='senderismo'; -- Cervera
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='25082' AND categoria='senderismo') WHERE codigo_ine='27004' AND categoria='senderismo'; -- Espot
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='25207' AND categoria='senderismo') WHERE codigo_ine='27010' AND categoria='senderismo'; -- Solsona
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='25209' AND categoria='senderismo') WHERE codigo_ine='27011' AND categoria='senderismo'; -- Sort
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='25234' AND categoria='senderismo') WHERE codigo_ine='27012' AND categoria='senderismo'; -- Tremp

-- 0023: Senderismo curado completo (reset Wikipedia + scores curados + boosts revista)
-- Jaén + Granada: reset a 0, luego scores Excel, luego boost artículos
-- Generado: 2026-06-08

-- 1. RESET: senderismo a 0 para todos los municipios de Jaén y Granada
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN ('18018','18020','18021','18022','18023','18024','18025','18027','18028','18029','18030','18032','18033','18034','18035','18036','18037','18038','18039','18040','18042','18043','18044','18045','18046','18047','18048','18049','18050','18051','18053','18054','18056','18057','18059','18061','18062','18063','18064','18065','18066','18067','18068','18069','18070','18071','18072','18074','18076','18077','18078','18079','18082','18083','18084','18085','18086','18087','18088','18089','18093','18094','18095','18096','18097','18098','18099','18100','18101','18102','18103','18105','18106','18107','18108','18109','18111','18112','18114','18115','18116','18117','18119','18120','18121','18122','18123','18124','18126','18127','18128','18132','18133','18134','18135','18136','18137','18138','18140','18141','18143','18144','18145','18146','18147','18148','18149','18150','18151','18152','18153','18154','18157','18158','18159','18161','18162','18163','18164','18165','18167','18168','18170','18171','18173','18174','18175','18176','18177','18178','18179','18180','18181','18182','18183','18184','18185','18187','18188','18189','18192','18193','18194','18901','18902','18903','18904','18905','18906','18907','18908','18909','18910','18911','18912','18913','18914','18915','18916','19001','19002','19003','19004','19005','19006','19007','19008','19009','19010','19012','19013','19014','19015','19016','19017','19018','19019','19020','19021','19022','19023','19024','19025','19026','19027','19028','19029','23017','23018','23019','23020','23021','23024','23025','23026','23027','23028','23029','23030','23031','23032','23033','23034','23035','23037','23038','23039','23040','23041','23042','23043','23044','23045','23046','23047','23048','23049','23050','23051','23052','23053','23054','23055','23056','23057','23058','23059','23060','23061','23062','23063','23064','23065','23066','23067','23069','23070','23071','23072','23073','23074','23075','23076','23077','23079','23080','23081','23082','23084','23085','23086','23087','23088','23090','23091','23092','23093','23094','23095','23096','23097','23098','23099','23101','23901','23902','23903','23904','23905','24001','24002','24003','24004','24005','24006','24007','24008','24009','24010','24011','24012','24013','24014','24015','24016','24017','24018','24019','24020','24021','24022','24023','24024','24025','24026','24027','24028','24029','24030','24031','24032','24033','24034','24035','24036','24037','24038','24039','24040','24041','24042','24043','24044','24045','24046','24047','24048','24049','24050','24051','24052','24053','24054','24055','24056','24057','24058','24059','24060','24061','24062','24063','24064','24065','24066','24067','24068','24069','24070','24071','24072','24073','24074','24075','24076','24077','24078','24079','24080','24081','24082','24083','24084','24085','24086','24087','24088','24089','24090','24091','24092','24093','24094','24095','24096','24097');

-- 2. APLICAR scores curados del Excel (a todos los códigos del municipio)

-- Albanchez de Mágina: 83
UPDATE puntuaciones SET puntuacion=83 WHERE codigo_ine='24001' AND categoria='senderismo';

-- Alcalá la Real: 58 +3 (articulo_web) = 61
UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='24002' AND categoria='senderismo';

-- Alcaudete: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='24003' AND categoria='senderismo';

-- Aldeaquemada: 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='24004' AND categoria='senderismo';

-- Alhama de Granada: 72 +4 (articulo_web) = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='19001' AND categoria='senderismo';

-- Almuñécar: 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='19002' AND categoria='senderismo';

-- Alquife: 43
UPDATE puntuaciones SET puntuacion=43 WHERE codigo_ine='18018' AND categoria='senderismo';

-- Andújar: 73
UPDATE puntuaciones SET puntuacion=73 WHERE codigo_ine='24005' AND categoria='senderismo';

-- Arenas del Rey: 41
UPDATE puntuaciones SET puntuacion=41 WHERE codigo_ine='18020' AND categoria='senderismo';

-- Arjona: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='24006' AND categoria='senderismo';

-- Arjonilla: 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24007' AND categoria='senderismo';

-- Armilla: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18021' AND categoria='senderismo';

-- Arquillos: 29
UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='24008' AND categoria='senderismo';

-- Arroyo del Ojanco: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='23905' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='24009' AND categoria='senderismo';

-- Atarfe: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='18022' AND categoria='senderismo';

-- Baeza: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='24010' AND categoria='senderismo';

-- Bailén: 29
UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='24011' AND categoria='senderismo';

-- Baza: 81
UPDATE puntuaciones SET puntuacion=81 WHERE codigo_ine='19003' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=81 WHERE codigo_ine='18023' AND categoria='senderismo';

-- Baños de la Encina: 59 +3 (articulo_web) = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24012' AND categoria='senderismo';

-- Beas de Guadix: 26
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18025' AND categoria='senderismo';

-- Beas de Segura: 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='24013' AND categoria='senderismo';

-- Bedmar y Garcíez: 81
UPDATE puntuaciones SET puntuacion=81 WHERE codigo_ine='24014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=81 WHERE codigo_ine='23902' AND categoria='senderismo';

-- Begíjar: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24015' AND categoria='senderismo';

-- Benalúa de las Villas: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18028' AND categoria='senderismo';

-- Benamaurel: 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='18029' AND categoria='senderismo';

-- Benatae: 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='24016' AND categoria='senderismo';

-- Bubión: 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='18032' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='19004' AND categoria='senderismo';

-- Busquístar: 57
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='18033' AND categoria='senderismo';

-- Bélmez de la Moraleda: 69
UPDATE puntuaciones SET puntuacion=69 WHERE codigo_ine='24018' AND categoria='senderismo';

-- Bérchules: 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='19005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='18030' AND categoria='senderismo';

-- Cabra del Santo Cristo: 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='24019' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='23017' AND categoria='senderismo';

-- Cacín: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='18034' AND categoria='senderismo';

-- Calicasas: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='18037' AND categoria='senderismo';

-- Cambil: 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='24020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='23018' AND categoria='senderismo';

-- Campillo de Arenas: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='24021' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='23019' AND categoria='senderismo';

-- Campotéjar: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18038' AND categoria='senderismo';

-- Canena: 26
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='24022' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='23020' AND categoria='senderismo';

-- Caniles: 77
UPDATE puntuaciones SET puntuacion=77 WHERE codigo_ine='18039' AND categoria='senderismo';

-- Capileira: 97
UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine='18042' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine='19006' AND categoria='senderismo';

-- Carataunas: 47
UPDATE puntuaciones SET puntuacion=47 WHERE codigo_ine='18043' AND categoria='senderismo';

-- Carboneros: 29
UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='24023' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='23021' AND categoria='senderismo';

-- Castellar: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='23025' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='24025' AND categoria='senderismo';

-- Castillo de Locubín: 53
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='24026' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='23026' AND categoria='senderismo';

-- Castilléjar: 32
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='18045' AND categoria='senderismo';

-- Castril: 92 +4 (articulo_web) = 96
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine='19007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine='18046' AND categoria='senderismo';

-- Cazalilla: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24027' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23027' AND categoria='senderismo';

-- Cazorla: 100 +5 (articulo_web) = 100
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='23028' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='24028' AND categoria='senderismo';

-- Chauchina: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18059' AND categoria='senderismo';

-- Chiclana de Segura: 49
UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='23029' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='24030' AND categoria='senderismo';

-- Chilluévar: 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24031' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='23030' AND categoria='senderismo';

-- Churriana de la Vega: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18062' AND categoria='senderismo';

-- Cijuela: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18048' AND categoria='senderismo';

-- Cogollos Vega: 67
UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='18050' AND categoria='senderismo';

-- Cogollos de Guadix: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='18049' AND categoria='senderismo';

-- Colomera: 31
UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18051' AND categoria='senderismo';

-- Cortes de Baza: 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='18053' AND categoria='senderismo';

-- Cortes y Graena: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='18054' AND categoria='senderismo';

-- Cádiar: 71
UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='19008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='18035' AND categoria='senderismo';

-- Cájar: 33
UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='18036' AND categoria='senderismo';

-- Cárcheles: 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='24033' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='23901' AND categoria='senderismo';

-- Cáñar: 57
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='18040' AND categoria='senderismo';

-- Cúllar: 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='18056' AND categoria='senderismo';

-- Cúllar Vega: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18057' AND categoria='senderismo';

-- Darro: 31
UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18063' AND categoria='senderismo';

-- Dehesas Viejas: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18065' AND categoria='senderismo';

-- Diezma: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='18067' AND categoria='senderismo';

-- Dílar: 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='18068' AND categoria='senderismo';

-- Dólar: 67
UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='18069' AND categoria='senderismo';

-- Dúrcal: 73
UPDATE puntuaciones SET puntuacion=73 WHERE codigo_ine='18071' AND categoria='senderismo';

-- Escañuela: 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24034' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='23031' AND categoria='senderismo';

-- Espeluy: 29
UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='24035' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=29 WHERE codigo_ine='23032' AND categoria='senderismo';

-- Ferreira: 64
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='18074' AND categoria='senderismo';

-- Fonelas: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='18076' AND categoria='senderismo';

-- Fornes: 31
UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18077' AND categoria='senderismo';

-- Frailes: 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='24036' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='23033' AND categoria='senderismo';

-- Fuensanta de Martos: 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='23034' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='24037' AND categoria='senderismo';

-- Fuente Vaqueros: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18079' AND categoria='senderismo';

-- Fuerte del Rey: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24038' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23035' AND categoria='senderismo';

-- Galera: 47
UPDATE puntuaciones SET puntuacion=47 WHERE codigo_ine='18082' AND categoria='senderismo';

-- Gobernador: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18083' AND categoria='senderismo';

-- Gor: 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='18085' AND categoria='senderismo';

-- Gorafe: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='18086' AND categoria='senderismo';

-- Granada: 49
UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='19009' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='18087' AND categoria='senderismo';

-- Guadahortuna: 33
UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='18088' AND categoria='senderismo';

-- Guadix: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='18089' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='19010' AND categoria='senderismo';

-- Gualchos: 49
UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='18093' AND categoria='senderismo';

-- Guarromán: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24039' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23039' AND categoria='senderismo';

-- Génave: 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='24040' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='23037' AND categoria='senderismo';

-- Gójar: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18084' AND categoria='senderismo';

-- Güevéjar: 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='18095' AND categoria='senderismo';

-- Güéjar Sierra: 96
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine='18094' AND categoria='senderismo';

-- Higuera de Calatrava: 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='23041' AND categoria='senderismo';

-- Hinojares: 61
UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='23042' AND categoria='senderismo';

-- Hornos: 91
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine='23043' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine='24042' AND categoria='senderismo';

-- Huelma: 79
UPDATE puntuaciones SET puntuacion=79 WHERE codigo_ine='23044' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=79 WHERE codigo_ine='24043' AND categoria='senderismo';

-- Huesa: 59
UPDATE puntuaciones SET puntuacion=59 WHERE codigo_ine='24044' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=59 WHERE codigo_ine='23045' AND categoria='senderismo';

-- Huéneja: 57
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='18097' AND categoria='senderismo';

-- Huéscar: 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='18098' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='19012' AND categoria='senderismo';

-- Huétor Santillán: 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='18099' AND categoria='senderismo';

-- Huétor Tájar: 26
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='18100' AND categoria='senderismo';

-- Huétor Vega: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18101' AND categoria='senderismo';

-- Ibros: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24045' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23046' AND categoria='senderismo';

-- Iznalloz: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='24046' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18105' AND categoria='senderismo';

-- Iznatoraf: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='24047' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='23048' AND categoria='senderismo';

-- Jabalquinto: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23049' AND categoria='senderismo';

-- Jamilena: 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24048' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='23051' AND categoria='senderismo';

-- Jayena: 41
UPDATE puntuaciones SET puntuacion=41 WHERE codigo_ine='18107' AND categoria='senderismo';

-- Jaén: 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='23050' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='24049' AND categoria='senderismo';

-- Jerez del Marquesado: 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='18108' AND categoria='senderismo';

-- Jimena: 77
UPDATE puntuaciones SET puntuacion=77 WHERE codigo_ine='24050' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=77 WHERE codigo_ine='23052' AND categoria='senderismo';

-- Jun: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18111' AND categoria='senderismo';

-- Juviles: 59
UPDATE puntuaciones SET puntuacion=59 WHERE codigo_ine='18112' AND categoria='senderismo';

-- Jódar: 57
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='24051' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='23053' AND categoria='senderismo';

-- La Calahorra: 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='18114' AND categoria='senderismo';

-- La Carolina: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='23024' AND categoria='senderismo';

-- La Guardia de Jaén: 53
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='24053' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='23038' AND categoria='senderismo';

-- La Iruela: 97
UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine='23047' AND categoria='senderismo';

-- La Puerta de Segura: 53
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='24054' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='23072' AND categoria='senderismo';

-- La Taha: 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='18901' AND categoria='senderismo';

-- La Zubia: 33
UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='18193' AND categoria='senderismo';

-- Lahiguera: 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24055' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='23040' AND categoria='senderismo';

-- Lanjarón: 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='19013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='18116' AND categoria='senderismo';

-- Lanteira: 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='18117' AND categoria='senderismo';

-- Larva: 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='23054' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='24056' AND categoria='senderismo';

-- Las Gabias: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='18905' AND categoria='senderismo';

-- Lecrín: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='18119' AND categoria='senderismo';

-- Lentegí: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='18120' AND categoria='senderismo';

-- Linares: 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='23055' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='24057' AND categoria='senderismo';

-- Loja: 65 +3 (articulo_web) = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='19014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='18122' AND categoria='senderismo';

-- Lopera: 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='23056' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='24058' AND categoria='senderismo';

-- Los Villares: 61
UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='23099' AND categoria='senderismo';

-- Lugros: 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='18123' AND categoria='senderismo';

-- Lupión: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24059' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23057' AND categoria='senderismo';

-- Láchar: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18115' AND categoria='senderismo';

-- Lújar: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='18124' AND categoria='senderismo';

-- Mancha Real: 57
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='24060' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='23058' AND categoria='senderismo';

-- Maracena: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18127' AND categoria='senderismo';

-- Marmolejo: 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='24061' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='23059' AND categoria='senderismo';

-- Martos: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='23060' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='24062' AND categoria='senderismo';

-- Mengíbar: 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='23061' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='24063' AND categoria='senderismo';

-- Moclín: 34 +3 (articulo_web) = 37
UPDATE puntuaciones SET puntuacion=37 WHERE codigo_ine='18132' AND categoria='senderismo';

-- Molvízar: 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='18133' AND categoria='senderismo';

-- Monachil: 99 +3 (articulo_web) = 100
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='19016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine='18134' AND categoria='senderismo';

-- Montefrío: 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='18135' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='19017' AND categoria='senderismo';

-- Montejícar: 31
UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18136' AND categoria='senderismo';

-- Montillana: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18137' AND categoria='senderismo';

-- Montizón: 46
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='23062' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='24064' AND categoria='senderismo';

-- Moraleda de Zafayona: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18138' AND categoria='senderismo';

-- Motril: 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='19018' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='18140' AND categoria='senderismo';

-- Murtas: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='18141' AND categoria='senderismo';

-- Navas de San Juan: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='23063' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='24065' AND categoria='senderismo';

-- Nevada: 79
UPDATE puntuaciones SET puntuacion=79 WHERE codigo_ine='18903' AND categoria='senderismo';

-- Nigüelas: 42 +3 (articulo_web) = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='18143' AND categoria='senderismo';

-- Noalejo: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='23064' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='24066' AND categoria='senderismo';

-- Ogíjares: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18145' AND categoria='senderismo';

-- Orce: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18146' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='19020' AND categoria='senderismo';

-- Orcera: 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='24067' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='23065' AND categoria='senderismo';

-- Otívar: 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='18148' AND categoria='senderismo';

-- Padul: 42 +3 (articulo_web) = 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='18150' AND categoria='senderismo';

-- Pampaneira: 88 +3 (articulo_web) = 91
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine='18151' AND categoria='senderismo';

-- Peal de Becerro: 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='24068' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='23066' AND categoria='senderismo';

-- Pedro Martínez: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18152' AND categoria='senderismo';

-- Pegalajar: 66
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='24069' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='23067' AND categoria='senderismo';

-- Pinos Puente: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18158' AND categoria='senderismo';

-- Polopos: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18162' AND categoria='senderismo';

-- Porcuna: 26
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='23069' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='24070' AND categoria='senderismo';

-- Pozo Alcón: 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='24071' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='23070' AND categoria='senderismo';

-- Puebla de Don Fadrique: 83
UPDATE puntuaciones SET puntuacion=83 WHERE codigo_ine='18164' AND categoria='senderismo';

-- Puente de Génave: 53
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='23071' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='24072' AND categoria='senderismo';

-- Purullena: 36
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='18167' AND categoria='senderismo';

-- Píñar: 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='18159' AND categoria='senderismo';

-- Quesada: 85
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='23073' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='24073' AND categoria='senderismo';

-- Quéntar: 56
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='18168' AND categoria='senderismo';

-- Rubite: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='18170' AND categoria='senderismo';

-- Rus: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23074' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24074' AND categoria='senderismo';

-- Sabiote: 34
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='23075' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='24075' AND categoria='senderismo';

-- Salar: 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='18171' AND categoria='senderismo';

-- Salobreña: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18173' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='19024' AND categoria='senderismo';

-- Santa Elena: 83
UPDATE puntuaciones SET puntuacion=83 WHERE codigo_ine='24076' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=83 WHERE codigo_ine='23076' AND categoria='senderismo';

-- Santa Fe: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18175' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='19025' AND categoria='senderismo';

-- Santiago de Calatrava: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23077' AND categoria='senderismo';

-- Santiago-Pontones: 94
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='23904' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='24077' AND categoria='senderismo';

-- Santisteban del Puerto: 42
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='23079' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='24078' AND categoria='senderismo';

-- Santo Tomé: 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='23080' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24079' AND categoria='senderismo';

-- Segura de la Sierra: 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='23081' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='24080' AND categoria='senderismo';

-- Siles: 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='23082' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='24081' AND categoria='senderismo';

-- Sorihuela del Guadalimar: 39
UPDATE puntuaciones SET puntuacion=39 WHERE codigo_ine='23084' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=39 WHERE codigo_ine='24082' AND categoria='senderismo';

-- Sorvilán: 39
UPDATE puntuaciones SET puntuacion=39 WHERE codigo_ine='18177' AND categoria='senderismo';

-- Torre-Cardela: 27
UPDATE puntuaciones SET puntuacion=27 WHERE codigo_ine='18178' AND categoria='senderismo';

-- Torreblascopedro: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23085' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24083' AND categoria='senderismo';

-- Torredelcampo: 38
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='23086' AND categoria='senderismo';

-- Torredonjimeno: 34
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='24084' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='23087' AND categoria='senderismo';

-- Torrenueva Costa: 34
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='18916' AND categoria='senderismo';

-- Torreperogil: 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='24085' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='23088' AND categoria='senderismo';

-- Torres: 79
UPDATE puntuaciones SET puntuacion=79 WHERE codigo_ine='24086' AND categoria='senderismo';

-- Torres de Albánchez: 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='24087' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='23091' AND categoria='senderismo';

-- Torvizcón: 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='18179' AND categoria='senderismo';

-- Trevélez: 94
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='19026' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine='18180' AND categoria='senderismo';

-- Turón: 43
UPDATE puntuaciones SET puntuacion=43 WHERE codigo_ine='18181' AND categoria='senderismo';

-- Ugíjar: 49
UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='18182' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=49 WHERE codigo_ine='19027' AND categoria='senderismo';

-- Valdepeñas de Jaén: 68 +3 (articulo_web) = 71
UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='23093' AND categoria='senderismo';

-- Vegas del Genil: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18911' AND categoria='senderismo';

-- Ventas de Huelma: 25
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='18185' AND categoria='senderismo';

-- Vilches: 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='24089' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='23094' AND categoria='senderismo';

-- Villacarrillo: 71
UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='24090' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='23095' AND categoria='senderismo';

-- Villanueva Mesía: 17
UPDATE puntuaciones SET puntuacion=17 WHERE codigo_ine='18188' AND categoria='senderismo';

-- Villanueva de la Reina: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='24092' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='23096' AND categoria='senderismo';

-- Villanueva de las Torres: 31
UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18187' AND categoria='senderismo';

-- Villanueva del Arzobispo: 71
UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='23097' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='24093' AND categoria='senderismo';

-- Villardompardo: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='24094' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23098' AND categoria='senderismo';

-- Villarrodrigo: 54
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='23101' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='24096' AND categoria='senderismo';

-- Villatorres: 24
UPDATE puntuaciones SET puntuacion=24 WHERE codigo_ine='23903' AND categoria='senderismo';

-- Válor: 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='19028' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='18183' AND categoria='senderismo';

-- Vélez de Benaudalla: 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='18184' AND categoria='senderismo';

-- Víznar: 63
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='18189' AND categoria='senderismo';

-- Yegen: 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='19029' AND categoria='senderismo';

-- Zagra: 31
UPDATE puntuaciones SET puntuacion=31 WHERE codigo_ine='18913' AND categoria='senderismo';

-- Zújar: 45
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='18194' AND categoria='senderismo';

-- Íllora: 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='18102' AND categoria='senderismo';

-- Órgiva: 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='18147' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='19021' AND categoria='senderismo';

-- Úbeda: 44
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='23092' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='24097' AND categoria='senderismo';

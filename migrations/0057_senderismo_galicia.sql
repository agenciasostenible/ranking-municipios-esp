-- 0057: Senderismo Galicia curado — Ancares, Courel, Ribeira Sacra, Xurés, Illas Atlánticas, Costa da Morte
-- Generado: 2026-06-09
-- A Coruña:  01xxx (20) MIN → 15xxx (74) MAX + pares nombre distinto
-- Lugo:      27xxx (52) MIN → 28xxx (13) MAX + pares nombre distinto
-- Ourense:   32xxx (68) MIN → 34xxx (13) MAX + pares nombre distinto
-- Pontevedra: 36xxx interna (min<max); sin rango secundario
-- CUIDADO: 01xxx comparte con Álava (01021+); 28xxx con Madrid; 34xxx con Palencia → subquery siempre

-- ============================================================
-- A CORUÑA
-- ============================================================

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='A Coruña');
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='A Coruña');
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='A Coruña');

-- Carnota (01007): Monte Pindo "Olimpo céltico", playa más larga de Galicia, dolmen
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='01007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01007','sendero','Monte Pindo — Olimpo céltico','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01007','sendero','Playa de Carnota','excel_curado',date('now'));

-- Fisterra (01011): Faro do Cabo Fisterra, fin del Camino de Santiago
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='01011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01011','sendero','Cabo de Fisterra — fin del mundo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01011','sendero','Camino de Santiago — Fisterra','excel_curado',date('now'));

-- Muxía (01013): Santuario da Barca, Costa da Morte, Camino
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='01013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01013','sendero','Costa da Morte — Muxía','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01013','sendero','Santuario da Barca','excel_curado',date('now'));

-- Monfero (15050 standalone): Fragas del Eume, mayor bosque atlántico europeo
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='15050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('15050','sendero','Fragas del Eume — bosque atlántico','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('15050','sendero','Parque Natural Fragas del Eume','excel_curado',date('now'));

-- Camariñas (01005): Costa da Morte, Faro Vilán, acantilados
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='01005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01005','sendero','Faro de Cabo Vilán','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01005','sendero','Costa da Morte — Camariñas','excel_curado',date('now'));

-- Ortigueira (01015): Costa Ártabra, estuario, acantilados, aves migratorias
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='01015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01015','sendero','Ría de Ortigueira — avifauna','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01015','sendero','Costa Ártabra','excel_curado',date('now'));

-- Cedeira (01008): Costa Ártabra, acceso Cabo Ortegal, Valdoviño
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='01008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01008','sendero','Costa Ártabra — Cedeira','excel_curado',date('now'));

-- Santiago de Compostela (01020): meta del Camino, Monte Pedroso
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='01020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01020','sendero','Camino de Santiago — destino','excel_curado',date('now'));

-- Sync A Coruña: pares exactos
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01008' AND p2.categoria='senderismo') WHERE codigo_ine='15022' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01009' AND p2.categoria='senderismo') WHERE codigo_ine='15028' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01010' AND p2.categoria='senderismo') WHERE codigo_ine='15036' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01012' AND p2.categoria='senderismo') WHERE codigo_ine='15053' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01015' AND p2.categoria='senderismo') WHERE codigo_ine='15061' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01016' AND p2.categoria='senderismo') WHERE codigo_ine='15065' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01019' AND p2.categoria='senderismo') WHERE codigo_ine='15073' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01020' AND p2.categoria='senderismo') WHERE codigo_ine='15078' AND categoria='senderismo';
-- Pares con nombre distinto: A Coruña/La Coruña, Fisterra/Finisterre, Muxía/Mugía
-- A Pobra/Puebla, Noia/Noya, Pontedeume/Puentedeume, Rianxo/Rianjo
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01001' AND p2.categoria='senderismo') WHERE codigo_ine='15030' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01011' AND p2.categoria='senderismo') WHERE codigo_ine='15037' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01013' AND p2.categoria='senderismo') WHERE codigo_ine='15052' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01002' AND p2.categoria='senderismo') WHERE codigo_ine='15067' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01014' AND p2.categoria='senderismo') WHERE codigo_ine='15057' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01017' AND p2.categoria='senderismo') WHERE codigo_ine='15069' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01018' AND p2.categoria='senderismo') WHERE codigo_ine='15072' AND categoria='senderismo';

-- ============================================================
-- LUGO
-- ============================================================

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Lugo');
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Lugo');
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Lugo');

-- Folgoso de Caurel (27017): Serra do Courel, teixos milenarios, grutas, castros
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='27017' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27017','sendero','Serra do Courel — Reserva Biosfera UNESCO','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27017','sendero','Souto do Teixo — teixos milenarios','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27017','sendero','Galería do Rei — grutas','excel_curado',date('now'));

-- Navia de Suarna (27034): Os Ancares Lucenses, última aldea de pallozas
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='27034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27034','sendero','Os Ancares Lucenses','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27034','sendero','Aldeas de pallozas — Piornedo','excel_curado',date('now'));

-- Negueira de Muñiz (27035): Os Ancares, Reserva Biosfera, muy remoto
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='27035' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27035','sendero','Os Ancares — Negueira de Muñiz','excel_curado',date('now'));

-- Pedrafita do Cebreiro (28009 standalone): O Cebreiro, Camino Francés paso fronterizo
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='28009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28009','sendero','O Cebreiro — Camino de Santiago Francés','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('28009','sendero','GR-65 paso de montaña','excel_curado',date('now'));

-- Quiroga (27050): Cañones del Sil, inicio de la Ribeira Sacra
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='27050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27050','sendero','Cañones del Sil — Ribeira Sacra','excel_curado',date('now'));

-- Sober (27059): Ribeira Sacra, viñas en terrazas verticales, Sil
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='27059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27059','sendero','Ribeira Sacra — Sober','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27059','sendero','Cañones del Sil','excel_curado',date('now'));

-- Triacastela (27062): Camino Francés, bosques, monasterio de Samos
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='27062' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27062','sendero','Camino de Santiago — Triacastela','excel_curado',date('now'));

-- Sarria (27057): Camino Francés, últimos 100km
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='27057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('27057','sendero','Camino de Santiago — últimos 100km','excel_curado',date('now'));

-- Sync Lugo: pares exactos
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27902' AND p2.categoria='senderismo') WHERE codigo_ine='28002' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27016' AND p2.categoria='senderismo') WHERE codigo_ine='28003' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27019' AND p2.categoria='senderismo') WHERE codigo_ine='28005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27028' AND p2.categoria='senderismo') WHERE codigo_ine='28006' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27031' AND p2.categoria='senderismo') WHERE codigo_ine='28007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27034' AND p2.categoria='senderismo') WHERE codigo_ine='28008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27051' AND p2.categoria='senderismo') WHERE codigo_ine='28010' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27057' AND p2.categoria='senderismo') WHERE codigo_ine='28011' AND categoria='senderismo';
-- Pares nombre distinto: Villalba/Vilalba, Vivero/Viveiro
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27065' AND p2.categoria='senderismo') WHERE codigo_ine='28012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='27066' AND p2.categoria='senderismo') WHERE codigo_ine='28013' AND categoria='senderismo';

-- ============================================================
-- OURENSE
-- ============================================================

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ourense');
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ourense');
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ourense');

-- Lobios (32042): PN Baixa Limia-Serra do Xurés, Parque Transfronteiriço Gerês-Xurés
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='32042' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32042','sendero','Parque Natural Baixa Limia-Serra do Xurés','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32042','sendero','Parque Transfronteiriço Gerês-Xurés','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32042','sendero','Río Limia — bosques caducifolios','excel_curado',date('now'));

-- Parada del Sil (32057): Cañones del Sil más espectaculares, Ribeira Sacra
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='32057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32057','sendero','Cañones del Sil — Ribeira Sacra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32057','sendero','Mirador da Cividade','excel_curado',date('now'));

-- Entrimo (32030): PN Baixa Limia-Serra do Xurés, frontera Portugal
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='32030' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32030','sendero','Parque Natural Baixa Limia-Serra do Xurés — Entrimo','excel_curado',date('now'));

-- Manzaneda (32044): Serra da Queixa 1778m, estación de esquí más alta de Galicia
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='32044' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32044','sendero','Serra da Queixa 1778m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32044','sendero','Alto de Manzaneda','excel_curado',date('now'));

-- Nogueira de Ramuín (32052): Ribeira Sacra, miradouros del Sil
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='32052' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32052','sendero','Ribeira Sacra — Miradouro de Cabezoás','excel_curado',date('now'));

-- Chandreja de Queija (32029): Serra da Queixa, alta montaña, lagunas glaciares
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='32029' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32029','sendero','Serra da Queixa — alta montaña','excel_curado',date('now'));

-- Montederramo (32049): Serra de San Mamede, monasterio cisterciense
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='32049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32049','sendero','Serra de San Mamede','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32049','sendero','Monasterio de Montederramo','excel_curado',date('now'));

-- Viana del Bollo (32086): Sierra del Eixe, Sil, paisaje de montaña
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='32086' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('32086','sendero','Sierra del Eixe — Viana do Bolo','excel_curado',date('now'));

-- Castro Caldelas (34003 standalone): Ribeira Sacra, castillo medieval, Sil
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='34003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('34003','sendero','Ribeira Sacra — Castro Caldelas','excel_curado',date('now'));

-- Sync Ourense: pares exactos
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32044' AND p2.categoria='senderismo') WHERE codigo_ine='34005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32049' AND p2.categoria='senderismo') WHERE codigo_ine='34006' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32069' AND p2.categoria='senderismo') WHERE codigo_ine='34009' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32085' AND p2.categoria='senderismo') WHERE codigo_ine='34011' AND categoria='senderismo';
-- Pares nombre distinto: La Gudiña/A Gudiña, Orense/Ourense, Puebla de Trives/Trives
-- Viana del Bollo/Viana do Bolo, Ginzo de Limia/Xinzo de Limia
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32034' AND p2.categoria='senderismo') WHERE codigo_ine='34001' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32054' AND p2.categoria='senderismo') WHERE codigo_ine='34008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32063' AND p2.categoria='senderismo') WHERE codigo_ine='34010' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32086' AND p2.categoria='senderismo') WHERE codigo_ine='34012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='32032' AND p2.categoria='senderismo') WHERE codigo_ine='34013' AND categoria='senderismo';

-- ============================================================
-- PONTEVEDRA
-- ============================================================

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Pontevedra');
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Pontevedra');
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Pontevedra');

-- Bueu (36003): acceso PN Illas Atlánticas (Cíes, Ons), Monte Domaio, Costa
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='36003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36003','sendero','Parque Nacional Illas Atlánticas — acceso Cíes/Ons','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36003','sendero','Monte Domaio','excel_curado',date('now'));

-- Fornelos de Montes (36019): Serra do Suído, bosques, rutas de montaña
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='36019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36019','sendero','Serra do Suído','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36019','sendero','Ruta de los molinos de agua','excel_curado',date('now'));

-- Cangas (36005): Monte Facho, acceso PN Illas Atlánticas, Cabo Home
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='36005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36005','sendero','Monte Facho — Cabo Home','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36005','sendero','Parque Nacional Illas Atlánticas — acceso','excel_curado',date('now'));

-- Forcarey (36018): Serra do Suído, prados de alta montaña
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='36018' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36018','sendero','Serra do Suído — Forcarey','excel_curado',date('now'));

-- A Guarda (36001): Monte Santa Trega, castro prerromano, Camino Costero
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='36001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36001','sendero','Monte Santa Trega — castro prerromano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36001','sendero','Camino Portugués de la Costa','excel_curado',date('now'));

-- Oia (36010): Camino Portugués de la Costa, acantilados
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='36010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36010','sendero','Camino Portugués — Costa','excel_curado',date('now'));

-- Vigo (36015): Monte Galiñeiro, acceso Cíes, Camino Portugués
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='36015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('36015','sendero','Monte Galiñeiro','excel_curado',date('now'));

-- Sync Pontevedra: pares exactos (dentro del mismo rango 36xxx)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36007' AND p2.categoria='senderismo') WHERE codigo_ine='36026' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36008' AND p2.categoria='senderismo') WHERE codigo_ine='36029' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36011' AND p2.categoria='senderismo') WHERE codigo_ine='36038' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36012' AND p2.categoria='senderismo') WHERE codigo_ine='36045' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36013' AND p2.categoria='senderismo') WHERE codigo_ine='36051' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36015' AND p2.categoria='senderismo') WHERE codigo_ine='36057' AND categoria='senderismo';
-- Pares nombre distinto: A Guarda/La Guardia, O Grove/El Grove, Oia/Oya, Tui/Tuy
-- Vilagarcía de Arousa/Villagarcía de Arosa
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36001' AND p2.categoria='senderismo') WHERE codigo_ine='36023' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36009' AND p2.categoria='senderismo') WHERE codigo_ine='36022' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36010' AND p2.categoria='senderismo') WHERE codigo_ine='36036' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36014' AND p2.categoria='senderismo') WHERE codigo_ine='36055' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='36016' AND p2.categoria='senderismo') WHERE codigo_ine='36060' AND categoria='senderismo';

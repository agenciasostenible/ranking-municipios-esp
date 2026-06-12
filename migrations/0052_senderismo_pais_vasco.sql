-- 0052: Senderismo País Vasco curado — Gorbeia, Valderejo, Izki, Aizkorri-Aratz, Aralar, Urkiola, Armañón, Urdaibai, Aiako Harria
-- Generado: 2026-06-09
-- Álava:     canónicos 01xxx MIN → 50xxx MAX (algunos 50xxx standalone)
-- Guipúzcoa: canónicos 20xxx MIN → 21xxx MAX (algunos 21xxx standalone)
-- Vizcaya:   canónicos 47xxx MIN → 48xxx MAX
-- NOTA: 21xxx compartido con Huelva, 47xxx con Valladolid, 50xxx con Zaragoza
--       → usar subquery por provincia en todos los bulk, nunca BETWEEN solas

-- ============================================================
-- ÁLAVA
-- ============================================================

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Álava');

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Álava');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Álava');

-- ---- Parque Natural de Valderejo — Valdegovía (01055): cañón del Purón, hayedos, rutas señalizadas
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='01055' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01055','sendero','Parque Natural de Valderejo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01055','sendero','Cañón del Purón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01055','sendero','GR-38 Valderejo','excel_curado',date('now'));

-- ---- Parque Natural de Gorbeia — Zuya (01063): cima Gorbeia 1482m, hayedos y robledales
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='01063' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01063','sendero','Parque Natural de Gorbeia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01063','sendero','Cima Gorbeia 1482m','excel_curado',date('now'));

-- ---- Parque Natural de Gorbeia — Urcabustaiz (01054): vertiente alavesa, rutas al Aldaia
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='01054' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01054','sendero','Parque Natural de Gorbeia — vertiente alavesa','excel_curado',date('now'));

-- ---- Parque Natural Izki — Bernedo (50011 standalone): hayedo centenario más grande de Europa
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='50011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50011','sendero','Parque Natural Izki','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50011','sendero','Hayedo de Izki','excel_curado',date('now'));

-- ---- Parque Natural Izki — Campezo/Kanpezu (50012 standalone)
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='50012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50012','sendero','Parque Natural Izki — sector sur','excel_curado',date('now'));

-- ---- Valle de Arana (01056): sierra Aizkorri-Aratz, montaña alavesa remota
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='01056' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01056','sendero','Sierra Aizkorri-Aratz — vertiente alavesa','excel_curado',date('now'));

-- ---- Kuartango (50020 standalone): Hoces del Nervión, cañón de 200m
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='50020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50020','sendero','Hoces del Nervión — acceso alavés','excel_curado',date('now'));

-- ---- Peñacerrada (01044): Sierra Cantabria, rutas hacia Peñas de Herrera
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='01044' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01044','sendero','Sierra Cantabria — Peñas de Herrera','excel_curado',date('now'));

-- ---- Arraya-Maestu (01037): páramo alavés, alto y remoto
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='01037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01037','sendero','Páramo de la Llanada Alavesa','excel_curado',date('now'));

-- ---- Amurrio (50002 standalone): Sierra Salvada, Sierras de Gibijo
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='50002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('50002','sendero','Sierra Salvada','excel_curado',date('now'));

-- ---- Vitoria (01059): Montes de Vitoria, cinturón verde
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='01059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('01059','sendero','Montes de Vitoria','excel_curado',date('now'));

-- Sync Álava: pares exactos (nombre igual)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01022' AND p2.categoria='senderismo') WHERE codigo_ine='50014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01027' AND p2.categoria='senderismo') WHERE codigo_ine='50017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01901' AND p2.categoria='senderismo') WHERE codigo_ine='50018' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01028' AND p2.categoria='senderismo') WHERE codigo_ine='50021' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01030' AND p2.categoria='senderismo') WHERE codigo_ine='50022' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01031' AND p2.categoria='senderismo') WHERE codigo_ine='50023' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01032' AND p2.categoria='senderismo') WHERE codigo_ine='50024' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01902' AND p2.categoria='senderismo') WHERE codigo_ine='50025' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01033' AND p2.categoria='senderismo') WHERE codigo_ine='50026' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01036' AND p2.categoria='senderismo') WHERE codigo_ine='50027' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01039' AND p2.categoria='senderismo') WHERE codigo_ine='50028' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01041' AND p2.categoria='senderismo') WHERE codigo_ine='50029' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01044' AND p2.categoria='senderismo') WHERE codigo_ine='50032' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01046' AND p2.categoria='senderismo') WHERE codigo_ine='50033' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01057' AND p2.categoria='senderismo') WHERE codigo_ine='50038' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01060' AND p2.categoria='senderismo') WHERE codigo_ine='50040' AND categoria='senderismo';
-- Sync Álava: pares con nombre distinto (verificados manualmente)
-- Elburgo/Elburgo-Burgelu, Arraya-Maestu/Arraia-Maeztu, Oyón/Oyón-Oion, Añana/Salinas de Añana
-- Salvatierra/Salvatierra-Agurain, Urcabustaiz/Urkabustaiz, Valdegovía/Valdegovía-Gaubea
-- Vitoria → Gasteiz/Vitoria y Vitoria-Gasteiz (dos registros MAX), Zuya/Zuia
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01021' AND p2.categoria='senderismo') WHERE codigo_ine='50013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01037' AND p2.categoria='senderismo') WHERE codigo_ine='50004' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01043' AND p2.categoria='senderismo') WHERE codigo_ine='50031' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01049' AND p2.categoria='senderismo') WHERE codigo_ine='50034' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01051' AND p2.categoria='senderismo') WHERE codigo_ine='50035' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01054' AND p2.categoria='senderismo') WHERE codigo_ine='50036' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01055' AND p2.categoria='senderismo') WHERE codigo_ine='50037' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01059' AND p2.categoria='senderismo') WHERE codigo_ine='50016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01059' AND p2.categoria='senderismo') WHERE codigo_ine='50039' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='01063' AND p2.categoria='senderismo') WHERE codigo_ine='50042' AND categoria='senderismo';

-- ============================================================
-- GUIPÚZCOA
-- ============================================================

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Guipúzcoa');

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Guipúzcoa');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Guipúzcoa');

-- ---- PN Aizkorri-Aratz — Cegama (20025): acceso cima Aizkorri 1541m, GR-12
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='20025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20025','sendero','Parque Natural Aizkorri-Aratz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20025','sendero','Cima Aizkorri 1541m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20025','sendero','GR-12 Santuario de Arantzazu','excel_curado',date('now'));

-- ---- PN Aizkorri-Aratz — Oñate (20059): Santuario de Arantzazu, rutas emblemáticas
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='20059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20059','sendero','Parque Natural Aizkorri-Aratz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20059','sendero','Santuario de Arantzazu','excel_curado',date('now'));

-- ---- PN Aizkorri-Aratz — Aretxabaleta (21001 standalone): sector norte del parque
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='21001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21001','sendero','Parque Natural Aizkorri-Aratz — sector norte','excel_curado',date('now'));

-- ---- PN Aizkorri-Aratz — Legazpia (20051): acceso al parque, rutas de herrería
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='20051' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20051','sendero','Parque Natural Aizkorri-Aratz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20051','sendero','Ruta del Hierro','excel_curado',date('now'));

-- ---- PN Aiako Harria — Oyarzun (20063): macizo granítico, PR-GI 1
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='20063' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20063','sendero','Parque Natural Aiako Harria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20063','sendero','Peñas de Aia — macizo granítico','excel_curado',date('now'));

-- ---- PN Aiako Harria — Irún (20045): Jaizkibel, Bidasoa, camino costero
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='20045' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20045','sendero','Parque Natural Aiako Harria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20045','sendero','Monte Jaizkibel','excel_curado',date('now'));

-- ---- PN Aralar — Zaldivia (20078): hayedo monumental, cascadas
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='20078' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20078','sendero','Parque Natural Aralar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20078','sendero','Hayedo de Artikutza — acceso','excel_curado',date('now'));

-- ---- PN Aralar — Idiazábal (20043): Aralar, ruta megalítica
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='20043' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20043','sendero','Parque Natural Aralar','excel_curado',date('now'));

-- ---- PN Aralar — Segura (20070): sector sureste del parque, pastizales altos
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='20070' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20070','sendero','Parque Natural Aralar — sector Segura','excel_curado',date('now'));

-- ---- Escoriaza (20034): PN Aizkorri-Aratz NE, gargantas de Ubera
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='20034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20034','sendero','Parque Natural Aizkorri-Aratz — sector Escoriaza','excel_curado',date('now'));

-- ---- Azkoitia (21003 standalone): Sierra de Izarraitz, bosques
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='21003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21003','sendero','Sierra de Izarraitz','excel_curado',date('now'));

-- ---- Azpeitia (21004 standalone): Izarraitz, Santuario Loiola, rutas históricas
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='21004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('21004','sendero','Sierra de Izarraitz — Azpeitia','excel_curado',date('now'));

-- ---- Zumaya (20081): Geoparque Flysch Basque Coast UNESCO
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='20081' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20081','sendero','Geoparque Flysch Basque Coast — Zumaia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20081','sendero','Camino costero Zumaia-Deba','excel_curado',date('now'));

-- ---- Motrico (20056): flysch, acantilados
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='20056' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20056','sendero','Geoparque Flysch — Mutriku','excel_curado',date('now'));

-- ---- Deva (20029): flysch, camino de la costa
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='20029' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20029','sendero','Camino costero — Deba','excel_curado',date('now'));

-- ---- San Sebastián (20069): Monte Urgull, Monte Ulia, Monte Igueldo
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='20069' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20069','sendero','Monte Urgull','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('20069','sendero','Monte Ulia','excel_curado',date('now'));

-- Sync Guipúzcoa: 20xxx MIN → 21xxx MAX (pares con nombre distinto verificados)
-- Beasáin/Beasain, Deva/Deba, Éibar/Eibar, Escoriaza/Eskoriatza, Fuenterrabía/Hondarribia
-- Guetaria/Getaria, Irún/Irun, Mondragón/Arrasate, Oñate/Oñati, Pasajes/Pasaia
-- San Sebastián/Donostia, Tolosa/Tolosa, Vergara/Bergara, Zarauz/Zarautz
-- Zumárraga/Zumarraga, Zumaya/Zumaia
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20019' AND p2.categoria='senderismo') WHERE codigo_ine='21005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20029' AND p2.categoria='senderismo') WHERE codigo_ine='21007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20030' AND p2.categoria='senderismo') WHERE codigo_ine='21008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20034' AND p2.categoria='senderismo') WHERE codigo_ine='21009' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20036' AND p2.categoria='senderismo') WHERE codigo_ine='21011' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20039' AND p2.categoria='senderismo') WHERE codigo_ine='21010' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20045' AND p2.categoria='senderismo') WHERE codigo_ine='21012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20055' AND p2.categoria='senderismo') WHERE codigo_ine='21002' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20059' AND p2.categoria='senderismo') WHERE codigo_ine='21014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20064' AND p2.categoria='senderismo') WHERE codigo_ine='21015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20069' AND p2.categoria='senderismo') WHERE codigo_ine='21016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20071' AND p2.categoria='senderismo') WHERE codigo_ine='21017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20074' AND p2.categoria='senderismo') WHERE codigo_ine='21006' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20079' AND p2.categoria='senderismo') WHERE codigo_ine='21018' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20080' AND p2.categoria='senderismo') WHERE codigo_ine='21020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='20081' AND p2.categoria='senderismo') WHERE codigo_ine='21019' AND categoria='senderismo';

-- ============================================================
-- VIZCAYA
-- ============================================================

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Vizcaya');

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Vizcaya');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Vizcaya');

-- ---- PN Urkiola — Mañaria (48059): Monte Oiz 1026m, paso de buitres, rutas señalizadas
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='48059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48059','sendero','Parque Natural Urkiola','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48059','sendero','Monte Oiz 1026m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48059','sendero','Paso de buitres leonados','excel_curado',date('now'));

-- ---- PN Gorbeia — Orozco/Orozko (48075): vertiente vizcaína, cascada de Gujuli
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='48075' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48075','sendero','Parque Natural de Gorbeia — vertiente vizcaína','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48075','sendero','Cascada de Gujuli','excel_curado',date('now'));

-- ---- PN Gorbeia — Dima (48026): bosques atlánticos, rutas al Anboto 1331m
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='48026' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48026','sendero','Parque Natural de Gorbeia — Anboto','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48026','sendero','Monte Anboto 1331m','excel_curado',date('now'));

-- ---- PN Armañón — Trucíos (48087): bosques templados, hayedos, parque poco conocido
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='48087' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48087','sendero','Parque Natural Armañón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48087','sendero','Hayedos de Armañón','excel_curado',date('now'));

-- ---- PN Armañón / Sierra Salvada — Valle de Carranza (48022): cañones calizos, Armañón
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='48022' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48022','sendero','Parque Natural Armañón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48022','sendero','Hoces del Agüera','excel_curado',date('now'));

-- ---- PN Armañón — Sopuerta (48086): acceso al parque desde Encartaciones
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='48086' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48086','sendero','Parque Natural Armañón — acceso Encartaciones','excel_curado',date('now'));

-- ---- PN Urkiola — Durango (48027): puerta del parque, rutas al Amboto
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='48027' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48027','sendero','Parque Natural Urkiola — puerta sur','excel_curado',date('now'));

-- ---- PN Urkiola — Ceberio (48025): hayedos y pastizales de altura
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='48025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48025','sendero','Parque Natural Urkiola','excel_curado',date('now'));

-- ---- Urdaibai Biosfera — Ibarranguelua (48048): marismas, acantilados, observación aves
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='48048' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48048','sendero','Reserva Biosfera Urdaibai — costa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48048','sendero','Acantilados de Ogeia','excel_curado',date('now'));

-- ---- Urdaibai Biosfera — Ea (47005 MIN): pueblo costero pintoresco, senderos ría
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='47005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47005','sendero','Reserva Biosfera Urdaibai','excel_curado',date('now'));

-- ---- Urdaibai Biosfera — Busturia (48021): marismas del Oka, avifauna
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='48021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48021','sendero','Reserva Biosfera Urdaibai — marismas del Oka','excel_curado',date('now'));

-- ---- Urdaibai — Bermeo (47003 MIN): acantilados, Cabo Matxitxako
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='47003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47003','sendero','Cabo Matxitxako','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47003','sendero','Reserva Biosfera Urdaibai','excel_curado',date('now'));

-- ---- Urdaibai — Mundaka (47011 MIN): ría, arenal
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='47011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47011','sendero','Reserva Biosfera Urdaibai — Mundaka','excel_curado',date('now'));

-- ---- Encartaciones — Lanestosa (48051): cañón de Calera, pueblos medievales
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='48051' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48051','sendero','Cañón de Calera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('48051','sendero','Encartaciones — ruta medieval','excel_curado',date('now'));

-- ---- Elantxobe (47006 MIN): pueblo más empinado de España, acantilados
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='47006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47006','sendero','Acantilados de Elantxobe','excel_curado',date('now'));

-- ---- Lekeitio (47010 MIN): costa vasca, Isla San Nicolás
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='47010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47010','sendero','Camino costero — Lekeitio','excel_curado',date('now'));

-- ---- Gernika-Lumo (47007 MIN): Urdaibai, bosques de roble
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='47007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('47007','sendero','Reserva Biosfera Urdaibai — Gernika','excel_curado',date('now'));

-- Sync Vizcaya: 47xxx MIN → 48xxx MAX (pares verificados)
-- Balmaseda/Valmaseda, Barakaldo/Baracaldo, Bermeo/Bermeo, Bilbao/Bilbao, Ea/Ea
-- Elantxobe/Elanchove, Gernika-Lumo/Guernica y Luno, Getxo/Guecho
-- Leioa/Lejona, Lekeitio/Lequeitio, Mundaka/Mundaca, Ondarroa/Ondárroa
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47001' AND p2.categoria='senderismo') WHERE codigo_ine='48090' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47002' AND p2.categoria='senderismo') WHERE codigo_ine='48013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47003' AND p2.categoria='senderismo') WHERE codigo_ine='48017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47004' AND p2.categoria='senderismo') WHERE codigo_ine='48020' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47005' AND p2.categoria='senderismo') WHERE codigo_ine='48028' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47006' AND p2.categoria='senderismo') WHERE codigo_ine='48031' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47007' AND p2.categoria='senderismo') WHERE codigo_ine='48046' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47008' AND p2.categoria='senderismo') WHERE codigo_ine='48044' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47009' AND p2.categoria='senderismo') WHERE codigo_ine='48054' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47010' AND p2.categoria='senderismo') WHERE codigo_ine='48057' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47011' AND p2.categoria='senderismo') WHERE codigo_ine='48068' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='47012' AND p2.categoria='senderismo') WHERE codigo_ine='48073' AND categoria='senderismo';

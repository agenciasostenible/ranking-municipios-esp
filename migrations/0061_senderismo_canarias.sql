-- 0061_senderismo_canarias.sql
-- Provincias: 'Las Palmas' (25xxx + 35xxx) + 'Santa Cruz de Tenerife' (38xxx)
-- Duplicados: canonico = MIN (25xxx < 35xxx, 38001-38014 < 38015+)
-- Nota: nombres sin apostrofes para compatibilidad con wrangler D1

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Las Palmas','Santa Cruz de Tenerife'));

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Las Palmas','Santa Cruz de Tenerife'));

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Las Palmas','Santa Cruz de Tenerife'));

-- 4. Scores individuales (MIN canonicos)

-- TENERIFE

-- 38026 La Orotava: puerta norte del Parque Nacional del Teide
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='38026' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38026','sendero','Parque Nacional del Teide — La Orotava (acceso norte)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38026','sendero','Sendero Teide-Pico Viejo desde Portillo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38026','sendero','Ruta Las Canadas del Teide — La Orotava','excel_curado',date('now'));

-- 38014 Vilaflor: puerta sur del Teide, pueblo mas alto de Espana (MIN, sync 38052)
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='38014' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38014','sendero','Parque Nacional del Teide — Vilaflor de Chasna (acceso sur)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38014','sendero','Sendero de los Roques de Garcia — Vilaflor','excel_curado',date('now'));

-- 38002 Anaga: Parque Rural Anaga, laurisilva Reserva Biosfera
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='38002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38002','sendero','Parque Rural de Anaga — laurisilva','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38002','sendero','Sendero Barranco de Ijuana — Anaga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38002','sendero','Ruta Cruz del Carmen — Chinamada','excel_curado',date('now'));

-- 38036 San Sebastian de La Gomera: puerta PN Garajonay
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='38036' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38036','sendero','Parque Nacional de Garajonay — acceso San Sebastian','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38036','sendero','Sendero La Fortaleza — San Sebastian de La Gomera','excel_curado',date('now'));

-- 38027 El Paso: Parque Nacional Caldera de Taburiente (La Palma)
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='38027' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38027','sendero','Parque Nacional Caldera de Taburiente — El Paso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38027','sendero','Ruta Caldera de Taburiente — Playa de Taburiente','excel_curado',date('now'));

-- 38050 Vallehermoso: PN Garajonay norte, Roque Cano (La Gomera)
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='38050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38050','sendero','Parque Nacional de Garajonay — Vallehermoso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38050','sendero','Roque Cano — Vallehermoso','excel_curado',date('now'));

-- 38049 Valle Gran Rey: La Gomera, barrancos y laurisilva
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='38049' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38049','sendero','Barranco de Valle Gran Rey — La Gomera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38049','sendero','Ruta Alojera — Valle Gran Rey','excel_curado',date('now'));

-- 38024 Los Llanos de Aridane: Caldera de Taburiente (La Palma)
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='38024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38024','sendero','Parque Nacional Caldera de Taburiente — Los Llanos de Aridane','excel_curado',date('now'));

-- 38021 Hermigua: PN Garajonay, Valle de Hermigua (La Gomera)
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='38021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38021','sendero','Parque Nacional de Garajonay — Hermigua','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38021','sendero','Los Organos — Hermigua','excel_curado',date('now'));

-- 38048 Valverde: El Hierro, Reserva de la Biosfera
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='38048' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38048','sendero','Reserva de la Biosfera El Hierro — Valverde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38048','sendero','Sendero El Hierro GR-101','excel_curado',date('now'));

-- 38009 La Palma: codigo isla, Ruta de los Volcanes
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='38009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38009','sendero','Ruta de los Volcanes — La Palma','excel_curado',date('now'));

-- 38013 Santiago del Teide: Macizo de Teno (MIN, sync 38040)
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='38013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38013','sendero','Macizo de Teno — Santiago del Teide','excel_curado',date('now'));

-- 38007 La Gomera: codigo isla, PN Garajonay laurisilva
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='38007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38007','sendero','Parque Nacional de Garajonay — La Gomera','excel_curado',date('now'));

-- 38003 Buenavista del Norte: Macizo de Teno
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='38003' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38003','sendero','Macizo de Teno — Buenavista del Norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38003','sendero','Faro de Teno — Buenavista','excel_curado',date('now'));

-- 38004 El Hierro: codigo isla, Reserva Biosfera
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='38004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38004','sendero','GR-101 Camino Real — El Hierro','excel_curado',date('now'));

-- 38901 El Pinar de El Hierro: bosque El Hierro
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='38901' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38901','sendero','Bosque de El Golfo — El Pinar de El Hierro','excel_curado',date('now'));

-- 38047 Tijarafe: La Palma, vertiente Caldera
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='38047' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38047','sendero','Ruta Barranco de las Angustias — Tijarafe','excel_curado',date('now'));

-- 38029 Puntagorda: La Palma, pinar y Caldera
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='38029' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38029','sendero','Pinar de Garafia — Puntagorda','excel_curado',date('now'));

-- 38053 Villa de Mazo: La Palma, volcanes
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='38053' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38053','sendero','Volcan San Antonio — Villa de Mazo','excel_curado',date('now'));

-- 38001 Adeje: sur Tenerife, Barranco del Infierno
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='38001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38001','sendero','Barranco del Infierno — Adeje','excel_curado',date('now'));

-- 38020 Guimar: Malpaiso, vertiente sur Teide
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='38020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38020','sendero','Malpaiso del sur — Guimar','excel_curado',date('now'));

-- 38019 Guia de Isora: Teide acceso suroeste
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='38019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38019','sendero','Ruta Arenas Negras — Guia de Isora','excel_curado',date('now'));

-- 38008 La Laguna: Anaga (MIN, sync 38023)
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='38008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38008','sendero','Parque Rural de Anaga — La Laguna','excel_curado',date('now'));

-- 38033 San Andres y Sauces: La Palma norte
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='38033' AND categoria='senderismo';

-- 38030 Puntallana: La Palma
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='38030' AND categoria='senderismo';

-- 38045 Tazacorte: La Palma, Caldera acceso
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='38045' AND categoria='senderismo';

-- 38005 Garachico: Teno, costa norte Tenerife (MIN, sync 38015)
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='38005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('38005','sendero','Ruta costera Garachico — Macizo Teno','excel_curado',date('now'));

-- 38010 Los Realejos: norte Tenerife, Teide acceso (MIN, sync 38031)
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='38010' AND categoria='senderismo';

-- 38037 Santa Cruz de La Palma: capital La Palma
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='38037' AND categoria='senderismo';

-- GRAN CANARIA

-- 25002 Artenara: pueblo mas alto de GC, Roque Nublo, Reserva Biosfera
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='25002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25002','sendero','Roque Nublo — Artenara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25002','sendero','Camino de Santiago de Gran Canaria — Artenara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25002','sendero','Cueva del Rey — Artenara','excel_curado',date('now'));

-- 25012 Tejeda: Roque Nublo + Roque Bentayga, corazon de GC (MIN, sync 35025)
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='25012' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25012','sendero','Roque Nublo — Tejeda','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25012','sendero','Roque Bentayga — Tejeda','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25012','sendero','Cruz de Tejeda — senderos radiales','excel_curado',date('now'));

-- LANZAROTE
-- 35034 Yaiza: puerta sur del PN Timanfaya
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='35034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35034','sendero','Parque Nacional de Timanfaya — Yaiza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35034','sendero','Ruta Los Hervideros — Yaiza','excel_curado',date('now'));

-- 35029 Tinajo: puerta norte del PN Timanfaya
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='35029' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35029','sendero','Parque Nacional de Timanfaya — Tinajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35029','sendero','Montanas del Fuego — Tinajo','excel_curado',date('now'));

-- 25008 Maspalomas-San Bartolome de Tirajana: Roque Nublo sur, Dunas (MIN, sync 35019)
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='25008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25008','sendero','Ruta Roque Nublo — San Bartolome de Tirajana','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25008','sendero','Dunas de Maspalomas — Reserva Natural','excel_curado',date('now'));

-- 35033 Vega de San Mateo: GC interior, Cruz de Tejeda area
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='35033' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35033','sendero','Cruz de Tejeda — Vega de San Mateo','excel_curado',date('now'));

-- 35024 Teguise: Lanzarote, Famara cliffs
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='35024' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35024','sendero','Risco de Famara — Teguise','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35024','sendero','Macizo de Famara — Teguise','excel_curado',date('now'));

-- 35020 La Aldea de San Nicolas: GC noroeste, Tamadaba
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='35020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35020','sendero','Reserva Natural de Guiguiu — La Aldea de San Nicolas','excel_curado',date('now'));

-- 25009 Mogan: GC sur, Chira, Soria (MIN, sync 35012)
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='25009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25009','sendero','Barranco de Mogan — Gran Canaria','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25009','sendero','Presa de Soria — Mogan','excel_curado',date('now'));

-- 35032 Valleseco: GC interior, Tamadaba
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='35032' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35032','sendero','Pinar de Tamadaba — Valleseco','excel_curado',date('now'));

-- 25004 Betancuria: Fuerteventura interior, Parque Rural
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='25004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25004','sendero','Parque Rural de Betancuria — Fuerteventura','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25004','sendero','Montana de Carbon — Betancuria','excel_curado',date('now'));

-- 25011 Pajara: Fuerteventura sur, Cofete (MIN, sync 35015)
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='25011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25011','sendero','Playa de Cofete — Pajara','excel_curado',date('now'));

-- 35031 Valsequillo de Gran Canaria: GC interior
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='35031' AND categoria='senderismo';

-- 25006 La Oliva: Fuerteventura norte, Corralejo PN (MIN, sync 35014)
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='25006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('25006','sendero','Parque Natural de Corralejo — La Oliva','excel_curado',date('now'));

-- 35021 Santa Brigida: Caldera de Bandama
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='35021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35021','sendero','Caldera de Bandama — Santa Brigida','excel_curado',date('now'));

-- 35013 Moya: GC norte, barranco
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='35013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('35013','sendero','Barranco de Moya — Gran Canaria','excel_curado',date('now'));

-- 35028 Tias: Lanzarote costa
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='35028' AND categoria='senderismo';

-- 25001 Antigua: Fuerteventura interior
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='25001' AND categoria='senderismo';

-- 25005 Galdar: GC noroeste
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='25005' AND categoria='senderismo';

-- 35023 Santa Maria de Guia: GC norte
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='35023' AND categoria='senderismo';

-- 35027 Teror: GC interior
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='35027' AND categoria='senderismo';

-- 5. Sync duplicados (MIN -> MAX)

-- SC Tenerife syncs
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38005' AND p2.categoria='senderismo') WHERE codigo_ine='38015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38006' AND p2.categoria='senderismo') WHERE codigo_ine='38022' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38008' AND p2.categoria='senderismo') WHERE codigo_ine='38023' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38010' AND p2.categoria='senderismo') WHERE codigo_ine='38031' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38011' AND p2.categoria='senderismo') WHERE codigo_ine='38028' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38012' AND p2.categoria='senderismo') WHERE codigo_ine='38038' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38013' AND p2.categoria='senderismo') WHERE codigo_ine='38040' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='38014' AND p2.categoria='senderismo') WHERE codigo_ine='38052' AND categoria='senderismo';

-- Las Palmas syncs
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25006' AND p2.categoria='senderismo') WHERE codigo_ine='35014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25007' AND p2.categoria='senderismo') WHERE codigo_ine='35016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25008' AND p2.categoria='senderismo') WHERE codigo_ine='35019' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25009' AND p2.categoria='senderismo') WHERE codigo_ine='35012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25010' AND p2.categoria='senderismo') WHERE codigo_ine='35017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25011' AND p2.categoria='senderismo') WHERE codigo_ine='35015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25012' AND p2.categoria='senderismo') WHERE codigo_ine='35025' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25013' AND p2.categoria='senderismo') WHERE codigo_ine='35026' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='25014' AND p2.categoria='senderismo') WHERE codigo_ine='35030' AND categoria='senderismo';

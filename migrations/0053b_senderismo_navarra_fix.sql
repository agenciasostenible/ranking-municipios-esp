-- 0053b: Fix Navarra — códigos corregidos (0053 usó códigos INE erróneos)
-- Correcciones: Arive=31034(no 31033), Orbaiceta=31195(no 31196), Navascués=31181(no 31180)
--               Uztárroz=31247(no 31243), Bertizarana=31054(no 31193), Burguete=31058(no 31060)
--               Estella=31097(no 31093), Olite=31191(no 31192), Puente la Reina=31206(no 31213)
-- Generado: 2026-06-09

-- 1. Reset completo Navarra a 12 (limpia los scores erróneos de 0053)
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Navarra');

DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Navarra');

-- ============================================================
-- PIRINEO / SELVA DE IRATI / VALLES PIRENAICOS
-- ============================================================

-- Isaba (31128): Monte Ori 2017m, GR-11, acceso Selva de Irati norte
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='31128' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31128','sendero','Monte Ori 2017m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31128','sendero','GR-11 Pirineo navarro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31128','sendero','Valle del Roncal — Isaba','excel_curado',date('now'));

-- Ochagavía (31185): corazón Selva de Irati, Valle de Salazar, bosque hayas-abetos
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='31185' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31185','sendero','Selva de Irati','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31185','sendero','Valle de Salazar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31185','sendero','Embalse de Irabia','excel_curado',date('now'));

-- Uztárroz (31247): Valle del Roncal extremo, Monte Anie acceso, alta montaña
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='31247' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31247','sendero','Valle del Roncal — Uztárroz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31247','sendero','Acceso Monte Anie — Pirineo','excel_curado',date('now'));

-- Roncesvalles (31211): Camino de Santiago, Puerto de Ibañeta, hayedo histórico
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='31211' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31211','sendero','Camino de Santiago — Puerto de Ibañeta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31211','sendero','Hayedo de Roncesvalles','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31211','sendero','GR-11','excel_curado',date('now'));

-- Arive (31034): corazón Selva de Irati, bosque hayas y abetos
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='31034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31034','sendero','Selva de Irati — Aézkoa','excel_curado',date('now'));

-- Orbaiceta (31195): Selva de Irati alta, fábrica histórica de cañones
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='31195' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31195','sendero','Selva de Irati — Orbaiceta','excel_curado',date('now'));

-- Villanueva de Aézcoa (31256): Valle de Aézkoa, Irati, paso de rapaces
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='31256' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31256','sendero','Selva de Irati — Valle de Aézkoa','excel_curado',date('now'));

-- Roncal (31210): Valle del Roncal, GR-11, rutas pastoriles
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='31210' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31210','sendero','Valle del Roncal','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31210','sendero','GR-11','excel_curado',date('now'));

-- Valcarlos (31248): Camino de Santiago por el puerto de Ibañeta, Luzaide
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='31248' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31248','sendero','Camino de Santiago — Valcarlos','excel_curado',date('now'));

-- Burguete (31058): Camino de Santiago, hayedos, Valle de Erro
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='31058' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31058','sendero','Camino de Santiago — Burguete','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31058','sendero','Valle de Erro','excel_curado',date('now'));

-- ============================================================
-- PREPIRINEO / HOCES / PARQUES NATURALES
-- ============================================================

-- Navascués (31181): Foz de Arbayún — cañón más profundo de España, buitres leonados
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='31181' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31181','sendero','Foz de Arbayún','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31181','sendero','Reserva Natural Foz de Arbayún — buitres leonados','excel_curado',date('now'));

-- Lumbier (31159): Foz de Lumbier, vía verde, buitres sobrevolando
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='31159' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31159','sendero','Foz de Lumbier — vía verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31159','sendero','Reserva Natural Foz de Lumbier','excel_curado',date('now'));

-- Bertizarana (31054): PN Señorío de Bertiz, jardín histórico, bosque atlántico
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='31054' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31054','sendero','Parque Natural Señorío de Bertiz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31054','sendero','Jardín histórico de Bertiz','excel_curado',date('now'));

-- Larráun (31144): Sierra de Aralar — vertiente navarra, hayedo, megalitos
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='31144' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31144','sendero','Sierra de Aralar — vertiente navarra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31144','sendero','Ruta megalítica de Aralar','excel_curado',date('now'));

-- Baztán (31050): Valle de Baztán, bosques, Baztan-Bidasoa, turismo rural
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='31050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31050','sendero','Valle de Baztán — rutas de montaña','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31050','sendero','GR Baztan-Bidasoa','excel_curado',date('now'));

-- Goizueta (31117): Reserva Natural de Artikutza, bosque atlántico, biodiversidad
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='31117' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31117','sendero','Reserva Natural de Artikutza','excel_curado',date('now'));

-- Valle de Yerri (31260): Sierra de Urbasa y Andía, nacedero del Urederra área
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='31260' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31260','sendero','Sierra de Urbasa y Andía','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31260','sendero','Nacedero del Urederra','excel_curado',date('now'));

-- ============================================================
-- BARDENAS REALES
-- ============================================================

-- Arguedas (31032): Bardenas Reales UNESCO, Cabezo de Castildetierra, paisaje lunar
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='31032' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31032','sendero','Bardenas Reales — Reserva Biosfera UNESCO','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31032','sendero','Cabezo de Castildetierra','excel_curado',date('now'));

-- Carcastillo (31067): sector Bardenas, zona militar adyacente
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='31067' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31067','sendero','Bardenas Reales — sector Carcastillo','excel_curado',date('now'));

-- Ujué (31235): cerro medieval, vistas a Bardenas, romería histórica
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='31235' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31235','sendero','Cerro de Ujué — vistas panorámicas','excel_curado',date('now'));

-- Tudela (31232): riberas del Ebro, Bardenas acceso sur
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='31232' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31232','sendero','Riberas del Ebro — Tudela','excel_curado',date('now'));

-- Zugarramurdi (31264): cuevas, bosque, frontera Francia, ruta de brujas
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='31264' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31264','sendero','Cuevas de Zugarramurdi','excel_curado',date('now'));

-- Pamplona (31201): Parque Fluvial del Arga, ciudad histórica
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='31201' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31201','sendero','Parque Fluvial del Arga','excel_curado',date('now'));

-- ============================================================
-- SYNC: 31xxx MIN → 33xxx MAX
-- ============================================================
-- Pares exactos
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31038' AND p2.categoria='senderismo') WHERE codigo_ine='33004' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31128' AND p2.categoria='senderismo') WHERE codigo_ine='33008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31159' AND p2.categoria='senderismo') WHERE codigo_ine='33010' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31167' AND p2.categoria='senderismo') WHERE codigo_ine='33011' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31185' AND p2.categoria='senderismo') WHERE codigo_ine='33012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31210' AND p2.categoria='senderismo') WHERE codigo_ine='33016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31211' AND p2.categoria='senderismo') WHERE codigo_ine='33017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31216' AND p2.categoria='senderismo') WHERE codigo_ine='33018' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31232' AND p2.categoria='senderismo') WHERE codigo_ine='33019' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31235' AND p2.categoria='senderismo') WHERE codigo_ine='33020' AND categoria='senderismo';
-- Pares con nombre distinto
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31058' AND p2.categoria='senderismo') WHERE codigo_ine='33005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31097' AND p2.categoria='senderismo') WHERE codigo_ine='33007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31201' AND p2.categoria='senderismo') WHERE codigo_ine='33014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31206' AND p2.categoria='senderismo') WHERE codigo_ine='33015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31191' AND p2.categoria='senderismo') WHERE codigo_ine='33013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31908' AND p2.categoria='senderismo') WHERE codigo_ine='33009' AND categoria='senderismo';

-- 0053: Senderismo Navarra curado — Irati, Roncal, Roncesvalles, Bardenas, Foz Arbayún/Lumbier, Bertiz, Urbasa
-- Generado: 2026-06-09
-- Canónicos: 31xxx MIN → 33xxx MAX (algunos 33xxx standalone)
-- NOTA: 33xxx compartido con Asturias, Málaga, Ourense → subquery por provincia siempre

-- ============================================================
-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Navarra');

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Navarra');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Navarra');

-- ============================================================
-- PIRINEO / SELVA DE IRATI / VALLES PIRENAICOS
-- ============================================================

-- Isaba (31128): Monte Ori 2017m, Txamantxoia, Selva de Irati acceso norte, GR-11
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='31128' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31128','sendero','Monte Ori 2017m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31128','sendero','Selva de Irati — acceso norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31128','sendero','GR-11 Pirineo navarro','excel_curado',date('now'));

-- Ochagavía (31185): corazón Selva de Irati, Valle de Salazar, bóveda forestal
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='31185' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31185','sendero','Selva de Irati','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31185','sendero','Valle de Salazar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31185','sendero','Embalse de Irabia — Irati','excel_curado',date('now'));

-- Roncesvalles (31211): Camino de Santiago inicio, Puerto de Ibañeta, hayedo milenario
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='31211' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31211','sendero','Camino de Santiago — Puerto de Ibañeta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31211','sendero','Hayedo de Roncesvalles','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31211','sendero','GR-11','excel_curado',date('now'));

-- Aribe (31033): corazón de la Selva de Irati, bosque de hayas y abetos
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='31033' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31033','sendero','Selva de Irati — sector Aribe','excel_curado',date('now'));

-- Orbaizeta (31196): Selva de Irati alta, paisajes de alta montaña
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='31196' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31196','sendero','Selva de Irati — Orbaizeta','excel_curado',date('now'));

-- Uztárroz (31243): Valle del Roncal extremo, acceso Monte Anie (Francia)
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='31243' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31243','sendero','Valle del Roncal — Uztárroz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31243','sendero','Acceso Monte Anie — Pirineo','excel_curado',date('now'));

-- Roncal (31210): Valle del Roncal, rutas pastoriles, GR-11
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='31210' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31210','sendero','Valle del Roncal','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31210','sendero','GR-11','excel_curado',date('now'));

-- ============================================================
-- PREPIRINEO / HOCES / PARQUES NATURALES
-- ============================================================

-- Navascués (31180): Foz de Arbayún — cañón más profundo de España, buitres
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='31180' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31180','sendero','Foz de Arbayún','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31180','sendero','Reserva Natural Foz de Arbayún','excel_curado',date('now'));

-- Lumbier (31159): Foz de Lumbier, vía verde, buitres leonados sobrevolando
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='31159' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31159','sendero','Foz de Lumbier — vía verde','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31159','sendero','Reserva Natural Foz de Lumbier','excel_curado',date('now'));

-- PN Señorío de Bertiz — Oieregi (31193): jardín histórico, hayedo, robledal atlántico
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='31193' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31193','sendero','Parque Natural Señorío de Bertiz','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31193','sendero','Jardín histórico de Bertiz','excel_curado',date('now'));

-- Sierra de Urbasa y Andía — Améscoa Baja (31019): meseta de hayedo, nacedero del Urederra
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='31019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31019','sendero','Nacedero del Urederra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31019','sendero','Sierra de Urbasa y Andía','excel_curado',date('now'));

-- Sierra de Aralar — zona navarra (Lekunberri / Larraun): macizo calizo
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='31149' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31149','sendero','Sierra de Aralar — vertiente navarra','excel_curado',date('now'));

-- Burguete (31060): Camino de Santiago, hayedos, otoño espectacular
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='31060' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31060','sendero','Camino de Santiago — Burguete','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31060','sendero','Valle de Erro','excel_curado',date('now'));

-- ============================================================
-- BARDENAS REALES
-- ============================================================

-- Arguedas (31030): Bardenas Reales (Reserva Biosfera UNESCO), rutas 4x4 y senderismo
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='31030' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31030','sendero','Bardenas Reales — Reserva Biosfera UNESCO','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31030','sendero','Cabezo de Castildetierra','excel_curado',date('now'));

-- Tudela (31232): Bardenas Reales acceso, riberas del Ebro
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='31232' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31232','sendero','Bardenas Reales — acceso sur','excel_curado',date('now'));

-- Ujué (31235): cerro medieval, vistas a Bardenas, romería
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='31235' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31235','sendero','Cerro de Ujué — vistas a Bardenas','excel_curado',date('now'));

-- ============================================================
-- OTROS DESTACADOS
-- ============================================================

-- Pamplona (31201): Parque Fluvial del Arga, Monte San Cristóbal
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='31201' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('31201','sendero','Parque Fluvial del Arga','excel_curado',date('now'));

-- ============================================================
-- SYNC: 31xxx MIN → 33xxx MAX
-- Pares exactos (nombre igual)
-- ============================================================
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
-- Pares con nombre distinto verificados (bilingüe → monolingüe):
-- Burguete/Auritz ← 31060, Estella-Lizarra ← 31093, Pamplona/Iruña ← 31201
-- Puente la Reina/Gares ← 31213, Olite/Erriberri ← 31192
-- Alsasua/Altsasu ← 31017, Aoiz/Agoitz ← 31021, Lekunberri ← 31149
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31060' AND p2.categoria='senderismo') WHERE codigo_ine='33005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31093' AND p2.categoria='senderismo') WHERE codigo_ine='33007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31201' AND p2.categoria='senderismo') WHERE codigo_ine='33014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31213' AND p2.categoria='senderismo') WHERE codigo_ine='33015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31192' AND p2.categoria='senderismo') WHERE codigo_ine='33013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31017' AND p2.categoria='senderismo') WHERE codigo_ine='33002' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31021' AND p2.categoria='senderismo') WHERE codigo_ine='33003' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='31149' AND p2.categoria='senderismo') WHERE codigo_ine='33009' AND categoria='senderismo';

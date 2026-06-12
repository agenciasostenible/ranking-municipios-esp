-- Migration: Aceite de Oliva - Scoring inicial
-- Descripción: Carga inicial de categoría ACEITE con municipios verificados por NYIOOC y Flos Olei

-- 1. Crear estructura para todos los municipios sin duplicado
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
  SELECT codigo_ine, 'aceite', 0 FROM municipios WHERE es_duplicado=0;

-- 2. Default 12 para todos (sin dato verificado)
UPDATE puntuaciones SET puntuacion=12 
  WHERE categoria='aceite';

-- 3. Limpiar entidades anteriores de aceite (OSM/wikidata)
DELETE FROM entidades WHERE tipo='aceite' AND fuente IN ('wikidata', 'OSM');

-- ============================================================================
-- 4. SCORES MUNICIPALES VERIFICADOS (17 municipios top)
-- ============================================================================

-- JAÉN (4 municipios)
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='23050' AND categoria='aceite';  -- Jaén
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='24010' AND categoria='aceite';  -- Baeza
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='23092' AND categoria='aceite';  -- Úbeda
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='24005' AND categoria='aceite';  -- Andújar

-- CÓRDOBA (4 municipios)
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='14055' AND categoria='aceite';  -- Priego
UPDATE puntuaciones SET puntuacion=66 WHERE codigo_ine='17003' AND categoria='aceite';  -- Baena
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='14021' AND categoria='aceite';  -- Córdoba
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='14043' AND categoria='aceite';  -- Montoro

-- MÁLAGA (1 municipio)
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='32002' AND categoria='aceite';  -- Antequera

-- TOLEDO (1 municipio)
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='45163' AND categoria='aceite';  -- Sonseca

-- CIUDAD REAL (1 municipio)
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='13001' AND categoria='aceite';  -- Alcázar

-- GRANADA (1 municipio)
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='18147' AND categoria='aceite';  -- Órgiva

-- BADAJOZ (1 municipio)
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='06087' AND categoria='aceite';  -- Monterrubio

-- GIRONA (1 municipio)
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='17052' AND categoria='aceite';  -- Siurana

-- LLEIDA (1 municipio)
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='25058' AND categoria='aceite';  -- Les Borges

-- ALMERÍA (1 municipio)
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='04088' AND categoria='aceite';  -- Tabernas

-- BALEARES (1 municipio)
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='07002' AND categoria='aceite';  -- Algaida

-- ============================================================================
-- 5. ENTIDADES DESCRIPTIVAS CON FUENTES VERIFICADAS
-- ============================================================================

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('23050', 'aceite', 'Jaén - Premium', 'Castillo de Canena - 96 Flos Olei, múltiples Gold NYIOOC 2025/2026', 'NYIOOC-Flos_Olei', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('24010', 'aceite', 'Baeza - UNESCO', 'Patrimonio Mundial UNESCO - Producción histórica premiada', 'UNESCO-Verified', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('23092', 'aceite', 'Úbeda - UNESCO', 'Patrimonio Mundial UNESCO - Producción de calidad certificada', 'UNESCO-Verified', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('24005', 'aceite', 'Andújar - Premium', 'Oro Bailén - múltiples medallas Gold NYIOOC 2025/2026', 'NYIOOC', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('14055', 'aceite', 'Priego de Córdoba - DOP Premium', 'Rincón Subbética 98 Flos Olei, Gold NYIOOC 2025. DOP histórica', 'NYIOOC-Flos_Olei', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('17003', 'aceite', 'Baena - DOP Histórica', 'Núñez de Prado - Premium desde 1795. Baena DOP calidad mundial', 'DOP-Histórica', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('14021', 'aceite', 'Córdoba - Capital Regional', 'Capital de producción de aceite. Múltiples productores y DOPs', 'Regional-Data', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('14043', 'aceite', 'Montoro - DOP Histórica', 'DOP Montoro-Adamuz - Producción documentada siglos XVII-XVIII', 'DOP-Histórica', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('32002', 'aceite', 'Antequera - Hall of Fame', 'Finca La Torre - 100/100 Flos Olei (Hall of Fame). Gold NYIOOC 2026', 'Flos_Olei_100-NYIOOC', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('45163', 'aceite', 'Sonseca - Hall of Fame', 'Casas de Hualdo - 100/100 Flos Olei (Hall of Fame). DOP Montes Toledo premium', 'Flos_Olei_100', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('13001', 'aceite', 'Alcázar de San Juan - Gold NYIOOC', 'Palacio de los Olivos - Gold NYIOOC 2026. DOP Campo de Montiel', 'NYIOOC', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('18147', 'aceite', 'Órgiva - Alpujarra', 'Montes de Granada DOP - Producción en zona montaña protegida', 'DOP-Regional', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('06087', 'aceite', 'Monterrubio - Extremadura', 'DOP histórica Extremadura - Producción documentada siglos XVII-XVIII', 'DOP-Histórica', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('17052', 'aceite', 'Siurana - Ultra-Premium', 'DOP Siurana - Ultra-premium Catalonia. Producción muy limitada', 'DOP-Premium', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('25058', 'aceite', 'Les Borges Blanques - Emerging', 'Cuadrat Valley - Flos Olei 2026 Emerging Company Award. DOP Les Garrigues', 'Flos_Olei', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('04088', 'aceite', 'Tabernas - Gold NYIOOC', 'Oro del Desierto - Gold NYIOOC 2026. Producción en desierto único España', 'NYIOOC', date('now'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
  VALUES ('07002', 'aceite', 'Algaida - Gold NYIOOC 4 años', 'Oli Treurer - 4 Gold NYIOOC consecutivos (2023-2026). Baleares premium', 'NYIOOC', date('now'));

-- ============================================================================
-- 6. SINCRONIZAR DUPLICADOS
-- ============================================================================

UPDATE puntuaciones SET puntuacion=(
  SELECT p2.puntuacion FROM puntuaciones p2
  WHERE p2.codigo_ine=(
    SELECT MIN(m2.codigo_ine) FROM municipios m2
    WHERE m2.nombre=municipios.nombre AND m2.provincia=municipios.provincia AND m2.es_duplicado=0
  )
  AND p2.categoria='aceite'
)
WHERE categoria='aceite' AND codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE es_duplicado=1
);

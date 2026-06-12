-- Migration: Playas españolas - ESTRUCTURA (FASE 1)
-- Fuente: Dataset ESRI - 3554 playas en 448 municipios
-- Fecha: 2026-06-11

-- 1. Crear estructura de scores para Playas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
  SELECT codigo_ine, 'Playas', 0 FROM municipios WHERE es_duplicado=0;

-- 2. Establecer puntuación por defecto (12)
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='Playas';

-- 3. Limpiar entidades anteriores (si las hay)
DELETE FROM entidades WHERE tipo='Playas' AND fuente IN ('wikidata', 'OSM', 'verificado_manual');

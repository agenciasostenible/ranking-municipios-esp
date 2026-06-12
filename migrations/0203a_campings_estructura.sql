-- Migration: 0203_campings_estructura.sql
-- Fecha: 2026-06-11
-- Descripción: Crear estructura base para categoría CAMPINGS

-- 1. Insertar puntuaciones base para Campings en todos los municipios
INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion)
  SELECT codigo_ine, 'Campings', 0 FROM municipios WHERE es_duplicado=0
  ON CONFLICT(codigo_ine, categoria) DO UPDATE SET puntuacion=EXCLUDED.puntuacion;

-- 2. Limpiar entreidades antiguas de Campings
DELETE FROM entidades WHERE tipo='Campings';

-- 3. Actualizar scores base
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='Campings';

-- Resultado: Todos los municipios sin camping obtienen 12 puntos base

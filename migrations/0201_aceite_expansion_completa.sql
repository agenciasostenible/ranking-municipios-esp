-- Migration: Aceite de Oliva - EXPANSIÓN COMPLETA
-- Descripción: Carga de TODOS los municipios de 34 DOPs españolas

-- 1. Insertar todos los municipios sin duplicado
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
  SELECT codigo_ine, 'aceite', 0 FROM municipios WHERE es_duplicado=0;

-- 2. Default 12 para todos
UPDATE puntuaciones SET puntuacion=12 
  WHERE categoria='aceite';

-- 3. Limpiar entidades anteriores
DELETE FROM entidades WHERE tipo='aceite' AND fuente IN ('wikidata', 'OSM');

-- 4. SCORES POR TIER DE DOP
-- Tier Principal: 22-26 puntos
UPDATE puntuaciones SET puntuacion=22 
  WHERE categoria='aceite' AND codigo_ine IN (
    SELECT codigo_ine FROM municipios 
    WHERE provincia IN ('Jaén', 'Córdoba', 'Granada', 'Málaga', 'Sevilla', 'Toledo', 'Ciudad Real', 'Badajoz')
    AND es_duplicado=0
  );

-- Tier Secundaria: 16-18 puntos
UPDATE puntuaciones SET puntuacion=16 
  WHERE categoria='aceite' AND codigo_ine IN (
    SELECT codigo_ine FROM municipios 
    WHERE provincia IN ('Tarragona', 'Lleida', 'Girona', 'Cuenca', 'Cáceres')
    AND es_duplicado=0
  );

-- Tier Pequeña: 12-14 puntos (ya tienen default 12)

-- 5. SINCRONIZAR DUPLICADOS
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

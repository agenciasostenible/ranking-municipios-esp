-- Migration: Actualizar why_json de municipios con playas
-- Regenera el JSON para incluir las descripciones de playas

-- Primero, crear tabla temporal con las entidades de playas agrupadas
WITH playas_por_municipio AS (
  SELECT
    codigo_ine,
    json_object('emoji', '🏖️', 'text', 'Playas: ' || nombre) as playa_json
  FROM entidades
  WHERE tipo = 'Playas'
)
UPDATE municipios
SET why_json = CASE
  WHEN why_json IS NULL OR why_json = '[]' THEN '[{"emoji":"🏖️","text":"Playas"}]'
  ELSE json_insert(why_json, '$[#]', json_object('emoji', '🏖️', 'text', 'Playas'))
END
WHERE codigo_ine IN (
  SELECT DISTINCT codigo_ine FROM puntuaciones WHERE categoria='Playas' AND puntuacion > 12
);

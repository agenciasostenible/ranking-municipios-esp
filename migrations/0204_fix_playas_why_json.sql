-- Migration: Arreglar why_json para municipios con playas
-- Agrega "🏖️ Playas" al inicio del JSON si no está

UPDATE municipios
SET why_json = json_insert(
  why_json,
  '$[0]',
  '🏖️ Playas'
)
WHERE codigo_ine IN (
  SELECT DISTINCT codigo_ine FROM puntuaciones WHERE categoria='Playas' AND puntuacion > 12
)
AND (why_json NOT LIKE '%Playas%' OR why_json IS NULL OR why_json = '[]');

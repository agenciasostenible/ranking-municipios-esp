-- Fix v2: rutas en >3 municipios + rutas cuyo nombre menciona otra provincia

-- Rutas que aparecen en más de 3 municipios
DELETE FROM entidades
WHERE tipo IN ('sendero', 'ruta')
AND nombre IN (
  SELECT nombre FROM entidades
  WHERE tipo IN ('sendero', 'ruta')
  GROUP BY nombre
  HAVING COUNT(*) > 3
);

-- Rutas cuyo nombre menciona "Provincia de" (son claramente rutas regionales)
DELETE FROM entidades
WHERE tipo IN ('sendero', 'ruta')
AND nombre LIKE '%Provincia de%';

-- Rutas con nombres de comunidades autónomas (rutas regionales)
DELETE FROM entidades
WHERE tipo IN ('sendero', 'ruta')
AND (nombre LIKE '%Andalucía%' OR nombre LIKE '%Comunitat Valenciana%'
  OR nombre LIKE '%Castilla%' OR nombre LIKE '%Euskal%'
  OR nombre LIKE 'GR %' OR nombre LIKE 'European%'
  OR nombre LIKE 'Camino de Santiago%' OR nombre LIKE 'Via de la Plata%');

-- Recalcular: municipios que ahora no tienen rutas locales → score máx 25
UPDATE puntuaciones SET puntuacion = MIN(puntuacion, 25)
WHERE categoria = 'senderismo'
AND codigo_ine NOT IN (
  SELECT DISTINCT codigo_ine FROM entidades WHERE tipo IN ('sendero', 'ruta')
)
AND puntuacion > 25;


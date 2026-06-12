-- Fix: eliminar rutas de paso (aparecen en >5 municipios) de entidades
-- y reducir puntuaciones de senderismo donde todas las rutas eran de paso

-- Paso 1: Guardar municipios que SOLO tienen rutas de paso (para bajar su score)
-- Paso 2: Eliminar entidades de rutas de paso
DELETE FROM entidades
WHERE tipo IN ('sendero', 'ruta')
AND nombre IN (
  SELECT nombre FROM entidades
  WHERE tipo IN ('sendero', 'ruta')
  GROUP BY nombre
  HAVING COUNT(*) > 5
);

-- Paso 3: Para municipios cuyo score de senderismo viene SOLO de rutas de paso
-- (ahora no tienen ninguna entidad de sendero local), reducir a máximo 35
-- (un valor bajo-medio que refleja que puede haber senderos pero no destacan)
UPDATE puntuaciones SET puntuacion = MIN(puntuacion, 35)
WHERE categoria = 'senderismo'
AND codigo_ine NOT IN (
  SELECT DISTINCT codigo_ine FROM entidades WHERE tipo IN ('sendero', 'ruta')
)
AND puntuacion > 35;


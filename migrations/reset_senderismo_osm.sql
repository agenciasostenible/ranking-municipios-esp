-- Reset senderismo: cap a 50 para todos los municipios
-- Los artículos que vayamos añadiendo subirán desde ahí

-- Guardar qué municipios tienen boost de artículos web en entidades
-- (los que metimos con enriquecer-desde-url.py)
-- Esos ya tienen sus puntos sumados, el cap igualmente los respeta hasta 50
-- y cuando el artículo añade más, pueden superar 50 via UPDATE + MIN(100,...)

UPDATE puntuaciones
SET puntuacion = 50
WHERE categoria = 'senderismo'
AND puntuacion > 50;


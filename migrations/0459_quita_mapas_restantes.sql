-- Mapas/diagramas que el filtro por nombre no detectó (el archivo no lleva "map").
UPDATE entidades SET foto_url = NULL
WHERE puntuacion IS NOT NULL
  AND (foto_url LIKE '%Ways_of_St._James%' OR foto_url LIKE '%municipalities%' OR foto_url LIKE '%ETM_Nerja%');

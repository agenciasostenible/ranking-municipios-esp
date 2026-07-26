-- Quita de los sitios las "fotos" que en realidad son mapas, escudos, banderas,
-- logos, planos o perfiles de ruta (Wikipedia devuelve estos en artículos de rutas).
UPDATE entidades SET foto_url = NULL
WHERE puntuacion IS NOT NULL AND foto_url LIKE 'https://upload.wikimedia.org%'
  AND (LOWER(foto_url) LIKE '%.svg%' OR LOWER(foto_url) LIKE '%map%' OR LOWER(foto_url) LIKE '%mapa%'
    OR LOWER(foto_url) LIKE '%escudo%' OR LOWER(foto_url) LIKE '%flag%' OR LOWER(foto_url) LIKE '%bandera%'
    OR LOWER(foto_url) LIKE '%logo%' OR LOWER(foto_url) LIKE '%plano%' OR LOWER(foto_url) LIKE '%diagram%'
    OR LOWER(foto_url) LIKE '%perfil%' OR LOWER(foto_url) LIKE '%grafic%');

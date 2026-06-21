-- 0301 — Limpiar la puntuación por defecto (30) de castillos en municipios SIN
-- ninguna fortificación. La carga dejó un 30 de relleno en TODOS los municipios
-- (7.673), de modo que pueblos sin castillo salían con un 30 sin sentido.
-- Tras esto: solo conservan puntuación de castillos los municipios con castillo
-- real (puntuación real) o con alguna entidad fortificada; el resto queda sin
-- fila (se muestra como "—" / sin ranking).
DELETE FROM puntuaciones
 WHERE categoria = 'castillos'
   AND puntuacion = 30
   AND codigo_ine NOT IN (
     SELECT DISTINCT codigo_ine FROM entidades
      WHERE tipo IN ('castillo','alcazaba','fortaleza','torre','muralla',
                     'ciudadela','fortin','recinto_amurallado','torreon','atalaya')
   );

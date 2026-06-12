-- SETUP INICIAL
DELETE FROM puntuaciones WHERE categoria='castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) SELECT codigo_ine, 'castillos', 30 FROM municipios;

-- SYNC duplicados
UPDATE puntuaciones SET puntuacion=(SELECT MAX(p2.puntuacion) FROM puntuaciones p2 INNER JOIN municipios m1 ON p2.codigo_ine = m1.codigo_ine INNER JOIN municipios m2 ON m1.nombre = m2.nombre AND m1.provincia = m2.provincia WHERE m2.codigo_ine = puntuaciones.codigo_ine AND m1.codigo_ine != m2.codigo_ine AND p2.categoria = 'castillos') WHERE categoria='castillos';
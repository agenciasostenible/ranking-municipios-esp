-- 0392: 691 castillos/alcazabas/fortalezas tipados como 'monumento' pasan a tipo 'castillo'
-- (aparecen así en la sección Castillos de su ficha; siguen visibles en monumentos, cuyo CAT_TIPOS incluye castillo)
UPDATE OR IGNORE entidades SET tipo='castillo'
WHERE tipo='monumento' AND (nombre LIKE 'Castillo %' OR nombre LIKE 'Castillo de%' OR nombre LIKE 'Alcazaba%' OR nombre LIKE 'Fortaleza%');

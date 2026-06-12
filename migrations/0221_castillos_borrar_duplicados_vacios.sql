-- 0221: Borra 10 castillos duplicados VACÍOS que son el mismo monumento (torre del homenaje/
-- muralla/fortaleza genérica) que el castillo ya descrito del PDF en esa misma ficha.
-- Se conservan los monumentos DISTINTOS sin descripción (torres mudéjares de Teruel, Torre
-- Ochavada de Estepa, Torre Ladrones de Marbella, Murallas de Carmona, etc.).
DELETE FROM entidades WHERE id IN (21763,17323,17867,21750,17076,17511,17521,18342,17072,78995);

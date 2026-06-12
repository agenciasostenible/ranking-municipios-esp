-- TARRAGONA: 5 municipios
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Falset' AND provincia='Tarragona') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=99 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Miravet' AND provincia='Tarragona') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Montblanc' AND provincia='Tarragona') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Siurana' AND provincia='Tarragona') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Tortosa' AND provincia='Tarragona') AND categoria='castillos';
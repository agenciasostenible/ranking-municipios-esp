-- ZARAGOZA: 10 municipios
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alfamén' AND provincia='Zaragoza') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Antellón (pedanía de Murillo de' AND provincia='Zaragoza') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ateca' AND provincia='Zaragoza') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Biota' AND provincia='Zaragoza') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Calatayud' AND provincia='Zaragoza') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Daroca' AND provincia='Zaragoza') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Fabara' AND provincia='Zaragoza') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Illueca' AND provincia='Zaragoza') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Luzeni' AND provincia='Zaragoza') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mequinenza' AND provincia='Zaragoza') AND categoria='castillos';
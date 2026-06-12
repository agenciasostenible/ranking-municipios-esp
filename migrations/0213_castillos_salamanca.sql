-- SALAMANCA: 7 municipios
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alba de Tormes' AND provincia='Salamanca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Aldeadávila de la Ribera (arribes Del' AND provincia='Salamanca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ciudad Rodrigo' AND provincia='Salamanca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ledesma' AND provincia='Salamanca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Montemayor Del Río' AND provincia='Salamanca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='San Felices de los Gallegos' AND provincia='Salamanca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sobradillo' AND provincia='Salamanca') AND categoria='castillos';
-- ÁVILA: 7 municipios
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Arenas de San Pedro' AND provincia='Ávila') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Arévalo' AND provincia='Ávila') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='El Barco de Ávila' AND provincia='Ávila') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mombeltrán' AND provincia='Ávila') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Navas Del Marqués' AND provincia='Ávila') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Santiago Del Collado' AND provincia='Ávila') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ávila' AND provincia='Ávila') AND categoria='castillos';
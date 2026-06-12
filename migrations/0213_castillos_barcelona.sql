-- BARCELONA: 4 municipios
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Barcelona' AND provincia='Barcelona') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cardona' AND provincia='Barcelona') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Castellet I la Gornal' AND provincia='Barcelona') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Claramunt' AND provincia='Barcelona') AND categoria='castillos';
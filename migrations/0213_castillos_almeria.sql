-- ALMERÍA: 10 municipios
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Albox' AND provincia='Almería') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Almería' AND provincia='Almería') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Carboneras' AND provincia='Almería') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cuevas Del Almanzora' AND provincia='Almería') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Garrucha' AND provincia='Almería') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Gérgal' AND provincia='Almería') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Níjar' AND provincia='Almería') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Roquetas de Mar' AND provincia='Almería') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Tabernas' AND provincia='Almería') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Vélez-blanco' AND provincia='Almería') AND categoria='castillos';
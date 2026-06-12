-- VALENCIA: 8 municipios
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ayora' AND provincia='Valencia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Benissanó' AND provincia='Valencia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Chulilla' AND provincia='Valencia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cofrentes' AND provincia='Valencia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cullera' AND provincia='Valencia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Requena' AND provincia='Valencia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sagunto' AND provincia='Valencia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Torrent' AND provincia='Valencia') AND categoria='castillos';
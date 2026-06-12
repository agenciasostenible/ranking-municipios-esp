-- HUESCA: 13 municipios
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alquézar' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Aínsa' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Bastarás (municipalidad de Casbas de' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Benasque' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Embid de Ariza' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Jaca' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Loarre' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Monzón' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Quicena' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Samitier' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Secastilla' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Vall de Arán Rural (área Limítrofe de' AND provincia='Huesca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villarluengo' AND provincia='Huesca') AND categoria='castillos';
-- CUENCA: 10 municipios
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alarcón' AND provincia='Cuenca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=99 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Belmonte' AND provincia='Cuenca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cuenca' AND provincia='Cuenca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Enguídanos' AND provincia='Cuenca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Huete' AND provincia='Cuenca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Iniesta' AND provincia='Cuenca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Moya' AND provincia='Cuenca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Paracuellos (paracuellos de la Vega' AND provincia='Cuenca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='San Clemente' AND provincia='Cuenca') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Tarancón Rural' AND provincia='Cuenca') AND categoria='castillos';
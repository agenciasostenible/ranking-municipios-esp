-- OURENSE: 7 municipios
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Allariz' AND provincia='Ourense') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Castro Caldelas' AND provincia='Ourense') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Maceda' AND provincia='Ourense') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ribadavia' AND provincia='Ourense') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sandiás' AND provincia='Ourense') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Verín' AND provincia='Ourense') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Vilamartín de Valdeorras Rural (o' AND provincia='Ourense') AND categoria='castillos';
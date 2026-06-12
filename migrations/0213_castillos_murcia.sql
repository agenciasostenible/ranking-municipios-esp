-- MURCIA: 13 municipios
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Aledo' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alhama de Murcia' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Blanca' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Bullas' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Calasparra' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Caravaca de la Cruz' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cartagena' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cieza' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Lorca' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Moratalla' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mula' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Pliego' AND provincia='Murcia') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Zafra' AND provincia='Murcia') AND categoria='castillos';
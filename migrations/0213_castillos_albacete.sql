-- ALBACETE: 12 municipios
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alcalá Del Júcar' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alcaraz' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=99 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Almansa' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Carcelén' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Chinchilla de Montearagón' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cotillas' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Hellín' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Jorquera' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Riópar' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Socovos' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Tarazona de la Mancha Rural' AND provincia='Albacete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Yeste' AND provincia='Albacete') AND categoria='castillos';
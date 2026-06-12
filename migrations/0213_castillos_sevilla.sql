-- SEVILLA: 14 municipios
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alanís' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alcalá de Guadaíra' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Carmona' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Constantina' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='El Real de la Jara' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Estepa' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Guadalcanal' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Las Navas de la Concepción' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Lebrija' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Los Molares' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Marchena' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Morón de la Frontera' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sevilla' AND provincia='Sevilla') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Utrera' AND provincia='Sevilla') AND categoria='castillos';
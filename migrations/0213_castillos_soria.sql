-- SORIA: 10 municipios
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Almazán' AND provincia='Soria') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Almenar de Soria' AND provincia='Soria') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Berlanga de Duero' AND provincia='Soria') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Deza' AND provincia='Soria') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Gormaz' AND provincia='Soria') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Medinaceli' AND provincia='Soria') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Rello' AND provincia='Soria') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Soria' AND provincia='Soria') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Vozmediano' AND provincia='Soria') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ágreda' AND provincia='Soria') AND categoria='castillos';
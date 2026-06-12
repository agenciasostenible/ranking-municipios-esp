-- CIUDAD REAL: 12 municipios
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Albazete de San Juan (alcázar de San' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alcublas (alcoba de los Montes' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alhambra' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Almagro' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Almodóvar Del Campo' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Argamasilla de Alba' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Argamasilla de Calatrava' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=99 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Calzada de Calatrava' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Carrión de Calatrava' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ciudad Real' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Piedrabuena' AND provincia='Ciudad Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villanueva de los Infantes' AND provincia='Ciudad Real') AND categoria='castillos';
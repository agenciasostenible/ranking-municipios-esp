-- VALLADOLID: 11 municipios
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Castromonte' AND provincia='Valladolid') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Encinas de Esgueva' AND provincia='Valladolid') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Iscar' AND provincia='Valladolid') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Medina Del Campo' AND provincia='Valladolid') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Portillo' AND provincia='Valladolid') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='San José de Valle' AND provincia='Valladolid') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Simancas' AND provincia='Valladolid') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Tiedra' AND provincia='Valladolid') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Torrelobatón' AND provincia='Valladolid') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Trigueros Del Valle' AND provincia='Valladolid') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villalonso' AND provincia='Valladolid') AND categoria='castillos';
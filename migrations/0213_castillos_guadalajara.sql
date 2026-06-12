-- GUADALAJARA: 12 municipios
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Atienza' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cifuentes' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cogolludo' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Jadraque' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=97 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Molina de Aragón' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Palazuelos (municipalidad de' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Pioz' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Rriba de Santiuste (municipalidad de' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Torija' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villel de Mesa' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Yélamos de Abajo (aribes de la' AND provincia='Guadalajara') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Zorita de los Canes' AND provincia='Guadalajara') AND categoria='castillos';
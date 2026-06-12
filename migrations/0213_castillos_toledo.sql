-- TOLEDO: 16 municipios
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Almonacid de Toledo' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Barcience' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Caudilla (municipalidad de Santo' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Consuegra' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Escalona' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Guadamur' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=81 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Hontanar' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Maqueda' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Montalbán (municipalidad de San' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Navalmoral de Pusa' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Orgaz' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Oropesa' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Polán' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='San Pablo de los Montes' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Toledo' AND provincia='Toledo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Valmojado' AND provincia='Toledo') AND categoria='castillos';
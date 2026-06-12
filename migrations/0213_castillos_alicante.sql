-- ALICANTE: 14 municipios
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alicante' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Banyeres de Mariola' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Benidorm' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Biar' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Castalla' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Denia' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Elche' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Guadalest' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Monóvar' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Novelda' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Petrer' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Santa Pola' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sax' AND provincia='Alicante') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villena' AND provincia='Alicante') AND categoria='castillos';
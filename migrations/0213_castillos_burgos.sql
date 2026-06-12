-- BURGOS: 17 municipios
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Albices (pedanía de Villaquirán de los' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Burgos' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Castrojeriz' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Covarrubias' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Espinosa de los Monteros' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Frías' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Medina de Pomar' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Olmillos de Sasemón (pedanía de' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Pancorbo' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Poza de la Sal' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Puentedey' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Quintanilla de San García' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='San Zadornil' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sotopalacios (merindad de Río' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Torregalindo' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Valle de Mena' AND provincia='Burgos') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villaquirán de los Infantes' AND provincia='Burgos') AND categoria='castillos';
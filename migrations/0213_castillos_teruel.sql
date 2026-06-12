-- TERUEL: 18 municipios
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Albalate Del Arzobispo' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Albarracín' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alcalá de la Selva' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Báguena' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Calaceite' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Castellote' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cedrillas' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mirambel' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Monroyo' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mora de Rubielos' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Pera Lerma (pedanía de Peralta de' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Peracense' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Puertomingalvo' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Rubielos de Mora' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Teruel' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Valderrobres' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villafranca Del Campo' AND provincia='Teruel') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villarluengo' AND provincia='Teruel') AND categoria='castillos';
-- CÁCERES: 17 municipios
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Albalá' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alburquerque Rural (área Limítrofe' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alcántara' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Arroyomolinos' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Brozas' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Coria' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cáceres' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=94 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Granadilla (municipalidad de Zarza de' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Jarandilla de la Vera' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Montánchez' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Plasencia' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Portezuelo' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Segura de Toro' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Trevejo' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=96 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Trujillo' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Valverde Del Fresno' AND provincia='Cáceres') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villanueva de la Vera' AND provincia='Cáceres') AND categoria='castillos';
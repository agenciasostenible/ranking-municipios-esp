-- LUGO: 5 municipios
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Castroverde' AND provincia='Lugo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Chantada' AND provincia='Lugo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=99 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Lugo' AND provincia='Lugo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Monforte de Lemos' AND provincia='Lugo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Palas de Rei' AND provincia='Lugo') AND categoria='castillos';
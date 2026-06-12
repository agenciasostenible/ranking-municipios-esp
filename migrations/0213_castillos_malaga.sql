-- MÁLAGA: 17 municipios
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alhaurín el Grande' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Antequera' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Archidona' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ardales' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Benalmádena' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Benaoján' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Casares' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cártama' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Estepona' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Gaucín' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Manilva' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Marbella' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Maro' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=99 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Málaga' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=93 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ronda' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=89 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Teba' AND provincia='Málaga') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Velez-málaga' AND provincia='Málaga') AND categoria='castillos';
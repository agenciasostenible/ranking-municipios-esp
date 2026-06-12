DELETE FROM puntuaciones WHERE categoria='castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) SELECT codigo_ine, 'castillos', 30 FROM municipios;
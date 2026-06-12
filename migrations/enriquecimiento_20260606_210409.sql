-- Enriquecimiento desde: https://www.keralaviajes.com/blog/las-playas-mas-hermosas-de-islas-canarias-y-baleares
-- Artículo: Las playas más hermosas de Islas Canarias y Baleares
-- Generado: 2026-06-06T21:04:09.134901
-- Municipios: 5

-- Ibiza (Islas Baleares) — Ubicación de Cala Saladeta, refugio fotogénico con aguas turquesas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07026', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07026', 'mencion', 'naturaleza', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07026', 'mencion', 'pareja', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 21) WHERE codigo_ine = '07026' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07026', 'playas', 21);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 21) WHERE codigo_ine = '07026' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07026', 'naturaleza', 21);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='pareja' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='pareja' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='pareja' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 21) WHERE codigo_ine = '07026' AND categoria = 'pareja';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07026', 'pareja', 21);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Ubicación de Cala Saladeta, refugio fotogénico con aguas turquesas') WHERE codigo_ine = '07026' AND COALESCE(why_json, '[]') NOT LIKE '%Ubicación de Cala Sa%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Ubicación de Cala Saladeta, refugio fotogénico con aguas turquesas') WHERE codigo_ine = '07026' AND COALESCE(why_json, '[]') NOT LIKE '%Ubicación de Cala Sa%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07026', 'cala', 'Cala Saladeta', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07026', 'cala', 'Cala Salada', 'articulo_web');

-- Resumen: 1/5 municipios encontrados
-- No encontrados: Menorca (Islas Baleares), Lanzarote (Islas Canarias), Formentera (Islas Baleares), Fuerteventura (Islas Canarias)
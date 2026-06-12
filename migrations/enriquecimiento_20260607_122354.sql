-- Enriquecimiento desde: https://viajar.elperiodico.com/planes/gastro/entramos-pueblo-mejor-come-islas-canarias-templo-papas-arrugas-denominacion-origen-130940760
-- Artículo: Entramos en el pueblo donde mejor se come de las Islas Canarias, "el templo de las papas arrugás": cinco denominaciones de origen y un plato estrella
-- Generado: 2026-06-07T12:23:54.085679
-- Municipios: 1

-- Granadilla de Abona (Santa Cruz de Tenerife) — El Secreto de Chimiche, 1er Premio Mojo Madrid Fusión
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38017', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '38017' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38017', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: El Secreto de Chimiche, 1er Premio Mojo Madrid Fusión') WHERE codigo_ine = '38017' AND COALESCE(why_json, '[]') NOT LIKE '%El Secreto de Chimic%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'El Secreto de Chimiche, 1er Premio Mojo Madrid Fusión') WHERE codigo_ine = '38017' AND COALESCE(why_json, '[]') NOT LIKE '%El Secreto de Chimic%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38017', 'restaurante', 'El Secreto de Chimiche', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38017', 'producto', 'Papas Antiguas de Canarias DOP', 'articulo_web');

-- Resumen: 1/1 municipios encontrados
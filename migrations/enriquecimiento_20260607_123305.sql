-- Enriquecimiento desde: https://viajar.elperiodico.com/escapate_cerca/pueblo-mejor-come-andalucia-calamares-playas-131047803
-- Artículo: Entramos en el pueblo donde mejor se come de Andalucía, conocido como 'el templo de los calamares a la andaluza'
-- Generado: 2026-06-07T12:33:05.153985
-- Municipios: 4

-- Conil de la Frontera (Cádiz) — Referente culinario con calamares a la andaluza y atún rojo de almadraba
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16008', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16008', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16008', 'mencion', 'pueblo_bonito', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '16008' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16008', 'gastronomia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16008' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16008' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16008' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '16008' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16008', 'playas', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16008' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16008' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16008' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '16008' AND categoria = 'pueblo_bonito';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16008', 'pueblo_bonito', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Referente culinario con calamares a la andaluza y atún rojo de almadraba') WHERE codigo_ine = '16008' AND COALESCE(why_json, '[]') NOT LIKE '%Referente culinario %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Referente culinario con calamares a la andaluza y atún rojo de almadraba') WHERE codigo_ine = '16008' AND COALESCE(why_json, '[]') NOT LIKE '%Referente culinario %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16008', 'plato', 'Calamares a la andaluza', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16008', 'producto', 'Atún rojo de almadraba', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16008', 'monumento', 'Iglesia de Santa Catalina (siglo XV)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16008', 'monumento', 'Torre de Guzmán (siglo XIV)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16008', 'monumento', 'Arco de la Villa', 'articulo_web');

-- Vejer de la Frontera (Cádiz) — Población próxima a Conil, referente de pueblos blancos
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16027', 'mencion', 'pueblo_bonito', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16027', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16027' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16027' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16027' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 10) WHERE codigo_ine = '16027' AND categoria = 'pueblo_bonito';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16027', 'pueblo_bonito', 10);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16027' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16027' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16027' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 10) WHERE codigo_ine = '16027' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16027', 'gastronomia', 10);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌸 Pueblo bonito: Población próxima a Conil, referente de pueblos blancos') WHERE codigo_ine = '16027' AND COALESCE(why_json, '[]') NOT LIKE '%Población próxima a %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Población próxima a Conil, referente de pueblos blancos') WHERE codigo_ine = '16027' AND COALESCE(why_json, '[]') NOT LIKE '%Población próxima a %';

-- Resumen: 2/4 municipios encontrados
-- No encontrados: Barbate (Cádiz), Zahara de los Atunes (Cádiz)
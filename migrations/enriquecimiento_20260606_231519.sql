-- Enriquecimiento desde: https://molinoycata.com/es/aprende/blog/guia-de-las-denominaciones-de-origen-del-aceite-de-oliva-en-espana
-- Artículo: Guía de las denominaciones de origen del Aceite de Oliva en España
-- Generado: 2026-06-06T23:15:19.478164
-- Municipios: 10

-- Priego de Córdoba (Córdoba) — DOP Priego de Córdoba, aceite AOVE de referencia nacional
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17022', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17022' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17022' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17022' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '17022' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17022', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Priego de Córdoba, aceite AOVE de referencia nacional') WHERE codigo_ine = '17022' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Priego de Córdob%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Priego de Córdoba, aceite AOVE de referencia nacional') WHERE codigo_ine = '17022' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Priego de Córdob%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17022', 'denominacion', 'DOP Priego de Córdoba', 'articulo_web');

-- Lleida (Lleida) — DOP Les Garrigues, primera DOP aceite de oliva en España
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('27008', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='27008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='27008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='27008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '27008' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('27008', 'gastronomia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Les Garrigues, primera DOP aceite de oliva en España') WHERE codigo_ine = '27008' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Les Garrigues, p%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Les Garrigues, primera DOP aceite de oliva en España') WHERE codigo_ine = '27008' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Les Garrigues, p%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('27008', 'denominacion', 'DOP Les Garrigues', 'articulo_web');

-- Tarragona (Tarragona) — DOP Siurana, Arbequina con perfil sensorial mediterráneo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('42013', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='42013' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='42013' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='42013' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '42013' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('42013', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Siurana, Arbequina con perfil sensorial mediterráneo') WHERE codigo_ine = '42013' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Siurana, Arbequi%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Siurana, Arbequina con perfil sensorial mediterráneo') WHERE codigo_ine = '42013' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Siurana, Arbequi%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('42013', 'denominacion', 'DOP Siurana', 'articulo_web');

-- Jaén (Jaén) — IGP Aceite de Jaén, mayor provincia productora mundial
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24049', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24049' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24049' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='24049' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '24049' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('24049', 'gastronomia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: IGP Aceite de Jaén, mayor provincia productora mundial') WHERE codigo_ine = '24049' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Aceite de Jaén, %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'IGP Aceite de Jaén, mayor provincia productora mundial') WHERE codigo_ine = '24049' AND COALESCE(why_json, '[]') NOT LIKE '%IGP Aceite de Jaén, %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('24049', 'denominacion', 'IGP Aceite de Jaén', 'articulo_web');

-- Granada (Granada) — Sede de Molino & Cata, oleoteca referente en Granada
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 10) WHERE codigo_ine = '19009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19009', 'gastronomia', 10);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede de Molino & Cata, oleoteca referente en Granada') WHERE codigo_ine = '19009' AND COALESCE(why_json, '[]') NOT LIKE '%Sede de Molino & Cat%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Sede de Molino & Cata, oleoteca referente en Granada') WHERE codigo_ine = '19009' AND COALESCE(why_json, '[]') NOT LIKE '%Sede de Molino & Cat%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19009', 'establecimiento', 'Molino & Cata Oleoteca (Granada)', 'articulo_web');

-- Resumen: 5/10 municipios encontrados
-- No encontrados: Sierra Mágina (Jaén), Montes de Toledo (Toledo), Campo de Montiel (Ciudad Real), Gata-Hurdes (Cáceres), Eivissa (Islas Baleares)
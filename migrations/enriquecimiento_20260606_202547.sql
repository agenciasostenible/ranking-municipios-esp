-- Enriquecimiento desde: https://www.dearmonia.com/blog/las-catedrales-mas-bonitas-de-espana-b53.html
-- Artículo: Las catedrales más bonitas de España
-- Generado: 2026-06-06T20:25:47.884352
-- Municipios: 2

-- Burgos (Burgos) — Catedral gótica UNESCO con obras maestras arquitectónicas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'mencion', 'museos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '09003' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09003', 'historia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '09003' AND categoria = 'museos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09003', 'museos', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Catedral gótica UNESCO con obras maestras arquitectónicas') WHERE codigo_ine = '09003' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral gótica UNES%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🖼️ Museos: Catedral gótica UNESCO con obras maestras arquitectónicas') WHERE codigo_ine = '09003' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral gótica UNES%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'catedral', 'Catedral de Santa María de Burgos', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'obra_arquitectonica', 'Escalera Dorada de Diego de Siloé', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'monumento', 'Sepulcro del Cid Campeador y Doña Jimena', 'articulo_web');

-- Santiago de Compostela (A Coruña) — Meta del Camino de Santiago, catedral monumental de peregrinación
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'mencion', 'senderismo', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '01020' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('01020', 'historia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='senderismo' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '01020' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('01020', 'senderismo', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Meta del Camino de Santiago, catedral monumental de peregrinación') WHERE codigo_ine = '01020' AND COALESCE(why_json, '[]') NOT LIKE '%Meta del Camino de S%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Meta del Camino de Santiago, catedral monumental de peregrinación') WHERE codigo_ine = '01020' AND COALESCE(why_json, '[]') NOT LIKE '%Meta del Camino de S%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'catedral', 'Catedral de Santiago de Compostela', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'ruta_cultural', 'Camino de Santiago', 'articulo_web');

-- Resumen: 2/2 municipios encontrados
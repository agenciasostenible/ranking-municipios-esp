-- Enriquecimiento desde: https://blog.turismo.gal/the-five-cathedrals-of-galicia/
-- Artículo: The five cathedrals of Galicia
-- Generado: 2026-06-06T20:30:40.756135
-- Municipios: 7

-- Santiago de Compostela (A Coruña) — Sede de la Catedral más visitada, con Pórtico da Gloria de Maestro Mateo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'mencion', 'museos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '01020' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('01020', 'historia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '01020' AND categoria = 'museos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('01020', 'museos', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Sede de la Catedral más visitada, con Pórtico da Gloria de Maestro Mateo') WHERE codigo_ine = '01020' AND COALESCE(why_json, '[]') NOT LIKE '%Sede de la Catedral %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🖼️ Museos: Sede de la Catedral más visitada, con Pórtico da Gloria de Maestro Mateo') WHERE codigo_ine = '01020' AND COALESCE(why_json, '[]') NOT LIKE '%Sede de la Catedral %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'catedral', 'Catedral de Santiago', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'obra_arte', 'Pórtico da Gloria', 'articulo_web');

-- Mondoñedo (Lugo) — Catedral del siglo XII con espectacular rosetón, en pueblo tranquilo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('27030', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('27030', 'mencion', 'museos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='27030' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='27030' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='27030' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '27030' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('27030', 'historia', 20);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='27030' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='27030' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='27030' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '27030' AND categoria = 'museos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('27030', 'museos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Catedral del siglo XII con espectacular rosetón, en pueblo tranquilo') WHERE codigo_ine = '27030' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral del siglo X%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🖼️ Museos: Catedral del siglo XII con espectacular rosetón, en pueblo tranquilo') WHERE codigo_ine = '27030' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral del siglo X%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('27030', 'catedral', 'Catedral de Mondoñedo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('27030', 'elemento_arquitectonico', 'Rosetón principal', 'articulo_web');

-- Lugo (Lugo) — Catedral neoclásica del siglo XII vinculada a la Ruta Jacobea
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28006', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28006', 'mencion', 'museos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28006' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28006' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28006' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '28006' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('28006', 'historia', 20);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28006' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28006' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28006' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '28006' AND categoria = 'museos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('28006', 'museos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Catedral neoclásica del siglo XII vinculada a la Ruta Jacobea') WHERE codigo_ine = '28006' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral neoclásica %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🖼️ Museos: Catedral neoclásica del siglo XII vinculada a la Ruta Jacobea') WHERE codigo_ine = '28006' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral neoclásica %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28006', 'catedral', 'Catedral de Lugo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28006', 'monumento', 'Muralla romana', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28006', 'elemento_arquitectonico', 'Puerta de Santiago', 'articulo_web');

-- Ourense (Ourense) — Catedral consagrada en 1188 con fachada medieval, rodeada de gastronomía
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('34008', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('34008', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='34008' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='34008' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='34008' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '34008' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('34008', 'historia', 20);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='34008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='34008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='34008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '34008' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('34008', 'gastronomia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Catedral consagrada en 1188 con fachada medieval, rodeada de gastronomía') WHERE codigo_ine = '34008' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral consagrada %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Catedral consagrada en 1188 con fachada medieval, rodeada de gastronomía') WHERE codigo_ine = '34008' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral consagrada %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('34008', 'catedral', 'Catedral de Ourense (San Martiño)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('34008', 'plaza', 'Praza do Trigo', 'articulo_web');

-- Tui (Pontevedra) — Catedral fronteriza con aspecto de iglesia-castillo, entrada gótica única
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('36014', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('36014', 'mencion', 'castillos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='36014' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='36014' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='36014' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '36014' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('36014', 'historia', 20);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='36014' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='36014' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='36014' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '36014' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('36014', 'castillos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Catedral fronteriza con aspecto de iglesia-castillo, entrada gótica única') WHERE codigo_ine = '36014' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral fronteriza %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Catedral fronteriza con aspecto de iglesia-castillo, entrada gótica única') WHERE codigo_ine = '36014' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral fronteriza %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('36014', 'catedral', 'Catedral de Tui', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('36014', 'rio', 'Río Miño', 'articulo_web');

-- Ferrol (A Coruña) — Comparte capital de diócesis con Mondoñedo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01010', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01010' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01010' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01010' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 10) WHERE codigo_ine = '01010' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('01010', 'historia', 10);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Comparte capital de diócesis con Mondoñedo') WHERE codigo_ine = '01010' AND COALESCE(why_json, '[]') NOT LIKE '%Comparte capital de %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01010', 'diocesis', 'Diócesis de Ferrol-Mondoñedo', 'articulo_web');

-- Ribadeo (Lugo) — Catedral esculpida por el mar en costa de pizarra
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28010', 'mencion', 'naturaleza', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28010', 'mencion', 'agua', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28010' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28010' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28010' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '28010' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('28010', 'naturaleza', 15);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28010' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28010' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28010' AND tipo='mencion' AND nombre='agua' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '28010' AND categoria = 'agua';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('28010', 'agua', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Catedral esculpida por el mar en costa de pizarra') WHERE codigo_ine = '28010' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral esculpida p%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '💧 Agua: Catedral esculpida por el mar en costa de pizarra') WHERE codigo_ine = '28010' AND COALESCE(why_json, '[]') NOT LIKE '%Catedral esculpida p%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28010', 'catedral', 'Catedral de Ribadeo', 'articulo_web');

-- Resumen: 7/7 municipios encontrados
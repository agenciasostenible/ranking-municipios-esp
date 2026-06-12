-- Enriquecimiento desde: https://facefoodmag.com/magazine/guia-michelin-espana
-- Artículo: Guía Michelin España 2025
-- Generado: 2026-06-06T22:57:21.903318
-- Municipios: 30

-- Donostia (Guipúzcoa) — Akelarre 3★ y nuevo 1★ Ibai by Paulo Airaudo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('21016', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '21016' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('21016', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Akelarre 3★ y nuevo 1★ Ibai by Paulo Airaudo') WHERE codigo_ine = '21016' AND COALESCE(why_json, '[]') NOT LIKE '%Akelarre 3★ y nuevo %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Akelarre 3★ y nuevo 1★ Ibai by Paulo Airaudo') WHERE codigo_ine = '21016' AND COALESCE(why_json, '[]') NOT LIKE '%Akelarre 3★ y nuevo %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('21016', 'restaurante', 'Akelarre (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('21016', 'restaurante', 'Ibai by Paulo Airaudo (1★ Michelin)', 'articulo_web');

-- Girona (Girona) — Referente gastronómico; nuevo 1★ Divinum 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18005', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '18005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18005', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Referente gastronómico; nuevo 1★ Divinum 2025') WHERE codigo_ine = '18005' AND COALESCE(why_json, '[]') NOT LIKE '%Referente gastronómi%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Referente gastronómico; nuevo 1★ Divinum 2025') WHERE codigo_ine = '18005' AND COALESCE(why_json, '[]') NOT LIKE '%Referente gastronómi%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18005', 'restaurante', 'Divinum (1★ Michelin 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18005', 'destino', 'Ciudad referente gastronómica nacional', 'articulo_web');

-- Cáceres (Cáceres) — Atrio 3★ y mejor sumiller 2025 José Luis Paniagua
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '15005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15005', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Atrio 3★ y mejor sumiller 2025 José Luis Paniagua') WHERE codigo_ine = '15005' AND COALESCE(why_json, '[]') NOT LIKE '%Atrio 3★ y mejor sum%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Atrio 3★ y mejor sumiller 2025 José Luis Paniagua') WHERE codigo_ine = '15005' AND COALESCE(why_json, '[]') NOT LIKE '%Atrio 3★ y mejor sum%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'restaurante', 'Atrio (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'premio', 'Mejor Sumiller Michelin 2025', 'articulo_web');

-- Jerez de la Frontera (Cádiz) — Nuevo 2★ Lú Cocina y Alma; cuna del Jerez DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '16012' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16012', 'gastronomia', 45);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '16012' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16012', 'vinos', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 2★ Lú Cocina y Alma; cuna del Jerez DOP') WHERE codigo_ine = '16012' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 2★ Lú Cocina y%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 2★ Lú Cocina y Alma; cuna del Jerez DOP') WHERE codigo_ine = '16012' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 2★ Lú Cocina y%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'restaurante', 'Lú Cocina y Alma (2★ Michelin 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'producto', 'Vino de Jerez DOP', 'articulo_web');

-- Chiclana de la Frontera (Cádiz) — Nuevo 2★ Alevante en Guía Michelin 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16007', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 40) WHERE codigo_ine = '16007' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16007', 'gastronomia', 40);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 2★ Alevante en Guía Michelin 2025') WHERE codigo_ine = '16007' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 2★ Alevante en%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 2★ Alevante en Guía Michelin 2025') WHERE codigo_ine = '16007' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 2★ Alevante en%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16007', 'restaurante', 'Alevante (2★ Michelin 2025)', 'articulo_web');

-- La Coruña (A Coruña) — Nuevo 2★ Retiro da Costiña en Michelin 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15030', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15030' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15030' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15030' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 40) WHERE codigo_ine = '15030' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15030', 'gastronomia', 40);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 2★ Retiro da Costiña en Michelin 2025') WHERE codigo_ine = '15030' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 2★ Retiro da C%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 2★ Retiro da Costiña en Michelin 2025') WHERE codigo_ine = '15030' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 2★ Retiro da C%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15030', 'restaurante', 'Retiro da Costiña (2★ Michelin 2025)', 'articulo_web');

-- Almansa (Albacete) — Maralba 2★ y mejor sala Michelin 2025 Cristina Díaz
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('02005', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='02005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='02005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='02005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 40) WHERE codigo_ine = '02005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('02005', 'gastronomia', 40);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Maralba 2★ y mejor sala Michelin 2025 Cristina Díaz') WHERE codigo_ine = '02005' AND COALESCE(why_json, '[]') NOT LIKE '%Maralba 2★ y mejor s%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Maralba 2★ y mejor sala Michelin 2025 Cristina Díaz') WHERE codigo_ine = '02005' AND COALESCE(why_json, '[]') NOT LIKE '%Maralba 2★ y mejor s%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('02005', 'restaurante', 'Maralba (2★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('02005', 'premio', 'Premio Mejor Sala Michelin 2025', 'articulo_web');

-- Barcelona (Barcelona) — 5 nuevos 1★ Michelin 2025; referente gastronómico
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 40) WHERE codigo_ine = '08003' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08003', 'gastronomia', 40);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: 5 nuevos 1★ Michelin 2025; referente gastronómico') WHERE codigo_ine = '08003' AND COALESCE(why_json, '[]') NOT LIKE '%5 nuevos 1★ Michelin%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '5 nuevos 1★ Michelin 2025; referente gastronómico') WHERE codigo_ine = '08003' AND COALESCE(why_json, '[]') NOT LIKE '%5 nuevos 1★ Michelin%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'restaurante', 'Fishology (1★ Michelin 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'restaurante', 'Mae Barcelona (1★ Michelin 2025)', 'articulo_web');

-- Ávila (Ávila) — Barro 1★ y Young Chef Michelin 2025 Carlos Casilla
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '51025' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('51025', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Barro 1★ y Young Chef Michelin 2025 Carlos Casilla') WHERE codigo_ine = '51025' AND COALESCE(why_json, '[]') NOT LIKE '%Barro 1★ y Young Che%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Barro 1★ y Young Chef Michelin 2025 Carlos Casilla') WHERE codigo_ine = '51025' AND COALESCE(why_json, '[]') NOT LIKE '%Barro 1★ y Young Che%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'restaurante', 'Barro (1★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'premio', 'Young Chef Award Michelin 2025', 'articulo_web');

-- Murcia (Murcia) — Sede Gala Michelin 2025; nuevo 1★ Frases
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31015', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '31015' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('31015', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Sede Gala Michelin 2025; nuevo 1★ Frases') WHERE codigo_ine = '31015' AND COALESCE(why_json, '[]') NOT LIKE '%Sede Gala Michelin 2%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Sede Gala Michelin 2025; nuevo 1★ Frases') WHERE codigo_ine = '31015' AND COALESCE(why_json, '[]') NOT LIKE '%Sede Gala Michelin 2%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31015', 'restaurante', 'Frases (1★ Michelin 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31015', 'evento', 'Gala Michelin España 2025', 'articulo_web');

-- Madrid (Madrid) — 5 nuevos 1★ Michelin 2025 incluido Dstage ★Verde
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '29014' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('29014', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: 5 nuevos 1★ Michelin 2025 incluido Dstage ★Verde') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%5 nuevos 1★ Michelin%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '5 nuevos 1★ Michelin 2025 incluido Dstage ★Verde') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%5 nuevos 1★ Michelin%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'restaurante', 'Gofio (1★ Michelin 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'restaurante', 'Dstage (Estrella Verde Michelin 2025)', 'articulo_web');

-- Tolosa (Guipúzcoa) — Nuevo 1★ Michelin 2025: restaurante Ama
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('21017', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '21017' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('21017', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 1★ Michelin 2025: restaurante Ama') WHERE codigo_ine = '21017' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 1★ Michelin 2025: restaurante Ama') WHERE codigo_ine = '21017' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('21017', 'restaurante', 'Ama (1★ Michelin 2025)', 'articulo_web');

-- Burgos (Burgos) — Nuevo 1★ Michelin 2025: Ricardo Temiño
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '09003' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09003', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 1★ Michelin 2025: Ricardo Temiño') WHERE codigo_ine = '09003' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 1★ Michelin 2025: Ricardo Temiño') WHERE codigo_ine = '09003' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'restaurante', 'Ricardo Temiño (1★ Michelin 2025)', 'articulo_web');

-- Santiago de Compostela (A Coruña) — Nuevo 1★ Michelin 2025: Simpar
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '01020' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('01020', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 1★ Michelin 2025: Simpar') WHERE codigo_ine = '01020' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 1★ Michelin 2025: Simpar') WHERE codigo_ine = '01020' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'restaurante', 'Simpar (1★ Michelin 2025)', 'articulo_web');

-- Adeje (Santa Cruz de Tenerife) — Dos nuevos 1★ Michelin 2025: Donaire e Il Bocconcino
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38001', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38001' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38001' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38001' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '38001' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38001', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Dos nuevos 1★ Michelin 2025: Donaire e Il Bocconcino') WHERE codigo_ine = '38001' AND COALESCE(why_json, '[]') NOT LIKE '%Dos nuevos 1★ Michel%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Dos nuevos 1★ Michelin 2025: Donaire e Il Bocconcino') WHERE codigo_ine = '38001' AND COALESCE(why_json, '[]') NOT LIKE '%Dos nuevos 1★ Michel%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38001', 'restaurante', 'Donaire (1★ Michelin 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38001', 'restaurante', 'Il Bocconcino (1★ Michelin 2025)', 'articulo_web');

-- Las Palmas de Gran Canaria (Las Palmas) — Nuevo 1★ Muxgo 2025; pierde 1★ Bevir
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('25007', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 28) WHERE codigo_ine = '25007' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('25007', 'gastronomia', 28);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 1★ Muxgo 2025; pierde 1★ Bevir') WHERE codigo_ine = '25007' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Muxgo 2025;%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 1★ Muxgo 2025; pierde 1★ Bevir') WHERE codigo_ine = '25007' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Muxgo 2025;%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('25007', 'restaurante', 'Muxgo (1★ Michelin 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('25007', 'restaurante', 'Bevir (baja Michelin 2025)', 'articulo_web');

-- Cuenca (Cuenca) — Nuevo 1★ Michelin 2025: Casas Colgadas Restaurante
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14004', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14004' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14004' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14004' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 28) WHERE codigo_ine = '14004' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('14004', 'gastronomia', 28);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 1★ Michelin 2025: Casas Colgadas Restaurante') WHERE codigo_ine = '14004' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 1★ Michelin 2025: Casas Colgadas Restaurante') WHERE codigo_ine = '14004' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14004', 'restaurante', 'Casas Colgadas Restaurante (1★ Michelin 2025)', 'articulo_web');

-- Málaga (Málaga) — Nuevo 1★ Michelin 2025: Blossom
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32016', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 28) WHERE codigo_ine = '32016' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('32016', 'gastronomia', 28);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 1★ Michelin 2025: Blossom') WHERE codigo_ine = '32016' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 1★ Michelin 2025: Blossom') WHERE codigo_ine = '32016' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32016', 'restaurante', 'Blossom (1★ Michelin 2025)', 'articulo_web');

-- Tomelloso (Ciudad Real) — Nuevo 1★ Michelin 2025: Epílogo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13017', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '13017' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('13017', 'gastronomia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 1★ Michelin 2025: Epílogo') WHERE codigo_ine = '13017' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 1★ Michelin 2025: Epílogo') WHERE codigo_ine = '13017' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13017', 'restaurante', 'Epílogo (1★ Michelin 2025)', 'articulo_web');

-- Valdemorillo (Madrid) — Nuevo 1★ Michelin 2025: La Casa de Manolo Franco
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28160', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28160' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28160' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28160' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '28160' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('28160', 'gastronomia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 1★ Michelin 2025: La Casa de Manolo Franco') WHERE codigo_ine = '28160' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 1★ Michelin 2025: La Casa de Manolo Franco') WHERE codigo_ine = '28160' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28160', 'restaurante', 'La Casa de Manolo Franco (1★ Michelin 2025)', 'articulo_web');

-- Portbou (Girona) — Nuevo 1★ Michelin 2025: Voramar
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17138', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17138' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17138' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17138' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '17138' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17138', 'gastronomia', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nuevo 1★ Michelin 2025: Voramar') WHERE codigo_ine = '17138' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nuevo 1★ Michelin 2025: Voramar') WHERE codigo_ine = '17138' AND COALESCE(why_json, '[]') NOT LIKE '%Nuevo 1★ Michelin 20%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17138', 'restaurante', 'Voramar (1★ Michelin 2025)', 'articulo_web');

-- Quintanilla de Onésimo (Valladolid) — Nueva Estrella Verde Michelin 2025: Taller Arzuaga
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47129', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47129', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '47129' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('47129', 'gastronomia', 20);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '47129' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('47129', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nueva Estrella Verde Michelin 2025: Taller Arzuaga') WHERE codigo_ine = '47129' AND COALESCE(why_json, '[]') NOT LIKE '%Nueva Estrella Verde%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nueva Estrella Verde Michelin 2025: Taller Arzuaga') WHERE codigo_ine = '47129' AND COALESCE(why_json, '[]') NOT LIKE '%Nueva Estrella Verde%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47129', 'restaurante', 'Taller Arzuaga (Estrella Verde Michelin 2025)', 'articulo_web');

-- Ulldecona (Tarragona) — Nueva Estrella Verde Michelin 2025: Espacio Amunt
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43156', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43156' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43156' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43156' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '43156' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('43156', 'gastronomia', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Nueva Estrella Verde Michelin 2025: Espacio Amunt') WHERE codigo_ine = '43156' AND COALESCE(why_json, '[]') NOT LIKE '%Nueva Estrella Verde%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Nueva Estrella Verde Michelin 2025: Espacio Amunt') WHERE codigo_ine = '43156' AND COALESCE(why_json, '[]') NOT LIKE '%Nueva Estrella Verde%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43156', 'restaurante', 'Espacio Amunt (Estrella Verde Michelin 2025)', 'articulo_web');

-- Resumen: 23/30 municipios encontrados
-- No encontrados: Navas del Rey (Asturias), Alcalá del Valle (Cádiz), Carcaixent (Valencia), Lanzarote (Las Palmas), Alcanar (Tarragona), Sant Julià de Ramis (Girona), Anciles (Huesca)
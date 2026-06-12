-- Enriquecimiento desde: https://www.huleymantel.com/menu-dia/todos-nuevos-restaurantes-espana-con-estrella-michelin-2025-listado-completo_102520_102.html
-- Artículo: Todos los nuevos restaurantes de España con estrella Michelin 2025. Listado completo
-- Generado: 2026-06-06T22:50:19.558495
-- Municipios: 30

-- San Sebastián (Guipúzcoa) — Arzak y Martín Berasategui 3★ + Ibai nueva 1★
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20069', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20069' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20069' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='20069' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '20069' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('20069', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Arzak y Martín Berasategui 3★ + Ibai nueva 1★') WHERE codigo_ine = '20069' AND COALESCE(why_json, '[]') NOT LIKE '%Arzak y Martín Beras%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Arzak y Martín Berasategui 3★ + Ibai nueva 1★') WHERE codigo_ine = '20069' AND COALESCE(why_json, '[]') NOT LIKE '%Arzak y Martín Beras%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20069', 'restaurante', 'Arzak (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('20069', 'restaurante', 'Ibai by Paulo Airaudo (1★ Michelin, nuevo 2025)', 'articulo_web');

-- Barcelona (Barcelona) — Disfrutar, ABaC, Lasarte 3★ + 5 nuevas 1★ en 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='08003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '08003' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('08003', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Disfrutar, ABaC, Lasarte 3★ + 5 nuevas 1★ en 2025') WHERE codigo_ine = '08003' AND COALESCE(why_json, '[]') NOT LIKE '%Disfrutar, ABaC, Las%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Disfrutar, ABaC, Lasarte 3★ + 5 nuevas 1★ en 2025') WHERE codigo_ine = '08003' AND COALESCE(why_json, '[]') NOT LIKE '%Disfrutar, ABaC, Las%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'restaurante', 'Disfrutar (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('08003', 'restaurante', 'ABaC (3★ Michelin)', 'articulo_web');

-- Girona (Girona) — El Celler de Can Roca 3★ + Divinum nueva 1★ 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18005', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '18005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18005', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: El Celler de Can Roca 3★ + Divinum nueva 1★ 2025') WHERE codigo_ine = '18005' AND COALESCE(why_json, '[]') NOT LIKE '%El Celler de Can Roc%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'El Celler de Can Roca 3★ + Divinum nueva 1★ 2025') WHERE codigo_ine = '18005' AND COALESCE(why_json, '[]') NOT LIKE '%El Celler de Can Roc%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18005', 'restaurante', 'El Celler de Can Roca (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18005', 'restaurante', 'Divinum (1★ Michelin, nuevo 2025)', 'articulo_web');

-- Denia (Alicante) — Quique Dacosta 3★; gamba roja de Dénia DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('03014', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='03014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='03014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='03014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '03014' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('03014', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Quique Dacosta 3★; gamba roja de Dénia DOP') WHERE codigo_ine = '03014' AND COALESCE(why_json, '[]') NOT LIKE '%Quique Dacosta 3★; g%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Quique Dacosta 3★; gamba roja de Dénia DOP') WHERE codigo_ine = '03014' AND COALESCE(why_json, '[]') NOT LIKE '%Quique Dacosta 3★; g%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('03014', 'restaurante', 'Quique Dacosta (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('03014', 'producto', 'Gamba roja de Dénia', 'articulo_web');

-- Cáceres (Cáceres) — Atrio 3★ y Premio Mejor Sumiller España 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 40) WHERE codigo_ine = '15005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15005', 'gastronomia', 40);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Atrio 3★ y Premio Mejor Sumiller España 2025') WHERE codigo_ine = '15005' AND COALESCE(why_json, '[]') NOT LIKE '%Atrio 3★ y Premio Me%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Atrio 3★ y Premio Mejor Sumiller España 2025') WHERE codigo_ine = '15005' AND COALESCE(why_json, '[]') NOT LIKE '%Atrio 3★ y Premio Me%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'restaurante', 'Atrio (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15005', 'reconocimiento', 'Premio Mejor Sumiller España 2025', 'articulo_web');

-- Córdoba (Córdoba) — Noor 3★ Michelin; AOVE Montilla-Moriles DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17008', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17008' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '17008' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17008', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Noor 3★ Michelin; AOVE Montilla-Moriles DOP') WHERE codigo_ine = '17008' AND COALESCE(why_json, '[]') NOT LIKE '%Noor 3★ Michelin; AO%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Noor 3★ Michelin; AOVE Montilla-Moriles DOP') WHERE codigo_ine = '17008' AND COALESCE(why_json, '[]') NOT LIKE '%Noor 3★ Michelin; AO%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17008', 'restaurante', 'Noor (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17008', 'producto', 'Aceite DOP Priego de Córdoba', 'articulo_web');

-- El Puerto de Santa María (Cádiz) — Aponiente 3★; mariscos y vinos del Marco de Jerez
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16010', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16010' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '16010' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16010', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Aponiente 3★; mariscos y vinos del Marco de Jerez') WHERE codigo_ine = '16010' AND COALESCE(why_json, '[]') NOT LIKE '%Aponiente 3★; marisc%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Aponiente 3★; mariscos y vinos del Marco de Jerez') WHERE codigo_ine = '16010' AND COALESCE(why_json, '[]') NOT LIKE '%Aponiente 3★; marisc%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16010', 'restaurante', 'Aponiente (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16010', 'producto', 'Mariscos y vinos Marco de Jerez', 'articulo_web');

-- Madrid (Madrid) — DiverXO 3★ + 5 nuevas 1★ Michelin en 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 45) WHERE codigo_ine = '29014' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('29014', 'gastronomia', 45);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DiverXO 3★ + 5 nuevas 1★ Michelin en 2025') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%DiverXO 3★ + 5 nueva%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DiverXO 3★ + 5 nuevas 1★ Michelin en 2025') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%DiverXO 3★ + 5 nueva%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'restaurante', 'DiverXO (3★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'restaurante', 'Chispa Bistró, Gofio, Pabú, Sen Omakase, VelascoAbellá (1★ nuevas)', 'articulo_web');

-- Jerez de la Frontera (Cádiz) — LÚ nueva 2★ Michelin 2025; vinos Jerez DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 42) WHERE codigo_ine = '16012' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16012', 'gastronomia', 42);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 42) WHERE codigo_ine = '16012' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16012', 'vinos', 42);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: LÚ nueva 2★ Michelin 2025; vinos Jerez DOP') WHERE codigo_ine = '16012' AND COALESCE(why_json, '[]') NOT LIKE '%LÚ nueva 2★ Michelin%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'LÚ nueva 2★ Michelin 2025; vinos Jerez DOP') WHERE codigo_ine = '16012' AND COALESCE(why_json, '[]') NOT LIKE '%LÚ nueva 2★ Michelin%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'restaurante', 'LÚ, cocina y alma (2★ Michelin, nuevo 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'producto', 'Vinos DOP Jerez-Xérès-Sherry', 'articulo_web');

-- Chiclana de la Frontera (Cádiz) — Alevante nueva 2★ Michelin 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16007', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '16007' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16007', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Alevante nueva 2★ Michelin 2025') WHERE codigo_ine = '16007' AND COALESCE(why_json, '[]') NOT LIKE '%Alevante nueva 2★ Mi%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Alevante nueva 2★ Michelin 2025') WHERE codigo_ine = '16007' AND COALESCE(why_json, '[]') NOT LIKE '%Alevante nueva 2★ Mi%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16007', 'restaurante', 'Alevante (2★ Michelin, nuevo 2025)', 'articulo_web');

-- Santa Comba (A Coruña) — Retiro da Costiña nueva 2★ Michelin 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15077', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15077' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15077' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='15077' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '15077' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('15077', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Retiro da Costiña nueva 2★ Michelin 2025') WHERE codigo_ine = '15077' AND COALESCE(why_json, '[]') NOT LIKE '%Retiro da Costiña nu%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Retiro da Costiña nueva 2★ Michelin 2025') WHERE codigo_ine = '15077' AND COALESCE(why_json, '[]') NOT LIKE '%Retiro da Costiña nu%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('15077', 'restaurante', 'Retiro da Costiña (2★ Michelin, nuevo 2025)', 'articulo_web');

-- Almansa (Albacete) — Maralba 2★; Premio Mejor Servicio de Sala 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('02005', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='02005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='02005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='02005' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '02005' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('02005', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Maralba 2★; Premio Mejor Servicio de Sala 2025') WHERE codigo_ine = '02005' AND COALESCE(why_json, '[]') NOT LIKE '%Maralba 2★; Premio M%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Maralba 2★; Premio Mejor Servicio de Sala 2025') WHERE codigo_ine = '02005' AND COALESCE(why_json, '[]') NOT LIKE '%Maralba 2★; Premio M%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('02005', 'restaurante', 'Maralba (2★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('02005', 'reconocimiento', 'Premio Servicio de Sala España 2025', 'articulo_web');

-- Ávila (Ávila) — Barro 1★; Young Chef Award 2025 a Carlos Casillas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='51025' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '51025' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('51025', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Barro 1★; Young Chef Award 2025 a Carlos Casillas') WHERE codigo_ine = '51025' AND COALESCE(why_json, '[]') NOT LIKE '%Barro 1★; Young Chef%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Barro 1★; Young Chef Award 2025 a Carlos Casillas') WHERE codigo_ine = '51025' AND COALESCE(why_json, '[]') NOT LIKE '%Barro 1★; Young Chef%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'restaurante', 'Barro (1★ Michelin)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('51025', 'reconocimiento', 'Young Chef Award España 2025', 'articulo_web');

-- Tolosa (Guipúzcoa) — AMA nueva 1★ 2025; alubia de Tolosa IGP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('21017', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '21017' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('21017', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: AMA nueva 1★ 2025; alubia de Tolosa IGP') WHERE codigo_ine = '21017' AND COALESCE(why_json, '[]') NOT LIKE '%AMA nueva 1★ 2025; a%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'AMA nueva 1★ 2025; alubia de Tolosa IGP') WHERE codigo_ine = '21017' AND COALESCE(why_json, '[]') NOT LIKE '%AMA nueva 1★ 2025; a%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('21017', 'restaurante', 'AMA (1★ Michelin, nuevo 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('21017', 'producto', 'Alubia de Tolosa IGP', 'articulo_web');

-- Santiago de Compostela (A Coruña) — Simpar nueva 1★ Michelin 2025 en la capital gallega
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='01020' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '01020' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('01020', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Simpar nueva 1★ Michelin 2025 en la capital gallega') WHERE codigo_ine = '01020' AND COALESCE(why_json, '[]') NOT LIKE '%Simpar nueva 1★ Mich%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Simpar nueva 1★ Michelin 2025 en la capital gallega') WHERE codigo_ine = '01020' AND COALESCE(why_json, '[]') NOT LIKE '%Simpar nueva 1★ Mich%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('01020', 'restaurante', 'Simpar (1★ Michelin, nuevo 2025)', 'articulo_web');

-- Burgos (Burgos) — Ricardo Termiño nueva 1★; morcilla de Burgos IGP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09003' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '09003' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09003', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Ricardo Termiño nueva 1★; morcilla de Burgos IGP') WHERE codigo_ine = '09003' AND COALESCE(why_json, '[]') NOT LIKE '%Ricardo Termiño nuev%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Ricardo Termiño nueva 1★; morcilla de Burgos IGP') WHERE codigo_ine = '09003' AND COALESCE(why_json, '[]') NOT LIKE '%Ricardo Termiño nuev%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'restaurante', 'Ricardo Termiño (1★ Michelin, nuevo 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09003', 'producto', 'Morcilla de Burgos IGP', 'articulo_web');

-- Murcia (Murcia) — Frases nueva 1★; sede Gala Michelin España 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31015', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31015' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '31015' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('31015', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Frases nueva 1★; sede Gala Michelin España 2025') WHERE codigo_ine = '31015' AND COALESCE(why_json, '[]') NOT LIKE '%Frases nueva 1★; sed%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Frases nueva 1★; sede Gala Michelin España 2025') WHERE codigo_ine = '31015' AND COALESCE(why_json, '[]') NOT LIKE '%Frases nueva 1★; sed%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31015', 'restaurante', 'Frases (1★ Michelin, nuevo 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31015', 'reconocimiento', 'Sede Gala Michelin España 2025', 'articulo_web');

-- Cuenca (Cuenca) — Casas Colgadas nueva 1★ Michelin 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14004', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14004' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14004' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='14004' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '14004' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('14004', 'gastronomia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Casas Colgadas nueva 1★ Michelin 2025') WHERE codigo_ine = '14004' AND COALESCE(why_json, '[]') NOT LIKE '%Casas Colgadas nueva%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Casas Colgadas nueva 1★ Michelin 2025') WHERE codigo_ine = '14004' AND COALESCE(why_json, '[]') NOT LIKE '%Casas Colgadas nueva%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('14004', 'restaurante', 'Casas Colgadas (1★ Michelin, nuevo 2025)', 'articulo_web');

-- Málaga (Málaga) — Blossom nueva 1★ Michelin 2025 en Málaga
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32016', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32016' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '32016' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('32016', 'gastronomia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Blossom nueva 1★ Michelin 2025 en Málaga') WHERE codigo_ine = '32016' AND COALESCE(why_json, '[]') NOT LIKE '%Blossom nueva 1★ Mic%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Blossom nueva 1★ Michelin 2025 en Málaga') WHERE codigo_ine = '32016' AND COALESCE(why_json, '[]') NOT LIKE '%Blossom nueva 1★ Mic%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32016', 'restaurante', 'Blossom (1★ Michelin, nuevo 2025)', 'articulo_web');

-- Adeje (Tenerife) — Donaire e Il Bocconcino: 2 nuevas 1★ en 2025
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38001', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38001' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38001' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38001' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '38001' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38001', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Donaire e Il Bocconcino: 2 nuevas 1★ en 2025') WHERE codigo_ine = '38001' AND COALESCE(why_json, '[]') NOT LIKE '%Donaire e Il Bocconc%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Donaire e Il Bocconcino: 2 nuevas 1★ en 2025') WHERE codigo_ine = '38001' AND COALESCE(why_json, '[]') NOT LIKE '%Donaire e Il Bocconc%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38001', 'restaurante', 'Donaire (1★ Michelin, nuevo 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38001', 'restaurante', 'Il Bocconcino (1★ Michelin, nuevo 2025)', 'articulo_web');

-- Las Palmas de Gran Canaria (Las Palmas) — Muxgo nueva 1★ Michelin 2025 en Gran Canaria
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('25007', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='25007' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '25007' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('25007', 'gastronomia', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Muxgo nueva 1★ Michelin 2025 en Gran Canaria') WHERE codigo_ine = '25007' AND COALESCE(why_json, '[]') NOT LIKE '%Muxgo nueva 1★ Miche%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Muxgo nueva 1★ Michelin 2025 en Gran Canaria') WHERE codigo_ine = '25007' AND COALESCE(why_json, '[]') NOT LIKE '%Muxgo nueva 1★ Miche%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('25007', 'restaurante', 'Muxgo (1★ Michelin, nuevo 2025)', 'articulo_web');

-- Tomelloso (Ciudad Real) — Epílogo nueva 1★ 2025; zona vitivinícola La Mancha
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13017', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13017', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '13017' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('13017', 'gastronomia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '13017' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('13017', 'vinos', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Epílogo nueva 1★ 2025; zona vitivinícola La Mancha') WHERE codigo_ine = '13017' AND COALESCE(why_json, '[]') NOT LIKE '%Epílogo nueva 1★ 202%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Epílogo nueva 1★ 2025; zona vitivinícola La Mancha') WHERE codigo_ine = '13017' AND COALESCE(why_json, '[]') NOT LIKE '%Epílogo nueva 1★ 202%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13017', 'restaurante', 'Epílogo (1★ Michelin, nuevo 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13017', 'producto', 'Vinos DOP La Mancha', 'articulo_web');

-- Quintanilla de Onésimo (Valladolid) — Taller Arzuaga 1★ Verde; Ribera del Duero DOC
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47129', 'mencion', 'gastronomia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47129', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '47129' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('47129', 'gastronomia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47129' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '47129' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('47129', 'vinos', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Taller Arzuaga 1★ Verde; Ribera del Duero DOC') WHERE codigo_ine = '47129' AND COALESCE(why_json, '[]') NOT LIKE '%Taller Arzuaga 1★ Ve%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Taller Arzuaga 1★ Verde; Ribera del Duero DOC') WHERE codigo_ine = '47129' AND COALESCE(why_json, '[]') NOT LIKE '%Taller Arzuaga 1★ Ve%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47129', 'restaurante', 'Taller Arzuaga (★ Verde Michelin, nuevo 2025)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47129', 'producto', 'Vinos DOC Ribera del Duero', 'articulo_web');

-- Resumen: 23/30 municipios encontrados
-- No encontrados: Arriondas (Asturias), Larrabetzu (Vizcaya), Villaverde de Pontones (Cantabria), Carcaixent (Valencia), Playa Blanca (Lanzarote), Alcalá del Valle (Cádiz), Alcanar (Tarragona)
-- Enriquecimiento desde: https://www.guiarepsol.com/es/viajar/vamos-de-excursion/pueblos-bonitos-cataluna/
-- Artículo: 17 Pueblos bonitos de Cataluña de la alta montaña al mar
-- Generado: 2026-06-07T13:38:30.081147
-- Municipios: 5

-- Cadaqués (Girona) — Perla de la Costa Brava con arquitectura blanca y hogar de Salvador Dalí
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18003', 'mencion', 'pueblo_bonito', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18003', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18003', 'mencion', 'museos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18003' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18003' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18003' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '18003' AND categoria = 'pueblo_bonito';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18003', 'pueblo_bonito', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18003' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18003' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18003' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '18003' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18003', 'playas', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18003' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18003' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18003' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '18003' AND categoria = 'museos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18003', 'museos', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌸 Pueblo bonito: Perla de la Costa Brava con arquitectura blanca y hogar de Salvador Dalí') WHERE codigo_ine = '18003' AND COALESCE(why_json, '[]') NOT LIKE '%Perla de la Costa Br%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Perla de la Costa Brava con arquitectura blanca y hogar de Salvador Dalí') WHERE codigo_ine = '18003' AND COALESCE(why_json, '[]') NOT LIKE '%Perla de la Costa Br%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18003', 'museo', 'Casa-Museo Salvador Dalí', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18003', 'parque_natural', 'Parque Natural del Cap de Creus', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18003', 'calle', 'Es Call', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18003', 'calle', 'Santa María', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18003', 'calle', 'Silvi Rahola', 'articulo_web');

-- Camprodón (Girona) — Pueblo pirenaico medieval con monasterio benedictino y puente histórico
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17039', 'mencion', 'pueblo_bonito', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17039', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17039', 'mencion', 'museos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17039' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17039' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17039' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '17039' AND categoria = 'pueblo_bonito';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17039', 'pueblo_bonito', 20);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17039' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17039' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17039' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '17039' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17039', 'historia', 20);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17039' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17039' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17039' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '17039' AND categoria = 'museos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17039', 'museos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌸 Pueblo bonito: Pueblo pirenaico medieval con monasterio benedictino y puente histórico') WHERE codigo_ine = '17039' AND COALESCE(why_json, '[]') NOT LIKE '%Pueblo pirenaico med%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Pueblo pirenaico medieval con monasterio benedictino y puente histórico') WHERE codigo_ine = '17039' AND COALESCE(why_json, '[]') NOT LIKE '%Pueblo pirenaico med%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17039', 'monasterio', 'Monasterio Benedictino de San Pedro', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17039', 'puente', 'Puente Nuevo', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17039', 'iglesia', 'Iglesia de Santa María', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17039', 'fábrica', 'Fábrica de galletas Birba', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17039', 'museo', 'Museo de Isaac Albéniz', 'articulo_web');

-- Tossa de Mar (Girona) — Villa medieval amurallada con castillo del siglo XII y calas cristalinas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18017', 'mencion', 'pueblo_bonito', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18017', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18017', 'mencion', 'castillos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18017' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18017' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18017' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '18017' AND categoria = 'pueblo_bonito';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18017', 'pueblo_bonito', 22);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18017' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18017' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18017' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '18017' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18017', 'playas', 22);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18017' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18017' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18017' AND tipo='mencion' AND nombre='castillos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '18017' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18017', 'castillos', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌸 Pueblo bonito: Villa medieval amurallada con castillo del siglo XII y calas cristalinas') WHERE codigo_ine = '18017' AND COALESCE(why_json, '[]') NOT LIKE '%Villa medieval amura%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Villa medieval amurallada con castillo del siglo XII y calas cristalinas') WHERE codigo_ine = '18017' AND COALESCE(why_json, '[]') NOT LIKE '%Villa medieval amura%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18017', 'castillo', 'Castillo de Tossa', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18017', 'iglesia', 'Iglesia de Sant Vicenç', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18017', 'faro', 'Faro de Tossa', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18017', 'yacimiento', 'Villa romana dels Ametllers', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18017', 'playa', 'Cala Es Codolar', 'articulo_web');

-- Besalú (Girona) — Pueblo medieval espectacular con puente del siglo XI y barrio judío
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18002', 'mencion', 'pueblo_bonito', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18002', 'mencion', 'historia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18002' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18002' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18002' AND tipo='mencion' AND nombre='pueblo_bonito' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 23) WHERE codigo_ine = '18002' AND categoria = 'pueblo_bonito';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18002', 'pueblo_bonito', 23);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18002' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18002' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='18002' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 23) WHERE codigo_ine = '18002' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18002', 'historia', 23);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌸 Pueblo bonito: Pueblo medieval espectacular con puente del siglo XI y barrio judío') WHERE codigo_ine = '18002' AND COALESCE(why_json, '[]') NOT LIKE '%Pueblo medieval espe%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Pueblo medieval espectacular con puente del siglo XI y barrio judío') WHERE codigo_ine = '18002' AND COALESCE(why_json, '[]') NOT LIKE '%Pueblo medieval espe%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18002', 'puente', 'Puente de Besalú', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18002', 'barrio', 'Barrio judío', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18002', 'sinagoga', 'Sinagoga antigua', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18002', 'baño_ritual', 'Mikvé', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18002', 'monasterio', 'Monasterio de Sant Pere', 'articulo_web');

-- Resumen: 4/5 municipios encontrados
-- No encontrados: Castellfollit de la Roca (Girona)
-- Enriquecimiento desde: https://viajar.elperiodico.com/planes/entramos-ciudad-mejor-come-andalucia-130918560
-- Artículo: Entramos en la ciudad donde mejor se come de Andalucía, conocida como 'la capital mundial de las tapas'
-- Generado: 2026-06-07T12:23:42.755534
-- Municipios: 2

-- Granada (Granada) — Capital mundial tapas; tapa gratis con cada consumición
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 35) WHERE codigo_ine = '19009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19009', 'gastronomia', 35);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Capital mundial tapas; tapa gratis con cada consumición') WHERE codigo_ine = '19009' AND COALESCE(why_json, '[]') NOT LIKE '%Capital mundial tapa%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Capital mundial tapas; tapa gratis con cada consumición') WHERE codigo_ine = '19009' AND COALESCE(why_json, '[]') NOT LIKE '%Capital mundial tapa%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19009', 'producto_local', 'Jamón de Trevélez (IGP)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19009', 'zona_tapeo', 'Calle Navas, ''templo del tapeo''', 'articulo_web');

-- Trevélez (Granada) — Jamón de Trevélez IGP, curado en las Alpujarras
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19026', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19026' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19026' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='19026' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '19026' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19026', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Jamón de Trevélez IGP, curado en las Alpujarras') WHERE codigo_ine = '19026' AND COALESCE(why_json, '[]') NOT LIKE '%Jamón de Trevélez IG%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Jamón de Trevélez IGP, curado en las Alpujarras') WHERE codigo_ine = '19026' AND COALESCE(why_json, '[]') NOT LIKE '%Jamón de Trevélez IG%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19026', 'producto_local', 'Jamón de Trevélez (IGP)', 'articulo_web');

-- Resumen: 2/2 municipios encontrados
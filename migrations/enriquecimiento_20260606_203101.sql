-- Enriquecimiento desde: https://www.espanafascinante.com/articulo/lugares/patrimonio-humanidad-iglesia-torre-mudejar-teruel-mausoleo/20251117104801286957.html
-- Artículo: Declarada Patrimonio de la Humanidad: la iglesia con la torre mudéjar más antigua de Teruel y un mausoleo de leyenda
-- Generado: 2026-06-06T20:31:01.864386
-- Municipios: 1

-- Teruel (Teruel) — Conjunto mudéjar Patrimonio de la Humanidad con iglesia de San Pedro y mausoleo de los amantes
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'mencion', 'historia', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'mencion', 'museos', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'mencion', 'pareja', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='historia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '43011' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('43011', 'historia', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='museos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '43011' AND categoria = 'museos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('43011', 'museos', 25);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='pareja' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='pareja' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='pareja' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '43011' AND categoria = 'pareja';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('43011', 'pareja', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏛️ Historia: Conjunto mudéjar Patrimonio de la Humanidad con iglesia de San Pedro y mausoleo de los amantes') WHERE codigo_ine = '43011' AND COALESCE(why_json, '[]') NOT LIKE '%Conjunto mudéjar Pat%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🖼️ Museos: Conjunto mudéjar Patrimonio de la Humanidad con iglesia de San Pedro y mausoleo de los amantes') WHERE codigo_ine = '43011' AND COALESCE(why_json, '[]') NOT LIKE '%Conjunto mudéjar Pat%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'iglesia', 'Iglesia de San Pedro de Teruel', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'torre', 'Torre mudéjar de San Pedro', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'mausoleo', 'Mausoleo de los amantes de Teruel', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'monumento', 'Conjunto mudéjar de Teruel (Patrimonio de la Humanidad)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'leyenda', 'Los amantes de Teruel - Isabel de Segura y Diego de Marcilla', 'articulo_web');

-- Resumen: 1/1 municipios encontrados
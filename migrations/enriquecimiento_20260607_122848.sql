-- Enriquecimiento desde: https://viajar.elperiodico.com/planes/gastro/guiso-tradicional-nina-pastori-gastronomia-gaditana-130925930
-- Artículo: El guiso tradicional con el que todavía sueña Niña Pastori: la berza gaditana de la Venta de Vargas en San Fernando
-- Generado: 2026-06-07T12:28:48.583148
-- Municipios: 3

-- San Fernando (Cádiz) — Venta de Vargas, catedral flamenca y berza cañailla desde 1921
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16021', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16021' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16021' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16021' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 32) WHERE codigo_ine = '16021' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16021', 'gastronomia', 32);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Venta de Vargas, catedral flamenca y berza cañailla desde 1921') WHERE codigo_ine = '16021' AND COALESCE(why_json, '[]') NOT LIKE '%Venta de Vargas, cat%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Venta de Vargas, catedral flamenca y berza cañailla desde 1921') WHERE codigo_ine = '16021' AND COALESCE(why_json, '[]') NOT LIKE '%Venta de Vargas, cat%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16021', 'restaurante', 'Venta de Vargas (fundada 1921)', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16021', 'plato_local', 'Berza cañailla (potaje tradicional gaditano)', 'articulo_web');

-- Cádiz (Cádiz) — Capital de la gastronomía gaditana, tortillitas de camarón y chocos
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16009', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16009' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '16009' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16009', 'gastronomia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Capital de la gastronomía gaditana, tortillitas de camarón y chocos') WHERE codigo_ine = '16009' AND COALESCE(why_json, '[]') NOT LIKE '%Capital de la gastro%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Capital de la gastronomía gaditana, tortillitas de camarón y chocos') WHERE codigo_ine = '16009' AND COALESCE(why_json, '[]') NOT LIKE '%Capital de la gastro%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16009', 'producto_local', 'Tortillitas de camarón', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16009', 'producto_local', 'Chocos fritos gaditanos', 'articulo_web');

-- Almonte (Huelva) — Menú de grupo con berza gitana y pringá en Venta de Vargas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('22002', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='22002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='22002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='22002' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 8) WHERE codigo_ine = '22002' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('22002', 'gastronomia', 8);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Menú de grupo con berza gitana y pringá en Venta de Vargas') WHERE codigo_ine = '22002' AND COALESCE(why_json, '[]') NOT LIKE '%Menú de grupo con be%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('22002', 'plato_local', 'Berza gitana con pringá', 'articulo_web');

-- Resumen: 3/3 municipios encontrados
-- Enriquecimiento desde: https://jamondeteruel.eu/descubre-los-alimentos-con-dop-e-igp-de-aragon/
-- Artículo: Descubre los alimentos con DOP e IGP de Aragón: protección con sabor de origen
-- Generado: 2026-06-06T23:07:36.321865
-- Municipios: 8

-- Teruel (Teruel) — DOP Jamón de Teruel e IGP Cerdo de Teruel
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 30) WHERE codigo_ine = '43011' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('43011', 'gastronomia', 30);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Jamón de Teruel e IGP Cerdo de Teruel') WHERE codigo_ine = '43011' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Jamón de Teruel %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Jamón de Teruel e IGP Cerdo de Teruel') WHERE codigo_ine = '43011' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Jamón de Teruel %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'producto_dop', 'Jamón de Teruel DOP', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43011', 'producto_igp', 'Cerdo de Teruel IGP', 'articulo_web');

-- Calanda (Teruel) — DOP Melocotón de Calanda, variedad Amarillo Tardío
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('44051', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='44051' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='44051' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='44051' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '44051' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('44051', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Melocotón de Calanda, variedad Amarillo Tardío') WHERE codigo_ine = '44051' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Melocotón de Cal%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Melocotón de Calanda, variedad Amarillo Tardío') WHERE codigo_ine = '44051' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Melocotón de Cal%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('44051', 'producto_dop', 'Melocotón de Calanda DOP', 'articulo_web');

-- Fuentes de Ebro (Zaragoza) — DOP Cebolla Fuentes de Ebro, sabor suave y digestiva
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('50115', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='50115' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='50115' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='50115' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '50115' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('50115', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: DOP Cebolla Fuentes de Ebro, sabor suave y digestiva') WHERE codigo_ine = '50115' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Cebolla Fuentes %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOP Cebolla Fuentes de Ebro, sabor suave y digestiva') WHERE codigo_ine = '50115' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Cebolla Fuentes %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('50115', 'producto_dop', 'Cebolla Fuentes de Ebro DOP', 'articulo_web');

-- Tarazona (Zaragoza) — Comarca DOP Aceite Sierra del Moncayo
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('49011', 'mencion', 'gastronomia', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49011' AND tipo='mencion' AND nombre='gastronomia' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '49011' AND categoria = 'gastronomia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('49011', 'gastronomia', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍽️ Gastronomía: Comarca DOP Aceite Sierra del Moncayo') WHERE codigo_ine = '49011' AND COALESCE(why_json, '[]') NOT LIKE '%Comarca DOP Aceite S%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Comarca DOP Aceite Sierra del Moncayo') WHERE codigo_ine = '49011' AND COALESCE(why_json, '[]') NOT LIKE '%Comarca DOP Aceite S%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('49011', 'producto_dop', 'Aceite Sierra del Moncayo DOP', 'articulo_web');

-- Calatayud (Zaragoza) — DOP vinos Calatayud, zona vitivinícola aragonesa
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('49004', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49004' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49004' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49004' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 10) WHERE codigo_ine = '49004' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('49004', 'vinos', 10);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DOP vinos Calatayud, zona vitivinícola aragonesa') WHERE codigo_ine = '49004' AND COALESCE(why_json, '[]') NOT LIKE '%DOP vinos Calatayud,%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('49004', 'denominacion_vino', 'DOP Calatayud', 'articulo_web');

-- Cariñena (Zaragoza) — DOP Cariñena, una de las DO más antiguas de España
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('50073', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='50073' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='50073' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='50073' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 10) WHERE codigo_ine = '50073' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('50073', 'vinos', 10);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DOP Cariñena, una de las DO más antiguas de España') WHERE codigo_ine = '50073' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Cariñena, una de%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('50073', 'denominacion_vino', 'DOP Cariñena', 'articulo_web');

-- Barbastro (Huesca) — DOP Somontano, vino emblemático del Pirineo aragonés
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('23003', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23003' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23003' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23003' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 10) WHERE codigo_ine = '23003' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('23003', 'vinos', 10);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DOP Somontano, vino emblemático del Pirineo aragonés') WHERE codigo_ine = '23003' AND COALESCE(why_json, '[]') NOT LIKE '%DOP Somontano, vino %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('23003', 'denominacion_vino', 'DOP Somontano', 'articulo_web');

-- Resumen: 7/8 municipios encontrados
-- No encontrados: Campo de Borja (Zaragoza)
-- Enriquecimiento desde: https://milyunarutas.com/las-mejores-rutas-de-senderismo-en-granada
-- Artículo: Las mejores rutas de senderismo en Granada
-- Generado: 2026-06-06T18:40:59.759117
-- Municipios: 9

-- Monachil (Granada) — Ruta espectacular con puentes colgantes y cañón del río
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 25) WHERE codigo_ine = '19016' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19016', 'senderismo', 25);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 25) WHERE codigo_ine = '19016' AND categoria = 'aventura';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19016', 'aventura', 25);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 25) WHERE codigo_ine = '19016' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19016', 'naturaleza', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Ruta espectacular con puentes colgantes y cañón del río') WHERE codigo_ine = '19016' AND COALESCE(why_json, '[]') NOT LIKE '%Ruta espectacular co%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🧗 Aventura: Ruta espectacular con puentes colgantes y cañón del río') WHERE codigo_ine = '19016' AND COALESCE(why_json, '[]') NOT LIKE '%Ruta espectacular co%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19016', 'sendero', 'Los Cahorros de Monachil', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19016', 'río', 'Río Monachil', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19016', 'estructura', 'Puentes colgantes', 'articulo_web');

-- Castril (Granada) — Cañón con pasarelas colgadas y túneles sobre el río
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 22) WHERE codigo_ine = '19007' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19007', 'senderismo', 22);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 22) WHERE codigo_ine = '19007' AND categoria = 'agua';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19007', 'agua', 22);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 22) WHERE codigo_ine = '19007' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19007', 'naturaleza', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Cañón con pasarelas colgadas y túneles sobre el río') WHERE codigo_ine = '19007' AND COALESCE(why_json, '[]') NOT LIKE '%Cañón con pasarelas %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '💧 Agua: Cañón con pasarelas colgadas y túneles sobre el río') WHERE codigo_ine = '19007' AND COALESCE(why_json, '[]') NOT LIKE '%Cañón con pasarelas %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19007', 'sendero', 'Cerrada del río Castril', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19007', 'río', 'Río Castril', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19007', 'estructura', 'Pasarelas de madera', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19007', 'castillo', 'Castillo de Castril', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19007', 'formación', 'Peña', 'articulo_web');

-- Moclín (Granada) — Final de ruta espectacular con castillo y santuario
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 20) WHERE codigo_ine = '18132' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18132', 'senderismo', 20);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 20) WHERE codigo_ine = '18132' AND categoria = 'castillos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18132', 'castillos', 20);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 20) WHERE codigo_ine = '18132' AND categoria = 'historia';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18132', 'historia', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Final de ruta espectacular con castillo y santuario') WHERE codigo_ine = '18132' AND COALESCE(why_json, '[]') NOT LIKE '%Final de ruta espect%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏰 Castillos: Final de ruta espectacular con castillo y santuario') WHERE codigo_ine = '18132' AND COALESCE(why_json, '[]') NOT LIKE '%Final de ruta espect%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18132', 'sendero', 'Ruta del Gollizno', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18132', 'castillo', 'Castillo de Moclín', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18132', 'santuario', 'Santuario del Cristo del Paño', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18132', 'arte', 'Pinturas rupestres', 'articulo_web');

-- Padul (Granada) — Ruta con vistas panorámicas y formaciones geológicas
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 18) WHERE codigo_ine = '18150' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18150', 'senderismo', 18);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 18) WHERE codigo_ine = '18150' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18150', 'naturaleza', 18);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 18) WHERE codigo_ine = '18150' AND categoria = 'miradores';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18150', 'miradores', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Ruta con vistas panorámicas y formaciones geológicas') WHERE codigo_ine = '18150' AND COALESCE(why_json, '[]') NOT LIKE '%Ruta con vistas pano%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Ruta con vistas panorámicas y formaciones geológicas') WHERE codigo_ine = '18150' AND COALESCE(why_json, '[]') NOT LIKE '%Ruta con vistas pano%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18150', 'sendero', 'Piedra Ventana y Silleta del Padul', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18150', 'formación', 'Formaciones kársticas', 'articulo_web');

-- Pampaneira (Granada) — Acceso a rutas del Barranco del río Poqueira
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 15) WHERE codigo_ine = '18151' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18151', 'senderismo', 15);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 15) WHERE codigo_ine = '18151' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18151', 'naturaleza', 15);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 15) WHERE codigo_ine = '18151' AND categoria = 'agua';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18151', 'agua', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Acceso a rutas del Barranco del río Poqueira') WHERE codigo_ine = '18151' AND COALESCE(why_json, '[]') NOT LIKE '%Acceso a rutas del B%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Acceso a rutas del Barranco del río Poqueira') WHERE codigo_ine = '18151' AND COALESCE(why_json, '[]') NOT LIKE '%Acceso a rutas del B%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18151', 'sendero', 'El Barranco del río Poqueira', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18151', 'río', 'Río Poqueira', 'articulo_web');

-- Nigüelas (Granada) — Sendero con cascada y vistas del paisaje granadino
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 16) WHERE codigo_ine = '18143' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18143', 'senderismo', 16);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 16) WHERE codigo_ine = '18143' AND categoria = 'agua';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18143', 'agua', 16);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 16) WHERE codigo_ine = '18143' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('18143', 'naturaleza', 16);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Sendero con cascada y vistas del paisaje granadino') WHERE codigo_ine = '18143' AND COALESCE(why_json, '[]') NOT LIKE '%Sendero con cascada %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '💧 Agua: Sendero con cascada y vistas del paisaje granadino') WHERE codigo_ine = '18143' AND COALESCE(why_json, '[]') NOT LIKE '%Sendero con cascada %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18143', 'sendero', 'Sendero de la Pavilla y Cascada de Nigüelas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('18143', 'cascada', 'Cascada de Nigüelas', 'articulo_web');

-- Alhama (Granada) — Tajos espectaculares y formaciones fluviales
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 17) WHERE codigo_ine = '19001' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19001', 'senderismo', 17);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 17) WHERE codigo_ine = '19001' AND categoria = 'agua';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19001', 'agua', 17);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 17) WHERE codigo_ine = '19001' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19001', 'naturaleza', 17);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Tajos espectaculares y formaciones fluviales') WHERE codigo_ine = '19001' AND COALESCE(why_json, '[]') NOT LIKE '%Tajos espectaculares%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '💧 Agua: Tajos espectaculares y formaciones fluviales') WHERE codigo_ine = '19001' AND COALESCE(why_json, '[]') NOT LIKE '%Tajos espectaculares%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19001', 'sendero', 'Tajos de Alhama y la Pantaneta', 'articulo_web');

-- Loja (Granada) — Karst espectacular con dolinas, cuevas y lapiaces
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 19) WHERE codigo_ine = '19014' AND categoria = 'senderismo';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19014', 'senderismo', 19);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 19) WHERE codigo_ine = '19014' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19014', 'naturaleza', 19);
UPDATE puntuaciones SET puntuacion = MIN(100, puntuacion + 19) WHERE codigo_ine = '19014' AND categoria = 'miradores';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('19014', 'miradores', 19);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🥾 Senderismo: Karst espectacular con dolinas, cuevas y lapiaces') WHERE codigo_ine = '19014' AND COALESCE(why_json, '[]') NOT LIKE '%Karst espectacular c%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Karst espectacular con dolinas, cuevas y lapiaces') WHERE codigo_ine = '19014' AND COALESCE(why_json, '[]') NOT LIKE '%Karst espectacular c%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19014', 'sendero', 'Mirador del Karst de Sierra Gorda', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19014', 'formación', 'Sierra Gorda de Loja', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('19014', 'pozo', 'Charco del Negro', 'articulo_web');

-- Resumen: 8/9 municipios encontrados
-- No encontrados: Alicún (Granada)
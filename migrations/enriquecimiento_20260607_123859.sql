-- Enriquecimiento desde: https://viajar.elperiodico.com/viajeros/refugio-emilio-aragon-67-anos-particular-paraiso-131018125
-- Artículo: El refugio de Emilio Aragón (67 años) es un pueblo con 66 Bienes de Interés: un lugar que considera 'su particular paraíso' y de origen romano
-- Generado: 2026-06-07T12:38:59.781118
-- Municipios: 3

-- Madrid (Madrid) — Lugar de residencia habitual de Emilio Aragón, contraste con Pollença
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('29014', 'mencion', 'escapada_rural', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='escapada_rural' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='escapada_rural' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='29014' AND tipo='mencion' AND nombre='escapada_rural' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 5) WHERE codigo_ine = '29014' AND categoria = 'escapada_rural';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('29014', 'escapada_rural', 5);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏡 Rural: Lugar de residencia habitual de Emilio Aragón, contraste con Pollença') WHERE codigo_ine = '29014' AND COALESCE(why_json, '[]') NOT LIKE '%Lugar de residencia %';

-- Resumen: 1/3 municipios encontrados
-- No encontrados: Pollença (Islas Baleares), Alcúdia (Islas Baleares)
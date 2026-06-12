-- Enriquecimiento desde: https://1000sitiosquever.com/mejores-playas-mallorca-menorca-ibiza-formentera
-- Artículo: Las mejores playas y calas de las islas Baleares
-- Generado: 2026-06-06T21:16:00.113888
-- Municipios: 10

-- Ibiza (Islas Baleares) — Capital con acceso a Ses Salines, arenal bullanguero
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07026', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07026', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '07026' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07026', 'playas', 15);
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07026' AND tipo='mencion' AND nombre='naturaleza' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '07026' AND categoria = 'naturaleza';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07026', 'naturaleza', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Capital con acceso a Ses Salines, arenal bullanguero') WHERE codigo_ine = '07026' AND COALESCE(why_json, '[]') NOT LIKE '%Capital con acceso a%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🌿 Naturaleza: Capital con acceso a Ses Salines, arenal bullanguero') WHERE codigo_ine = '07026' AND COALESCE(why_json, '[]') NOT LIKE '%Capital con acceso a%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07026', 'playa', 'Ses Salines', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07026', 'aeropuerto', 'Aeropuerto de Ibiza', 'articulo_web');

-- Resumen: 1/10 municipios encontrados
-- No encontrados: Capdepera (Islas Baleares), Cala Ratjada (Islas Baleares), Ses Salines (Islas Baleares), Escorca (Islas Baleares), Es Mercadal (Islas Baleares), Ciutadella (Islas Baleares), Sant Josep (Islas Baleares), Sant Antoni de Portmany (Islas Baleares), Formentera (Islas Baleares)
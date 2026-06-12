-- Fix puntuaciones para ciudades con Michelin 3★ que quedaron bajas por el matching Excel
-- Fuente: Guía Michelin 2026

-- Donostia/San Sebastián (Guipúzcoa) — 3★ Arzak + 3★ Akelarre + múltiples Soles
-- Excel no matcheó 'Donostia-San Sebastián' correctamente → corregir a 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='20069' AND categoria='gastronomia';
-- Sync duplicado
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE nombre='San Sebastián' AND es_duplicado=1
) AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('20069','gastronomia','Capital mundial de la gastronomía — Arzak + Akelarre (3★ Michelin c/u)',
  'San Sebastián (Donostia) es la capital mundial de la gastronomía por habitante. Arzak (Juan Mari y Elena) y Akelarre (Pedro Subijana) ostentan 3 Estrellas Michelin cada uno. Múltiples 2★ y 1★ en la ciudad. Tradición de txokos (sociedades gastronómicas) y pintxos de la Parte Vieja. El más alto nivel culinario de España junto a Cataluña.',
  'Michelin',date('now'));

-- Lasarte-Oria (Guipúzcoa) — Martín Berasategui (3★)
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='20902' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('20902','gastronomia','Martín Berasategui — 3 Estrellas Michelin (3★)',
  'Lasarte-Oria alberga el restaurante Martín Berasategui, con 3 Estrellas Michelin. Uno de los pocos restaurantes del mundo con esa distinción. El chef Martín Berasategui suma más estrellas Michelin que ningún otro cocinero español.',
  'Michelin',date('now'));

-- Larrabezúa (Vizcaya) — Azurmendi de Eneko Atxa (3★)
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='48052' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('48052','gastronomia','Azurmendi — 3 Estrellas Michelin + Green Star (Eneko Atxa)',
  'Larrabezúa alberga Azurmendi del chef Eneko Atxa, con 3 Estrellas Michelin y Green Star de sostenibilidad. Integrado en el paisaje de viñedos del Txakoli de Bizkaia. Cocina vasca creativa con fuerte identidad territorial y sostenibilidad como eje.',
  'Michelin',date('now'));

-- Girona — El Celler de Can Roca (3★★★)
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='18005' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18005','gastronomia','El Celler de Can Roca — 3 Estrellas Michelin (3★★★)',
  'Girona alberga El Celler de Can Roca de los hermanos Joan, Josep y Jordi Roca, con 3 Estrellas Michelin. Nombrado mejor restaurante del mundo en 2013 y 2015 por The World''s 50 Best. Símbolo de la alta cocina catalana y referente mundial de creatividad.',
  'Michelin',date('now'));

-- Madrid — DiverXO (3★, David Muñoz)
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='28079' AND categoria='gastronomia';
-- (ya tiene entidades de la migration de Madrid, solo actualizamos si es necesario)

-- Vitoria-Gasteiz corregida (estaba en Álava con score 50 aprox, debería ser ~72 por 1★ Zaldiaran)
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='50039' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('50039','gastronomia','Vitoria-Gasteiz — Capital Verde Europea + gastronomía alavesa',
  'Vitoria-Gasteiz, capital de Álava, fue Capital Verde Europea (2012). Gastronómicamente destaca por los pintxos del casco medieval, las setas y perretxikos, los caracoles alaveses a la riojana y la proximidad a la Rioja Alavesa vinícola. Sede del Parlamento Vasco con activa vida hostelera.',
  'excel_curado',date('now'));

-- Astigarraga (Guipúzcoa) — capital de la sidra vasca, caseríos con sidrerías
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE nombre='Astigarraga' AND provincia='Guipúzcoa'
) AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES (
  (SELECT codigo_ine FROM municipios WHERE nombre='Astigarraga' AND provincia='Guipúzcoa' LIMIT 1),
  'gastronomia','Astigarraga — capital mundial de la sidra vasca (sagardoa)',
  'Astigarraga es la capital vasca de la sidra (sagardoa). Sus sidrerías son el punto de encuentro gastronómico por excelencia: tortilla de bacalao, bacalao con pimientos, chuleta a la brasa y txistorra, regados con sidra natural directa del tonel. Tradición declarada Patrimonio Cultural Inmaterial del País Vasco.',
  'excel_curado',date('now'));

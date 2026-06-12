-- Enriquecimiento manual: Playas Baleares con nombres correctos de BD
-- Generado: 2026-06-06

-- Alcúdia (07001) — Playa de Muro, Port d'Alcúdia, aguas turquesas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07001', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07001', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07001' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07001' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07001' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 22) WHERE codigo_ine = '07001' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07001', 'playas', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Playa de Muro y Port d''Alcúdia, kilómetros de arena fina en aguas turquesas') WHERE codigo_ine = '07001' AND COALESCE(why_json, '[]') NOT LIKE '%Playa de Muro%';

-- Ciutadella de Menorca (07006) — Cala Turqueta, Son Saura
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07006', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07006', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07006' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07006' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07006' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 22) WHERE codigo_ine = '07006' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07006', 'playas', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Cala Turqueta y Son Saura, playas vírgenes con aguas caribeñas en Menorca') WHERE codigo_ine = '07006' AND COALESCE(why_json, '[]') NOT LIKE '%Cala Turqueta%';

-- Formentera (07009) — Ses Illetes, mejor playa de España
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07009', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07009', 'mencion', 'pareja', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07009' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07009' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07009' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 25) WHERE codigo_ine = '07009' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07009', 'playas', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Ses Illetes, considerada la mejor playa de España con aguas turquesas y fondos de posidonia') WHERE codigo_ine = '07009' AND COALESCE(why_json, '[]') NOT LIKE '%Ses Illetes%';

-- Pollença (07017) — Cala Formentor
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07017', 'mencion', 'playas', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07017' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07017' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07017' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 20) WHERE codigo_ine = '07017' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07017', 'playas', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Cala Formentor, una de las playas más fotogénicas de Mallorca rodeada de pinos') WHERE codigo_ine = '07017' AND COALESCE(why_json, '[]') NOT LIKE '%Cala Formentor%';

-- Santanyí (07020) — Caló des Moro
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07020', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07020', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07020' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07020' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07020' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 23) WHERE codigo_ine = '07020' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07020', 'playas', 23);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Caló des Moro, la cala más fotogénica de Mallorca con aguas esmeralda') WHERE codigo_ine = '07020' AND COALESCE(why_json, '[]') NOT LIKE '%Caló des Moro%';

-- Ses Salines (07021) — Es Caragol playa virgen
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07021', 'mencion', 'playas', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07021' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07021' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07021' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 18) WHERE codigo_ine = '07021' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07021', 'playas', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Es Caragol, playa virgen de Mallorca solo accesible a pie o en barco') WHERE codigo_ine = '07021' AND COALESCE(why_json, '[]') NOT LIKE '%Es Caragol%';

-- Mercadal (07037) — Cavalleria, playa virgen norte Menorca
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07037', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07037', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07037' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07037' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07037' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 20) WHERE codigo_ine = '07037' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07037', 'playas', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Playa de Cavalleria, arenal virgen de 500m en el norte salvaje de Menorca') WHERE codigo_ine = '07037' AND COALESCE(why_json, '[]') NOT LIKE '%Cavalleria%';

-- San Antonio Abad (07046) — Cala Conta, puestas de sol
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07046', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07046', 'mencion', 'pareja', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07046' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07046' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07046' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 20) WHERE codigo_ine = '07046' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07046', 'playas', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Cala Conta, escenario ideal para las mejores puestas de sol de Ibiza') WHERE codigo_ine = '07046' AND COALESCE(why_json, '[]') NOT LIKE '%Cala Conta%';

-- San José (07048) — Cala d'Hort, Es Vedrà
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07048', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07048', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07048' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07048' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07048' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 22) WHERE codigo_ine = '07048' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07048', 'playas', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Cala d''Hort con vistas únicas al islote misterioso de Es Vedrà') WHERE codigo_ine = '07048' AND COALESCE(why_json, '[]') NOT LIKE '%Cala d''Hort%';

-- Sóller (07023) — Cala Tuent, Sa Calobra
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07023', 'mencion', 'playas', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('07023', 'mencion', 'naturaleza', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07023' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88 ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07023' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 10 THEN 100 WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='07023' AND tipo='mencion' AND nombre='playas' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END, puntuacion + 20) WHERE codigo_ine = '07023' AND categoria = 'playas';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('07023', 'playas', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🏖️ Playas: Sa Calobra y Cala Tuent, accesibles por carretera de montaña con paisajes espectaculares') WHERE codigo_ine = '07023' AND COALESCE(why_json, '[]') NOT LIKE '%Sa Calobra%';

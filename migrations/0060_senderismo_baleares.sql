-- 0060_senderismo_baleares.sql
-- Provincias: 'Baleares' (07001-07024) + 'Islas Baleares' (07025-07065, 07901-07902)
-- Duplicados: canónico = MIN (Baleares), MAX = Islas Baleares

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Baleares','Islas Baleares'));

-- 2. Limpiar entidades previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Baleares','Islas Baleares'));

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia IN ('Baleares','Islas Baleares'));

-- 4. Scores individuales (MIN canónicos)

-- MALLORCA — Serra de Tramuntana (Patrimonio UNESCO)
-- 07023 Sóller: Barranc de Biniaraix, GR-221, corazón de la Tramuntana
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='07023' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07023','sendero','Barranc de Biniaraix — Sóller','excel_curado',date('now')),
  ('07023','sendero','GR-221 Ruta de Pedra en Sec — etapa Sóller','excel_curado',date('now')),
  ('07023','sendero','Camí de Castelló — Serra de Tramuntana','excel_curado',date('now'));

-- 07017 Pollença: Puig de Tomir, Cap de Formentor, Tramuntana nord
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='07017' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07017','sendero','Puig de Tomir — Tramuntana nord','excel_curado',date('now')),
  ('07017','sendero','Cap de Formentor — Camí vell de Formentor','excel_curado',date('now')),
  ('07017','sendero','GR-221 — etapa Pollença-Lluc','excel_curado',date('now'));

-- 07025 Fornalutx: entrada Barranc de Biniaraix, Tramuntana (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='07025' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07025','sendero','Barranc de Biniaraix — Fornalutx','excel_curado',date('now')),
  ('07025','sendero','Camí de s\'Arxiduc — Fornalutx','excel_curado',date('now'));

-- 07063 Valldemosa: GR-221, Tramuntana, Sa Foradada (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='07063' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07063','sendero','GR-221 Ruta de Pedra en Sec — Valldemossa','excel_curado',date('now')),
  ('07063','sendero','Sa Foradada — Costa de Valldemossa','excel_curado',date('now'));

-- 07004 Artà: Parc Natural de la Península de Llevant
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='07004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07004','sendero','Parc Natural de la Península de Llevant — Artà','excel_curado',date('now')),
  ('07004','sendero','Puig de Sa Font — Artà','excel_curado',date('now'));

-- 07001 Alcúdia: S''Albufera PN, Cap de Pinar, Tramuntana
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='07001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07001','sendero','Parc Natural de S''Albufera — Alcúdia','excel_curado',date('now')),
  ('07001','sendero','Cap de Pinar — Alcúdia','excel_curado',date('now'));

-- 07045 Puigpuñent: Puig de Galatzó, Tramuntana sud (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='07045' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07045','sendero','Puig de Galatzó — Puigpunyent','excel_curado',date('now')),
  ('07045','sendero','GR-221 — etapa Estellencs-Banyalbufar','excel_curado',date('now'));

-- MENORCA — Camí de Cavalls (GR-223, 185 km perimetral)
-- 07006 Ciutadella de Menorca: Camí de Cavalls tramo oeste
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='07006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07006','sendero','Camí de Cavalls GR-223 — Ciutadella de Menorca','excel_curado',date('now')),
  ('07006','sendero','Cala Macarella — Camí de Cavalls','excel_curado',date('now'));

-- IBIZA — Ses Salinas PN
-- 07048 San José (Sant Josep de sa Talaia): Ses Salinas NP, rutas costera
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='07048' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07048','sendero','Parc Natural de Ses Salines — Sant Josep de sa Talaia','excel_curado',date('now')),
  ('07048','sendero','Sa Talaia — cima Ibiza (475 m)','excel_curado',date('now'));

-- 07010 Ibiza (Eivissa): Ses Salinas, Ses Feixes
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='07010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07010','sendero','Parc Natural de Ses Salines — Eivissa','excel_curado',date('now')),
  ('07010','sendero','Ruta costera Ses Feixes — Eivissa','excel_curado',date('now'));

-- 07037 Mercadal: Monte Toro, Camí de Cavalls centro (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='07037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07037','sendero','Monte Toro — Mercadal (357 m, punto más alto Menorca)','excel_curado',date('now')),
  ('07037','sendero','Camí de Cavalls GR-223 — Mercadal','excel_curado',date('now'));

-- 07013 Maó: Camí de Cavalls, Barranc d''Algendar
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='07013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07013','sendero','Camí de Cavalls GR-223 — Maó','excel_curado',date('now')),
  ('07013','sendero','Barranc d''Algendar — Maó','excel_curado',date('now'));

-- 07020 Santanyí: Parc Natural de Mondragó, costera
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='07020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07020','sendero','Parc Natural de Mondragó — Santanyí','excel_curado',date('now'));

-- FORMENTERA
-- 07009 Formentera: Ses Trucadors, La Mola, rutas interiores
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='07009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07009','sendero','Ses Trucadors — Formentera','excel_curado',date('now')),
  ('07009','sendero','La Mola — Far de la Mola','excel_curado',date('now'));

-- 07034 Mancor del Valle: Tramuntana interior (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='07034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07034','sendero','Puig de Santa Magdalena — Mancor de la Vall','excel_curado',date('now'));

-- 07046 San Antonio Abad (Sant Antoni de Portmany): costa noroeste Ibiza (solo Islas Baleares)
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='07046' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07046','sendero','Punta Galera — ruta costera Sant Antoni','excel_curado',date('now'));

-- 07050 San Juan Bautista (Sant Joan de Labritja): norte Ibiza (solo Islas Baleares)
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='07050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07050','sendero','Puig de Sant Joan — norte Ibiza','excel_curado',date('now'));

-- 07058 Selva: Tramuntana, Lluc (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='07058' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07058','sendero','Monestir de Lluc — rutes de Tramuntana','excel_curado',date('now'));

-- 07054 Santa Eulalia del Río (Santa Eulàlia des Riu): norte Ibiza (solo Islas Baleares)
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='07054' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07054','sendero','Puig de n''Arabí — Santa Eulàlia des Riu','excel_curado',date('now'));

-- 07052 San Luis: Camí de Cavalls este (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='07052' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07052','sendero','Camí de Cavalls GR-223 — Sant Lluís','excel_curado',date('now'));

-- 07021 Ses Salines: Parc Natural de Ses Salines (Mallorca), costera
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='07021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07021','sendero','Parc Natural de Ses Salines — Mallorca','excel_curado',date('now'));

-- 07015 Palma: acceso Tramuntana, Castell de Bellver
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='07015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07015','sendero','Castell de Bellver — Palma','excel_curado',date('now'));

-- 07902 Es Migjorn Gran: sur Menorca, barranco (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='07902' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07902','sendero','Barranc de Trebalúger — Es Migjorn Gran','excel_curado',date('now'));

-- 07062 Son Servera: Llevant, costera (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='07062' AND categoria='senderismo';

-- 07064 Villacarlos (Es Castell): Camí de Cavalls (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='07064' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07064','sendero','Camí de Cavalls GR-223 — Es Castell','excel_curado',date('now'));

-- 07051 San Lorenzo del Cardezar: Llevant, Mallorca (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='07051' AND categoria='senderismo';

-- 07029 Lloseta: piedemonte Tramuntana (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='07029' AND categoria='senderismo';

-- 07039 Muro: S''Albufera (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='07039' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES
  ('07039','sendero','Parc Natural de S''Albufera — Muro','excel_curado',date('now'));

-- 07027 Inca: interior Mallorca, proximidad Tramuntana (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='07027' AND categoria='senderismo';

-- 07031 Llucmajor: sur Mallorca, Cap Blanc (solo Islas Baleares, es canónico)
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='07031' AND categoria='senderismo';

-- 5. Sync duplicados (MIN → MAX)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07003' AND p2.categoria='senderismo') WHERE codigo_ine='07901' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07010' AND p2.categoria='senderismo') WHERE codigo_ine='07026' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07011' AND p2.categoria='senderismo') WHERE codigo_ine='07028' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07012' AND p2.categoria='senderismo') WHERE codigo_ine='07033' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07013' AND p2.categoria='senderismo') WHERE codigo_ine='07032' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07014' AND p2.categoria='senderismo') WHERE codigo_ine='07038' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07015' AND p2.categoria='senderismo') WHERE codigo_ine='07040' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07016' AND p2.categoria='senderismo') WHERE codigo_ine='07041' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07017' AND p2.categoria='senderismo') WHERE codigo_ine='07042' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07018' AND p2.categoria='senderismo') WHERE codigo_ine='07043' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07019' AND p2.categoria='senderismo') WHERE codigo_ine='07049' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07020' AND p2.categoria='senderismo') WHERE codigo_ine='07057' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07021' AND p2.categoria='senderismo') WHERE codigo_ine='07059' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07022' AND p2.categoria='senderismo') WHERE codigo_ine='07060' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07023' AND p2.categoria='senderismo') WHERE codigo_ine='07061' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='07024' AND p2.categoria='senderismo') WHERE codigo_ine='07065' AND categoria='senderismo';

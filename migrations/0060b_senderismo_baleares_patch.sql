-- 0060b_senderismo_baleares_patch.sql
-- Patch: scores faltantes después del fallo de apostrofe en 0060
-- Nota: nombres sin apostrofes para compatibilidad con wrangler D1

-- MALLORCA
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='07063' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07063','sendero','GR-221 Ruta de Pedra en Sec — Valldemossa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07063','sendero','Sa Foradada — Costa de Valldemossa','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='07004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07004','sendero','Parc Natural de la Peninsula de Llevant — Arta','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07004','sendero','Puig de Sa Font — Arta','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='07001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07001','sendero','Parc Natural de Albufera — Alcudia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07001','sendero','Cap de Pinar — Alcudia','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='07045' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07045','sendero','Puig de Galatzo — Puigpunyent','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07045','sendero','GR-221 — etapa Estellencs-Banyalbufar','excel_curado',date('now'));

-- MENORCA
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='07006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07006','sendero','Cami de Cavalls GR-223 — Ciutadella de Menorca','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07006','sendero','Cala Macarella — Cami de Cavalls','excel_curado',date('now'));

-- IBIZA
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='07048' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07048','sendero','Parc Natural de Ses Salines — Sant Josep de sa Talaia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07048','sendero','Sa Talaia — cima Ibiza (475 m)','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='07010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07010','sendero','Parc Natural de Ses Salines — Eivissa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07010','sendero','Ruta costera Ses Feixes — Eivissa','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='07037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07037','sendero','Monte Toro — Mercadal (357 m, punto mas alto Menorca)','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07037','sendero','Cami de Cavalls GR-223 — Mercadal','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='07013' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07013','sendero','Cami de Cavalls GR-223 — Mao','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07013','sendero','Barranc Algendar — Mao','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='07020' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07020','sendero','Parc Natural de Mondrago — Santanyi','excel_curado',date('now'));

-- FORMENTERA
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='07009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07009','sendero','Ses Trucadors — Formentera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07009','sendero','La Mola — Far de la Mola','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='07034' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07034','sendero','Puig de Santa Magdalena — Mancor de la Vall','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='07046' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07046','sendero','Punta Galera — ruta costera Sant Antoni','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='07050' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07050','sendero','Puig de Sant Joan — norte Ibiza','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='07058' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07058','sendero','Monestir de Lluc — rutes de Tramuntana','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='07054' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07054','sendero','Puig d Arabi — Santa Eulalia des Riu','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='07052' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07052','sendero','Cami de Cavalls GR-223 — Sant Lluis','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='07021' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07021','sendero','Parc Natural de Ses Salines — Mallorca','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='07015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07015','sendero','Castell de Bellver — Palma','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='07902' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07902','sendero','Barranc de Trebaluger — Es Migjorn Gran','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='07062' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='07064' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07064','sendero','Cami de Cavalls GR-223 — Es Castell','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='07051' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='07029' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='07039' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('07039','sendero','Parc Natural de Albufera — Muro','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='07027' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='07031' AND categoria='senderismo';

-- Syncs duplicados (MIN -> MAX)
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

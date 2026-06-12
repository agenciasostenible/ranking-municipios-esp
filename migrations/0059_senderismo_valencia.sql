-- 0059: Senderismo Comunitat Valenciana — Penyagolosa, Els Ports, Gorges del Turia, Serra Mariola, Aitana, Penyal d''Ifac
-- Generado: 2026-06-09
-- Castellón: 11xxx MIN → 12xxx MAX (11 pares exactos). 11xxx comparte con Cádiz → subquery
-- Valencia:  45xxx MIN → 46xxx MAX (7 pares exactos). 45xxx comparte con Toledo → subquery
-- Alicante:  03xxx interna (min<max) sin rango externo. 24 pares dentro del 03xxx.

-- ============================================================
-- CASTELLÓN
-- ============================================================

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Castellón');
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Castellón');
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Castellón');

-- Vistabella del Maestrazgo (12139): base del Penyagolosa 1813m, parque natural
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='12139' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('12139','sendero','Parque Natural Penyagolosa','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('12139','sendero','Penyagolosa 1813m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('12139','sendero','Ruta de les Useres','excel_curado',date('now'));

-- Mosqueruela (11011): Els Ports-Maestrazgo, pueblo más alto de Castellón, pinos negros
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='11011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11011','sendero','Els Ports — Mosqueruela','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11011','sendero','Pinares del Maestrazgo','excel_curado',date('now'));

-- Morella (11010): Els Ports, castillo medieval, ciudad amurallada, rutas
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='11010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11010','sendero','Els Ports de Morella','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11010','sendero','Castillo de Morella','excel_curado',date('now'));

-- La Iglesuela del Cid (11007): Maestrazgo, meseta alta, rutas medievales
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='11007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11007','sendero','El Maestrazgo — La Iglesuela del Cid','excel_curado',date('now'));

-- Villafranca del Cid (11017): Penyagolosa acceso, Maestrazgo
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='11017' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11017','sendero','Parque Natural Penyagolosa — acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11017','sendero','El Maestrazgo','excel_curado',date('now'));

-- Portell de Morella (12091): Els Ports interior, remoto, rapaces
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='12091' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('12091','sendero','Els Ports — Portell de Morella','excel_curado',date('now'));

-- Lucena del Cid (11008): Penyagolosa, barrancos
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='11008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11008','sendero','Parque Natural Penyagolosa — Lucena','excel_curado',date('now'));

-- Navajas (12081): Gorges del Palancia, Font de la Pipa, barrancos
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='12081' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('12081','sendero','Gorges del Palancia — Navajas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('12081','sendero','Font de la Pipa','excel_curado',date('now'));

-- Montanejos (11009): Gorges del Mijares, aguas termales, barranquismo
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='11009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11009','sendero','Gorges del Mijares — Montanejos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11009','sendero','Barranquismo Montanejos','excel_curado',date('now'));

-- Culla (11006): castillo medieval, Maestrazgo
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='11006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('11006','sendero','El Maestrazgo — Culla','excel_curado',date('now'));

-- Sync Castellón: 11xxx MIN → 12xxx MAX
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11003' AND p2.categoria='senderismo') WHERE codigo_ine='12027' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11005' AND p2.categoria='senderismo') WHERE codigo_ine='12040' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11006' AND p2.categoria='senderismo') WHERE codigo_ine='12051' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11008' AND p2.categoria='senderismo') WHERE codigo_ine='12072' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11009' AND p2.categoria='senderismo') WHERE codigo_ine='12079' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11010' AND p2.categoria='senderismo') WHERE codigo_ine='12080' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11012' AND p2.categoria='senderismo') WHERE codigo_ine='12085' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11013' AND p2.categoria='senderismo') WHERE codigo_ine='12089' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11015' AND p2.categoria='senderismo') WHERE codigo_ine='12104' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11016' AND p2.categoria='senderismo') WHERE codigo_ine='12121' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='11017' AND p2.categoria='senderismo') WHERE codigo_ine='12129' AND categoria='senderismo';

-- ============================================================
-- VALENCIA (provincia)
-- ============================================================

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Valencia');
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Valencia');
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Valencia');

-- Bocairente (46072): PN Serra Mariola, cuevas de la Mola, rutas emblemáticas
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='46072' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46072','sendero','Parque Natural Serra Mariola','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46072','sendero','Coves de la Mola','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46072','sendero','GR-7 Serra Mariola','excel_curado',date('now'));

-- Chulilla (46112): Gorges del Turia, escalada y senderismo, piscinas naturales
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='46112' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46112','sendero','Gorges del Turia — Chulilla','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46112','sendero','Piscinas naturales del Turia','excel_curado',date('now'));

-- Ayora (46044): Sierra Palomera, Caballón, remoto, falcons
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='46044' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46044','sendero','Sierra Palomera — Ayora','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46044','sendero','Macizo del Caballón','excel_curado',date('now'));

-- Chelva (46106): PN Serranía del Turia, Gorges del Turia, bosques
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='46106' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46106','sendero','PN Serranía del Turia','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46106','sendero','Gorges del Turia','excel_curado',date('now'));

-- Tuéjar (46247): Gorges del Turia, playa fluvial, rutas
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='46247' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46247','sendero','Gorges del Turia — Tuéjar','excel_curado',date('now'));

-- Cofrentes (46097): Hoces del Cabriel, volcanes, aguas termales
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='46097' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46097','sendero','Hoces del Cabriel — Cofrentes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46097','sendero','Volcanes de Cofrentes','excel_curado',date('now'));

-- Alpuente (46036): Alto Turia, dehesas, Maestrazgo valenciano
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='46036' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46036','sendero','Alto Turia — Alpuente','excel_curado',date('now'));

-- Serra (46228): PN Serra Calderona, pinsapos, esparto
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='46228' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('46228','sendero','Parque Natural Serra Calderona','excel_curado',date('now'));

-- Valencia (45015): Albufera (PN), rutas periurbanas
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='45015' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('45015','sendero','Parc Natural de l''Albufera','excel_curado',date('now'));

-- Sync Valencia: 45xxx MIN → 46xxx MAX
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45005' AND p2.categoria='senderismo') WHERE codigo_ine='46204' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45006' AND p2.categoria='senderismo') WHERE codigo_ine='46131' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45008' AND p2.categoria='senderismo') WHERE codigo_ine='46169' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45009' AND p2.categoria='senderismo') WHERE codigo_ine='46181' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45011' AND p2.categoria='senderismo') WHERE codigo_ine='46190' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45012' AND p2.categoria='senderismo') WHERE codigo_ine='46213' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='45015' AND p2.categoria='senderismo') WHERE codigo_ine='46250' AND categoria='senderismo';

-- ============================================================
-- ALICANTE
-- ============================================================

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Alicante');
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Alicante');
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='senderismo'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Alicante');

-- Confrides (03057): acceso cima Aitana 1558m, mirador supremo, rutas altas
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='03057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03057','sendero','Serra d''Aitana 1558m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03057','sendero','Ruta circular Aitana','excel_curado',date('now'));

-- Banyeres de Mariola (03006): PN Serra Mariola, Font de la Pereruela, GR-7
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='03006' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03006','sendero','Parque Natural Serra Mariola','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03006','sendero','Font de la Pereruela','excel_curado',date('now'));

-- Alcoy/Alcoi (03002): PN Font Roja, Serra Mariola, barrancos, ciudad industrial natural
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='03002' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03002','sendero','Parque Natural Font Roja','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03002','sendero','Parque Natural Serra Mariola','excel_curado',date('now'));

-- Sella (03036): rutas Serra d''Aitana, pozos de nieve, vistas al mar
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='03036' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03036','sendero','Serra d''Aitana — Sella','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03036','sendero','Pozos de nieve del Portet','excel_curado',date('now'));

-- Calpe/Calp (03010): PN Penyal d''Ifac, escalada y senderismo costal
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='03010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03010','sendero','Parque Natural Penyal d''Ifac','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03010','sendero','Cima Penyal d''Ifac 332m','excel_curado',date('now'));

-- Guadalest (03019): valle de Guadalest, Serra Aitana entorno, embalse
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='03019' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03019','sendero','Valle de Guadalest','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03019','sendero','Serra Aitana — acceso Guadalest','excel_curado',date('now'));

-- Planes (03030): Serra Mariola interior, fuentes, hayedos mediterráneos
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='03030' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03030','sendero','Serra Mariola — Planes','excel_curado',date('now'));

-- Benidorm (03007): PN Serra Gelada, acantilados de la Marina
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='03007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('03007','sendero','Parque Natural Serra Gelada','excel_curado',date('now'));

-- Sync Alicante: 03xxx MIN → 03xxx MAX (dentro del mismo rango)
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03010' AND p2.categoria='senderismo') WHERE codigo_ine='03047' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03011' AND p2.categoria='senderismo') WHERE codigo_ine='03053' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03012' AND p2.categoria='senderismo') WHERE codigo_ine='03056' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03014' AND p2.categoria='senderismo') WHERE codigo_ine='03063' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03015' AND p2.categoria='senderismo') WHERE codigo_ine='03050' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03017' AND p2.categoria='senderismo') WHERE codigo_ine='03066' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03018' AND p2.categoria='senderismo') WHERE codigo_ine='03069' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03019' AND p2.categoria='senderismo') WHERE codigo_ine='03075' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03020' AND p2.categoria='senderismo') WHERE codigo_ine='03076' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03021' AND p2.categoria='senderismo') WHERE codigo_ine='03079' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03024' AND p2.categoria='senderismo') WHERE codigo_ine='03092' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03026' AND p2.categoria='senderismo') WHERE codigo_ine='03093' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03027' AND p2.categoria='senderismo') WHERE codigo_ine='03099' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03028' AND p2.categoria='senderismo') WHERE codigo_ine='03102' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03030' AND p2.categoria='senderismo') WHERE codigo_ine='03106' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03031' AND p2.categoria='senderismo') WHERE codigo_ine='03107' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03032' AND p2.categoria='senderismo') WHERE codigo_ine='03112' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03033' AND p2.categoria='senderismo') WHERE codigo_ine='03113' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03034' AND p2.categoria='senderismo') WHERE codigo_ine='03122' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03035' AND p2.categoria='senderismo') WHERE codigo_ine='03121' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03036' AND p2.categoria='senderismo') WHERE codigo_ine='03124' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03037' AND p2.categoria='senderismo') WHERE codigo_ine='03128' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03038' AND p2.categoria='senderismo') WHERE codigo_ine='03133' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='03040' AND p2.categoria='senderismo') WHERE codigo_ine='03140' AND categoria='senderismo';

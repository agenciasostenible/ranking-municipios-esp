-- Enriquecimiento desde: https://es.wikipedia.org/wiki/Anexo:Vinos_de_Espa%C3%B1a
-- Artículo: Anexo:Vinos de España - Wikipedia
-- Generado: 2026-06-06T23:17:14.145210
-- Municipios: 30

-- Jerez de la Frontera (Cádiz) — DO Jerez-Xérès-Sherry, vino histórico DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '16012' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16012', 'vinos', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Jerez-Xérès-Sherry, vino histórico DOP') WHERE codigo_ine = '16012' AND COALESCE(why_json, '[]') NOT LIKE '%DO Jerez-Xérès-Sherr%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Jerez-Xérès-Sherry, vino histórico DOP') WHERE codigo_ine = '16012' AND COALESCE(why_json, '[]') NOT LIKE '%DO Jerez-Xérès-Sherr%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'denominacion_origen', 'DO Jerez-Xérès-Sherry', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16012', 'denominacion_origen', 'DO Manzanilla-Sanlúcar de Barrameda', 'articulo_web');

-- Sanlúcar de Barrameda (Cádiz) — DO Manzanilla-Sanlúcar de Barrameda DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16023', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16023' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16023' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='16023' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '16023' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('16023', 'vinos', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Manzanilla-Sanlúcar de Barrameda DOP') WHERE codigo_ine = '16023' AND COALESCE(why_json, '[]') NOT LIKE '%DO Manzanilla-Sanlúc%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Manzanilla-Sanlúcar de Barrameda DOP') WHERE codigo_ine = '16023' AND COALESCE(why_json, '[]') NOT LIKE '%DO Manzanilla-Sanlúc%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('16023', 'denominacion_origen', 'DO Manzanilla-Sanlúcar de Barrameda', 'articulo_web');

-- Montilla (Córdoba) — DO Montilla-Moriles, vinos sin encabezar
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17016', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17016' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17016' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='17016' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '17016' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('17016', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Montilla-Moriles, vinos sin encabezar') WHERE codigo_ine = '17016' AND COALESCE(why_json, '[]') NOT LIKE '%DO Montilla-Moriles,%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Montilla-Moriles, vinos sin encabezar') WHERE codigo_ine = '17016' AND COALESCE(why_json, '[]') NOT LIKE '%DO Montilla-Moriles,%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('17016', 'denominacion_origen', 'DO Montilla-Moriles', 'articulo_web');

-- Huelva (Huelva) — DO Condado de Huelva y Vino Naranja DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('22013', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='22013' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='22013' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='22013' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '22013' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('22013', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Condado de Huelva y Vino Naranja DOP') WHERE codigo_ine = '22013' AND COALESCE(why_json, '[]') NOT LIKE '%DO Condado de Huelva%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Condado de Huelva y Vino Naranja DOP') WHERE codigo_ine = '22013' AND COALESCE(why_json, '[]') NOT LIKE '%DO Condado de Huelva%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('22013', 'denominacion_origen', 'DO Condado de Huelva', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('22013', 'producto', 'Vino Naranja del Condado de Huelva', 'articulo_web');

-- Málaga (Málaga) — DO Málaga y DO Sierras de Málaga DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32016', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32016' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32016' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='32016' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '32016' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('32016', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Málaga y DO Sierras de Málaga DOP') WHERE codigo_ine = '32016' AND COALESCE(why_json, '[]') NOT LIKE '%DO Málaga y DO Sierr%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Málaga y DO Sierras de Málaga DOP') WHERE codigo_ine = '32016' AND COALESCE(why_json, '[]') NOT LIKE '%DO Málaga y DO Sierr%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32016', 'denominacion_origen', 'DO Málaga', 'articulo_web');
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('32016', 'denominacion_origen', 'DO Sierras de Málaga', 'articulo_web');

-- Tacoronte (Santa Cruz de Tenerife) — DO Tacoronte-Acentejo, primera DO canaria
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38043', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38043' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38043' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='38043' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '38043' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('38043', 'vinos', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Tacoronte-Acentejo, primera DO canaria') WHERE codigo_ine = '38043' AND COALESCE(why_json, '[]') NOT LIKE '%DO Tacoronte-Acentej%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Tacoronte-Acentejo, primera DO canaria') WHERE codigo_ine = '38043' AND COALESCE(why_json, '[]') NOT LIKE '%DO Tacoronte-Acentej%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('38043', 'denominacion_origen', 'DO Tacoronte-Acentejo', 'articulo_web');

-- Valdepeñas (Ciudad Real) — DO Valdepeñas, referente vitivinícola manchego
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13018', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13018' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13018' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13018' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '13018' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('13018', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Valdepeñas, referente vitivinícola manchego') WHERE codigo_ine = '13018' AND COALESCE(why_json, '[]') NOT LIKE '%DO Valdepeñas, refer%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Valdepeñas, referente vitivinícola manchego') WHERE codigo_ine = '13018' AND COALESCE(why_json, '[]') NOT LIKE '%DO Valdepeñas, refer%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13018', 'denominacion_origen', 'DO Valdepeñas', 'articulo_web');

-- Tomelloso (Ciudad Real) — DO La Mancha, mayor DO vitivinícola de España
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13017', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='13017' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '13017' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('13017', 'vinos', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO La Mancha, mayor DO vitivinícola de España') WHERE codigo_ine = '13017' AND COALESCE(why_json, '[]') NOT LIKE '%DO La Mancha, mayor %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO La Mancha, mayor DO vitivinícola de España') WHERE codigo_ine = '13017' AND COALESCE(why_json, '[]') NOT LIKE '%DO La Mancha, mayor %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('13017', 'denominacion_origen', 'DO La Mancha', 'articulo_web');

-- Jumilla (Murcia) — DO Jumilla, compartida Murcia-Albacete
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31009', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31009' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31009' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31009' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '31009' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('31009', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Jumilla, compartida Murcia-Albacete') WHERE codigo_ine = '31009' AND COALESCE(why_json, '[]') NOT LIKE '%DO Jumilla, comparti%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Jumilla, compartida Murcia-Albacete') WHERE codigo_ine = '31009' AND COALESCE(why_json, '[]') NOT LIKE '%DO Jumilla, comparti%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31009', 'denominacion_origen', 'DO Jumilla', 'articulo_web');

-- Yecla (Murcia) — DO Yecla, denominación murciana exclusiva
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31018', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31018' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31018' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='31018' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '31018' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('31018', 'vinos', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Yecla, denominación murciana exclusiva') WHERE codigo_ine = '31018' AND COALESCE(why_json, '[]') NOT LIKE '%DO Yecla, denominaci%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Yecla, denominación murciana exclusiva') WHERE codigo_ine = '31018' AND COALESCE(why_json, '[]') NOT LIKE '%DO Yecla, denominaci%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('31018', 'denominacion_origen', 'DO Yecla', 'articulo_web');

-- Bullas (Murcia) — DO Bullas, vinos rosados murcianos
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('30012', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='30012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='30012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='30012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 15) WHERE codigo_ine = '30012' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('30012', 'vinos', 15);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Bullas, vinos rosados murcianos') WHERE codigo_ine = '30012' AND COALESCE(why_json, '[]') NOT LIKE '%DO Bullas, vinos ros%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Bullas, vinos rosados murcianos') WHERE codigo_ine = '30012' AND COALESCE(why_json, '[]') NOT LIKE '%DO Bullas, vinos ros%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('30012', 'denominacion_origen', 'DO Bullas', 'articulo_web');

-- Cariñena (Zaragoza) — DO Cariñena, una de las más antiguas de España
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('50073', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='50073' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='50073' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='50073' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '50073' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('50073', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Cariñena, una de las más antiguas de España') WHERE codigo_ine = '50073' AND COALESCE(why_json, '[]') NOT LIKE '%DO Cariñena, una de %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Cariñena, una de las más antiguas de España') WHERE codigo_ine = '50073' AND COALESCE(why_json, '[]') NOT LIKE '%DO Cariñena, una de %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('50073', 'denominacion_origen', 'DO Cariñena', 'articulo_web');

-- Calatayud (Zaragoza) — DO Calatayud, garnacha de altura aragonesa
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('49004', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49004' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49004' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='49004' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '49004' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('49004', 'vinos', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Calatayud, garnacha de altura aragonesa') WHERE codigo_ine = '49004' AND COALESCE(why_json, '[]') NOT LIKE '%DO Calatayud, garnac%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Calatayud, garnacha de altura aragonesa') WHERE codigo_ine = '49004' AND COALESCE(why_json, '[]') NOT LIKE '%DO Calatayud, garnac%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('49004', 'denominacion_origen', 'DO Calatayud', 'articulo_web');

-- Barbastro (Huesca) — DO Somontano, referente del Pirineo aragonés
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('23003', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23003' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23003' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='23003' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '23003' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('23003', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Somontano, referente del Pirineo aragonés') WHERE codigo_ine = '23003' AND COALESCE(why_json, '[]') NOT LIKE '%DO Somontano, refere%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Somontano, referente del Pirineo aragonés') WHERE codigo_ine = '23003' AND COALESCE(why_json, '[]') NOT LIKE '%DO Somontano, refere%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('23003', 'denominacion_origen', 'DO Somontano', 'articulo_web');

-- Cangas del Narcea (Asturias) — DO Cangas, único vino con DO en Asturias
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('05006', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='05006' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='05006' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='05006' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 18) WHERE codigo_ine = '05006' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('05006', 'vinos', 18);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Cangas, único vino con DO en Asturias') WHERE codigo_ine = '05006' AND COALESCE(why_json, '[]') NOT LIKE '%DO Cangas, único vin%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Cangas, único vino con DO en Asturias') WHERE codigo_ine = '05006' AND COALESCE(why_json, '[]') NOT LIKE '%DO Cangas, único vin%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('05006', 'denominacion_origen', 'DO Cangas', 'articulo_web');

-- Getaria (Guipúzcoa) — DO Chacolí de Getaria, txakoli referente
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('21010', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21010' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21010' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='21010' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '21010' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('21010', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Chacolí de Getaria, txakoli referente') WHERE codigo_ine = '21010' AND COALESCE(why_json, '[]') NOT LIKE '%DO Chacolí de Getari%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Chacolí de Getaria, txakoli referente') WHERE codigo_ine = '21010' AND COALESCE(why_json, '[]') NOT LIKE '%DO Chacolí de Getari%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('21010', 'denominacion_origen', 'DO Chacolí de Getaria', 'articulo_web');

-- Logroño (La Rioja) — Capital DOCa Rioja, mayor DO calificada España
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26089', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26089' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26089' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26089' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '26089' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26089', 'vinos', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: Capital DOCa Rioja, mayor DO calificada España') WHERE codigo_ine = '26089' AND COALESCE(why_json, '[]') NOT LIKE '%Capital DOCa Rioja, %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Capital DOCa Rioja, mayor DO calificada España') WHERE codigo_ine = '26089' AND COALESCE(why_json, '[]') NOT LIKE '%Capital DOCa Rioja, %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26089', 'denominacion_origen', 'DOCa Rioja', 'articulo_web');

-- Haro (La Rioja) — Capital histórica bodegas Rioja Alta DOCa
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26071', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26071' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26071' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26071' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '26071' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26071', 'vinos', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: Capital histórica bodegas Rioja Alta DOCa') WHERE codigo_ine = '26071' AND COALESCE(why_json, '[]') NOT LIKE '%Capital histórica bo%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'Capital histórica bodegas Rioja Alta DOCa') WHERE codigo_ine = '26071' AND COALESCE(why_json, '[]') NOT LIKE '%Capital histórica bo%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26071', 'denominacion_origen', 'DOCa Rioja Alta', 'articulo_web');

-- Rueda (Valladolid) — DO Rueda, referente Verdejo castellano
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47139', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47139' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47139' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='47139' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '47139' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('47139', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Rueda, referente Verdejo castellano') WHERE codigo_ine = '47139' AND COALESCE(why_json, '[]') NOT LIKE '%DO Rueda, referente %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Rueda, referente Verdejo castellano') WHERE codigo_ine = '47139' AND COALESCE(why_json, '[]') NOT LIKE '%DO Rueda, referente %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('47139', 'denominacion_origen', 'DO Rueda', 'articulo_web');

-- Toro (Zamora) — DO Toro, Tinta de Toro potente y reconocida
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('48005', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48005' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48005' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='48005' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '48005' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('48005', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Toro, Tinta de Toro potente y reconocida') WHERE codigo_ine = '48005' AND COALESCE(why_json, '[]') NOT LIKE '%DO Toro, Tinta de To%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Toro, Tinta de Toro potente y reconocida') WHERE codigo_ine = '48005' AND COALESCE(why_json, '[]') NOT LIKE '%DO Toro, Tinta de To%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('48005', 'denominacion_origen', 'DO Toro', 'articulo_web');

-- Bierzo (León) — DO Bierzo, Mencía atlántico-mediterránea
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26019', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26019' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26019' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='26019' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '26019' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('26019', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Bierzo, Mencía atlántico-mediterránea') WHERE codigo_ine = '26019' AND COALESCE(why_json, '[]') NOT LIKE '%DO Bierzo, Mencía at%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Bierzo, Mencía atlántico-mediterránea') WHERE codigo_ine = '26019' AND COALESCE(why_json, '[]') NOT LIKE '%DO Bierzo, Mencía at%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('26019', 'denominacion_origen', 'DO Bierzo', 'articulo_web');

-- Cambados (Pontevedra) — DO Rías Baixas, Albariño gallego DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('36004', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='36004' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='36004' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='36004' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 22) WHERE codigo_ine = '36004' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('36004', 'vinos', 22);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Rías Baixas, Albariño gallego DOP') WHERE codigo_ine = '36004' AND COALESCE(why_json, '[]') NOT LIKE '%DO Rías Baixas, Alba%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Rías Baixas, Albariño gallego DOP') WHERE codigo_ine = '36004' AND COALESCE(why_json, '[]') NOT LIKE '%DO Rías Baixas, Alba%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('36004', 'denominacion_origen', 'DO Rías Baixas', 'articulo_web');

-- Monforte de Lemos (Lugo) — DO Ribeira Sacra, viñedos en terrazas fluviales
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28007', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28007' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28007' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='28007' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '28007' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('28007', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Ribeira Sacra, viñedos en terrazas fluviales') WHERE codigo_ine = '28007' AND COALESCE(why_json, '[]') NOT LIKE '%DO Ribeira Sacra, vi%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Ribeira Sacra, viñedos en terrazas fluviales') WHERE codigo_ine = '28007' AND COALESCE(why_json, '[]') NOT LIKE '%DO Ribeira Sacra, vi%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('28007', 'denominacion_origen', 'DO Ribeira Sacra', 'articulo_web');

-- Priorat (Tarragona) — DOCa Priorat, única DOCa catalana llicorella
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43023', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43023' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43023' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='43023' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 25) WHERE codigo_ine = '43023' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('43023', 'vinos', 25);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DOCa Priorat, única DOCa catalana llicorella') WHERE codigo_ine = '43023' AND COALESCE(why_json, '[]') NOT LIKE '%DOCa Priorat, única %';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DOCa Priorat, única DOCa catalana llicorella') WHERE codigo_ine = '43023' AND COALESCE(why_json, '[]') NOT LIKE '%DOCa Priorat, única %';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('43023', 'denominacion_origen', 'DOCa Priorat', 'articulo_web');

-- Miranda de Ebro (Burgos) — Enclave El Ternero en DOCa Rioja Alta
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09010', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09010' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09010' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='09010' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 8) WHERE codigo_ine = '09010' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('09010', 'vinos', 8);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: Enclave El Ternero en DOCa Rioja Alta') WHERE codigo_ine = '09010' AND COALESCE(why_json, '[]') NOT LIKE '%Enclave El Ternero e%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('09010', 'denominacion_origen', 'DOCa Rioja (enclave El Ternero)', 'articulo_web');

-- Requena (Valencia) — DO Utiel-Requena, Bobal levantina DOP
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('45012', 'mencion', 'vinos', 'articulo_web');
UPDATE puntuaciones SET puntuacion = MIN(  CASE (SELECT COUNT(*) FROM entidades WHERE codigo_ine='45012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web')  WHEN 1 THEN 70 WHEN 2 THEN 80 WHEN 3 THEN 88  ELSE CASE WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='45012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 10 THEN 100  WHEN (SELECT COUNT(*) FROM entidades WHERE codigo_ine='45012' AND tipo='mencion' AND nombre='vinos' AND fuente='articulo_web') >= 5 THEN 95 ELSE 92 END END,  puntuacion + 20) WHERE codigo_ine = '45012' AND categoria = 'vinos';
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('45012', 'vinos', 20);
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', '🍷 Vinos: DO Utiel-Requena, Bobal levantina DOP') WHERE codigo_ine = '45012' AND COALESCE(why_json, '[]') NOT LIKE '%DO Utiel-Requena, Bo%';
UPDATE municipios SET why_json = json_insert(COALESCE(why_json, '[]'), '$[#]', 'DO Utiel-Requena, Bobal levantina DOP') WHERE codigo_ine = '45012' AND COALESCE(why_json, '[]') NOT LIKE '%DO Utiel-Requena, Bo%';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente) VALUES ('45012', 'denominacion_origen', 'DO Utiel-Requena', 'articulo_web');

-- Resumen: 26/30 municipios encontrados
-- No encontrados: Lanzarote (Las Palmas), Ribera del Duero (Burgos), Sant Sadurní d'Anoia (Barcelona), Vilafranca del Penedès (Barcelona)
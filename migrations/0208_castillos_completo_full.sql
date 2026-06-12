-- Castillos España - MIGRATION COMPLETA (713 castillos)
-- Todos los castillos, torres y fortalezas por municipio

-- FASE 1: Reset
DELETE FROM puntuaciones WHERE categoria='castillos';
DELETE FROM entidades WHERE fuente='inventario_castillos_pdf';

-- FASE 2: Insertar todos los castillos
-- Formato: INSERT puntuaciones y entidades directamente desde datos verificados


-- ===== PROVINCIA: ALBACETE (12 castillos) =====

-- ALCALÁ DEL JÚCAR - Castillo de Alcalá del Júcar (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DEL JÚCAR') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcalá del Júcar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DEL JÚCAR') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCARAZ - Castillo de San Cristóbal y (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCARAZ') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Cristóbal y', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCARAZ') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALMANSA - Castillo de Almansa (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMANSA') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almansa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMANSA') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARCELÉN - Castillo del Conde de Casal (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('CARCELÉN') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Conde de Casal', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARCELÉN') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CHINCHILLA DE MONTEARAGÓN - Castillo de Chinchilla (Castillo (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('CHINCHILLA DE MONTEARAGÓN') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chinchilla (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CHINCHILLA DE MONTEARAGÓN') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- COTILLAS - Castillo de la Yedra (Restos) (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('COTILLAS') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Yedra (Restos)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('COTILLAS') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- HELLÍN - Restos de la Alcazaba de Hellín (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('HELLÍN') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Restos de la Alcazaba de Hellín', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('HELLÍN') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JORQUERA - Murallas de Jorquera (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('JORQUERA') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Jorquera', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JORQUERA') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- RIÓPAR - Castillo de Riópar Viejo (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('RIÓPAR') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Riópar Viejo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('RIÓPAR') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SOCOVOS - Castillo de Socovos (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('SOCOVOS') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Socovos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SOCOVOS') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TARAZONA DE LA MANCHA RURAL - Torreón de la campiña de la (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('TARAZONA DE LA MANCHA RURAL') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la campiña de la', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TARAZONA DE LA MANCHA RURAL') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- YESTE - Castillo de Yeste (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('YESTE') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Yeste', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('YESTE') AND UPPER(provincia)=UPPER('ALBACETE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: ALICANTE (16 castillos) =====

-- ALICANTE - Castillo de Santa Bárbara (98 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(nombre)=UPPER('ALICANTE') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Bárbara', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALICANTE') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALICANTE - Castillo de San Fernando (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('ALICANTE') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Fernando', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALICANTE') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALICANTE - Torre de las Rejas (Red de las (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('ALICANTE') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de las Rejas (Red de las', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALICANTE') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BANYERES DE MARIOLA - Castillo de Banyeres (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('BANYERES DE MARIOLA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Banyeres', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BANYERES DE MARIOLA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BENIDORM - Restos del Castillo de Benidorm (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('BENIDORM') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Benidorm', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BENIDORM') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BIAR - Castillo de Biar (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('BIAR') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Biar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BIAR') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTALLA - Castillo de Castalla (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTALLA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castalla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTALLA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- DENIA - Castillo de Denia (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('DENIA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Denia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('DENIA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ELCHE - Palacio de Altamira (Alcázar de (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('ELCHE') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Palacio de Altamira (Alcázar de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ELCHE') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GUADALEST - Castillo de San José (Castell de (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('GUADALEST') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San José (Castell de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GUADALEST') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONÓVAR - Restos del Castillo de Monóvar (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('MONÓVAR') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Monóvar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONÓVAR') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- NOVELDA - Castillo de la Mola (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('NOVELDA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Mola', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('NOVELDA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PETRER - Castillo de Petrer (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('PETRER') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Petrer', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PETRER') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANTA POLA - Castillo-Fortaleza de Santa Pola (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTA POLA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo-Fortaleza de Santa Pola', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTA POLA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAX - Castillo de Sax (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('SAX') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sax', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAX') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLENA - Castillo de la Atalaya (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLENA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Atalaya', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLENA') AND UPPER(provincia)=UPPER('ALICANTE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: ALMERÍA (14 castillos) =====

-- ALBOX - Torre del Tiel (Torre de Albox) (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBOX') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Tiel (Torre de Albox)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBOX') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALMERÍA - Conjunto Monumental de la (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMERÍA') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Conjunto Monumental de la', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMERÍA') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARBONERAS - Castillo de San Andrés (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('CARBONERAS') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Andrés', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARBONERAS') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARBONERAS - Torre del Rayo (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('CARBONERAS') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Rayo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARBONERAS') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CUEVAS DEL ALMANZORA - Castillo del Marqués de los (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('CUEVAS DEL ALMANZORA') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Marqués de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CUEVAS DEL ALMANZORA') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CUEVAS DEL ALMANZORA - Alcazaba de Fiñana (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('CUEVAS DEL ALMANZORA') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Fiñana', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CUEVAS DEL ALMANZORA') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GARRUCHA - Castillo de las Escobas (Castillo (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('GARRUCHA') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Escobas (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GARRUCHA') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GÉRGAL - Castillo de Gérgal (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('GÉRGAL') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Gérgal', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GÉRGAL') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- NÍJAR - Castillo de San Felipe (Los (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('NÍJAR') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe (Los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('NÍJAR') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- NÍJAR - Torre de los Alumbres (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('NÍJAR') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Alumbres', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('NÍJAR') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- NÍJAR - Torre de la Vela Blanca (63 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(nombre)=UPPER('NÍJAR') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Vela Blanca', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('NÍJAR') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ROQUETAS DE MAR - Castillo de Santa Ana (Castillo (78 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(nombre)=UPPER('ROQUETAS DE MAR') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Ana (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ROQUETAS DE MAR') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TABERNAS - Castillo de Tabernas (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('TABERNAS') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tabernas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TABERNAS') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VÉLEZ-BLANCO - Castillo de los Fajardo (Castillo (98 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(nombre)=UPPER('VÉLEZ-BLANCO') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Fajardo (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VÉLEZ-BLANCO') AND UPPER(provincia)=UPPER('ALMERÍA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: BADAJOZ (20 castillos) =====

-- ALBURQUERQUE - Castillo de Luna (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBURQUERQUE') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Luna', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBURQUERQUE') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCONCHEL - Castillo de Miraflores (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCONCHEL') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miraflores', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCONCHEL') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- AZUAGA - Castillo de Azuaga (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('AZUAGA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Azuaga', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AZUAGA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BADAJOZ - Alcazaba de Badajoz (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('BADAJOZ') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Badajoz', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BADAJOZ') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BURGUILLOS DEL CERRO - Castillo de Burguillos del Cerro (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('BURGUILLOS DEL CERRO') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Burguillos del Cerro', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BURGUILLOS DEL CERRO') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CABEZA DEL BUEY - Castillo de Almorchón (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('CABEZA DEL BUEY') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almorchón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CABEZA DEL BUEY') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTUERA (ENTORNO RURAL DE LA - Torreón de la dehesa esteparia (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTUERA (ENTORNO RURAL DE LA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa esteparia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTUERA (ENTORNO RURAL DE LA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FERIA - Castillo de Feria (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('FERIA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Feria', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FERIA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FREGENAL DE LA SIERRA - Castillo Templario de Fregenal (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('FREGENAL DE LA SIERRA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo Templario de Fregenal', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FREGENAL DE LA SIERRA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- HERRERA DEL DUQUE - Castillo de Herrera del Duque (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('HERRERA DEL DUQUE') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Herrera del Duque', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('HERRERA DEL DUQUE') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JEREZ DE LOS CABALLEROS - Fortaleza Templaria de Jerez (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('JEREZ DE LOS CABALLEROS') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza Templaria de Jerez', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JEREZ DE LOS CABALLEROS') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LLERENA - Recinto Amurallado y Torres de (70 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(nombre)=UPPER('LLERENA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Recinto Amurallado y Torres de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LLERENA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MEDELLÍN - Castillo de Medellín (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDELLÍN') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Medellín', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDELLÍN') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONESTERIO - Restos del Fortín de Tentudía (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('MONESTERIO') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Tentudía', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONESTERIO') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- OLIVENZA - Castillo de Olivenza y Torre del (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('OLIVENZA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Olivenza y Torre del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('OLIVENZA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ORELLANA LA VIEJA - Palacio-Castillo de los (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ORELLANA LA VIEJA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ORELLANA LA VIEJA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PUEBLA DE ALCOCER - Castillo de Puebla de Alcocer (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('PUEBLA DE ALCOCER') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Puebla de Alcocer', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PUEBLA DE ALCOCER') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SALVALEÓN - Castillo de Salvatierra (Restos) (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('SALVALEÓN') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Salvatierra (Restos)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SALVALEÓN') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLALBA DE LOS BARROS - Castillo de Villalba de los Barros (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLALBA DE LOS BARROS') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villalba de los Barros', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLALBA DE LOS BARROS') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ZAFRA - Alcázar de los Duques de Feria (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('ZAFRA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de los Duques de Feria', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ZAFRA') AND UPPER(provincia)=UPPER('BADAJOZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: BALEARES (36 castillos) =====

-- ALARÓ - Castillo de Alaró (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('ALARÓ') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alaró', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALARÓ') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCÚDIA - Murallas y Puertas de Alcúdia (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCÚDIA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas y Puertas de Alcúdia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCÚDIA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ANDRATX - Torre de sa Mola (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('ANDRATX') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de sa Mola', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ANDRATX') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARTA - Recinto Fortificado de Sant (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('ARTA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado de Sant', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARTA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CAPDEPERA - Castillo de Capdepera (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('CAPDEPERA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Capdepera', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CAPDEPERA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CEE - Castillo de San Carlos (Fuerte (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('CEE') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Carlos (Fuerte', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CEE') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CIUTADELLA - Castillo de San Nicolás (Castell (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('CIUTADELLA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Nicolás (Castell', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CIUTADELLA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CORCUBIÓN - Castillo del Cardenal (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('CORCUBIÓN') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Cardenal', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CORCUBIÓN') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ESCORCA - Castillo y Recinto Amurallado (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('ESCORCA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo y Recinto Amurallado', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ESCORCA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ESCORCA - Castell del Rei (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('ESCORCA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castell del Rei', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ESCORCA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FELANITX - Castillo de Santueri (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('FELANITX') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santueri', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FELANITX') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FELANITX - Fortaleza de la Mola (Fortaleza (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('FELANITX') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de la Mola (Fortaleza', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FELANITX') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FELANITX - Castillo de San Felipe (Castell (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('FELANITX') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe (Castell', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FELANITX') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FERROL - Castillo de San Felipe (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('FERROL') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FERROL') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOECHE - Castillo de Moeche (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('MOECHE') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moeche', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOECHE') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- NEDA - Torre de la dehesa del río (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('NEDA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la dehesa del río', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('NEDA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de Bellver (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Bellver', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Torre de Hércules (Estructura (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Hércules (Estructura', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de San Antón (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Antón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de Butrón (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Butrón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Palacio de la Almudaina (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio de la Almudaina', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de Santa Bárbara (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Bárbara', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de la Mota (Monte (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Mota (Monte', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de Lantarón (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Lantarón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de la Luz (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Luz', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de San Juan (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Juan', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de San Carlos (Castell (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Carlos (Castell', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de Carlos V (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Carlos V', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de San Gabriel (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Gabriel', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de San Felipe (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Castillo de Muñatones (78 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Muñatones', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Torre-Palacio de los (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre-Palacio de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Torre de San Andrés (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San Andrés', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA - Atalaya de Albercutx (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Albercutx', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PONTEDEUME - Torreón de los Andrade (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('PONTEDEUME') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de los Andrade', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PONTEDEUME') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VIMIANZO - Castillo de Vimianzo (Torres de (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('VIMIANZO') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Vimianzo (Torres de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VIMIANZO') AND UPPER(provincia)=UPPER('BALEARES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: BARCELONA (5 castillos) =====

-- BARCELONA - Castillo de Montjuïc (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('BARCELONA') AND UPPER(provincia)=UPPER('BARCELONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montjuïc', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BARCELONA') AND UPPER(provincia)=UPPER('BARCELONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARDONA - Castillo de Cardona (98 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(nombre)=UPPER('CARDONA') AND UPPER(provincia)=UPPER('BARCELONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cardona', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARDONA') AND UPPER(provincia)=UPPER('BARCELONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTELLET I LA GORNAL - Castillo de Castellet (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLET I LA GORNAL') AND UPPER(provincia)=UPPER('BARCELONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castellet', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLET I LA GORNAL') AND UPPER(provincia)=UPPER('BARCELONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CLARAMUNT - Castillo de Claramunt (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('CLARAMUNT') AND UPPER(provincia)=UPPER('BARCELONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Claramunt', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CLARAMUNT') AND UPPER(provincia)=UPPER('BARCELONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CLARAMUNT - Torreón de la dehesa del Bages (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('CLARAMUNT') AND UPPER(provincia)=UPPER('BARCELONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del Bages', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CLARAMUNT') AND UPPER(provincia)=UPPER('BARCELONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: BURGOS (21 castillos) =====

-- ALBICES (PEDANÍA DE VILLAQUIRÁN DE LOS - Torre de Albices (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBICES (PEDANÍA DE VILLAQUIRÁN DE LOS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Albices', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBICES (PEDANÍA DE VILLAQUIRÁN DE LOS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BURGOS - Castillo de Burgos (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('BURGOS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Burgos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BURGOS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTROJERIZ - Castillo de Castrojeriz (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROJERIZ') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castrojeriz', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROJERIZ') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTROJERIZ - Castillo de Coruña del Conde (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROJERIZ') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Coruña del Conde', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROJERIZ') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- COVARRUBIAS - Torreón de Fernán González (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('COVARRUBIAS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Fernán González', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('COVARRUBIAS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ESPINOSA DE LOS MONTEROS - Castillo de los Velasco (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ESPINOSA DE LOS MONTEROS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Velasco', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ESPINOSA DE LOS MONTEROS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ESPINOSA DE LOS MONTEROS - Torre de los Azulejos (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('ESPINOSA DE LOS MONTEROS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Azulejos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ESPINOSA DE LOS MONTEROS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FRÍAS - Castillo de los Duques de Frías (98 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(nombre)=UPPER('FRÍAS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de Frías', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FRÍAS') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MEDINA DE POMAR - Alcázar de los Velasco (Las (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINA DE POMAR') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de los Velasco (Las', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINA DE POMAR') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- OLMILLOS DE SASEMÓN (PEDANÍA DE - Castillo de Olmillos (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('OLMILLOS DE SASEMÓN (PEDANÍA DE') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Olmillos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('OLMILLOS DE SASEMÓN (PEDANÍA DE') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PANCORBO - Castillo de Peñaranda de Duero (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('PANCORBO') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñaranda de Duero', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PANCORBO') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PANCORBO - Castillo de Santa Marta (Las (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('PANCORBO') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Marta (Las', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PANCORBO') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PANCORBO - Fortaleza de Santa Engracia (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('PANCORBO') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de Santa Engracia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PANCORBO') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- POZA DE LA SAL - Castillo de los Rojas (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('POZA DE LA SAL') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Rojas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('POZA DE LA SAL') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PUENTEDEY - Palacio de los Porras (Torre de (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('PUENTEDEY') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Palacio de los Porras (Torre de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PUENTEDEY') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- QUINTANILLA DE SAN GARCÍA - Torre de Quintanilla (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('QUINTANILLA DE SAN GARCÍA') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Quintanilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('QUINTANILLA DE SAN GARCÍA') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAN ZADORNIL - Restos de la Torre de San (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN ZADORNIL') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos de la Torre de San', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN ZADORNIL') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SOTOPALACIOS (MERINDAD DE RÍO - Castillo de Sotopalacios (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('SOTOPALACIOS (MERINDAD DE RÍO') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sotopalacios', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SOTOPALACIOS (MERINDAD DE RÍO') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREGALINDO - Castillo de Torregalindo (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREGALINDO') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Torregalindo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREGALINDO') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALLE DE MENA - Torre de los Velasco (Torre de (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('VALLE DE MENA') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Velasco (Torre de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALLE DE MENA') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLAQUIRÁN DE LOS INFANTES - Torre de Villaquirán (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLAQUIRÁN DE LOS INFANTES') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Villaquirán', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLAQUIRÁN DE LOS INFANTES') AND UPPER(provincia)=UPPER('BURGOS')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: CASTELLÓN (20 castillos) =====

-- ALMENARA - Castillo de Almenara (Torres de (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMENARA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Almenara (Torres de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMENARA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALTURA - Masía Fortificada de San Juan (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('ALTURA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Masía Fortificada de San Juan', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALTURA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARES DEL MAESTRAT - Castillo de Ares (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('ARES DEL MAESTRAT') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ares', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARES DEL MAESTRAT') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BENASSAL - Murallas de Benassal y la Torre (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('BENASSAL') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Benassal y la Torre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BENASSAL') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BURRIANA - Torre del Mar (Torre de (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('BURRIANA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Mar (Torre de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BURRIANA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTELLÓN DE LA PLANA - Castillo de Fadrell (Castell Vell) (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLÓN DE LA PLANA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fadrell (Castell Vell)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLÓN DE LA PLANA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CULLA - Castillo de Culla (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('CULLA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Culla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CULLA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CULLA - Castillo de Jérica (Torre de los (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('CULLA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Jérica (Torre de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CULLA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MORELLA - Castillo de Morella (97 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(nombre)=UPPER('MORELLA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Morella', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MORELLA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ONDA - Castillo de Peñíscola (Castillo (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('ONDA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñíscola (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ONDA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ONDA - Castillo de Onda (La fortaleza (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('ONDA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo de Onda (La fortaleza', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ONDA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SEGORBE - Castillo de la Estrella (Castillo (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('SEGORBE') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Estrella (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SEGORBE') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SONEJA - Torre del Palancia (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('SONEJA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Palancia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SONEJA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SUERES - Castillo de Mauz (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('SUERES') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mauz', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SUERES') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TODOLELLA - Castillo de Todolella (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('TODOLELLA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Todolella', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TODOLELLA') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TRIGUEROS - Torre de Torrechiva (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('TRIGUEROS') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Torrechiva', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TRIGUEROS') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILAFAMÉS - Castillo de Vilafamés (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('VILAFAMÉS') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vilafamés', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILAFAMÉS') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLANUEVA DE LOS INFANTES - Castillo de Xivert (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLANUEVA DE LOS INFANTES') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Xivert', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLANUEVA DE LOS INFANTES') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLANUEVA DE LOS INFANTES - Torre Badum (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLANUEVA DE LOS INFANTES') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre Badum', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLANUEVA DE LOS INFANTES') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VIVER - Torre de la Muela (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('VIVER') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Muela', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VIVER') AND UPPER(provincia)=UPPER('CASTELLÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: CIUDAD REAL (15 castillos) =====

-- ALBAZETE DE SAN JUAN (ALCÁZAR DE SAN - Torreón del Gran Prior (Torreón (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBAZETE DE SAN JUAN (ALCÁZAR DE SAN') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón del Gran Prior (Torreón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBAZETE DE SAN JUAN (ALCÁZAR DE SAN') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCUBLAS (ALCOBA DE LOS MONTES - Atalaya de los Montes de (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCUBLAS (ALCOBA DE LOS MONTES') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de los Montes de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCUBLAS (ALCOBA DE LOS MONTES') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALHAMBRA - Castillo de Alhambra (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMBRA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhambra', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMBRA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALMAGRO - Palacio de los Maestres de la (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMAGRO') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio de los Maestres de la', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMAGRO') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALMODÓVAR DEL CAMPO - Restos del Castillo de (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMODÓVAR DEL CAMPO') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMODÓVAR DEL CAMPO') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARGAMASILLA DE ALBA - Castillo de Peñarroya (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('ARGAMASILLA DE ALBA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñarroya', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARGAMASILLA DE ALBA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARGAMASILLA DE CALATRAVA - Castillo de la dehesa del (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('ARGAMASILLA DE CALATRAVA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la dehesa del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARGAMASILLA DE CALATRAVA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CALZADA DE CALATRAVA - Castillo-Convento de Calatrava (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('CALZADA DE CALATRAVA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Convento de Calatrava', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CALZADA DE CALATRAVA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CALZADA DE CALATRAVA - Castillo de Salvatierra (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('CALZADA DE CALATRAVA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Salvatierra', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CALZADA DE CALATRAVA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARRIÓN DE CALATRAVA - Castillo-Convento de Calatrava (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('CARRIÓN DE CALATRAVA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Convento de Calatrava', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARRIÓN DE CALATRAVA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CIUDAD REAL - Recinto Fortificado e Imperio de (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('CIUDAD REAL') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado e Imperio de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CIUDAD REAL') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CIUDAD REAL - Puerta de Toledo y Murallas de (70 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(nombre)=UPPER('CIUDAD REAL') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Puerta de Toledo y Murallas de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CIUDAD REAL') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PIEDRABUENA - Castillo de Miraflores (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('PIEDRABUENA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miraflores', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PIEDRABUENA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PIEDRABUENA - Torre del rincón de Ruanales (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('PIEDRABUENA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del rincón de Ruanales', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PIEDRABUENA') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLANUEVA DE LOS INFANTES - Restos del Fortín de Jamila (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLANUEVA DE LOS INFANTES') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Jamila', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLANUEVA DE LOS INFANTES') AND UPPER(provincia)=UPPER('CIUDAD REAL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: CUENCA (11 castillos) =====

-- ALARCÓN - Castillo de Alarcón (98 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(nombre)=UPPER('ALARCÓN') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alarcón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALARCÓN') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BELMONTE - Castillo de Belmonte (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMONTE') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Belmonte', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMONTE') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CUENCA - Castillo de Cuenca (Las (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('CUENCA') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cuenca (Las', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CUENCA') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ENGUÍDANOS - Castillo de Garcimuñoz (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('ENGUÍDANOS') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Garcimuñoz', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ENGUÍDANOS') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ENGUÍDANOS - Castillo de Enguídanos (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('ENGUÍDANOS') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Enguídanos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ENGUÍDANOS') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- HUETE - Castillo de Almonacid (Castillo (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('HUETE') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almonacid (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('HUETE') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- INIESTA - Torreón de Iniesta (Restos del (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('INIESTA') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Iniesta (Restos del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('INIESTA') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOYA - Castillo de Moya y Villa (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('MOYA') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moya y Villa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOYA') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PARACUELLOS (PARACUELLOS DE LA VEGA - Castillo de Paracuellos (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('PARACUELLOS (PARACUELLOS DE LA VEGA') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Paracuellos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PARACUELLOS (PARACUELLOS DE LA VEGA') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAN CLEMENTE - Torre Vieja de San Clemente (78 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN CLEMENTE') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre Vieja de San Clemente', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN CLEMENTE') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TARANCÓN RURAL - Castillo y Murallas de Uclés (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('TARANCÓN RURAL') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo y Murallas de Uclés', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TARANCÓN RURAL') AND UPPER(provincia)=UPPER('CUENCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: CÁCERES (19 castillos) =====

-- ALBALÁ - Torreón de Albalá (54 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 54
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBALÁ') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Albalá', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBALÁ') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALBURQUERQUE RURAL (ÁREA LIMÍTROFE - Torre de las dehesas de San (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBURQUERQUE RURAL (ÁREA LIMÍTROFE') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de las dehesas de San', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBURQUERQUE RURAL (ÁREA LIMÍTROFE') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCÁNTARA - Castillo de Alcántara (Fortaleza (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCÁNTARA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo de Alcántara (Fortaleza', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCÁNTARA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARROYOMOLINOS - Castillo de la dehesa de los (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('ARROYOMOLINOS') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la dehesa de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARROYOMOLINOS') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BROZAS - Castillo de Cabañas (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('BROZAS') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cabañas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BROZAS') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BROZAS - Castillo de las Encomiendas (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('BROZAS') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Encomiendas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BROZAS') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CORIA - Castillo de los Duques de Alba (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('CORIA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de Alba', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CORIA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CÁCERES - Murallas de Cáceres y Torre de (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('CÁCERES') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Cáceres y Torre de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CÁCERES') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GRANADILLA (MUNICIPALIDAD DE ZARZA DE - Castillo de Granadilla (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('GRANADILLA (MUNICIPALIDAD DE ZARZA DE') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Granadilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GRANADILLA (MUNICIPALIDAD DE ZARZA DE') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JARANDILLA DE LA VERA - Castillo de Carlos V (Castillo de (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('JARANDILLA DE LA VERA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Carlos V (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JARANDILLA DE LA VERA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JARANDILLA DE LA VERA - Castillo de Monfragüe (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('JARANDILLA DE LA VERA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monfragüe', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JARANDILLA DE LA VERA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONTÁNCHEZ - Castillo de Montánchez (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTÁNCHEZ') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montánchez', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTÁNCHEZ') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PLASENCIA - Murallas e Imperio de Plasencia (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('PLASENCIA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas e Imperio de Plasencia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PLASENCIA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PORTEZUELO - Castillo de Marmionda (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('PORTEZUELO') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Marmionda', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PORTEZUELO') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SEGURA DE TORO - Restos del Castillo de Segura (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('SEGURA DE TORO') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Segura', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SEGURA DE TORO') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TREVEJO - Castillo de Trevejo (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('TREVEJO') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Trevejo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TREVEJO') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TRUJILLO - Castillo de Trujillo (Alcazaba de (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('TRUJILLO') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo de Trujillo (Alcazaba de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TRUJILLO') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALVERDE DEL FRESNO - Torre de las dehesas de Eljas (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('VALVERDE DEL FRESNO') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de las dehesas de Eljas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALVERDE DEL FRESNO') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLANUEVA DE LA VERA - Atalaya de la Vera Alta (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLANUEVA DE LA VERA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de la Vera Alta', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLANUEVA DE LA VERA') AND UPPER(provincia)=UPPER('CÁCERES')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: CÁDIZ (30 castillos) =====

-- ALCALÁ DE LOS GAZULES - Castillo de Alcalá de los (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DE LOS GAZULES') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcalá de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DE LOS GAZULES') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCALÁ DEL VALLE - Torre de la Cerca (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DEL VALLE') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Cerca', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DEL VALLE') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALGECIRAS - Murallas Meriníes de Algeciras (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('ALGECIRAS') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas Meriníes de Algeciras', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALGECIRAS') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALGECIRAS - Torre de San García (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('ALGECIRAS') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San García', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALGECIRAS') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARCOS DE LA FRONTERA - Castillo de Arcos (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('ARCOS DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Arcos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARCOS DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BARBATE - Torre del Tajo (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('BARBATE') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Tajo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BARBATE') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BARBATE - Torre de Meca (63 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(nombre)=UPPER('BARBATE') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Meca', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BARBATE') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BORNOS - Castillo-Palacio de los Ribera (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('BORNOS') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de los Ribera', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BORNOS') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CADIZ - Castillo de San Sebastián (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('CADIZ') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Sebastián', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CADIZ') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CADIZ - Castillo de Santa Catalina (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('CADIZ') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Catalina', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CADIZ') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTELLAR DE LA FRONTERA - Castillo de Castellar (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLAR DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castellar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLAR DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CHIPIONA - Castillo de Chipiona (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('CHIPIONA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chipiona', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CHIPIONA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CONIL DE LA FRONTERA - Torre de Guzmán el Bueno (78 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(nombre)=UPPER('CONIL DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Guzmán el Bueno', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CONIL DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- EL PUERTO DE SANTA MARÍA - Castillo de San Marcos (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('EL PUERTO DE SANTA MARÍA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Marcos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('EL PUERTO DE SANTA MARÍA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JEREZ DE LA FRONTERA - Alcázar de Jerez (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('JEREZ DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Jerez', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JEREZ DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JIMENA DE LA FRONTERA - Castillo de Jimena (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('JIMENA DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Jimena', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JIMENA DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MEDINA SIDONIA - Castillo de Medina Sidonia (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINA SIDONIA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Medina Sidonia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINA SIDONIA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- OLVERA - Castillo de Olvera (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('OLVERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Olvera', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('OLVERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PUERTO REAL - Matagorda (Restos del Fuerte) (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('PUERTO REAL') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Matagorda (Restos del Fuerte)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PUERTO REAL') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ROTA - Castillo de Luna (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('ROTA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Luna', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ROTA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAN FERNANDO - Castillo de San Romualdo (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN FERNANDO') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Romualdo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN FERNANDO') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAN ROQUE - Fuerte de Isla Verde (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN ROQUE') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Fuerte de Isla Verde', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN ROQUE') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANLÚCAR DE BARRAMEDA - Castillo de Santiago (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('SANLÚCAR DE BARRAMEDA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santiago', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANLÚCAR DE BARRAMEDA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANLÚCAR DE BARRAMEDA - Castillo de San Salvador (El (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('SANLÚCAR DE BARRAMEDA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Salvador (El', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANLÚCAR DE BARRAMEDA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TARIFA - Castillo de Guzmán el Bueno (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('TARIFA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Guzmán el Bueno', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TARIFA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TARIFA - Castillo de Santa Catalina (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('TARIFA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Catalina', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TARIFA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TARIFA - Torre de Cabo de Gracia (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('TARIFA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Cabo de Gracia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TARIFA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VEJER DE LA FRONTERA - Castillo de Vejer (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('VEJER DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vejer', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VEJER DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VEJER DE LA FRONTERA - Torre del Tajo (Vejer oriental) (63 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(nombre)=UPPER('VEJER DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Tajo (Vejer oriental)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VEJER DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ZAHARA DE LA SIERRA - Castillo de Zahara de la Sierra (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('ZAHARA DE LA SIERRA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zahara de la Sierra', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ZAHARA DE LA SIERRA') AND UPPER(provincia)=UPPER('CÁDIZ')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: CÓRDOBA (22 castillos) =====

-- AGUILAR DE LA FRONTERA - Castillo de Aguilar (Castillo de (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('AGUILAR DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aguilar (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AGUILAR DE LA FRONTERA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALMODÓVAR DEL RÍO - Castillo de Almodóvar del Río (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMODÓVAR DEL RÍO') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almodóvar del Río', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMODÓVAR DEL RÍO') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BAENA - Castillo de Baena (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('BAENA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Baena', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BAENA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BELALCÁZAR - Castillo de los Sotomayor y (97 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(nombre)=UPPER('BELALCÁZAR') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Sotomayor y', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BELALCÁZAR') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BELMEZ - Castillo de Belmez (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMEZ') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Belmez', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMEZ') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BUJALANCE - Castillo de Bujalance (Alcazaba (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('BUJALANCE') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo de Bujalance (Alcazaba', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BUJALANCE') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARCABUEY - Castillo de Carcabuey (El (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('CARCABUEY') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Carcabuey (El', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARCABUEY') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CÓRDOBA - Alcázar de los Reyes Cristianos (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('CÓRDOBA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de los Reyes Cristianos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CÓRDOBA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CÓRDOBA - Torre de la Calahorra (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('CÓRDOBA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Calahorra', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CÓRDOBA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- DOS TORRES - Torreón de la dehesa de Los (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('DOS TORRES') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de Los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('DOS TORRES') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ESPEJO - Castillo de Espejo (Castillo de (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('ESPEJO') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Espejo (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ESPEJO') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ESPEJO - Palacio-Castillo de los Duques (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('ESPEJO') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los Duques', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ESPEJO') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- IZNÁJAR - Castillo de Iznájar (Hisn Ashar) (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('IZNÁJAR') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Iznájar (Hisn Ashar)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('IZNÁJAR') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LUQUE - Castillo de Luque (Hisn Lukk) (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('LUQUE') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Luque (Hisn Lukk)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LUQUE') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONTEMAYOR - Castillo de Dos Hermanas (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTEMAYOR') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Dos Hermanas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTEMAYOR') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONTILLA - Castillo de Montilla (Gran (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTILLA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montilla (Gran', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTILLA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALMA DEL RÍO - Murallas y Alcázar de Palma del (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA DEL RÍO') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Murallas y Alcázar de Palma del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALMA DEL RÍO') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- POSADAS - Torre de la Cabrilla (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('POSADAS') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Cabrilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('POSADAS') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PRIEGO DE CÓRDOBA - Castillo de Priego (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('PRIEGO DE CÓRDOBA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Priego', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PRIEGO DE CÓRDOBA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANTA EUFEMIA - Castillo de Miramontes (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTA EUFEMIA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miramontes', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTA EUFEMIA') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORRECAMPO - Torre del Mogábar (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('TORRECAMPO') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Mogábar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORRECAMPO') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ZUHEROS - Castillo de Zuheros (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('ZUHEROS') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zuheros', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ZUHEROS') AND UPPER(provincia)=UPPER('CÓRDOBA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: GIRONA (11 castillos) =====

-- BRUNYOLA - Castillo de Brunyola (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('BRUNYOLA') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Brunyola', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BRUNYOLA') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CALONGE - Castillo de Calonge (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('CALONGE') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Calonge', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CALONGE') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FIGUERES - Castillo de San Fernando (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('FIGUERES') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Fernando', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FIGUERES') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- HOSTALRIC - Fortaleza de Hostalric (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('HOSTALRIC') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de Hostalric', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('HOSTALRIC') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALAFRUGELL - Torre de San Sebastián (Torre (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('PALAFRUGELL') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San Sebastián (Torre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALAFRUGELL') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PERALADA - Castillo-Palacio de Peralada (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('PERALADA') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Peralada', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PERALADA') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PERALADA - Castillo de Quermançó (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('PERALADA') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Quermançó', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PERALADA') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- RIBES DE FRESER - Castillo de Ribes (Castell de (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('RIBES DE FRESER') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ribes (Castell de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('RIBES DE FRESER') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TOSSA DE MAR - Castillo y Recinto Amurallado (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('TOSSA DE MAR') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo y Recinto Amurallado', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TOSSA DE MAR') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ZORITA DE LOS CANES - Castillo de Arenys (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('ZORITA DE LOS CANES') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Arenys', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ZORITA DE LOS CANES') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ZORITA DE LOS CANES - Restos del Castillo de Albanyà (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('ZORITA DE LOS CANES') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Albanyà', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ZORITA DE LOS CANES') AND UPPER(provincia)=UPPER('GIRONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: GRANADA (83 castillos) =====

-- ALBONDÓN - Castillo de La Rábita (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBONDÓN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Rábita', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBONDÓN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALBONDÓN - Torre de Huarea (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBONDÓN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Huarea', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBONDÓN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALBONDÓN - Torre de Albondón (Torre del (61 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 61
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBONDÓN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Albondón (Torre del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBONDÓN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALGARINEJO - Castillo de Algarinejo (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('ALGARINEJO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Algarinejo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALGARINEJO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALGARINEJO - Torre de la Alquería de Fuentes (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('ALGARINEJO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de Fuentes', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALGARINEJO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALHAMA DE GRANADA - Castillo de San Miguel (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Miguel', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALHAMA DE GRANADA - Castillo de Alhama de Granada (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhama de Granada', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALHAMA DE GRANADA - Castillo de la Herradura (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Herradura', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALHAMA DE GRANADA - Torre de Torresolana (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Torresolana', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALHAMA DE GRANADA - Torre del Diablo (Torre de (64 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 64
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Diablo (Torre de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALHAMA DE GRANADA - Torre de la Luna (63 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Luna', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALHAMA DE GRANADA - Torre de Velilla (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Velilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALHAMA DE GRANADA - Torre de Marchal (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Marchal', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARENAS DEL REY - Restos del Puesto Fortificado (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('ARENAS DEL REY') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Puesto Fortificado', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARENAS DEL REY') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ATARFE - Ermita de los Tres Juanes (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('ATARFE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Ermita de los Tres Juanes', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ATARFE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BAZA - Alcazaba de Baza (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('BAZA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Baza', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BAZA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BAZA - Torre de la Alquería de (61 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 61
FROM municipios
WHERE UPPER(nombre)=UPPER('BAZA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BAZA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BENAMAUREL - Restos del Castillo de (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('BENAMAUREL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BENAMAUREL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BUBIÓN - Torre del Homenaje de la Iglesia (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('BUBIÓN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Homenaje de la Iglesia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BUBIÓN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CALICASAS - Atalaya de Calicasas (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('CALICASAS') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Calicasas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CALICASAS') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CANILES - Restos del Castillejo de Cañar (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('CANILES') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de Cañar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CANILES') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CANILES - Torre de Caniles (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('CANILES') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Caniles', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CANILES') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTELL DE FERRO - Castillo de Castell de Ferro (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELL DE FERRO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castell de Ferro', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELL DE FERRO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTELL DE FERRO - Torre de Cambriles (63 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELL DE FERRO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Cambriles', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELL DE FERRO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTRIL - Castillo de Castril (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTRIL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castril', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTRIL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CHIMENEAS - Atalaya de Chimeneas (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('CHIMENEAS') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Chimeneas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CHIMENEAS') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- COGOLLOS VEGA - Atalaya de Cogollos Vega (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('COGOLLOS VEGA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Cogollos Vega', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('COGOLLOS VEGA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CÁDIAR - Castillo de Cádiar (Torre del (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('CÁDIAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Cádiar (Torre del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CÁDIAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CÁJAR - Torreón de Cájar (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('CÁJAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Cájar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CÁJAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CÚLLAR - Torreón de Cúllar (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('CÚLLAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Cúllar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CÚLLAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- DÚRCAL - Castillo de Dúrcal (El Castillejo) (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('DÚRCAL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Dúrcal (El Castillejo)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('DÚRCAL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- DÚRCAL - Torre de Feneite (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('DÚRCAL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Feneite', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('DÚRCAL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FREILA - Castillo de Freila (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('FREILA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Freila', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FREILA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FUENTE VAQUEROS - Torre de Fuente Vaqueros (45 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 45
FROM municipios
WHERE UPPER(nombre)=UPPER('FUENTE VAQUEROS') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuente Vaqueros', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FUENTE VAQUEROS') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GRANADA - Alcazaba de la Alhambra (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de la Alhambra', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GRANADA - Alcazaba de la Alhambra (Torre (98 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(nombre)=UPPER('GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Alcazaba de la Alhambra (Torre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GRANADA - Torres Bermejas (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres Bermejas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GRANADA - Alcazaba de la Qadima (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de la Qadima', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GRANADA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GUADIX - Alcazaba de Guadix (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('GUADIX') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Guadix', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GUADIX') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GUADIX - El Castillejo de Güéjar (Castillo (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('GUADIX') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'El Castillejo de Güéjar (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GUADIX') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- HUÉSCAR - Restos del Alcázar de Huéscar (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('HUÉSCAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Restos del Alcázar de Huéscar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('HUÉSCAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- HUÉSCAR - Atalaya de la Sierra de la (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('HUÉSCAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de la Sierra de la', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('HUÉSCAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- HUÉTOR TÁJAR - Torreón de Huétor Tájar (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('HUÉTOR TÁJAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Huétor Tájar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('HUÉTOR TÁJAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- IZNALLOZ - Castillo de Iznalloz (Los (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('IZNALLOZ') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Iznalloz (Los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('IZNALLOZ') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JAYENA - Torre de Jayena (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('JAYENA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Jayena', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JAYENA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LA CALAHORRA - Castillo de La Calahorra (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('LA CALAHORRA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Calahorra', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LA CALAHORRA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LANJARÓN - Castillo de Lanjarón (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('LANJARÓN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Lanjarón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LANJARÓN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LECRÍN - Castillo de Mondújar (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('LECRÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mondújar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LECRÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LECRÍN - Castillo de Chite (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('LECRÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chite', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LECRÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LOJA - Alcazaba de Loja (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('LOJA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Loja', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LOJA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LOJA - Torre de Agicampe (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('LOJA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Agicampe', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LOJA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LOJA - Torre de Riofrío (63 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(nombre)=UPPER('LOJA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Riofrío', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LOJA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LUGROS - Restos del Castillejo de Lugros (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('LUGROS') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de Lugros', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LUGROS') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MALPARTIDA - Atalaya de Malá (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('MALPARTIDA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Malá', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MALPARTIDA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MARACENA - Torre de Maracena (48 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 48
FROM municipios
WHERE UPPER(nombre)=UPPER('MARACENA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Maracena', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MARACENA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOCLÍN - Castillo de Moclín (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('MOCLÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moclín', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOCLÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOCLÍN - Torre de la Porqueriza (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('MOCLÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Porqueriza', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOCLÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOCLÍN - Torre de Mingoandrés (63 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(nombre)=UPPER('MOCLÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Mingoandrés', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOCLÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOCLÍN - Torre de la Solana (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('MOCLÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Solana', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOCLÍN') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONACHIL - Restos del Castillejo de (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('MONACHIL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONACHIL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONTEFRÍO - Castillo de Montefrío (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTEFRÍO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montefrío', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTEFRÍO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONTEFRÍO - Torre de los Guzmanes (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTEFRÍO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Guzmanes', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTEFRÍO') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOTRIL - Restos de las Murallas e Iglesia (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('MOTRIL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Restos de las Murallas e Iglesia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOTRIL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOTRIL - Torre del Mar (Torre de (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('MOTRIL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Mar (Torre de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOTRIL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOTRIL - Torre de la Alquería de Nigüelas (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('MOTRIL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de Nigüelas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOTRIL') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ORCE - Alcazaba de Orce (Castillo de (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('ORCE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Orce (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ORCE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PELIGROS - Torre de Peligros (45 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 45
FROM municipios
WHERE UPPER(nombre)=UPPER('PELIGROS') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Peligros', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PELIGROS') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PINOS PUENTE - Castillo de Píñar (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('PINOS PUENTE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Píñar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PINOS PUENTE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PINOS PUENTE - Castillo de Pinos Puente (Cerro (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('PINOS PUENTE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pinos Puente (Cerro', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PINOS PUENTE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PINOS PUENTE - Torre de la Alberquilla (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('PINOS PUENTE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alberquilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PINOS PUENTE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PINOS PUENTE - Torre de Ilurco (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('PINOS PUENTE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Ilurco', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PINOS PUENTE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PURULLENA - Torre de Culibre (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('PURULLENA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Culibre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PURULLENA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SALAR - Castillo de Salobreña (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('SALAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Salobreña', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SALAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SALAR - Torreón del Castillo de Salar (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('SALAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón del Castillo de Salar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SALAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SALAR - Torre del Cambrón (63 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(nombre)=UPPER('SALAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Cambrón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SALAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANTA FE - Puertas Fortificadas de la (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTA FE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puertas Fortificadas de la', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTA FE') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- UGÍJAR - Restos del Castillejo de Ugíjar (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('UGÍJAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de Ugíjar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('UGÍJAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VENTAS DE ZAFARRAYA - Puesto Fortificado del Boquete (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('VENTAS DE ZAFARRAYA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puesto Fortificado del Boquete', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VENTAS DE ZAFARRAYA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VÁLOR - Torre de Válor (Torre de la (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('VÁLOR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Válor (Torre de la', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VÁLOR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VÉLEZ DE BENAUDALLA - Torreón de Vélez de Benaudalla (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('VÉLEZ DE BENAUDALLA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Vélez de Benaudalla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VÉLEZ DE BENAUDALLA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ZÚJAR - Restos del Castillo de Zújar (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('ZÚJAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Zújar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ZÚJAR') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ÍLLORA - Castillo de Íllora (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('ÍLLORA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Íllora', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ÍLLORA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ÍLLORA - Torre de la Mesa (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('ÍLLORA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Mesa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ÍLLORA') AND UPPER(provincia)=UPPER('GRANADA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: GUADALAJARA (14 castillos) =====

-- ATIENZA - Castillo de Atienza (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('ATIENZA') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Atienza', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ATIENZA') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CIFUENTES - Castillo de Don Juan Manuel (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('CIFUENTES') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Don Juan Manuel', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CIFUENTES') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- COGOLLUDO - Castillo de Cogolludo (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('COGOLLUDO') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cogolludo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('COGOLLUDO') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- COGOLLUDO - Torreón de la campiña baja de (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('COGOLLUDO') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la campiña baja de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('COGOLLUDO') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JADRAQUE - Castillo de Jadraque (Castillo (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('JADRAQUE') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Jadraque (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JADRAQUE') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOLINA DE ARAGÓN - Castillo-Alcazaba de Molina de (97 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(nombre)=UPPER('MOLINA DE ARAGÓN') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo-Alcazaba de Molina de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOLINA DE ARAGÓN') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALAZUELOS (MUNICIPALIDAD DE - Castillo de Palazuelos y Villa (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('PALAZUELOS (MUNICIPALIDAD DE') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Palazuelos y Villa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALAZUELOS (MUNICIPALIDAD DE') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PIOZ - Castillo de Pioz (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('PIOZ') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pioz', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PIOZ') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- RRIBA DE SANTIUSTE (MUNICIPALIDAD DE - Castillo de Sigüenza (Alcázar (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('RRIBA DE SANTIUSTE (MUNICIPALIDAD DE') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo de Sigüenza (Alcázar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('RRIBA DE SANTIUSTE (MUNICIPALIDAD DE') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- RRIBA DE SANTIUSTE (MUNICIPALIDAD DE - Castillo de Riba de Santiuste (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('RRIBA DE SANTIUSTE (MUNICIPALIDAD DE') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Riba de Santiuste', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('RRIBA DE SANTIUSTE (MUNICIPALIDAD DE') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORIJA - Castillo de Torija (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('TORIJA') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Torija', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORIJA') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLEL DE MESA - Castillo de los Funes (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLEL DE MESA') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Funes', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLEL DE MESA') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- YÉLAMOS DE ABAJO (ARIBES DE LA - Torre de Yélamos (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('YÉLAMOS DE ABAJO (ARIBES DE LA') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Yélamos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('YÉLAMOS DE ABAJO (ARIBES DE LA') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ZORITA DE LOS CANES - Castillo de Zorita de los Canes (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('ZORITA DE LOS CANES') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zorita de los Canes', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ZORITA DE LOS CANES') AND UPPER(provincia)=UPPER('GUADALAJARA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: HUELVA (12 castillos) =====

-- ARACENA - Castillo de Aracena (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('ARACENA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aracena', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARACENA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- AROCHE - Castillo de Aroche (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('AROCHE') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aroche', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AROCHE') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- AYAMONTE - Restos del Castillo de (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('AYAMONTE') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AYAMONTE') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BELMEZ RURAL (CÓRDOBA - Puesto Fortificado del río (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMEZ RURAL (CÓRDOBA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puesto Fortificado del río', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMEZ RURAL (CÓRDOBA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARTAYA - Castillo de los Zúñiga (Castillo (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('CARTAYA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Zúñiga (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARTAYA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CONSTANTINA RURAL (SEVILLA - Torre de la dehesa del Viar (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('CONSTANTINA RURAL (SEVILLA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la dehesa del Viar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CONSTANTINA RURAL (SEVILLA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CORTEGANA - Castillo de Cortegana (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('CORTEGANA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cortegana', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CORTEGANA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CUMBRES MAYORES - Castillo de Sancho IV (Castillo (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('CUMBRES MAYORES') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sancho IV (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CUMBRES MAYORES') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ENCINASOLA - Castillo de Encinasola y Fuerte (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ENCINASOLA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Encinasola y Fuerte', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ENCINASOLA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOGUER - Castillo de Moguer (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('MOGUER') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moguer', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOGUER') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALOS DE LA FRONTERA - Restos del Castillo de Palos (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('PALOS DE LA FRONTERA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Palos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALOS DE LA FRONTERA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANTA OLALLA DEL CALA - Castillo de Santa Olalla (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTA OLALLA DEL CALA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Olalla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTA OLALLA DEL CALA') AND UPPER(provincia)=UPPER('HUELVA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: HUESCA (18 castillos) =====

-- ALQUÉZAR - Colegiata-Castillo de Alquézar (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('ALQUÉZAR') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Colegiata-Castillo de Alquézar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALQUÉZAR') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- AÍNSA - Castillo de AíNSA (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('AÍNSA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de AíNSA', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AÍNSA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BASTARÁS (MUNICIPALIDAD DE CASBAS DE - Castillo de Boltaña (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('BASTARÁS (MUNICIPALIDAD DE CASBAS DE') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Boltaña', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BASTARÁS (MUNICIPALIDAD DE CASBAS DE') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BASTARÁS (MUNICIPALIDAD DE CASBAS DE - Torre de Bastarás (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('BASTARÁS (MUNICIPALIDAD DE CASBAS DE') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Bastarás', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BASTARÁS (MUNICIPALIDAD DE CASBAS DE') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BENASQUE - Restos del Torreón de los (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('BENASQUE') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos del Torreón de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BENASQUE') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- EMBID DE ARIZA - Castillo de Marcuello (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('EMBID DE ARIZA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Marcuello', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('EMBID DE ARIZA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JACA - Ciudadela de Jaca (Castillo de (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('JACA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Ciudadela de Jaca (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JACA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LOARRE - Castillo de Loarre (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('LOARRE') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Loarre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LOARRE') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONZÓN - Castillo de Monzón (97 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(nombre)=UPPER('MONZÓN') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monzón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONZÓN') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONZÓN - Torreón de Cotón (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('MONZÓN') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Cotón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONZÓN') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONZÓN - Torreón de Novés (54 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 54
FROM municipios
WHERE UPPER(nombre)=UPPER('MONZÓN') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Novés', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONZÓN') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- QUICENA - Real Monasterio-Castillo de (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('QUICENA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Real Monasterio-Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('QUICENA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAMITIER - Castillo de Samitier (Torres de (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('SAMITIER') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Samitier (Torres de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAMITIER') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SECASTILLA - Torre de Secastilla (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('SECASTILLA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Secastilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SECASTILLA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SECASTILLA - Atalaya del Gállego Medio (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('SECASTILLA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya del Gállego Medio', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SECASTILLA') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALL DE ARÁN RURAL (ÁREA LIMÍTROFE DE - Restos del Fortín de Benasque (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('VALL DE ARÁN RURAL (ÁREA LIMÍTROFE DE') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Benasque', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALL DE ARÁN RURAL (ÁREA LIMÍTROFE DE') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLARLUENGO - Restos del Castillo de Agüero (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLARLUENGO') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Agüero', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLARLUENGO') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLARLUENGO - Torreón de los Guzmanes (54 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 54
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLARLUENGO') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de los Guzmanes', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLARLUENGO') AND UPPER(provincia)=UPPER('HUESCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: JAÉN (84 castillos) =====

-- ALCALÁ LA REAL - Fortaleza de la Mota (97 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de la Mota', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCALÁ LA REAL - Torre del Cascante (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Cascante', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCALÁ LA REAL - Torre de la Moraleja (63 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Moraleja', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCALÁ LA REAL - Torre de Fuente Álamo (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuente Álamo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCALÁ LA REAL - Torre del Charcón (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Charcón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCALÁ LA REAL - Torre de la Pedriza (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Pedriza', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ LA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCAUDETE - Castillo de Alcaudete (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCAUDETE') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcaudete', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCAUDETE') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCAUDETE - Torre de la Harina (64 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 64
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCAUDETE') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Harina', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCAUDETE') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCAUDETE - Torre del Canuto (61 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 61
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCAUDETE') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Canuto', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCAUDETE') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ANDÚJAR - Murallas e Imperio de Andújar (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('ANDÚJAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas e Imperio de Andújar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ANDÚJAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ANDÚJAR - Castillo de la Aragonesa (70 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(nombre)=UPPER('ANDÚJAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Aragonesa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ANDÚJAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARJONA - Alcázar e Iglesia de Santa (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('ARJONA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar e Iglesia de Santa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARJONA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARJONA - Torre de la Garbancera (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('ARJONA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Garbancera', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARJONA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARJONILLA - Castillo del Trovador Macías (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('ARJONILLA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Trovador Macías', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARJONILLA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BAILÉN - Castillo de Burgalimar (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('BAILÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Burgalimar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BAILÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BAILÉN - Castillo de Bailén (70 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(nombre)=UPPER('BAILÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Bailén', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BAILÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BAILÉN - Torre del Migaldías (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('BAILÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Migaldías', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BAILÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BEAS DE SEGURA - Restos del Castillo de Beas (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('BEAS DE SEGURA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Beas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BEAS DE SEGURA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BEGÍJAR - Torre del Homenaje de Begíjar (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('BEGÍJAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Homenaje de Begíjar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BEGÍJAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BELMEZ DE LA MORALEDA - Castillo de Bélmez (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMEZ DE LA MORALEDA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Bélmez', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMEZ DE LA MORALEDA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BELMEZ DE LA MORALEDA - Torre del Sol (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMEZ DE LA MORALEDA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Sol', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMEZ DE LA MORALEDA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CABRA DEL SANTO CRISTO - Castillo de Cabra (Torre del (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('CABRA DEL SANTO CRISTO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Cabra (Torre del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CABRA DEL SANTO CRISTO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CAMBIL - Castillo de Cambil (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('CAMBIL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cambil', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CAMBIL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CAMBIL - Castillo de Alhabar (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('CAMBIL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhabar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CAMBIL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CAMBIL - Torre de Campones (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('CAMBIL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Campones', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CAMBIL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CANENA - Castillo de Canena (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('CANENA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Canena', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CANENA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTELLAR - Castillo de la Consolación (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Consolación', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTELLAR DE SANTISTEBAN - Torreón de San Andrés (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLAR DE SANTISTEBAN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de San Andrés', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLAR DE SANTISTEBAN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CAZORLA - Castillo de La Yedra (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('CAZORLA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Yedra', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CAZORLA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CAZORLA - Castillo de las Cinco Esquinas (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('CAZORLA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Cinco Esquinas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CAZORLA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CHICLANA DE SEGURA - Castillo de Chiclana (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('CHICLANA DE SEGURA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chiclana', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CHICLANA DE SEGURA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CÁRCHEL - Torre de Carchelejo (Castillejo) (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('CÁRCHEL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Carchelejo (Castillejo)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CÁRCHEL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ESPELUY - Castillo de Espeluy (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('ESPELUY') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Espeluy', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ESPELUY') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FUENSANTA DE MARTOS - Torre de la Dehesilla (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('FUENSANTA DE MARTOS') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Dehesilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FUENSANTA DE MARTOS') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FUERTE DEL REY - Torre de Fuerte del Rey (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('FUERTE DEL REY') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuerte del Rey', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FUERTE DEL REY') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- HORNOS DE SEGURA - Castillo de Hornos (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('HORNOS DE SEGURA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Hornos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('HORNOS DE SEGURA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- HORNOS DE SEGURA - Torre de Bujaraiza (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('HORNOS DE SEGURA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Bujaraiza', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('HORNOS DE SEGURA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- IBROS - Muralla Ciclópea e Imperio de (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('IBROS') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Muralla Ciclópea e Imperio de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('IBROS') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JAMILENA - Castillo de Jamilena (Torre de (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('JAMILENA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Jamilena (Torre de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JAMILENA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JAÉN - Castillo de Santa Catalina (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('JAÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Catalina', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JAÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JAÉN - Torre de la Peña de la Grajuela (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('JAÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Peña de la Grajuela', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JAÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JÓDAR - Castillo de Jódar (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('JÓDAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Jódar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JÓDAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LA GUARDIA DE JAÉN - Castillo de La Guardia (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('LA GUARDIA DE JAÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Guardia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LA GUARDIA DE JAÉN') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LA IRUELA - Castillo de La Iruela (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('LA IRUELA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Iruela', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LA IRUELA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LINARES - Castillo de Tobaruela (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('LINARES') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tobaruela', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LINARES') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LOPERA - Castillo de Lopera (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('LOPERA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Lopera', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LOPERA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MANCHA REAL - Torre de la Dehesa de Mancha (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('MANCHA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Dehesa de Mancha', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MANCHA REAL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MARTOS - Castillo de la Villa (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('MARTOS') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Villa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MARTOS') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MARTOS - Castillo de la Peña de Martos (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('MARTOS') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Peña de Martos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MARTOS') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MENGÍBAR - Torre de Mengíbar (78 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(nombre)=UPPER('MENGÍBAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Mengíbar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MENGÍBAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- NAVAS DE TOLOSA (PEDANÍA DE LA - Castillo de Las Navas de Tolosa (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('NAVAS DE TOLOSA (PEDANÍA DE LA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Las Navas de Tolosa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('NAVAS DE TOLOSA (PEDANÍA DE LA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- NOALEJO - Atalaya de Noalejo (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('NOALEJO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Noalejo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('NOALEJO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ORCERA - Torres de Peal (Torre del Reloj y (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ORCERA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres de Peal (Torre del Reloj y', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ORCERA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ORCERA - Torres de Santa Catalina (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('ORCERA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres de Santa Catalina', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ORCERA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PEGALAJAR - Arco de la Encarnación y (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('PEGALAJAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Arco de la Encarnación y', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PEGALAJAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PORCUNA - Castillo de Porcuna (Torre de (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('PORCUNA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Porcuna (Torre de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PORCUNA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- QUESADA - Castillo de Tíscar (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('QUESADA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tíscar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('QUESADA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- QUESADA - Murallas y Arco de los Santos (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('QUESADA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas y Arco de los Santos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('QUESADA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- RUS - Torreón de Rus (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('RUS') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Rus', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('RUS') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SABIOTE - Castillo de Sabiote (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('SABIOTE') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sabiote', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SABIOTE') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANTA ELENA - Castillo de Castro Ferral (70 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTA ELENA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castro Ferral', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTA ELENA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANTISTEBAN DEL PUERTO - Castillo de Segura de la Sierra (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTISTEBAN DEL PUERTO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Segura de la Sierra', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTISTEBAN DEL PUERTO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANTISTEBAN DEL PUERTO - Castillo de San Esteban (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTISTEBAN DEL PUERTO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Esteban', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTISTEBAN DEL PUERTO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANTISTEBAN DEL PUERTO - Torre de la Escribana (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTISTEBAN DEL PUERTO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Escribana', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTISTEBAN DEL PUERTO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANTISTEBAN DEL PUERTO - Torre de Gontar (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTISTEBAN DEL PUERTO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Gontar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTISTEBAN DEL PUERTO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREBLASCOPEDRO - Torre de la Alquería de (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREBLASCOPEDRO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREBLASCOPEDRO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREDELCAMPO - Castillo de la Muña (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Muña', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREDELCAMPO - Torre de Olid (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Olid', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREDELCAMPO - Torre del Lucero (63 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Lucero', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREDELCAMPO - Torre de la Muña (Atalaya) (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Muña (Atalaya)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREDELCAMPO - Torre de Villagordo (61 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 61
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Villagordo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREDELCAMPO - Torre de Megía (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Megía', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDELCAMPO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREDONJIMENO - Castillo de Torredonjimeno (81 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 81
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDONJIMENO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Torredonjimeno', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDONJIMENO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREDONJIMENO - Torre de Fuencubierta (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDONJIMENO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuencubierta', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDONJIMENO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREDONJIMENO - Torre de Venzala (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDONJIMENO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Venzala', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREDONJIMENO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORREPEROGIL - Torres Oscuras de Torreperogil (78 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREPEROGIL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres Oscuras de Torreperogil', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORREPEROGIL') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORRES - Restos del Castillejo de Torres (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('TORRES') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos del Castillejo de Torres', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORRES') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILCHES - Castillo de Vilches (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('VILCHES') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vilches', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILCHES') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILCHES - Castillo de Giribaile (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('VILCHES') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Giribaile', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILCHES') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLACARRILLO - Restos del Castillo de (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLACARRILLO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLACARRILLO') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLANUEVA DE LA REINA - Torre de la Alquería de El Batán (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLANUEVA DE LA REINA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de El Batán', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLANUEVA DE LA REINA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLARDOMPAR - Castillo de Villardompardo (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLARDOMPAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villardompardo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLARDOMPAR') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ÚBEDA - Murallas y Alcázar de Úbeda (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ÚBEDA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Murallas y Alcázar de Úbeda', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ÚBEDA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ÚBEDA - Castillo de Susana (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('ÚBEDA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Susana', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ÚBEDA') AND UPPER(provincia)=UPPER('JAÉN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: LEÓN (11 castillos) =====

-- ALIJA DEL INFANTADO - Castillo de los Pimentel (Castillo (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ALIJA DEL INFANTADO') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Pimentel (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALIJA DEL INFANTADO') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALMANZA - Palacio-Castillo de los (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMANZA') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMANZA') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CEBRONES DEL ÓRBIGO (ÁREA DE - Torreón de la dehesa del Órbigo (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('CEBRONES DEL ÓRBIGO (ÁREA DE') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del Órbigo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CEBRONES DEL ÓRBIGO (ÁREA DE') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CORULLÓN - Castillo de los Marqueses de (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('CORULLÓN') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Marqueses de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CORULLÓN') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GRAJAL DE CAMPOS - Castillo de Grajal de Campos (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('GRAJAL DE CAMPOS') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Grajal de Campos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GRAJAL DE CAMPOS') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LAGUNA DE NEGRILLOS - Castillo de Laguna de NegrillOS (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('LAGUNA DE NEGRILLOS') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Laguna de NegrillOS', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LAGUNA DE NEGRILLOS') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LEÓN - Murallas de León y Torre de los (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('LEÓN') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de León y Torre de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LEÓN') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MAQUEDA DE CAMPOS (PEDANÍA DE - Torre de Sahún Alto (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('MAQUEDA DE CAMPOS (PEDANÍA DE') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Sahún Alto', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MAQUEDA DE CAMPOS (PEDANÍA DE') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PONFERRADA - Castillo de los Templarios de (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('PONFERRADA') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Templarios de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PONFERRADA') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PRIARANZA DEL BIERZO - Castillo de Cornatel (Castillo de (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('PRIARANZA DEL BIERZO') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cornatel (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PRIARANZA DEL BIERZO') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALENCIA DE DON JUAN - Castillo de Coyanza (Castillo de (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('VALENCIA DE DON JUAN') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Coyanza (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALENCIA DE DON JUAN') AND UPPER(provincia)=UPPER('LEÓN')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: LLEIDA (5 castillos) =====

-- FLIX - Castillo de Flix (Castell Nou) (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('FLIX') AND UPPER(provincia)=UPPER('LLEIDA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Flix (Castell Nou)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FLIX') AND UPPER(provincia)=UPPER('LLEIDA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LLEIDA - Castillo del Rey (La Suda) y (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('LLEIDA') AND UPPER(provincia)=UPPER('LLEIDA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Rey (La Suda) y', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LLEIDA') AND UPPER(provincia)=UPPER('LLEIDA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONTSONÍS - Castillo de Montsonís (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTSONÍS') AND UPPER(provincia)=UPPER('LLEIDA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montsonís', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTSONÍS') AND UPPER(provincia)=UPPER('LLEIDA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MUR - Castillo de Mur (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('MUR') AND UPPER(provincia)=UPPER('LLEIDA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mur', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MUR') AND UPPER(provincia)=UPPER('LLEIDA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- OS DE BALAGUER - Castillo de Os de Balaguer (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('OS DE BALAGUER') AND UPPER(provincia)=UPPER('LLEIDA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Os de Balaguer', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('OS DE BALAGUER') AND UPPER(provincia)=UPPER('LLEIDA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: LUGO (6 castillos) =====

-- CASTROVERDE - Castillo de Castroverde (Torre (70 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROVERDE') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Castroverde (Torre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROVERDE') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CHANTADA - Torre de Arcos (Casa-Fuerte de (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('CHANTADA') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Arcos (Casa-Fuerte de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CHANTADA') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LUGO - Murallas de Lugo y Reducto de (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('LUGO') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Lugo y Reducto de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LUGO') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONFORTE DE LEMOS - Castillo de Monforte de Lemos (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('MONFORTE DE LEMOS') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monforte de Lemos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONFORTE DE LEMOS') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALAS DE REI - Castillo de Pambre (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('PALAS DE REI') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pambre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALAS DE REI') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALAS DE REI - Torreón de la dehesa del Miño (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('PALAS DE REI') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del Miño', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALAS DE REI') AND UPPER(provincia)=UPPER('LUGO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: MURCIA (17 castillos) =====

-- ALEDO - Castillo de Aledo (La Torre del (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('ALEDO') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Aledo (La Torre del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALEDO') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALHAMA DE MURCIA - Castillo de Alhama (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE MURCIA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhama', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAMA DE MURCIA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BLANCA - Castillo de Blanca (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('BLANCA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Blanca', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BLANCA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BULLAS - Restos del Castillo de Bullas (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('BULLAS') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Bullas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BULLAS') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CALASPARRA - Castillo de San Juan de (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('CALASPARRA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Juan de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CALASPARRA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARAVACA DE LA CRUZ - Castillo-Santuario de la Vera (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('CARAVACA DE LA CRUZ') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Santuario de la Vera', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARAVACA DE LA CRUZ') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARTAGENA - Castillo de la Concepción (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('CARTAGENA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Concepción', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARTAGENA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARTAGENA - Castillo de Galeras (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('CARTAGENA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Galeras', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARTAGENA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARTAGENA - Castillo de San Julián (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('CARTAGENA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Julián', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARTAGENA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARTAGENA - Torre de Santa Elena (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('CARTAGENA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Santa Elena', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARTAGENA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CIEZA - Castillo de Cieza (Senda de la (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('CIEZA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cieza (Senda de la', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CIEZA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LORCA - Castillo de Lorca (Fortaleza del (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('LORCA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo de Lorca (Fortaleza del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LORCA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MORATALLA - Castillo de Moratalla (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('MORATALLA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moratalla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MORATALLA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MULA - Castillo de los Vélez (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('MULA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Vélez', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MULA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PLIEGO - Castillo de Pliego (Las dehesas (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('PLIEGO') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pliego (Las dehesas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PLIEGO') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PLIEGO - Castillo de las Paleras (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('PLIEGO') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Paleras', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PLIEGO') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ZAFRA - Castillo de San Juan de las (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('ZAFRA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Juan de las', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ZAFRA') AND UPPER(provincia)=UPPER('MURCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: MÁLAGA (18 castillos) =====

-- ALHAURÍN EL GRANDE - Arco de Coín y Restos del (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAURÍN EL GRANDE') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Arco de Coín y Restos del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALHAURÍN EL GRANDE') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ANTEQUERA - Alcazaba de Antequera (Torre (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('ANTEQUERA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Alcazaba de Antequera (Torre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ANTEQUERA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARCHIDONA - Castillo-Alcazaba de Archidona (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('ARCHIDONA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo-Alcazaba de Archidona', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARCHIDONA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARDALES - Castillo de la Peña de Ardales (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('ARDALES') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Peña de Ardales', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARDALES') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARDALES - Castillo de Turón (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ARDALES') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Turón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARDALES') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BENALMÁDENA - Torre Muelle (Red de Torres (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('BENALMÁDENA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre Muelle (Red de Torres', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BENALMÁDENA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BENAOJÁN - Torre del Moro de Benaoján (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('BENAOJÁN') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Moro de Benaoján', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BENAOJÁN') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASARES - Castillo de Casares (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('CASARES') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Casares', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASARES') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CÁRTAMA - Castillo de Cártama (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('CÁRTAMA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cártama', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CÁRTAMA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ESTEPONA - Castillo de San Luis (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('ESTEPONA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Luis', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ESTEPONA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GAUCÍN - Castillo del Águila (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('GAUCÍN') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Águila', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GAUCÍN') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MANILVA - Castillo de la Duquesa (Castillo (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('MANILVA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Duquesa (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MANILVA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MARBELLA - Castillo de Marbella (Murallas (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('MARBELLA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo de Marbella (Murallas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MARBELLA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MARO - Torre de Maro (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('MARO') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Maro', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MARO') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MÁLAGA - Alcazaba de Málaga y Castillo (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('MÁLAGA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Málaga y Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MÁLAGA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- RONDA - Murallas de Ronda y Puerta de (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('RONDA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Ronda y Puerta de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('RONDA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TEBA - Castillo de la Estrella (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('TEBA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Estrella', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TEBA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VELEZ-MÁLAGA - Fortaleza de Vélez-Málaga (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('VELEZ-MÁLAGA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de Vélez-Málaga', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VELEZ-MÁLAGA') AND UPPER(provincia)=UPPER('MÁLAGA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: OURENSE (7 castillos) =====

-- ALLARIZ - Restos del Castillo de Allariz (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('ALLARIZ') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Allariz', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALLARIZ') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTRO CALDELAS - Castillo de Castro Caldelas (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTRO CALDELAS') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castro Caldelas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTRO CALDELAS') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MACEDA - Castillo de Maceda (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('MACEDA') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Maceda', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MACEDA') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- RIBADAVIA - Castillo de los Condes de (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('RIBADAVIA') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('RIBADAVIA') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANDIÁS - Torre de Sandiás (Castillo de (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('SANDIÁS') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Sandiás (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANDIÁS') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VERÍN - Castillo de Monterrey (Acrópolis (97 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(nombre)=UPPER('VERÍN') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monterrey (Acrópolis', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VERÍN') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILAMARTÍN DE VALDEORRAS RURAL (O - Torreón de la dehesa de (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('VILAMARTÍN DE VALDEORRAS RURAL (O') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILAMARTÍN DE VALDEORRAS RURAL (O') AND UPPER(provincia)=UPPER('OURENSE')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: PALENCIA (10 castillos) =====

-- AGUILAR DE CAMPOO - Castillo de Aguilar de Campoo (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('AGUILAR DE CAMPOO') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aguilar de Campoo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AGUILAR DE CAMPOO') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALBA DE TORMES (SALAMANCA - Torreón de Galisancho (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBA DE TORMES (SALAMANCA') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Galisancho', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBA DE TORMES (SALAMANCA') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- AMPUDIA - Castillo de Ampudia (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('AMPUDIA') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ampudia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AMPUDIA') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ASTUDILLO - Castillo de la Mota y Murallas (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ASTUDILLO') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo de la Mota y Murallas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ASTUDILLO') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BELMONTE DE CAMPOS - Castillo de Belmonte de (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMONTE DE CAMPOS') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Belmonte de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BELMONTE DE CAMPOS') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTROVIEJO - Puesto Fortificado del río Pedro (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROVIEJO') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puesto Fortificado del río Pedro', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROVIEJO') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FUENTES DE VALDEPERO - Castillo de Fuentes de (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('FUENTES DE VALDEPERO') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fuentes de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FUENTES DE VALDEPERO') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MEDINA DEL CAMPO RURAL (VALLADOLID - Torreón de Pozal de Gallinas (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINA DEL CAMPO RURAL (VALLADOLID') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Pozal de Gallinas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINA DEL CAMPO RURAL (VALLADOLID') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONZÓN DE CAMPOS - Castillo de Monzón de Campos (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('MONZÓN DE CAMPOS') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monzón de Campos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONZÓN DE CAMPOS') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PALENZUELA - Restos del Castillo de (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('PALENZUELA') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PALENZUELA') AND UPPER(provincia)=UPPER('PALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: PONTEVEDRA (21 castillos) =====

-- AGOLADA - Restos de la Torre señorial del (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('AGOLADA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos de la Torre señorial del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AGOLADA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- AGONCILLO - Castillo de Aguas Mansas (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('AGONCILLO') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aguas Mansas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AGONCILLO') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALLER - Torre de Soto (70 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(nombre)=UPPER('ALLER') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Soto', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALLER') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTRO-URDIALES - Castillo del Faro de Santa Ana (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTRO-URDIALES') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Faro de Santa Ana', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTRO-URDIALES') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CATOIRA - Torres del Oeste (Castellum (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('CATOIRA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres del Oeste (Castellum', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CATOIRA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CLAVIJO - Castillo de Clavijo (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('CLAVIJO') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Clavijo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CLAVIJO') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CORTEZUBI (MUNICIPALIDAD DE PAMPLONA - Castillo de Tiebas (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('CORTEZUBI (MUNICIPALIDAD DE PAMPLONA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tiebas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CORTEZUBI (MUNICIPALIDAD DE PAMPLONA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CUZCURRITA DE RÍO TIRÓN - Castillo de Cuzcurrita (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('CUZCURRITA DE RÍO TIRÓN') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cuzcurrita', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CUZCURRITA DE RÍO TIRÓN') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- JAVIER - Castillo de Javier (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('JAVIER') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Javier', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('JAVIER') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LLANES - Torreón de Llanes y Murallas (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('LLANES') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Llanes y Murallas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LLANES') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MARCILLA - Castillo de Marcilla (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('MARCILLA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Marcilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MARCILLA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MARÍN - Torre vigía del litoral llanura (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('MARÍN') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre vigía del litoral llanura', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MARÍN') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- OLITE - Palacio Real de Olite (Castillo (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('OLITE') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio Real de Olite (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('OLITE') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PAMPLONA - Ciudadela de Pamplona (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('PAMPLONA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Ciudadela de Pamplona', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PAMPLONA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAJAZARRA - Castillo de Sajazarra (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('SAJAZARRA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sajazarra', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAJAZARRA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SOTO DEL BARCO - Castillo de San Martín (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('SOTO DEL BARCO') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Martín', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SOTO DEL BARCO') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SOUTOMAIOR - Castillo de Soutomaior (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('SOUTOMAIOR') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Soutomaior', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SOUTOMAIOR') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALDEOLEA - Torre de San Martín de Hoyos (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('VALDEOLEA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San Martín de Hoyos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALDEOLEA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALDEOLEA - Torreón de la frontera navarro- (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('VALDEOLEA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la frontera navarro-', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALDEOLEA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALDÁLIGA (SAN VICENTE DE LA BARQUERA - Castillo del Rey de San Vicente (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('VALDÁLIGA (SAN VICENTE DE LA BARQUERA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Rey de San Vicente', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALDÁLIGA (SAN VICENTE DE LA BARQUERA') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VIGO - Castillo de San Sebastián y (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('VIGO') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Sebastián y', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VIGO') AND UPPER(provincia)=UPPER('PONTEVEDRA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: SALAMANCA (8 castillos) =====

-- ALBA DE TORMES - Castillo de los Duques de Alba (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBA DE TORMES') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de Alba', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBA DE TORMES') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALDEADÁVILA DE LA RIBERA (ARRIBES DEL - Torreón de la dehesa de los (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('ALDEADÁVILA DE LA RIBERA (ARRIBES DEL') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALDEADÁVILA DE LA RIBERA (ARRIBES DEL') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CIUDAD RODRIGO - Castillo de Enrique II de (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('CIUDAD RODRIGO') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Enrique II de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CIUDAD RODRIGO') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LEDESMA - Castillo de Ledesma (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('LEDESMA') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ledesma', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LEDESMA') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONTEMAYOR DEL RÍO - Castillo de San Vicente (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTEMAYOR DEL RÍO') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Vicente', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTEMAYOR DEL RÍO') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONTEMAYOR DEL RÍO - Castillo de los Condes de (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTEMAYOR DEL RÍO') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTEMAYOR DEL RÍO') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAN FELICES DE LOS GALLEGOS - Castillo de San Felices (Torre (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN FELICES DE LOS GALLEGOS') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de San Felices (Torre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN FELICES DE LOS GALLEGOS') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SOBRADILLO - Torreón de Sobradillo (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('SOBRADILLO') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Sobradillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SOBRADILLO') AND UPPER(provincia)=UPPER('SALAMANCA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: SEGOVIA (21 castillos) =====

-- ARCONES - Torre de Arcones (La Torrecilla) (54 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 54
FROM municipios
WHERE UPPER(nombre)=UPPER('ARCONES') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Arcones (La Torrecilla)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARCONES') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- AYLLÓN - Murallas de Ayllón y Torre de la (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('AYLLÓN') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Ayllón y Torre de la', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AYLLÓN') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASLA - Torre de Casla (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('CASLA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Casla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASLA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTILLEJO DE MESLEÓN - Restos del Fortín del soto del (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTILLEJO DE MESLEÓN') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín del soto del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTILLEJO DE MESLEÓN') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- COCA - Castillo de Coca (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('COCA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Coca', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('COCA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CONDADO DE CASTRALVO (PEDANÍA DE - Torre de Castralvo (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('CONDADO DE CASTRALVO (PEDANÍA DE') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Castralvo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CONDADO DE CASTRALVO (PEDANÍA DE') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CUÉLLAR - Castillo de los Duques de (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('CUÉLLAR') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CUÉLLAR') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FRESNO DE CANTESPINO - Restos del Castillo de (62 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(nombre)=UPPER('FRESNO DE CANTESPINO') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FRESNO DE CANTESPINO') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MADERUELO - Murallas de Maderuelo y Puerta (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('MADERUELO') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Maderuelo y Puerta', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MADERUELO') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- OREJANA - Torreón de Orejana (60 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(nombre)=UPPER('OREJANA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Orejana', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('OREJANA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PEDRAZA - Castillo de Pedraza (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('PEDRAZA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pedraza', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PEDRAZA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PRÁDENA - Torre del Bardal (54 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 54
FROM municipios
WHERE UPPER(nombre)=UPPER('PRÁDENA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Bardal', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PRÁDENA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SEGOVIA - Alcázar de Segovia (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('SEGOVIA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Segovia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SEGOVIA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SEGOVIA - Murallas de Segovia (Puerta de (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('SEGOVIA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Segovia (Puerta de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SEGOVIA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SEPÚLVEDA - Castillo de Sepúlveda (Fernán (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('SEPÚLVEDA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sepúlveda (Fernán', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SEPÚLVEDA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SEPÚLVEDA - Puerta del Ecce Homo y (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('SEPÚLVEDA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puerta del Ecce Homo y', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SEPÚLVEDA') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TURÉGANO - Castillo de Turégano (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('TURÉGANO') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Turégano', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TURÉGANO') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALDEPRADOS - Torreón de los Condes de (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('VALDEPRADOS') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de los Condes de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALDEPRADOS') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALLE DE TABLADILLO - Atalaya del Valle de Tabladillo (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('VALLE DE TABLADILLO') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya del Valle de Tabladillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALLE DE TABLADILLO') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VEGANZONES - Torre de Veganzones (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('VEGANZONES') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Veganzones', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VEGANZONES') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLAVERDE DE ÍSCAR - Restos del Fortín de Villaverde (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLAVERDE DE ÍSCAR') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Villaverde', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLAVERDE DE ÍSCAR') AND UPPER(provincia)=UPPER('SEGOVIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: SEVILLA (15 castillos) =====

-- ALANÍS - Castillo de Alanís (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('ALANÍS') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alanís', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALANÍS') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCALÁ DE GUADAÍRA - Recinto Fortificado del Castillo (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DE GUADAÍRA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado del Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DE GUADAÍRA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARMONA - Alcázar del Rey Don Pedro (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('CARMONA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar del Rey Don Pedro', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARMONA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CARMONA - Alcázar de la Puerta de Sevilla (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('CARMONA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de la Puerta de Sevilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CARMONA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CONSTANTINA - Castillo de Constantina (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('CONSTANTINA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Constantina', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CONSTANTINA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- EL REAL DE LA JARA - Castillo de El Real de la Jara (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('EL REAL DE LA JARA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de El Real de la Jara', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('EL REAL DE LA JARA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ESTEPA - Castillo de Estepa (Palacio de (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('ESTEPA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Estepa (Palacio de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ESTEPA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GUADALCANAL - Torreón de la dehesa de (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('GUADALCANAL') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GUADALCANAL') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LAS NAVAS DE LA CONCEPCIÓN - Castillo de la Armada (Restos) (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('LAS NAVAS DE LA CONCEPCIÓN') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Armada (Restos)', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LAS NAVAS DE LA CONCEPCIÓN') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LEBRIJA - Restos del Castillo de Lebrija (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('LEBRIJA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Lebrija', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LEBRIJA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LOS MOLARES - Castillo de Los Molares (80 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(nombre)=UPPER('LOS MOLARES') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Los Molares', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LOS MOLARES') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MARCHENA - Murallas de Marchena y Puerta (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('MARCHENA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Marchena y Puerta', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MARCHENA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MORÓN DE LA FRONTERA - Castillo de Morón (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('MORÓN DE LA FRONTERA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Morón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MORÓN DE LA FRONTERA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SEVILLA - Real Alcázar de Sevilla (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('SEVILLA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Real Alcázar de Sevilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SEVILLA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- UTRERA - Castillo de Utrera (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('UTRERA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Utrera', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('UTRERA') AND UPPER(provincia)=UPPER('SEVILLA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: SORIA (13 castillos) =====

-- ALMAZÁN - Murallas de Almazán (Puerta (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMAZÁN') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Almazán (Puerta', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMAZÁN') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALMENAR DE SORIA - Castillo de Almenar (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMENAR DE SORIA') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almenar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMENAR DE SORIA') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BERLANGA DE DUERO - Castillo de Berlanga de Duero (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('BERLANGA DE DUERO') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Berlanga de Duero', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BERLANGA DE DUERO') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BERLANGA DE DUERO - Castillo de Calatañazor (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('BERLANGA DE DUERO') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Calatañazor', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BERLANGA DE DUERO') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- DEZA - Castillo-Palacio de los (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('DEZA') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('DEZA') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GORMAZ - Fortaleza Califal de Gormaz (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('GORMAZ') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza Califal de Gormaz', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GORMAZ') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GORMAZ - Castillo de Magaña (Castillo de (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('GORMAZ') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Magaña (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GORMAZ') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MEDINACELI - Castillo de Medinaceli (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINACELI') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Medinaceli', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINACELI') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- RELLO - Castillo de San Leonardo (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('RELLO') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Leonardo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('RELLO') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- RELLO - Castillo de Rello y Villa (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('RELLO') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Rello y Villa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('RELLO') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SORIA - Restos del Castillo de Soria y (70 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(nombre)=UPPER('SORIA') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Soria y', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SORIA') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VOZMEDIANO - Castillo de Vozmediano (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('VOZMEDIANO') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vozmediano', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VOZMEDIANO') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ÁGREDA - Torreón de la Muela y Murallas (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('ÁGREDA') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la Muela y Murallas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ÁGREDA') AND UPPER(provincia)=UPPER('SORIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: TARRAGONA (5 castillos) =====

-- FALSET - Castillo de los Condes de (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('FALSET') AND UPPER(provincia)=UPPER('TARRAGONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FALSET') AND UPPER(provincia)=UPPER('TARRAGONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MIRAVET - Castillo de Miravet (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('MIRAVET') AND UPPER(provincia)=UPPER('TARRAGONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miravet', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MIRAVET') AND UPPER(provincia)=UPPER('TARRAGONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONTBLANC - Murallas de Montblanc y Puerta (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTBLANC') AND UPPER(provincia)=UPPER('TARRAGONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Montblanc y Puerta', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTBLANC') AND UPPER(provincia)=UPPER('TARRAGONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SIURANA - Castillo de Siurana (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('SIURANA') AND UPPER(provincia)=UPPER('TARRAGONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Siurana', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SIURANA') AND UPPER(provincia)=UPPER('TARRAGONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORTOSA - Castillo de la Suda (Castillo de (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('TORTOSA') AND UPPER(provincia)=UPPER('TARRAGONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Suda (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORTOSA') AND UPPER(provincia)=UPPER('TARRAGONA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: TERUEL (21 castillos) =====

-- ALBALATE DEL ARZOBISPO - Castillo-Palacio Episcopal (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBALATE DEL ARZOBISPO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio Episcopal', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBALATE DEL ARZOBISPO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALBARRACÍN - Castillo y Murallas de Albarracín (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBARRACÍN') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo y Murallas de Albarracín', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBARRACÍN') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALBARRACÍN - Castillo de los Calatravos (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBARRACÍN') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Calatravos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALBARRACÍN') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCALÁ DE LA SELVA - Castillo de Alcalá de la Selva (78 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DE LA SELVA') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcalá de la Selva', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DE LA SELVA') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ALCALÁ DE LA SELVA - Torreón de la dehesa de (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DE LA SELVA') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALCALÁ DE LA SELVA') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BÁGUENA - Castillo de Báguena (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('BÁGUENA') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Báguena', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BÁGUENA') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CALACEITE - Murallas de Calaceite y Torre de (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('CALACEITE') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Calaceite y Torre de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CALACEITE') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTELLOTE - Castillo de los Templarios de (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLOTE') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Templarios de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTELLOTE') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CEDRILLAS - Castillo de Cedrillas (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('CEDRILLAS') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cedrillas', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CEDRILLAS') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MIRAMBEL - Castillo y Murallas de Mirambel (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('MIRAMBEL') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo y Murallas de Mirambel', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MIRAMBEL') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONROYO - Restos del Castillo de Monroyo (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('MONROYO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Monroyo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONROYO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MORA DE RUBIELOS - Castillo de los Fernández de (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('MORA DE RUBIELOS') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Fernández de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MORA DE RUBIELOS') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PERA LERMA (PEDANÍA DE PERALTA DE - Torreón de Peralta (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('PERA LERMA (PEDANÍA DE PERALTA DE') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Peralta', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PERA LERMA (PEDANÍA DE PERALTA DE') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PERACENSE - Castillo de Peracense (98 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(nombre)=UPPER('PERACENSE') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peracense', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PERACENSE') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PUERTOMINGALVO - Castillo de Puertomingalvo (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('PUERTOMINGALVO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Puertomingalvo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PUERTOMINGALVO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- RUBIELOS DE MORA - Murallas de Rubielos de Mora y (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('RUBIELOS DE MORA') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Rubielos de Mora y', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('RUBIELOS DE MORA') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TERUEL - Murallas de Teruel y Torre de (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('TERUEL') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Teruel y Torre de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TERUEL') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALDERROBRES - Castillo-Palacio de Valderrobres (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('VALDERROBRES') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Valderrobres', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALDERROBRES') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLAFRANCA DEL CAMPO - Torreón de Villafranca (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLAFRANCA DEL CAMPO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Villafranca', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLAFRANCA DEL CAMPO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLARLUENGO - Castillo de Villarluengo (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLARLUENGO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villarluengo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLARLUENGO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLARLUENGO - Restos del Fortín de Cella (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLARLUENGO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Cella', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLARLUENGO') AND UPPER(provincia)=UPPER('TERUEL')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: TOLEDO (17 castillos) =====

-- ALMONACID DE TOLEDO - Castillo de Almonacid (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMONACID DE TOLEDO') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almonacid', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALMONACID DE TOLEDO') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BARCIENCE - Castillo de Barcience (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('BARCIENCE') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Barcience', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BARCIENCE') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CAUDILLA (MUNICIPALIDAD DE SANTO - Castillo de Caudilla (68 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(nombre)=UPPER('CAUDILLA (MUNICIPALIDAD DE SANTO') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Caudilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CAUDILLA (MUNICIPALIDAD DE SANTO') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CONSUEGRA - Castillo de la Muela (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('CONSUEGRA') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Muela', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CONSUEGRA') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ESCALONA - Castillo-Palacio de Escalona (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('ESCALONA') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Escalona', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ESCALONA') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- GUADAMUR - Castillo de Guadamur (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('GUADAMUR') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Guadamur', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('GUADAMUR') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- HONTANAR - Castillo de Malamoneda (81 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 81
FROM municipios
WHERE UPPER(nombre)=UPPER('HONTANAR') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Malamoneda', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('HONTANAR') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MAQUEDA - Castillo de la Vela (Castillo de (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('MAQUEDA') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Vela (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MAQUEDA') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MONTALBÁN (MUNICIPALIDAD DE SAN - Castillo de Montalbán (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTALBÁN (MUNICIPALIDAD DE SAN') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montalbán', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MONTALBÁN (MUNICIPALIDAD DE SAN') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- NAVALMORAL DE PUSA - Torre de Navalmoral (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('NAVALMORAL DE PUSA') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Navalmoral', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('NAVALMORAL DE PUSA') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ORGAZ - Castillo de Orgaz (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('ORGAZ') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Orgaz', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ORGAZ') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- OROPESA - Castillo de Oropesa (Castillo de (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('OROPESA') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Oropesa (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('OROPESA') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- POLÁN - Castillo de Polán (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('POLÁN') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Polán', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('POLÁN') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAN PABLO DE LOS MONTES - Restos del Castillejo de los (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN PABLO DE LOS MONTES') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN PABLO DE LOS MONTES') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TOLEDO - Castillo de San Servando (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('TOLEDO') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Servando', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TOLEDO') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TOLEDO - Alcázar de Toledo (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('TOLEDO') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Toledo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TOLEDO') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VALMOJADO - Torre del Homenaje de (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('VALMOJADO') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Homenaje de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VALMOJADO') AND UPPER(provincia)=UPPER('TOLEDO')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: VALENCIA (10 castillos) =====

-- AYORA - Castillo de Ayora (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('AYORA') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ayora', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('AYORA') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BENISSANÓ - Castillo de Benissanó (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('BENISSANÓ') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Benissanó', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BENISSANÓ') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BENISSANÓ - Castillo de Buñol (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('BENISSANÓ') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Buñol', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BENISSANÓ') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CHULILLA - Castillo de Chulilla (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('CHULILLA') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chulilla', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CHULILLA') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- COFRENTES - Castillo de Cofrentes (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('COFRENTES') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cofrentes', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('COFRENTES') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CULLERA - Castillo de Cullera (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('CULLERA') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cullera', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CULLERA') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- REQUENA - Castillo de Requena (Torre del (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('REQUENA') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Requena (Torre del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('REQUENA') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAGUNTO - Castillo de Sagunto (96 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(nombre)=UPPER('SAGUNTO') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sagunto', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAGUNTO') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORRENT - Castillo de Xàtiva (Castell (98 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(nombre)=UPPER('TORRENT') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Xàtiva (Castell', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORRENT') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORRENT - Torre del Castillo de Torrent (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('TORRENT') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Castillo de Torrent', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORRENT') AND UPPER(provincia)=UPPER('VALENCIA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: VALLADOLID (13 castillos) =====

-- CASTROMONTE - Castillo de Castromonte (Torre (70 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROMONTE') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Castromonte (Torre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROMONTE') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ENCINAS DE ESGUEVA - Castillo de Fuensaldaña (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('ENCINAS DE ESGUEVA') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fuensaldaña', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ENCINAS DE ESGUEVA') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ENCINAS DE ESGUEVA - Castillo de Encinas de Esgueva (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('ENCINAS DE ESGUEVA') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Encinas de Esgueva', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ENCINAS DE ESGUEVA') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ISCAR - Castillo de Íscar (85 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(nombre)=UPPER('ISCAR') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Íscar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ISCAR') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MEDINA DEL CAMPO - Castillo de la Mota (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINA DEL CAMPO') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Mota', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINA DEL CAMPO') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MEDINA DEL CAMPO - Castillo de Peñafiel (99 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINA DEL CAMPO') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñafiel', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MEDINA DEL CAMPO') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PORTILLO - Castillo de Portillo (88 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(nombre)=UPPER('PORTILLO') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Portillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PORTILLO') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SAN JOSÉ DE VALLE - Torreón de la dehesa del (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN JOSÉ DE VALLE') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SAN JOSÉ DE VALLE') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SIMANCAS - Castillo de Simancas (Archivo (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('SIMANCAS') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Simancas (Archivo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SIMANCAS') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TIEDRA - Castillo de Tiedra (86 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(nombre)=UPPER('TIEDRA') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tiedra', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TIEDRA') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORRELOBATÓN - Castillo de los Almirantes de (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('TORRELOBATÓN') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Almirantes de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORRELOBATÓN') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TRIGUEROS DEL VALLE - Castillo de Trigueros (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('TRIGUEROS DEL VALLE') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Trigueros', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TRIGUEROS DEL VALLE') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLALONSO - Castillo de VillalonSO (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLALONSO') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de VillalonSO', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLALONSO') AND UPPER(provincia)=UPPER('VALLADOLID')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: ZAMORA (10 castillos) =====

-- BENAVENTE - Castillo de los Pimentel (Torre (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('BENAVENTE') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de los Pimentel (Torre', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BENAVENTE') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CASTROTORAFE (MUNICIPALIDAD DE SAN - Castillo de Castrotorafe y Villa (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROTORAFE (MUNICIPALIDAD DE SAN') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castrotorafe y Villa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CASTROTORAFE (MUNICIPALIDAD DE SAN') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FERMOSELLE - Castillo de Fermoselle (Castillo (74 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(nombre)=UPPER('FERMOSELLE') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fermoselle (Castillo', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FERMOSELLE') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FUENTESÁUCO - Torreón de la dehesa del (52 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(nombre)=UPPER('FUENTESÁUCO') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FUENTESÁUCO') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOMBUEY - Torre de Mombuey (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('MOMBUEY') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Mombuey', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOMBUEY') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- PUEBLA DE SANABRIA - Castillo de los Condes de (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('PUEBLA DE SANABRIA') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('PUEBLA DE SANABRIA') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- TORO - Alcázar de Toro (90 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(nombre)=UPPER('TORO') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Toro', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('TORO') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VILLALONSO - Castillo de Villalonso (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLALONSO') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villalonso', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VILLALONSO') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- VOZMEDIANO - Palacio-Castillo de Alcañices y (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('VOZMEDIANO') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de Alcañices y', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('VOZMEDIANO') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ZAMORA - Castillo de Zamora (94 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(nombre)=UPPER('ZAMORA') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zamora', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ZAMORA') AND UPPER(provincia)=UPPER('ZAMORA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: ZARAGOZA (12 castillos) =====

-- ALFAMÉN - Torreón de Alfamén (58 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(nombre)=UPPER('ALFAMÉN') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Alfamén', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ALFAMÉN') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ANTELLÓN (PEDANÍA DE MURILLO DE - Castillo de Añón (76 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(nombre)=UPPER('ANTELLÓN (PEDANÍA DE MURILLO DE') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Añón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ANTELLÓN (PEDANÍA DE MURILLO DE') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ANTELLÓN (PEDANÍA DE MURILLO DE - Murallas de Antellón (65 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(nombre)=UPPER('ANTELLÓN (PEDANÍA DE MURILLO DE') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Antellón', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ANTELLÓN (PEDANÍA DE MURILLO DE') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ATECA - Castillo de Ateca (Castillo de (84 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(nombre)=UPPER('ATECA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ateca (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ATECA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- BIOTA - Palacio-Castillo de los (75 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(nombre)=UPPER('BIOTA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('BIOTA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CALATAYUD - Recinto Fortificado Islámico de (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('CALATAYUD') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado Islámico de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CALATAYUD') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- CALATAYUD - Castillo de Doña Martina (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('CALATAYUD') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Doña Martina', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('CALATAYUD') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- DAROCA - Castillo Mayor de Daroca (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('DAROCA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo Mayor de Daroca', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('DAROCA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- FABARA - Palacio-Castillo de la Orden de (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('FABARA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de la Orden de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('FABARA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ILLUECA - Palacio-Castillo del Papa Luna (92 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(nombre)=UPPER('ILLUECA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo del Papa Luna', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ILLUECA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- LUZENI - Torre de Luceni (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('LUZENI') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Luceni', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('LUZENI') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MEQUINENZA - Castillo de Mequinenza (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('MEQUINENZA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mequinenza', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MEQUINENZA') AND UPPER(provincia)=UPPER('ZARAGOZA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- ===== PROVINCIA: ÁVILA (10 castillos) =====

-- ARENAS DE SAN PEDRO - Castillo de don Álvaro de Luna (91 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(nombre)=UPPER('ARENAS DE SAN PEDRO') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de don Álvaro de Luna', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARENAS DE SAN PEDRO') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ARÉVALO - Castillo de Arévalo (Castillo de (93 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(nombre)=UPPER('ARÉVALO') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Arévalo (Castillo de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ARÉVALO') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- EL BARCO DE ÁVILA - Castillo de Valdecorneja (89 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(nombre)=UPPER('EL BARCO DE ÁVILA') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Valdecorneja', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('EL BARCO DE ÁVILA') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOMBELTRÁN - Castillo de los Duques de (95 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(nombre)=UPPER('MOMBELTRÁN') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOMBELTRÁN') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- MOMBELTRÁN - Castillo del Duque de (78 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(nombre)=UPPER('MOMBELTRÁN') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Duque de', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('MOMBELTRÁN') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- NAVAS DEL MARQUÉS - Castillo-Palacio de Magalia (82 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(nombre)=UPPER('NAVAS DEL MARQUÉS') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Magalia', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('NAVAS DEL MARQUÉS') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- SANTIAGO DEL COLLADO - Torre de Santiago del Collado (50 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTIAGO DEL COLLADO') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Santiago del Collado', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('SANTIAGO DEL COLLADO') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ÁVILA - Murallas de Ávila y Alcázar (100 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(nombre)=UPPER('ÁVILA') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Murallas de Ávila y Alcázar', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ÁVILA') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ÁVILA - Castillo de Villaviciosa (72 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(nombre)=UPPER('ÁVILA') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villaviciosa', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ÁVILA') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;

-- ÁVILA - Torre de Crespillos (55 pts)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(nombre)=UPPER('ÁVILA') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Crespillos', '', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(nombre)=UPPER('ÁVILA') AND UPPER(provincia)=UPPER('ÁVILA')
  AND COALESCE(es_duplicado, 0) = 0
LIMIT 1;


-- FASE 3: Sync duplicados
UPDATE puntuaciones SET puntuacion=(
  SELECT MAX(p2.puntuacion) FROM puntuaciones p2
  INNER JOIN municipios m1 ON p2.codigo_ine = m1.codigo_ine
  INNER JOIN municipios m2 ON m1.nombre = m2.nombre AND m1.provincia = m2.provincia
  WHERE m2.codigo_ine = puntuaciones.codigo_ine
    AND m1.codigo_ine != m2.codigo_ine
    AND p2.categoria = 'castillos'
    AND p2.puntuacion > 0
) WHERE categoria='castillos' AND (COALESCE(puntuacion,0) = 0 OR puntuacion IS NULL);

-- FASE 4: Sync entidades entre duplicados
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.fecha_ingesta
FROM entidades e
INNER JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
INNER JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia
WHERE e.tipo IN ('castillo','torre','fortaleza','alcazaba','muralla')
  AND e.fuente = 'inventario_castillos_pdf'
  AND ma.codigo_ine != mb.codigo_ine;
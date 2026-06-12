-- Castillos España - MIGRATION ROBUSTA CON MAPEO CORRECTO
-- Limpieza y carga completa de 713 castillos

-- FASE 0: Limpiar datos anteriores incorrectos
DELETE FROM puntuaciones WHERE categoria='castillos';
DELETE FROM entidades WHERE fuente='inventario_castillos_pdf';


-- PROVINCIA: ALBACETE (12 castillos)


-- ALCALÁ DEL JÚCAR: Castillo de Alcalá del Júcar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DEL JÚCAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcalá del Júcar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DEL JÚCAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- ALCARAZ: Castillo de San Cristóbal y
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCARAZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Cristóbal y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCARAZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- ALMANSA: Castillo de Almansa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMANSA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almansa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMANSA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- CARCELÉN: Castillo del Conde de Casal
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARCELÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Conde de Casal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARCELÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- CHINCHILLA DE MONTEARAGÓN: Castillo de Chinchilla (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHINCHILLA DE MONTEARAGÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chinchilla (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHINCHILLA DE MONTEARAGÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- COTILLAS: Castillo de la Yedra (Restos)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COTILLAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Yedra (Restos)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COTILLAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- HELLÍN: Restos de la Alcazaba de Hellín
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HELLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Restos de la Alcazaba de Hellín', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HELLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- JORQUERA: Murallas de Jorquera
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JORQUERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas de Jorquera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JORQUERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- RIÓPAR: Castillo de Riópar Viejo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RIÓPAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Riópar Viejo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RIÓPAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- SOCOVOS: Castillo de Socovos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SOCOVOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Socovos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SOCOVOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- TARAZONA DE LA MANCHA RURAL: Torreón de la campiña de la
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TARAZONA DE LA MANCHA RURAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la campiña de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TARAZONA DE LA MANCHA RURAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

-- YESTE: Castillo de Yeste
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('YESTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Yeste', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('YESTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALBACETE'));


-- PROVINCIA: ALICANTE (16 castillos)


-- ALICANTE: Castillo de Santa Bárbara
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALICANTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Bárbara', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALICANTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- ALICANTE: Castillo de San Fernando
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALICANTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Fernando', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALICANTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- ALICANTE: Torre de las Rejas (Red de las
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALICANTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de las Rejas (Red de las', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALICANTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- BANYERES DE MARIOLA: Castillo de Banyeres
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BANYERES DE MARIOLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Banyeres', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BANYERES DE MARIOLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- BENIDORM: Restos del Castillo de Benidorm
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENIDORM'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Benidorm', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENIDORM'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- BIAR: Castillo de Biar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BIAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Biar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BIAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- CASTALLA: Castillo de Castalla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTALLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castalla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTALLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- DENIA: Castillo de Denia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DENIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Denia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DENIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- ELCHE: Palacio de Altamira (Alcázar de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ELCHE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Palacio de Altamira (Alcázar de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ELCHE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- GUADALEST: Castillo de San José (Castell de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GUADALEST'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San José (Castell de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GUADALEST'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- MONÓVAR: Restos del Castillo de Monóvar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONÓVAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Monóvar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONÓVAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- NOVELDA: Castillo de la Mola
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NOVELDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Mola', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NOVELDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- PETRER: Castillo de Petrer
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PETRER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Petrer', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PETRER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- SANTA POLA: Castillo-Fortaleza de Santa Pola
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTA POLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo-Fortaleza de Santa Pola', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTA POLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- SAX: Castillo de Sax
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sax', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

-- VILLENA: Castillo de la Atalaya
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Atalaya', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALICANTE'));


-- PROVINCIA: ALMERÍA (14 castillos)


-- ALBOX: Torre del Tiel (Torre de Albox)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBOX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Tiel (Torre de Albox)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBOX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- ALMERÍA: Conjunto Monumental de la
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMERÍA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Conjunto Monumental de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMERÍA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- CARBONERAS: Castillo de San Andrés
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARBONERAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Andrés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARBONERAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- CARBONERAS: Torre del Rayo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARBONERAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Rayo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARBONERAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- CUEVAS DEL ALMANZORA: Castillo del Marqués de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUEVAS DEL ALMANZORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Marqués de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUEVAS DEL ALMANZORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- CUEVAS DEL ALMANZORA: Alcazaba de Fiñana
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUEVAS DEL ALMANZORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Fiñana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUEVAS DEL ALMANZORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- GARRUCHA: Castillo de las Escobas (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GARRUCHA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Escobas (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GARRUCHA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- GÉRGAL: Castillo de Gérgal
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GÉRGAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Gérgal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GÉRGAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- NÍJAR: Castillo de San Felipe (Los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NÍJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe (Los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NÍJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- NÍJAR: Torre de los Alumbres
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NÍJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Alumbres', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NÍJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- NÍJAR: Torre de la Vela Blanca
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NÍJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Vela Blanca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NÍJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- ROQUETAS DE MAR: Castillo de Santa Ana (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ROQUETAS DE MAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Ana (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ROQUETAS DE MAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- TABERNAS: Castillo de Tabernas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TABERNAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tabernas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TABERNAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

-- VÉLEZ-BLANCO: Castillo de los Fajardo (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VÉLEZ-BLANCO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Fajardo (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VÉLEZ-BLANCO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ALMERÍA'));


-- PROVINCIA: BADAJOZ (20 castillos)


-- ALBURQUERQUE: Castillo de Luna
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBURQUERQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Luna', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBURQUERQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- ALCONCHEL: Castillo de Miraflores
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCONCHEL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miraflores', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCONCHEL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- AZUAGA: Castillo de Azuaga
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AZUAGA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Azuaga', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AZUAGA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- BADAJOZ: Alcazaba de Badajoz
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BADAJOZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Badajoz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BADAJOZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- BURGUILLOS DEL CERRO: Castillo de Burguillos del Cerro
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BURGUILLOS DEL CERRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Burguillos del Cerro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BURGUILLOS DEL CERRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- CABEZA DEL BUEY: Castillo de Almorchón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CABEZA DEL BUEY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almorchón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CABEZA DEL BUEY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- CASTUERA (ENTORNO RURAL DE LA: Torreón de la dehesa esteparia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTUERA (ENTORNO RURAL DE LA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa esteparia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTUERA (ENTORNO RURAL DE LA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- FERIA: Castillo de Feria
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FERIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Feria', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FERIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- FREGENAL DE LA SIERRA: Castillo Templario de Fregenal
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FREGENAL DE LA SIERRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo Templario de Fregenal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FREGENAL DE LA SIERRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- HERRERA DEL DUQUE: Castillo de Herrera del Duque
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HERRERA DEL DUQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Herrera del Duque', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HERRERA DEL DUQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- JEREZ DE LOS CABALLEROS: Fortaleza Templaria de Jerez
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JEREZ DE LOS CABALLEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza Templaria de Jerez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JEREZ DE LOS CABALLEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- LLERENA: Recinto Amurallado y Torres de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LLERENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Recinto Amurallado y Torres de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LLERENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- MEDELLÍN: Castillo de Medellín
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDELLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Medellín', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDELLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- MONESTERIO: Restos del Fortín de Tentudía
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONESTERIO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Tentudía', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONESTERIO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- OLIVENZA: Castillo de Olivenza y Torre del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OLIVENZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Olivenza y Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OLIVENZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- ORELLANA LA VIEJA: Palacio-Castillo de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ORELLANA LA VIEJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ORELLANA LA VIEJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- PUEBLA DE ALCOCER: Castillo de Puebla de Alcocer
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PUEBLA DE ALCOCER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Puebla de Alcocer', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PUEBLA DE ALCOCER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- SALVALEÓN: Castillo de Salvatierra (Restos)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SALVALEÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Salvatierra (Restos)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SALVALEÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- VILLALBA DE LOS BARROS: Castillo de Villalba de los Barros
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLALBA DE LOS BARROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villalba de los Barros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLALBA DE LOS BARROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

-- ZAFRA: Alcázar de los Duques de Feria
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZAFRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de los Duques de Feria', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZAFRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BADAJOZ'));


-- PROVINCIA: BALEARES (36 castillos)


-- ALARÓ: Castillo de Alaró
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALARÓ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alaró', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALARÓ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- ALCÚDIA: Murallas y Puertas de Alcúdia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCÚDIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas y Puertas de Alcúdia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCÚDIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- ANDRATX: Torre de sa Mola
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANDRATX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de sa Mola', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANDRATX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- ARTA: Recinto Fortificado de Sant
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARTA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado de Sant', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARTA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- CAPDEPERA: Castillo de Capdepera
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAPDEPERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Capdepera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAPDEPERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- CEE: Castillo de San Carlos (Fuerte
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CEE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Carlos (Fuerte', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CEE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- CIUTADELLA: Castillo de San Nicolás (Castell
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIUTADELLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Nicolás (Castell', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIUTADELLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- CORCUBIÓN: Castillo del Cardenal
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CORCUBIÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Cardenal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CORCUBIÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- ESCORCA: Castillo y Recinto Amurallado
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESCORCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo y Recinto Amurallado', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESCORCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- ESCORCA: Castell del Rei
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESCORCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castell del Rei', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESCORCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- FELANITX: Castillo de Santueri
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FELANITX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santueri', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FELANITX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- FELANITX: Fortaleza de la Mola (Fortaleza
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FELANITX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de la Mola (Fortaleza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FELANITX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- FELANITX: Castillo de San Felipe (Castell
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FELANITX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe (Castell', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FELANITX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- FERROL: Castillo de San Felipe
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FERROL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FERROL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- MOECHE: Castillo de Moeche
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOECHE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moeche', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOECHE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- NEDA: Torre de la dehesa del río
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la dehesa del río', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de Bellver
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Bellver', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Torre de Hércules (Estructura
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Hércules (Estructura', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de San Antón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Antón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de Butrón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Butrón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Palacio de la Almudaina
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio de la Almudaina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de Santa Bárbara
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Bárbara', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de la Mota (Monte
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Mota (Monte', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de Lantarón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Lantarón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de la Luz
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Luz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de San Juan
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Juan', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de San Carlos (Castell
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Carlos (Castell', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de Carlos V
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Carlos V', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de San Gabriel
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Gabriel', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de San Felipe
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Castillo de Muñatones
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Muñatones', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Torre-Palacio de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre-Palacio de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Torre de San Andrés
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San Andrés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PALMA: Atalaya de Albercutx
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Albercutx', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- PONTEDEUME: Torreón de los Andrade
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PONTEDEUME'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de los Andrade', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PONTEDEUME'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

-- VIMIANZO: Castillo de Vimianzo (Torres de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VIMIANZO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Vimianzo (Torres de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VIMIANZO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BALEARES'));


-- PROVINCIA: BARCELONA (5 castillos)


-- BARCELONA: Castillo de Montjuïc
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BARCELONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BARCELONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montjuïc', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BARCELONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BARCELONA'));

-- CARDONA: Castillo de Cardona
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARDONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BARCELONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cardona', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARDONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BARCELONA'));

-- CASTELLET I LA GORNAL: Castillo de Castellet
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLET I LA GORNAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BARCELONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castellet', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLET I LA GORNAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BARCELONA'));

-- CLARAMUNT: Castillo de Claramunt
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CLARAMUNT'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BARCELONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Claramunt', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CLARAMUNT'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BARCELONA'));

-- CLARAMUNT: Torreón de la dehesa del Bages
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CLARAMUNT'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BARCELONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del Bages', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CLARAMUNT'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BARCELONA'));


-- PROVINCIA: BURGOS (21 castillos)


-- ALBICES (PEDANÍA DE VILLAQUIRÁN DE LOS: Torre de Albices
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBICES (PEDANÍA DE VILLAQUIRÁN DE LOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Albices', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBICES (PEDANÍA DE VILLAQUIRÁN DE LOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- BURGOS: Castillo de Burgos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BURGOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Burgos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BURGOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- CASTROJERIZ: Castillo de Castrojeriz
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROJERIZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castrojeriz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROJERIZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- CASTROJERIZ: Castillo de Coruña del Conde
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROJERIZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Coruña del Conde', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROJERIZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- COVARRUBIAS: Torreón de Fernán González
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COVARRUBIAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Fernán González', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COVARRUBIAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- ESPINOSA DE LOS MONTEROS: Castillo de los Velasco
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESPINOSA DE LOS MONTEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Velasco', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESPINOSA DE LOS MONTEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- ESPINOSA DE LOS MONTEROS: Torre de los Azulejos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESPINOSA DE LOS MONTEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Azulejos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESPINOSA DE LOS MONTEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- FRÍAS: Castillo de los Duques de Frías
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FRÍAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de Frías', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FRÍAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- MEDINA DE POMAR: Alcázar de los Velasco (Las
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINA DE POMAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de los Velasco (Las', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINA DE POMAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- OLMILLOS DE SASEMÓN (PEDANÍA DE: Castillo de Olmillos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OLMILLOS DE SASEMÓN (PEDANÍA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Olmillos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OLMILLOS DE SASEMÓN (PEDANÍA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- PANCORBO: Castillo de Peñaranda de Duero
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PANCORBO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñaranda de Duero', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PANCORBO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- PANCORBO: Castillo de Santa Marta (Las
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PANCORBO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Marta (Las', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PANCORBO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- PANCORBO: Fortaleza de Santa Engracia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PANCORBO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de Santa Engracia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PANCORBO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- POZA DE LA SAL: Castillo de los Rojas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('POZA DE LA SAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Rojas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('POZA DE LA SAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- PUENTEDEY: Palacio de los Porras (Torre de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PUENTEDEY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Palacio de los Porras (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PUENTEDEY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- QUINTANILLA DE SAN GARCÍA: Torre de Quintanilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('QUINTANILLA DE SAN GARCÍA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Quintanilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('QUINTANILLA DE SAN GARCÍA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- SAN ZADORNIL: Restos de la Torre de San
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN ZADORNIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos de la Torre de San', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN ZADORNIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- SOTOPALACIOS (MERINDAD DE RÍO: Castillo de Sotopalacios
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SOTOPALACIOS (MERINDAD DE RÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sotopalacios', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SOTOPALACIOS (MERINDAD DE RÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- TORREGALINDO: Castillo de Torregalindo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREGALINDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Torregalindo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREGALINDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- VALLE DE MENA: Torre de los Velasco (Torre de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALLE DE MENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Velasco (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALLE DE MENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

-- VILLAQUIRÁN DE LOS INFANTES: Torre de Villaquirán
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLAQUIRÁN DE LOS INFANTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Villaquirán', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLAQUIRÁN DE LOS INFANTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('BURGOS'));


-- PROVINCIA: CASTELLÓN (20 castillos)


-- ALMENARA: Castillo de Almenara (Torres de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMENARA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Almenara (Torres de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMENARA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- ALTURA: Masía Fortificada de San Juan
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALTURA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Masía Fortificada de San Juan', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALTURA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- ARES DEL MAESTRAT: Castillo de Ares
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARES DEL MAESTRAT'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ares', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARES DEL MAESTRAT'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- BENASSAL: Murallas de Benassal y la Torre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENASSAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Benassal y la Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENASSAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- BURRIANA: Torre del Mar (Torre de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BURRIANA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Mar (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BURRIANA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- CASTELLÓN DE LA PLANA: Castillo de Fadrell (Castell Vell)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLÓN DE LA PLANA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fadrell (Castell Vell)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLÓN DE LA PLANA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- CULLA: Castillo de Culla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CULLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Culla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CULLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- CULLA: Castillo de Jérica (Torre de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CULLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Jérica (Torre de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CULLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- MORELLA: Castillo de Morella
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MORELLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Morella', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MORELLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- ONDA: Castillo de Peñíscola (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ONDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñíscola (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ONDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- ONDA: Castillo de Onda (La fortaleza
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ONDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo de Onda (La fortaleza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ONDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- SEGORBE: Castillo de la Estrella (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEGORBE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Estrella (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEGORBE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- SONEJA: Torre del Palancia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SONEJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Palancia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SONEJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- SUERES: Castillo de Mauz
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SUERES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mauz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SUERES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- TODOLELLA: Castillo de Todolella
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TODOLELLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Todolella', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TODOLELLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- TRIGUEROS: Torre de Torrechiva
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TRIGUEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Torrechiva', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TRIGUEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- VILAFAMÉS: Castillo de Vilafamés
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILAFAMÉS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vilafamés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILAFAMÉS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- VILLANUEVA DE LOS INFANTES: Castillo de Xivert
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLANUEVA DE LOS INFANTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Xivert', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLANUEVA DE LOS INFANTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- VILLANUEVA DE LOS INFANTES: Torre Badum
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLANUEVA DE LOS INFANTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre Badum', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLANUEVA DE LOS INFANTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

-- VIVER: Torre de la Muela
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VIVER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Muela', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VIVER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CASTELLÓN'));


-- PROVINCIA: CIUDAD REAL (15 castillos)


-- ALBAZETE DE SAN JUAN (ALCÁZAR DE SAN: Torreón del Gran Prior (Torreón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBAZETE DE SAN JUAN (ALCÁZAR DE SAN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón del Gran Prior (Torreón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBAZETE DE SAN JUAN (ALCÁZAR DE SAN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- ALCUBLAS (ALCOBA DE LOS MONTES: Atalaya de los Montes de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCUBLAS (ALCOBA DE LOS MONTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de los Montes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCUBLAS (ALCOBA DE LOS MONTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- ALHAMBRA: Castillo de Alhambra
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMBRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhambra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMBRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- ALMAGRO: Palacio de los Maestres de la
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMAGRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio de los Maestres de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMAGRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- ALMODÓVAR DEL CAMPO: Restos del Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMODÓVAR DEL CAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMODÓVAR DEL CAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- ARGAMASILLA DE ALBA: Castillo de Peñarroya
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARGAMASILLA DE ALBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñarroya', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARGAMASILLA DE ALBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- ARGAMASILLA DE CALATRAVA: Castillo de la dehesa del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARGAMASILLA DE CALATRAVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la dehesa del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARGAMASILLA DE CALATRAVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- CALZADA DE CALATRAVA: Castillo-Convento de Calatrava
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALZADA DE CALATRAVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Convento de Calatrava', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALZADA DE CALATRAVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- CALZADA DE CALATRAVA: Castillo de Salvatierra
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALZADA DE CALATRAVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Salvatierra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALZADA DE CALATRAVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- CARRIÓN DE CALATRAVA: Castillo-Convento de Calatrava
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARRIÓN DE CALATRAVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Convento de Calatrava', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARRIÓN DE CALATRAVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- CIUDAD REAL: Recinto Fortificado e Imperio de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIUDAD REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado e Imperio de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIUDAD REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- CIUDAD REAL: Puerta de Toledo y Murallas de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIUDAD REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puerta de Toledo y Murallas de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIUDAD REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- PIEDRABUENA: Castillo de Miraflores
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PIEDRABUENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miraflores', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PIEDRABUENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- PIEDRABUENA: Torre del rincón de Ruanales
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PIEDRABUENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del rincón de Ruanales', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PIEDRABUENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

-- VILLANUEVA DE LOS INFANTES: Restos del Fortín de Jamila
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLANUEVA DE LOS INFANTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Jamila', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLANUEVA DE LOS INFANTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CIUDAD REAL'));


-- PROVINCIA: CUENCA (11 castillos)


-- ALARCÓN: Castillo de Alarcón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALARCÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alarcón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALARCÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

-- BELMONTE: Castillo de Belmonte
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMONTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Belmonte', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMONTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

-- CUENCA: Castillo de Cuenca (Las
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUENCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cuenca (Las', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUENCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

-- ENGUÍDANOS: Castillo de Garcimuñoz
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ENGUÍDANOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Garcimuñoz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ENGUÍDANOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

-- ENGUÍDANOS: Castillo de Enguídanos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ENGUÍDANOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Enguídanos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ENGUÍDANOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

-- HUETE: Castillo de Almonacid (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HUETE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almonacid (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HUETE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

-- INIESTA: Torreón de Iniesta (Restos del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('INIESTA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Iniesta (Restos del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('INIESTA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

-- MOYA: Castillo de Moya y Villa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOYA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moya y Villa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOYA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

-- PARACUELLOS (PARACUELLOS DE LA VEGA: Castillo de Paracuellos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PARACUELLOS (PARACUELLOS DE LA VEGA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Paracuellos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PARACUELLOS (PARACUELLOS DE LA VEGA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

-- SAN CLEMENTE: Torre Vieja de San Clemente
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN CLEMENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre Vieja de San Clemente', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN CLEMENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

-- TARANCÓN RURAL: Castillo y Murallas de Uclés
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TARANCÓN RURAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo y Murallas de Uclés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TARANCÓN RURAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CUENCA'));


-- PROVINCIA: CÁCERES (19 castillos)


-- ALBALÁ: Torreón de Albalá
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 54
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBALÁ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Albalá', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBALÁ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- ALBURQUERQUE RURAL (ÁREA LIMÍTROFE: Torre de las dehesas de San
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBURQUERQUE RURAL (ÁREA LIMÍTROFE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de las dehesas de San', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBURQUERQUE RURAL (ÁREA LIMÍTROFE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- ALCÁNTARA: Castillo de Alcántara (Fortaleza
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCÁNTARA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo de Alcántara (Fortaleza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCÁNTARA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- ARROYOMOLINOS: Castillo de la dehesa de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARROYOMOLINOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la dehesa de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARROYOMOLINOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- BROZAS: Castillo de Cabañas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BROZAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cabañas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BROZAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- BROZAS: Castillo de las Encomiendas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BROZAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Encomiendas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BROZAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- CORIA: Castillo de los Duques de Alba
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CORIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de Alba', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CORIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- CÁCERES: Murallas de Cáceres y Torre de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÁCERES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Cáceres y Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÁCERES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- GRANADILLA (MUNICIPALIDAD DE ZARZA DE: Castillo de Granadilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRANADILLA (MUNICIPALIDAD DE ZARZA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Granadilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRANADILLA (MUNICIPALIDAD DE ZARZA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- JARANDILLA DE LA VERA: Castillo de Carlos V (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JARANDILLA DE LA VERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Carlos V (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JARANDILLA DE LA VERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- JARANDILLA DE LA VERA: Castillo de Monfragüe
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JARANDILLA DE LA VERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monfragüe', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JARANDILLA DE LA VERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- MONTÁNCHEZ: Castillo de Montánchez
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTÁNCHEZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montánchez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTÁNCHEZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- PLASENCIA: Murallas e Imperio de Plasencia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PLASENCIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas e Imperio de Plasencia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PLASENCIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- PORTEZUELO: Castillo de Marmionda
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PORTEZUELO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Marmionda', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PORTEZUELO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- SEGURA DE TORO: Restos del Castillo de Segura
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEGURA DE TORO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Segura', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEGURA DE TORO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- TREVEJO: Castillo de Trevejo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TREVEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Trevejo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TREVEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- TRUJILLO: Castillo de Trujillo (Alcazaba de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TRUJILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo de Trujillo (Alcazaba de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TRUJILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- VALVERDE DEL FRESNO: Torre de las dehesas de Eljas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALVERDE DEL FRESNO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de las dehesas de Eljas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALVERDE DEL FRESNO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

-- VILLANUEVA DE LA VERA: Atalaya de la Vera Alta
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLANUEVA DE LA VERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de la Vera Alta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLANUEVA DE LA VERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁCERES'));


-- PROVINCIA: CÁDIZ (30 castillos)


-- ALCALÁ DE LOS GAZULES: Castillo de Alcalá de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DE LOS GAZULES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcalá de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DE LOS GAZULES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- ALCALÁ DEL VALLE: Torre de la Cerca
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DEL VALLE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Cerca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DEL VALLE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- ALGECIRAS: Murallas Meriníes de Algeciras
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALGECIRAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas Meriníes de Algeciras', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALGECIRAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- ALGECIRAS: Torre de San García
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALGECIRAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San García', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALGECIRAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- ARCOS DE LA FRONTERA: Castillo de Arcos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARCOS DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Arcos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARCOS DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- BARBATE: Torre del Tajo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BARBATE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Tajo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BARBATE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- BARBATE: Torre de Meca
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BARBATE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Meca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BARBATE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- BORNOS: Castillo-Palacio de los Ribera
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BORNOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de los Ribera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BORNOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- CADIZ: Castillo de San Sebastián
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CADIZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Sebastián', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CADIZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- CADIZ: Castillo de Santa Catalina
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CADIZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Catalina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CADIZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- CASTELLAR DE LA FRONTERA: Castillo de Castellar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLAR DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castellar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLAR DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- CHIPIONA: Castillo de Chipiona
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHIPIONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chipiona', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHIPIONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- CONIL DE LA FRONTERA: Torre de Guzmán el Bueno
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CONIL DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Guzmán el Bueno', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CONIL DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- EL PUERTO DE SANTA MARÍA: Castillo de San Marcos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('EL PUERTO DE SANTA MARÍA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Marcos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('EL PUERTO DE SANTA MARÍA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- JEREZ DE LA FRONTERA: Alcázar de Jerez
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JEREZ DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Jerez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JEREZ DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- JIMENA DE LA FRONTERA: Castillo de Jimena
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JIMENA DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Jimena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JIMENA DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- MEDINA SIDONIA: Castillo de Medina Sidonia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINA SIDONIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Medina Sidonia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINA SIDONIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- OLVERA: Castillo de Olvera
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OLVERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Olvera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OLVERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- PUERTO REAL: Matagorda (Restos del Fuerte)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PUERTO REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Matagorda (Restos del Fuerte)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PUERTO REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- ROTA: Castillo de Luna
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ROTA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Luna', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ROTA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- SAN FERNANDO: Castillo de San Romualdo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN FERNANDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Romualdo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN FERNANDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- SAN ROQUE: Fuerte de Isla Verde
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN ROQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Fuerte de Isla Verde', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN ROQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- SANLÚCAR DE BARRAMEDA: Castillo de Santiago
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANLÚCAR DE BARRAMEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santiago', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANLÚCAR DE BARRAMEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- SANLÚCAR DE BARRAMEDA: Castillo de San Salvador (El
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANLÚCAR DE BARRAMEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Salvador (El', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANLÚCAR DE BARRAMEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- TARIFA: Castillo de Guzmán el Bueno
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TARIFA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Guzmán el Bueno', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TARIFA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- TARIFA: Castillo de Santa Catalina
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TARIFA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Catalina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TARIFA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- TARIFA: Torre de Cabo de Gracia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TARIFA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Cabo de Gracia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TARIFA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- VEJER DE LA FRONTERA: Castillo de Vejer
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VEJER DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vejer', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VEJER DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- VEJER DE LA FRONTERA: Torre del Tajo (Vejer oriental)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VEJER DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Tajo (Vejer oriental)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VEJER DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

-- ZAHARA DE LA SIERRA: Castillo de Zahara de la Sierra
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZAHARA DE LA SIERRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zahara de la Sierra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZAHARA DE LA SIERRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÁDIZ'));


-- PROVINCIA: CÓRDOBA (22 castillos)


-- AGUILAR DE LA FRONTERA: Castillo de Aguilar (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AGUILAR DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aguilar (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AGUILAR DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- ALMODÓVAR DEL RÍO: Castillo de Almodóvar del Río
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMODÓVAR DEL RÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almodóvar del Río', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMODÓVAR DEL RÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- BAENA: Castillo de Baena
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Baena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- BELALCÁZAR: Castillo de los Sotomayor y
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELALCÁZAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Sotomayor y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELALCÁZAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- BELMEZ: Castillo de Belmez
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMEZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Belmez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMEZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- BUJALANCE: Castillo de Bujalance (Alcazaba
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BUJALANCE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo de Bujalance (Alcazaba', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BUJALANCE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- CARCABUEY: Castillo de Carcabuey (El
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARCABUEY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Carcabuey (El', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARCABUEY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- CÓRDOBA: Alcázar de los Reyes Cristianos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÓRDOBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de los Reyes Cristianos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÓRDOBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- CÓRDOBA: Torre de la Calahorra
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÓRDOBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Calahorra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÓRDOBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- DOS TORRES: Torreón de la dehesa de Los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DOS TORRES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de Los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DOS TORRES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- ESPEJO: Castillo de Espejo (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESPEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Espejo (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESPEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- ESPEJO: Palacio-Castillo de los Duques
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESPEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los Duques', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESPEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- IZNÁJAR: Castillo de Iznájar (Hisn Ashar)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('IZNÁJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Iznájar (Hisn Ashar)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('IZNÁJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- LUQUE: Castillo de Luque (Hisn Lukk)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LUQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Luque (Hisn Lukk)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LUQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- MONTEMAYOR: Castillo de Dos Hermanas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTEMAYOR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Dos Hermanas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTEMAYOR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- MONTILLA: Castillo de Montilla (Gran
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montilla (Gran', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- PALMA DEL RÍO: Murallas y Alcázar de Palma del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA DEL RÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Murallas y Alcázar de Palma del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALMA DEL RÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- POSADAS: Torre de la Cabrilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('POSADAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Cabrilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('POSADAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- PRIEGO DE CÓRDOBA: Castillo de Priego
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PRIEGO DE CÓRDOBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Priego', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PRIEGO DE CÓRDOBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- SANTA EUFEMIA: Castillo de Miramontes
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTA EUFEMIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miramontes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTA EUFEMIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- TORRECAMPO: Torre del Mogábar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORRECAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Mogábar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORRECAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

-- ZUHEROS: Castillo de Zuheros
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZUHEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zuheros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZUHEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('CÓRDOBA'));


-- PROVINCIA: GIRONA (11 castillos)


-- BRUNYOLA: Castillo de Brunyola
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BRUNYOLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Brunyola', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BRUNYOLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

-- CALONGE: Castillo de Calonge
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALONGE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Calonge', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALONGE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

-- FIGUERES: Castillo de San Fernando
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FIGUERES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Fernando', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FIGUERES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

-- HOSTALRIC: Fortaleza de Hostalric
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HOSTALRIC'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de Hostalric', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HOSTALRIC'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

-- PALAFRUGELL: Torre de San Sebastián (Torre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALAFRUGELL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San Sebastián (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALAFRUGELL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

-- PERALADA: Castillo-Palacio de Peralada
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PERALADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Peralada', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PERALADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

-- PERALADA: Castillo de Quermançó
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PERALADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Quermançó', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PERALADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

-- RIBES DE FRESER: Castillo de Ribes (Castell de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RIBES DE FRESER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ribes (Castell de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RIBES DE FRESER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

-- TOSSA DE MAR: Castillo y Recinto Amurallado
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TOSSA DE MAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo y Recinto Amurallado', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TOSSA DE MAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

-- ZORITA DE LOS CANES: Castillo de Arenys
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZORITA DE LOS CANES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Arenys', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZORITA DE LOS CANES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

-- ZORITA DE LOS CANES: Restos del Castillo de Albanyà
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZORITA DE LOS CANES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Albanyà', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZORITA DE LOS CANES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GIRONA'));


-- PROVINCIA: GRANADA (83 castillos)


-- ALBONDÓN: Castillo de La Rábita
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBONDÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Rábita', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBONDÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALBONDÓN: Torre de Huarea
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBONDÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Huarea', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBONDÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALBONDÓN: Torre de Albondón (Torre del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 61
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBONDÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Albondón (Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBONDÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALGARINEJO: Castillo de Algarinejo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALGARINEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Algarinejo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALGARINEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALGARINEJO: Torre de la Alquería de Fuentes
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALGARINEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de Fuentes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALGARINEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALHAMA DE GRANADA: Castillo de San Miguel
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Miguel', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALHAMA DE GRANADA: Castillo de Alhama de Granada
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhama de Granada', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALHAMA DE GRANADA: Castillo de la Herradura
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Herradura', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALHAMA DE GRANADA: Torre de Torresolana
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Torresolana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALHAMA DE GRANADA: Torre del Diablo (Torre de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 64
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Diablo (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALHAMA DE GRANADA: Torre de la Luna
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Luna', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALHAMA DE GRANADA: Torre de Velilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Velilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ALHAMA DE GRANADA: Torre de Marchal
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Marchal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ARENAS DEL REY: Restos del Puesto Fortificado
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARENAS DEL REY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Puesto Fortificado', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARENAS DEL REY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ATARFE: Ermita de los Tres Juanes
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ATARFE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Ermita de los Tres Juanes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ATARFE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- BAZA: Alcazaba de Baza
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Baza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- BAZA: Torre de la Alquería de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 61
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- BENAMAUREL: Restos del Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENAMAUREL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENAMAUREL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- BUBIÓN: Torre del Homenaje de la Iglesia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BUBIÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Homenaje de la Iglesia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BUBIÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- CALICASAS: Atalaya de Calicasas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALICASAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Calicasas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALICASAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- CANILES: Restos del Castillejo de Cañar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CANILES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de Cañar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CANILES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- CANILES: Torre de Caniles
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CANILES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Caniles', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CANILES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- CASTELL DE FERRO: Castillo de Castell de Ferro
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELL DE FERRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castell de Ferro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELL DE FERRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- CASTELL DE FERRO: Torre de Cambriles
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELL DE FERRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Cambriles', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELL DE FERRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- CASTRIL: Castillo de Castril
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTRIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castril', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTRIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- CHIMENEAS: Atalaya de Chimeneas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHIMENEAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Chimeneas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHIMENEAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- COGOLLOS VEGA: Atalaya de Cogollos Vega
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COGOLLOS VEGA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Cogollos Vega', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COGOLLOS VEGA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- CÁDIAR: Castillo de Cádiar (Torre del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÁDIAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Cádiar (Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÁDIAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- CÁJAR: Torreón de Cájar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÁJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Cájar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÁJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- CÚLLAR: Torreón de Cúllar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÚLLAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Cúllar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÚLLAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- DÚRCAL: Castillo de Dúrcal (El Castillejo)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DÚRCAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Dúrcal (El Castillejo)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DÚRCAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- DÚRCAL: Torre de Feneite
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DÚRCAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Feneite', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DÚRCAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- FREILA: Castillo de Freila
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FREILA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Freila', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FREILA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- FUENTE VAQUEROS: Torre de Fuente Vaqueros
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 45
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FUENTE VAQUEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuente Vaqueros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FUENTE VAQUEROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- GRANADA: Alcazaba de la Alhambra
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de la Alhambra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- GRANADA: Alcazaba de la Alhambra (Torre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Alcazaba de la Alhambra (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- GRANADA: Torres Bermejas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres Bermejas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- GRANADA: Alcazaba de la Qadima
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de la Qadima', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRANADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- GUADIX: Alcazaba de Guadix
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GUADIX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Guadix', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GUADIX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- GUADIX: El Castillejo de Güéjar (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GUADIX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'El Castillejo de Güéjar (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GUADIX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- HUÉSCAR: Restos del Alcázar de Huéscar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HUÉSCAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Restos del Alcázar de Huéscar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HUÉSCAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- HUÉSCAR: Atalaya de la Sierra de la
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HUÉSCAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de la Sierra de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HUÉSCAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- HUÉTOR TÁJAR: Torreón de Huétor Tájar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HUÉTOR TÁJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Huétor Tájar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HUÉTOR TÁJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- IZNALLOZ: Castillo de Iznalloz (Los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('IZNALLOZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Iznalloz (Los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('IZNALLOZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- JAYENA: Torre de Jayena
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JAYENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Jayena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JAYENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- LA CALAHORRA: Castillo de La Calahorra
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LA CALAHORRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Calahorra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LA CALAHORRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- LANJARÓN: Castillo de Lanjarón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LANJARÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Lanjarón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LANJARÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- LECRÍN: Castillo de Mondújar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LECRÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mondújar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LECRÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- LECRÍN: Castillo de Chite
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LECRÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chite', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LECRÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- LOJA: Alcazaba de Loja
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Loja', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- LOJA: Torre de Agicampe
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Agicampe', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- LOJA: Torre de Riofrío
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Riofrío', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- LUGROS: Restos del Castillejo de Lugros
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LUGROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de Lugros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LUGROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MALPARTIDA: Atalaya de Malá
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MALPARTIDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Malá', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MALPARTIDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MARACENA: Torre de Maracena
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 48
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARACENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Maracena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARACENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MOCLÍN: Castillo de Moclín
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOCLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moclín', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOCLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MOCLÍN: Torre de la Porqueriza
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOCLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Porqueriza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOCLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MOCLÍN: Torre de Mingoandrés
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOCLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Mingoandrés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOCLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MOCLÍN: Torre de la Solana
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOCLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Solana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOCLÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MONACHIL: Restos del Castillejo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONACHIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONACHIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MONTEFRÍO: Castillo de Montefrío
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTEFRÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montefrío', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTEFRÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MONTEFRÍO: Torre de los Guzmanes
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTEFRÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Guzmanes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTEFRÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MOTRIL: Restos de las Murallas e Iglesia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOTRIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos de las Murallas e Iglesia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOTRIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MOTRIL: Torre del Mar (Torre de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOTRIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Mar (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOTRIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- MOTRIL: Torre de la Alquería de Nigüelas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOTRIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de Nigüelas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOTRIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ORCE: Alcazaba de Orce (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ORCE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Orce (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ORCE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- PELIGROS: Torre de Peligros
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 45
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PELIGROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Peligros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PELIGROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- PINOS PUENTE: Castillo de Píñar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PINOS PUENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Píñar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PINOS PUENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- PINOS PUENTE: Castillo de Pinos Puente (Cerro
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PINOS PUENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pinos Puente (Cerro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PINOS PUENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- PINOS PUENTE: Torre de la Alberquilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PINOS PUENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alberquilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PINOS PUENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- PINOS PUENTE: Torre de Ilurco
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PINOS PUENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Ilurco', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PINOS PUENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- PURULLENA: Torre de Culibre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PURULLENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Culibre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PURULLENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- SALAR: Castillo de Salobreña
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SALAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Salobreña', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SALAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- SALAR: Torreón del Castillo de Salar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SALAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón del Castillo de Salar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SALAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- SALAR: Torre del Cambrón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SALAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Cambrón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SALAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- SANTA FE: Puertas Fortificadas de la
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTA FE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puertas Fortificadas de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTA FE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- UGÍJAR: Restos del Castillejo de Ugíjar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('UGÍJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de Ugíjar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('UGÍJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- VENTAS DE ZAFARRAYA: Puesto Fortificado del Boquete
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VENTAS DE ZAFARRAYA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puesto Fortificado del Boquete', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VENTAS DE ZAFARRAYA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- VÁLOR: Torre de Válor (Torre de la
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VÁLOR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Válor (Torre de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VÁLOR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- VÉLEZ DE BENAUDALLA: Torreón de Vélez de Benaudalla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VÉLEZ DE BENAUDALLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Vélez de Benaudalla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VÉLEZ DE BENAUDALLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ZÚJAR: Restos del Castillo de Zújar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZÚJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Zújar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZÚJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ÍLLORA: Castillo de Íllora
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÍLLORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Íllora', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÍLLORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

-- ÍLLORA: Torre de la Mesa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÍLLORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Mesa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÍLLORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GRANADA'));


-- PROVINCIA: GUADALAJARA (14 castillos)


-- ATIENZA: Castillo de Atienza
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ATIENZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Atienza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ATIENZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- CIFUENTES: Castillo de Don Juan Manuel
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIFUENTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Don Juan Manuel', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIFUENTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- COGOLLUDO: Castillo de Cogolludo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COGOLLUDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cogolludo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COGOLLUDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- COGOLLUDO: Torreón de la campiña baja de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COGOLLUDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la campiña baja de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COGOLLUDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- JADRAQUE: Castillo de Jadraque (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JADRAQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Jadraque (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JADRAQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- MOLINA DE ARAGÓN: Castillo-Alcazaba de Molina de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOLINA DE ARAGÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo-Alcazaba de Molina de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOLINA DE ARAGÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- PALAZUELOS (MUNICIPALIDAD DE: Castillo de Palazuelos y Villa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALAZUELOS (MUNICIPALIDAD DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Palazuelos y Villa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALAZUELOS (MUNICIPALIDAD DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- PIOZ: Castillo de Pioz
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PIOZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pioz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PIOZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- RRIBA DE SANTIUSTE (MUNICIPALIDAD DE: Castillo de Sigüenza (Alcázar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RRIBA DE SANTIUSTE (MUNICIPALIDAD DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo de Sigüenza (Alcázar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RRIBA DE SANTIUSTE (MUNICIPALIDAD DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- RRIBA DE SANTIUSTE (MUNICIPALIDAD DE: Castillo de Riba de Santiuste
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RRIBA DE SANTIUSTE (MUNICIPALIDAD DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Riba de Santiuste', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RRIBA DE SANTIUSTE (MUNICIPALIDAD DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- TORIJA: Castillo de Torija
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORIJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Torija', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORIJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- VILLEL DE MESA: Castillo de los Funes
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLEL DE MESA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Funes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLEL DE MESA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- YÉLAMOS DE ABAJO (ARIBES DE LA: Torre de Yélamos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('YÉLAMOS DE ABAJO (ARIBES DE LA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Yélamos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('YÉLAMOS DE ABAJO (ARIBES DE LA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

-- ZORITA DE LOS CANES: Castillo de Zorita de los Canes
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZORITA DE LOS CANES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zorita de los Canes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZORITA DE LOS CANES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('GUADALAJARA'));


-- PROVINCIA: HUELVA (12 castillos)


-- ARACENA: Castillo de Aracena
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARACENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aracena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARACENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- AROCHE: Castillo de Aroche
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AROCHE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aroche', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AROCHE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- AYAMONTE: Restos del Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AYAMONTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AYAMONTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- BELMEZ RURAL (CÓRDOBA: Puesto Fortificado del río
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMEZ RURAL (CÓRDOBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puesto Fortificado del río', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMEZ RURAL (CÓRDOBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- CARTAYA: Castillo de los Zúñiga (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARTAYA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Zúñiga (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARTAYA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- CONSTANTINA RURAL (SEVILLA: Torre de la dehesa del Viar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CONSTANTINA RURAL (SEVILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la dehesa del Viar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CONSTANTINA RURAL (SEVILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- CORTEGANA: Castillo de Cortegana
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CORTEGANA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cortegana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CORTEGANA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- CUMBRES MAYORES: Castillo de Sancho IV (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUMBRES MAYORES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sancho IV (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUMBRES MAYORES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- ENCINASOLA: Castillo de Encinasola y Fuerte
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ENCINASOLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Encinasola y Fuerte', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ENCINASOLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- MOGUER: Castillo de Moguer
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOGUER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moguer', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOGUER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- PALOS DE LA FRONTERA: Restos del Castillo de Palos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALOS DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Palos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALOS DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

-- SANTA OLALLA DEL CALA: Castillo de Santa Olalla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTA OLALLA DEL CALA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Olalla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTA OLALLA DEL CALA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUELVA'));


-- PROVINCIA: HUESCA (18 castillos)


-- ALQUÉZAR: Colegiata-Castillo de Alquézar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALQUÉZAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Colegiata-Castillo de Alquézar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALQUÉZAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- AÍNSA: Castillo de AíNSA
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AÍNSA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de AíNSA', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AÍNSA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- BASTARÁS (MUNICIPALIDAD DE CASBAS DE: Castillo de Boltaña
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BASTARÁS (MUNICIPALIDAD DE CASBAS DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Boltaña', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BASTARÁS (MUNICIPALIDAD DE CASBAS DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- BASTARÁS (MUNICIPALIDAD DE CASBAS DE: Torre de Bastarás
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BASTARÁS (MUNICIPALIDAD DE CASBAS DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Bastarás', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BASTARÁS (MUNICIPALIDAD DE CASBAS DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- BENASQUE: Restos del Torreón de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENASQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos del Torreón de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENASQUE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- EMBID DE ARIZA: Castillo de Marcuello
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('EMBID DE ARIZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Marcuello', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('EMBID DE ARIZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- JACA: Ciudadela de Jaca (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JACA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Ciudadela de Jaca (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JACA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- LOARRE: Castillo de Loarre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOARRE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Loarre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOARRE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- MONZÓN: Castillo de Monzón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONZÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monzón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONZÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- MONZÓN: Torreón de Cotón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONZÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Cotón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONZÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- MONZÓN: Torreón de Novés
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 54
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONZÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Novés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONZÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- QUICENA: Real Monasterio-Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('QUICENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Real Monasterio-Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('QUICENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- SAMITIER: Castillo de Samitier (Torres de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAMITIER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Samitier (Torres de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAMITIER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- SECASTILLA: Torre de Secastilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SECASTILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Secastilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SECASTILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- SECASTILLA: Atalaya del Gállego Medio
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SECASTILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya del Gállego Medio', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SECASTILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- VALL DE ARÁN RURAL (ÁREA LIMÍTROFE DE: Restos del Fortín de Benasque
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALL DE ARÁN RURAL (ÁREA LIMÍTROFE DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Benasque', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALL DE ARÁN RURAL (ÁREA LIMÍTROFE DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- VILLARLUENGO: Restos del Castillo de Agüero
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLARLUENGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Agüero', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLARLUENGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

-- VILLARLUENGO: Torreón de los Guzmanes
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 54
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLARLUENGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de los Guzmanes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLARLUENGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('HUESCA'));


-- PROVINCIA: JAÉN (84 castillos)


-- ALCALÁ LA REAL: Fortaleza de la Mota
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de la Mota', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ALCALÁ LA REAL: Torre del Cascante
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Cascante', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ALCALÁ LA REAL: Torre de la Moraleja
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Moraleja', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ALCALÁ LA REAL: Torre de Fuente Álamo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuente Álamo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ALCALÁ LA REAL: Torre del Charcón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Charcón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ALCALÁ LA REAL: Torre de la Pedriza
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Pedriza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ LA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ALCAUDETE: Castillo de Alcaudete
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCAUDETE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcaudete', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCAUDETE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ALCAUDETE: Torre de la Harina
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 64
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCAUDETE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Harina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCAUDETE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ALCAUDETE: Torre del Canuto
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 61
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCAUDETE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Canuto', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCAUDETE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ANDÚJAR: Murallas e Imperio de Andújar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANDÚJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas e Imperio de Andújar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANDÚJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ANDÚJAR: Castillo de la Aragonesa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANDÚJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Aragonesa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANDÚJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ARJONA: Alcázar e Iglesia de Santa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARJONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar e Iglesia de Santa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARJONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ARJONA: Torre de la Garbancera
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARJONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Garbancera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARJONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ARJONILLA: Castillo del Trovador Macías
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARJONILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Trovador Macías', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARJONILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- BAILÉN: Castillo de Burgalimar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAILÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Burgalimar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAILÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- BAILÉN: Castillo de Bailén
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAILÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Bailén', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAILÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- BAILÉN: Torre del Migaldías
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAILÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Migaldías', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BAILÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- BEAS DE SEGURA: Restos del Castillo de Beas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BEAS DE SEGURA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Beas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BEAS DE SEGURA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- BEGÍJAR: Torre del Homenaje de Begíjar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BEGÍJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Homenaje de Begíjar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BEGÍJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- BELMEZ DE LA MORALEDA: Castillo de Bélmez
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMEZ DE LA MORALEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Bélmez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMEZ DE LA MORALEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- BELMEZ DE LA MORALEDA: Torre del Sol
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMEZ DE LA MORALEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Sol', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMEZ DE LA MORALEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CABRA DEL SANTO CRISTO: Castillo de Cabra (Torre del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CABRA DEL SANTO CRISTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Cabra (Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CABRA DEL SANTO CRISTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CAMBIL: Castillo de Cambil
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAMBIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cambil', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAMBIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CAMBIL: Castillo de Alhabar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAMBIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhabar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAMBIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CAMBIL: Torre de Campones
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAMBIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Campones', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAMBIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CANENA: Castillo de Canena
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CANENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Canena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CANENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CASTELLAR: Castillo de la Consolación
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Consolación', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CASTELLAR DE SANTISTEBAN: Torreón de San Andrés
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLAR DE SANTISTEBAN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de San Andrés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLAR DE SANTISTEBAN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CAZORLA: Castillo de La Yedra
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAZORLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Yedra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAZORLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CAZORLA: Castillo de las Cinco Esquinas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAZORLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Cinco Esquinas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAZORLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CHICLANA DE SEGURA: Castillo de Chiclana
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHICLANA DE SEGURA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chiclana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHICLANA DE SEGURA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- CÁRCHEL: Torre de Carchelejo (Castillejo)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÁRCHEL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Carchelejo (Castillejo)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÁRCHEL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ESPELUY: Castillo de Espeluy
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESPELUY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Espeluy', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESPELUY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- FUENSANTA DE MARTOS: Torre de la Dehesilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FUENSANTA DE MARTOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Dehesilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FUENSANTA DE MARTOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- FUERTE DEL REY: Torre de Fuerte del Rey
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FUERTE DEL REY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuerte del Rey', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FUERTE DEL REY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- HORNOS DE SEGURA: Castillo de Hornos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HORNOS DE SEGURA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Hornos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HORNOS DE SEGURA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- HORNOS DE SEGURA: Torre de Bujaraiza
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HORNOS DE SEGURA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Bujaraiza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HORNOS DE SEGURA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- IBROS: Muralla Ciclópea e Imperio de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('IBROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Muralla Ciclópea e Imperio de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('IBROS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- JAMILENA: Castillo de Jamilena (Torre de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JAMILENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Jamilena (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JAMILENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- JAÉN: Castillo de Santa Catalina
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JAÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Catalina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JAÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- JAÉN: Torre de la Peña de la Grajuela
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JAÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Peña de la Grajuela', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JAÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- JÓDAR: Castillo de Jódar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JÓDAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Jódar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JÓDAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- LA GUARDIA DE JAÉN: Castillo de La Guardia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LA GUARDIA DE JAÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Guardia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LA GUARDIA DE JAÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- LA IRUELA: Castillo de La Iruela
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LA IRUELA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Iruela', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LA IRUELA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- LINARES: Castillo de Tobaruela
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LINARES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tobaruela', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LINARES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- LOPERA: Castillo de Lopera
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOPERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Lopera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOPERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- MANCHA REAL: Torre de la Dehesa de Mancha
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MANCHA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Dehesa de Mancha', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MANCHA REAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- MARTOS: Castillo de la Villa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARTOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Villa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARTOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- MARTOS: Castillo de la Peña de Martos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARTOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Peña de Martos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARTOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- MENGÍBAR: Torre de Mengíbar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MENGÍBAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Mengíbar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MENGÍBAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- NAVAS DE TOLOSA (PEDANÍA DE LA: Castillo de Las Navas de Tolosa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NAVAS DE TOLOSA (PEDANÍA DE LA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Las Navas de Tolosa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NAVAS DE TOLOSA (PEDANÍA DE LA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- NOALEJO: Atalaya de Noalejo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NOALEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Noalejo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NOALEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ORCERA: Torres de Peal (Torre del Reloj y
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ORCERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres de Peal (Torre del Reloj y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ORCERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ORCERA: Torres de Santa Catalina
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ORCERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres de Santa Catalina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ORCERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- PEGALAJAR: Arco de la Encarnación y
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PEGALAJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Arco de la Encarnación y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PEGALAJAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- PORCUNA: Castillo de Porcuna (Torre de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PORCUNA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Porcuna (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PORCUNA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- QUESADA: Castillo de Tíscar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('QUESADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tíscar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('QUESADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- QUESADA: Murallas y Arco de los Santos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('QUESADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas y Arco de los Santos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('QUESADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- RUS: Torreón de Rus
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RUS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Rus', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RUS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- SABIOTE: Castillo de Sabiote
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SABIOTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sabiote', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SABIOTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- SANTA ELENA: Castillo de Castro Ferral
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTA ELENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castro Ferral', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTA ELENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- SANTISTEBAN DEL PUERTO: Castillo de Segura de la Sierra
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTISTEBAN DEL PUERTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Segura de la Sierra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTISTEBAN DEL PUERTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- SANTISTEBAN DEL PUERTO: Castillo de San Esteban
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTISTEBAN DEL PUERTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Esteban', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTISTEBAN DEL PUERTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- SANTISTEBAN DEL PUERTO: Torre de la Escribana
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTISTEBAN DEL PUERTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Escribana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTISTEBAN DEL PUERTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- SANTISTEBAN DEL PUERTO: Torre de Gontar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTISTEBAN DEL PUERTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Gontar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTISTEBAN DEL PUERTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREBLASCOPEDRO: Torre de la Alquería de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREBLASCOPEDRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREBLASCOPEDRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREDELCAMPO: Castillo de la Muña
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Muña', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREDELCAMPO: Torre de Olid
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Olid', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREDELCAMPO: Torre del Lucero
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 63
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Lucero', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREDELCAMPO: Torre de la Muña (Atalaya)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Muña (Atalaya)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREDELCAMPO: Torre de Villagordo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 61
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Villagordo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREDELCAMPO: Torre de Megía
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Megía', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDELCAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREDONJIMENO: Castillo de Torredonjimeno
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 81
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDONJIMENO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Torredonjimeno', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDONJIMENO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREDONJIMENO: Torre de Fuencubierta
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDONJIMENO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuencubierta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDONJIMENO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREDONJIMENO: Torre de Venzala
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDONJIMENO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Venzala', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREDONJIMENO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORREPEROGIL: Torres Oscuras de Torreperogil
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREPEROGIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres Oscuras de Torreperogil', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORREPEROGIL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- TORRES: Restos del Castillejo de Torres
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORRES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos del Castillejo de Torres', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORRES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- VILCHES: Castillo de Vilches
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILCHES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vilches', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILCHES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- VILCHES: Castillo de Giribaile
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILCHES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Giribaile', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILCHES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- VILLACARRILLO: Restos del Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLACARRILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLACARRILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- VILLANUEVA DE LA REINA: Torre de la Alquería de El Batán
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLANUEVA DE LA REINA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de El Batán', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLANUEVA DE LA REINA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- VILLARDOMPAR: Castillo de Villardompardo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLARDOMPAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villardompardo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLARDOMPAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ÚBEDA: Murallas y Alcázar de Úbeda
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÚBEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Murallas y Alcázar de Úbeda', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÚBEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

-- ÚBEDA: Castillo de Susana
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÚBEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Susana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÚBEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('JAÉN'));


-- PROVINCIA: LEÓN (11 castillos)


-- ALIJA DEL INFANTADO: Castillo de los Pimentel (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALIJA DEL INFANTADO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Pimentel (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALIJA DEL INFANTADO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

-- ALMANZA: Palacio-Castillo de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMANZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMANZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

-- CEBRONES DEL ÓRBIGO (ÁREA DE: Torreón de la dehesa del Órbigo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CEBRONES DEL ÓRBIGO (ÁREA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del Órbigo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CEBRONES DEL ÓRBIGO (ÁREA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

-- CORULLÓN: Castillo de los Marqueses de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CORULLÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Marqueses de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CORULLÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

-- GRAJAL DE CAMPOS: Castillo de Grajal de Campos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRAJAL DE CAMPOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Grajal de Campos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GRAJAL DE CAMPOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

-- LAGUNA DE NEGRILLOS: Castillo de Laguna de NegrillOS
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LAGUNA DE NEGRILLOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Laguna de NegrillOS', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LAGUNA DE NEGRILLOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

-- LEÓN: Murallas de León y Torre de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LEÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de León y Torre de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LEÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

-- MAQUEDA DE CAMPOS (PEDANÍA DE: Torre de Sahún Alto
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MAQUEDA DE CAMPOS (PEDANÍA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Sahún Alto', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MAQUEDA DE CAMPOS (PEDANÍA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

-- PONFERRADA: Castillo de los Templarios de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PONFERRADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Templarios de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PONFERRADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

-- PRIARANZA DEL BIERZO: Castillo de Cornatel (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PRIARANZA DEL BIERZO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cornatel (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PRIARANZA DEL BIERZO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

-- VALENCIA DE DON JUAN: Castillo de Coyanza (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALENCIA DE DON JUAN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Coyanza (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALENCIA DE DON JUAN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LEÓN'));


-- PROVINCIA: LLEIDA (5 castillos)


-- FLIX: Castillo de Flix (Castell Nou)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FLIX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LLEIDA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Flix (Castell Nou)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FLIX'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LLEIDA'));

-- LLEIDA: Castillo del Rey (La Suda) y
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LLEIDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LLEIDA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Rey (La Suda) y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LLEIDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LLEIDA'));

-- MONTSONÍS: Castillo de Montsonís
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTSONÍS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LLEIDA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montsonís', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTSONÍS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LLEIDA'));

-- MUR: Castillo de Mur
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MUR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LLEIDA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mur', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MUR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LLEIDA'));

-- OS DE BALAGUER: Castillo de Os de Balaguer
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OS DE BALAGUER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LLEIDA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Os de Balaguer', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OS DE BALAGUER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LLEIDA'));


-- PROVINCIA: LUGO (6 castillos)


-- CASTROVERDE: Castillo de Castroverde (Torre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROVERDE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Castroverde (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROVERDE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

-- CHANTADA: Torre de Arcos (Casa-Fuerte de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHANTADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Arcos (Casa-Fuerte de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHANTADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

-- LUGO: Murallas de Lugo y Reducto de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LUGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas de Lugo y Reducto de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LUGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

-- MONFORTE DE LEMOS: Castillo de Monforte de Lemos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONFORTE DE LEMOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monforte de Lemos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONFORTE DE LEMOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

-- PALAS DE REI: Castillo de Pambre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALAS DE REI'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pambre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALAS DE REI'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

-- PALAS DE REI: Torreón de la dehesa del Miño
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALAS DE REI'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del Miño', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALAS DE REI'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('LUGO'));


-- PROVINCIA: MURCIA (17 castillos)


-- ALEDO: Castillo de Aledo (La Torre del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALEDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Aledo (La Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALEDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- ALHAMA DE MURCIA: Castillo de Alhama
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE MURCIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhama', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAMA DE MURCIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- BLANCA: Castillo de Blanca
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BLANCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Blanca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BLANCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- BULLAS: Restos del Castillo de Bullas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BULLAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Bullas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BULLAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- CALASPARRA: Castillo de San Juan de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALASPARRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Juan de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALASPARRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- CARAVACA DE LA CRUZ: Castillo-Santuario de la Vera
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARAVACA DE LA CRUZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Santuario de la Vera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARAVACA DE LA CRUZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- CARTAGENA: Castillo de la Concepción
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARTAGENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Concepción', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARTAGENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- CARTAGENA: Castillo de Galeras
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARTAGENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Galeras', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARTAGENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- CARTAGENA: Castillo de San Julián
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARTAGENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Julián', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARTAGENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- CARTAGENA: Torre de Santa Elena
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARTAGENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Santa Elena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARTAGENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- CIEZA: Castillo de Cieza (Senda de la
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIEZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cieza (Senda de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIEZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- LORCA: Castillo de Lorca (Fortaleza del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LORCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo de Lorca (Fortaleza del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LORCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- MORATALLA: Castillo de Moratalla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MORATALLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moratalla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MORATALLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- MULA: Castillo de los Vélez
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MULA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Vélez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MULA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- PLIEGO: Castillo de Pliego (Las dehesas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PLIEGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pliego (Las dehesas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PLIEGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- PLIEGO: Castillo de las Paleras
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PLIEGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Paleras', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PLIEGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

-- ZAFRA: Castillo de San Juan de las
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZAFRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Juan de las', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZAFRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MURCIA'));


-- PROVINCIA: MÁLAGA (18 castillos)


-- ALHAURÍN EL GRANDE: Arco de Coín y Restos del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAURÍN EL GRANDE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Arco de Coín y Restos del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALHAURÍN EL GRANDE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- ANTEQUERA: Alcazaba de Antequera (Torre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANTEQUERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Alcazaba de Antequera (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANTEQUERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- ARCHIDONA: Castillo-Alcazaba de Archidona
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARCHIDONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo-Alcazaba de Archidona', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARCHIDONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- ARDALES: Castillo de la Peña de Ardales
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARDALES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Peña de Ardales', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARDALES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- ARDALES: Castillo de Turón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARDALES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Turón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARDALES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- BENALMÁDENA: Torre Muelle (Red de Torres
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENALMÁDENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre Muelle (Red de Torres', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENALMÁDENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- BENAOJÁN: Torre del Moro de Benaoján
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENAOJÁN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Moro de Benaoján', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENAOJÁN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- CASARES: Castillo de Casares
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASARES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Casares', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASARES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- CÁRTAMA: Castillo de Cártama
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÁRTAMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cártama', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CÁRTAMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- ESTEPONA: Castillo de San Luis
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESTEPONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Luis', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESTEPONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- GAUCÍN: Castillo del Águila
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GAUCÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Águila', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GAUCÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- MANILVA: Castillo de la Duquesa (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MANILVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Duquesa (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MANILVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- MARBELLA: Castillo de Marbella (Murallas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARBELLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Marbella (Murallas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARBELLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- MARO: Torre de Maro
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Maro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- MÁLAGA: Alcazaba de Málaga y Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MÁLAGA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Málaga y Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MÁLAGA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- RONDA: Murallas de Ronda y Puerta de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RONDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas de Ronda y Puerta de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RONDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- TEBA: Castillo de la Estrella
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TEBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Estrella', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TEBA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

-- VELEZ-MÁLAGA: Fortaleza de Vélez-Málaga
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VELEZ-MÁLAGA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de Vélez-Málaga', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VELEZ-MÁLAGA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('MÁLAGA'));


-- PROVINCIA: OURENSE (7 castillos)


-- ALLARIZ: Restos del Castillo de Allariz
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALLARIZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Allariz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALLARIZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

-- CASTRO CALDELAS: Castillo de Castro Caldelas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTRO CALDELAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castro Caldelas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTRO CALDELAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

-- MACEDA: Castillo de Maceda
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MACEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Maceda', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MACEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

-- RIBADAVIA: Castillo de los Condes de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RIBADAVIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RIBADAVIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

-- SANDIÁS: Torre de Sandiás (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANDIÁS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Sandiás (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANDIÁS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

-- VERÍN: Castillo de Monterrey (Acrópolis
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 97
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VERÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monterrey (Acrópolis', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VERÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

-- VILAMARTÍN DE VALDEORRAS RURAL (O: Torreón de la dehesa de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILAMARTÍN DE VALDEORRAS RURAL (O'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILAMARTÍN DE VALDEORRAS RURAL (O'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('OURENSE'));


-- PROVINCIA: PALENCIA (10 castillos)


-- AGUILAR DE CAMPOO: Castillo de Aguilar de Campoo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AGUILAR DE CAMPOO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aguilar de Campoo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AGUILAR DE CAMPOO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

-- ALBA DE TORMES (SALAMANCA: Torreón de Galisancho
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBA DE TORMES (SALAMANCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Galisancho', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBA DE TORMES (SALAMANCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

-- AMPUDIA: Castillo de Ampudia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AMPUDIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ampudia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AMPUDIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

-- ASTUDILLO: Castillo de la Mota y Murallas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ASTUDILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Mota y Murallas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ASTUDILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

-- BELMONTE DE CAMPOS: Castillo de Belmonte de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMONTE DE CAMPOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Belmonte de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BELMONTE DE CAMPOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

-- CASTROVIEJO: Puesto Fortificado del río Pedro
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROVIEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puesto Fortificado del río Pedro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROVIEJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

-- FUENTES DE VALDEPERO: Castillo de Fuentes de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FUENTES DE VALDEPERO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fuentes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FUENTES DE VALDEPERO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

-- MEDINA DEL CAMPO RURAL (VALLADOLID: Torreón de Pozal de Gallinas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINA DEL CAMPO RURAL (VALLADOLID'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Pozal de Gallinas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINA DEL CAMPO RURAL (VALLADOLID'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

-- MONZÓN DE CAMPOS: Castillo de Monzón de Campos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONZÓN DE CAMPOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monzón de Campos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONZÓN DE CAMPOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

-- PALENZUELA: Restos del Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALENZUELA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PALENZUELA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PALENCIA'));


-- PROVINCIA: PONTEVEDRA (21 castillos)


-- AGOLADA: Restos de la Torre señorial del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AGOLADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos de la Torre señorial del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AGOLADA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- AGONCILLO: Castillo de Aguas Mansas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AGONCILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aguas Mansas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AGONCILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- ALLER: Torre de Soto
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALLER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Soto', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALLER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- CASTRO-URDIALES: Castillo del Faro de Santa Ana
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTRO-URDIALES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Faro de Santa Ana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTRO-URDIALES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- CATOIRA: Torres del Oeste (Castellum
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CATOIRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres del Oeste (Castellum', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CATOIRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- CLAVIJO: Castillo de Clavijo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CLAVIJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Clavijo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CLAVIJO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- CORTEZUBI (MUNICIPALIDAD DE PAMPLONA: Castillo de Tiebas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CORTEZUBI (MUNICIPALIDAD DE PAMPLONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tiebas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CORTEZUBI (MUNICIPALIDAD DE PAMPLONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- CUZCURRITA DE RÍO TIRÓN: Castillo de Cuzcurrita
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUZCURRITA DE RÍO TIRÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cuzcurrita', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUZCURRITA DE RÍO TIRÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- JAVIER: Castillo de Javier
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JAVIER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Javier', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('JAVIER'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- LLANES: Torreón de Llanes y Murallas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LLANES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Llanes y Murallas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LLANES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- MARCILLA: Castillo de Marcilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARCILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Marcilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARCILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- MARÍN: Torre vigía del litoral llanura
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre vigía del litoral llanura', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- OLITE: Palacio Real de Olite (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OLITE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio Real de Olite (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OLITE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- PAMPLONA: Ciudadela de Pamplona
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PAMPLONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Ciudadela de Pamplona', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PAMPLONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- SAJAZARRA: Castillo de Sajazarra
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAJAZARRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sajazarra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAJAZARRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- SOTO DEL BARCO: Castillo de San Martín
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SOTO DEL BARCO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Martín', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SOTO DEL BARCO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- SOUTOMAIOR: Castillo de Soutomaior
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SOUTOMAIOR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Soutomaior', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SOUTOMAIOR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- VALDEOLEA: Torre de San Martín de Hoyos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALDEOLEA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San Martín de Hoyos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALDEOLEA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- VALDEOLEA: Torreón de la frontera navarro-
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALDEOLEA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la frontera navarro-', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALDEOLEA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- VALDÁLIGA (SAN VICENTE DE LA BARQUERA: Castillo del Rey de San Vicente
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALDÁLIGA (SAN VICENTE DE LA BARQUERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Rey de San Vicente', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALDÁLIGA (SAN VICENTE DE LA BARQUERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

-- VIGO: Castillo de San Sebastián y
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VIGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Sebastián y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VIGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('PONTEVEDRA'));


-- PROVINCIA: SALAMANCA (8 castillos)


-- ALBA DE TORMES: Castillo de los Duques de Alba
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBA DE TORMES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de Alba', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBA DE TORMES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

-- ALDEADÁVILA DE LA RIBERA (ARRIBES DEL: Torreón de la dehesa de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALDEADÁVILA DE LA RIBERA (ARRIBES DEL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALDEADÁVILA DE LA RIBERA (ARRIBES DEL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

-- CIUDAD RODRIGO: Castillo de Enrique II de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIUDAD RODRIGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Enrique II de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CIUDAD RODRIGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

-- LEDESMA: Castillo de Ledesma
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LEDESMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ledesma', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LEDESMA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

-- MONTEMAYOR DEL RÍO: Castillo de San Vicente
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTEMAYOR DEL RÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Vicente', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTEMAYOR DEL RÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

-- MONTEMAYOR DEL RÍO: Castillo de los Condes de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTEMAYOR DEL RÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTEMAYOR DEL RÍO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

-- SAN FELICES DE LOS GALLEGOS: Castillo de San Felices (Torre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN FELICES DE LOS GALLEGOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de San Felices (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN FELICES DE LOS GALLEGOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

-- SOBRADILLO: Torreón de Sobradillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SOBRADILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Sobradillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SOBRADILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SALAMANCA'));


-- PROVINCIA: SEGOVIA (21 castillos)


-- ARCONES: Torre de Arcones (La Torrecilla)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 54
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARCONES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Arcones (La Torrecilla)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARCONES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- AYLLÓN: Murallas de Ayllón y Torre de la
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AYLLÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Ayllón y Torre de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AYLLÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- CASLA: Torre de Casla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Casla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- CASTILLEJO DE MESLEÓN: Restos del Fortín del soto del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTILLEJO DE MESLEÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín del soto del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTILLEJO DE MESLEÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- COCA: Castillo de Coca
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Coca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- CONDADO DE CASTRALVO (PEDANÍA DE: Torre de Castralvo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CONDADO DE CASTRALVO (PEDANÍA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Castralvo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CONDADO DE CASTRALVO (PEDANÍA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- CUÉLLAR: Castillo de los Duques de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUÉLLAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CUÉLLAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- FRESNO DE CANTESPINO: Restos del Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 62
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FRESNO DE CANTESPINO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FRESNO DE CANTESPINO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- MADERUELO: Murallas de Maderuelo y Puerta
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MADERUELO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas de Maderuelo y Puerta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MADERUELO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- OREJANA: Torreón de Orejana
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 60
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OREJANA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Orejana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OREJANA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- PEDRAZA: Castillo de Pedraza
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PEDRAZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pedraza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PEDRAZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- PRÁDENA: Torre del Bardal
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 54
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PRÁDENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Bardal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PRÁDENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- SEGOVIA: Alcázar de Segovia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEGOVIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Segovia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEGOVIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- SEGOVIA: Murallas de Segovia (Puerta de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEGOVIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas de Segovia (Puerta de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEGOVIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- SEPÚLVEDA: Castillo de Sepúlveda (Fernán
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEPÚLVEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sepúlveda (Fernán', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEPÚLVEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- SEPÚLVEDA: Puerta del Ecce Homo y
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEPÚLVEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puerta del Ecce Homo y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEPÚLVEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- TURÉGANO: Castillo de Turégano
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TURÉGANO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Turégano', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TURÉGANO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- VALDEPRADOS: Torreón de los Condes de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALDEPRADOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de los Condes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALDEPRADOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- VALLE DE TABLADILLO: Atalaya del Valle de Tabladillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALLE DE TABLADILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya del Valle de Tabladillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALLE DE TABLADILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- VEGANZONES: Torre de Veganzones
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VEGANZONES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Veganzones', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VEGANZONES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

-- VILLAVERDE DE ÍSCAR: Restos del Fortín de Villaverde
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLAVERDE DE ÍSCAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Villaverde', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLAVERDE DE ÍSCAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEGOVIA'));


-- PROVINCIA: SEVILLA (15 castillos)


-- ALANÍS: Castillo de Alanís
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALANÍS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alanís', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALANÍS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- ALCALÁ DE GUADAÍRA: Recinto Fortificado del Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DE GUADAÍRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado del Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DE GUADAÍRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- CARMONA: Alcázar del Rey Don Pedro
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARMONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar del Rey Don Pedro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARMONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- CARMONA: Alcázar de la Puerta de Sevilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARMONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de la Puerta de Sevilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CARMONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- CONSTANTINA: Castillo de Constantina
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CONSTANTINA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Constantina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CONSTANTINA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- EL REAL DE LA JARA: Castillo de El Real de la Jara
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('EL REAL DE LA JARA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de El Real de la Jara', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('EL REAL DE LA JARA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- ESTEPA: Castillo de Estepa (Palacio de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESTEPA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Estepa (Palacio de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESTEPA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- GUADALCANAL: Torreón de la dehesa de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GUADALCANAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GUADALCANAL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- LAS NAVAS DE LA CONCEPCIÓN: Castillo de la Armada (Restos)
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LAS NAVAS DE LA CONCEPCIÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Armada (Restos)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LAS NAVAS DE LA CONCEPCIÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- LEBRIJA: Restos del Castillo de Lebrija
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LEBRIJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Lebrija', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LEBRIJA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- LOS MOLARES: Castillo de Los Molares
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 80
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOS MOLARES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Los Molares', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LOS MOLARES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- MARCHENA: Murallas de Marchena y Puerta
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARCHENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas de Marchena y Puerta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MARCHENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- MORÓN DE LA FRONTERA: Castillo de Morón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MORÓN DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Morón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MORÓN DE LA FRONTERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- SEVILLA: Real Alcázar de Sevilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEVILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Real Alcázar de Sevilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SEVILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

-- UTRERA: Castillo de Utrera
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('UTRERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Utrera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('UTRERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SEVILLA'));


-- PROVINCIA: SORIA (13 castillos)


-- ALMAZÁN: Murallas de Almazán (Puerta
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMAZÁN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas de Almazán (Puerta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMAZÁN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- ALMENAR DE SORIA: Castillo de Almenar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMENAR DE SORIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almenar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMENAR DE SORIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- BERLANGA DE DUERO: Castillo de Berlanga de Duero
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BERLANGA DE DUERO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Berlanga de Duero', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BERLANGA DE DUERO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- BERLANGA DE DUERO: Castillo de Calatañazor
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BERLANGA DE DUERO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Calatañazor', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BERLANGA DE DUERO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- DEZA: Castillo-Palacio de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DEZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DEZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- GORMAZ: Fortaleza Califal de Gormaz
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GORMAZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza Califal de Gormaz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GORMAZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- GORMAZ: Castillo de Magaña (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GORMAZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Magaña (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GORMAZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- MEDINACELI: Castillo de Medinaceli
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINACELI'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Medinaceli', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINACELI'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- RELLO: Castillo de San Leonardo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RELLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Leonardo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RELLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- RELLO: Castillo de Rello y Villa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RELLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Rello y Villa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RELLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- SORIA: Restos del Castillo de Soria y
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SORIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Soria y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SORIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- VOZMEDIANO: Castillo de Vozmediano
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VOZMEDIANO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vozmediano', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VOZMEDIANO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

-- ÁGREDA: Torreón de la Muela y Murallas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÁGREDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la Muela y Murallas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÁGREDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('SORIA'));


-- PROVINCIA: TARRAGONA (5 castillos)


-- FALSET: Castillo de los Condes de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FALSET'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TARRAGONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FALSET'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TARRAGONA'));

-- MIRAVET: Castillo de Miravet
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MIRAVET'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TARRAGONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miravet', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MIRAVET'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TARRAGONA'));

-- MONTBLANC: Murallas de Montblanc y Puerta
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTBLANC'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TARRAGONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas de Montblanc y Puerta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTBLANC'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TARRAGONA'));

-- SIURANA: Castillo de Siurana
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SIURANA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TARRAGONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Siurana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SIURANA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TARRAGONA'));

-- TORTOSA: Castillo de la Suda (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORTOSA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TARRAGONA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Suda (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORTOSA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TARRAGONA'));


-- PROVINCIA: TERUEL (21 castillos)


-- ALBALATE DEL ARZOBISPO: Castillo-Palacio Episcopal
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBALATE DEL ARZOBISPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio Episcopal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBALATE DEL ARZOBISPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- ALBARRACÍN: Castillo y Murallas de Albarracín
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBARRACÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo y Murallas de Albarracín', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBARRACÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- ALBARRACÍN: Castillo de los Calatravos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBARRACÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Calatravos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALBARRACÍN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- ALCALÁ DE LA SELVA: Castillo de Alcalá de la Selva
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DE LA SELVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcalá de la Selva', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DE LA SELVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- ALCALÁ DE LA SELVA: Torreón de la dehesa de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DE LA SELVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALCALÁ DE LA SELVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- BÁGUENA: Castillo de Báguena
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BÁGUENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Báguena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BÁGUENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- CALACEITE: Murallas de Calaceite y Torre de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALACEITE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Calaceite y Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALACEITE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- CASTELLOTE: Castillo de los Templarios de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLOTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Templarios de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTELLOTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- CEDRILLAS: Castillo de Cedrillas
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CEDRILLAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cedrillas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CEDRILLAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- MIRAMBEL: Castillo y Murallas de Mirambel
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MIRAMBEL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo y Murallas de Mirambel', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MIRAMBEL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- MONROYO: Restos del Castillo de Monroyo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONROYO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Monroyo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONROYO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- MORA DE RUBIELOS: Castillo de los Fernández de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MORA DE RUBIELOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Fernández de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MORA DE RUBIELOS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- PERA LERMA (PEDANÍA DE PERALTA DE: Torreón de Peralta
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PERA LERMA (PEDANÍA DE PERALTA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Peralta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PERA LERMA (PEDANÍA DE PERALTA DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- PERACENSE: Castillo de Peracense
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PERACENSE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peracense', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PERACENSE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- PUERTOMINGALVO: Castillo de Puertomingalvo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PUERTOMINGALVO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Puertomingalvo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PUERTOMINGALVO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- RUBIELOS DE MORA: Murallas de Rubielos de Mora y
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RUBIELOS DE MORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas de Rubielos de Mora y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('RUBIELOS DE MORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- TERUEL: Murallas de Teruel y Torre de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TERUEL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Teruel y Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TERUEL'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- VALDERROBRES: Castillo-Palacio de Valderrobres
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALDERROBRES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Valderrobres', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALDERROBRES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- VILLAFRANCA DEL CAMPO: Torreón de Villafranca
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLAFRANCA DEL CAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Villafranca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLAFRANCA DEL CAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- VILLARLUENGO: Castillo de Villarluengo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLARLUENGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villarluengo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLARLUENGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

-- VILLARLUENGO: Restos del Fortín de Cella
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLARLUENGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Cella', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLARLUENGO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TERUEL'));


-- PROVINCIA: TOLEDO (17 castillos)


-- ALMONACID DE TOLEDO: Castillo de Almonacid
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMONACID DE TOLEDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almonacid', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALMONACID DE TOLEDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- BARCIENCE: Castillo de Barcience
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BARCIENCE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Barcience', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BARCIENCE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- CAUDILLA (MUNICIPALIDAD DE SANTO: Castillo de Caudilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 68
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAUDILLA (MUNICIPALIDAD DE SANTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Caudilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CAUDILLA (MUNICIPALIDAD DE SANTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- CONSUEGRA: Castillo de la Muela
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CONSUEGRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Muela', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CONSUEGRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- ESCALONA: Castillo-Palacio de Escalona
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESCALONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Escalona', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ESCALONA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- GUADAMUR: Castillo de Guadamur
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GUADAMUR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Guadamur', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('GUADAMUR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- HONTANAR: Castillo de Malamoneda
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 81
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HONTANAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Malamoneda', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('HONTANAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- MAQUEDA: Castillo de la Vela (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MAQUEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Vela (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MAQUEDA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- MONTALBÁN (MUNICIPALIDAD DE SAN: Castillo de Montalbán
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTALBÁN (MUNICIPALIDAD DE SAN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montalbán', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MONTALBÁN (MUNICIPALIDAD DE SAN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- NAVALMORAL DE PUSA: Torre de Navalmoral
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NAVALMORAL DE PUSA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Navalmoral', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NAVALMORAL DE PUSA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- ORGAZ: Castillo de Orgaz
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ORGAZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Orgaz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ORGAZ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- OROPESA: Castillo de Oropesa (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OROPESA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Oropesa (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('OROPESA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- POLÁN: Castillo de Polán
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('POLÁN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Polán', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('POLÁN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- SAN PABLO DE LOS MONTES: Restos del Castillejo de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN PABLO DE LOS MONTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN PABLO DE LOS MONTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- TOLEDO: Castillo de San Servando
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TOLEDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Servando', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TOLEDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- TOLEDO: Alcázar de Toledo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TOLEDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Toledo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TOLEDO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

-- VALMOJADO: Torre del Homenaje de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALMOJADO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Homenaje de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VALMOJADO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('TOLEDO'));


-- PROVINCIA: VALENCIA (10 castillos)


-- AYORA: Castillo de Ayora
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AYORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ayora', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('AYORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

-- BENISSANÓ: Castillo de Benissanó
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENISSANÓ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Benissanó', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENISSANÓ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

-- BENISSANÓ: Castillo de Buñol
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENISSANÓ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Buñol', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENISSANÓ'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

-- CHULILLA: Castillo de Chulilla
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHULILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chulilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CHULILLA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

-- COFRENTES: Castillo de Cofrentes
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COFRENTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cofrentes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('COFRENTES'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

-- CULLERA: Castillo de Cullera
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CULLERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cullera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CULLERA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

-- REQUENA: Castillo de Requena (Torre del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('REQUENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Requena (Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('REQUENA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

-- SAGUNTO: Castillo de Sagunto
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 96
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAGUNTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sagunto', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAGUNTO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

-- TORRENT: Castillo de Xàtiva (Castell
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 98
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORRENT'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Xàtiva (Castell', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORRENT'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

-- TORRENT: Torre del Castillo de Torrent
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORRENT'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Castillo de Torrent', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORRENT'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALENCIA'));


-- PROVINCIA: VALLADOLID (13 castillos)


-- CASTROMONTE: Castillo de Castromonte (Torre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 70
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROMONTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Castromonte (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROMONTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- ENCINAS DE ESGUEVA: Castillo de Fuensaldaña
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ENCINAS DE ESGUEVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fuensaldaña', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ENCINAS DE ESGUEVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- ENCINAS DE ESGUEVA: Castillo de Encinas de Esgueva
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ENCINAS DE ESGUEVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Encinas de Esgueva', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ENCINAS DE ESGUEVA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- ISCAR: Castillo de Íscar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 85
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ISCAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Íscar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ISCAR'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- MEDINA DEL CAMPO: Castillo de la Mota
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINA DEL CAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Mota', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINA DEL CAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- MEDINA DEL CAMPO: Castillo de Peñafiel
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 99
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINA DEL CAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñafiel', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEDINA DEL CAMPO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- PORTILLO: Castillo de Portillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 88
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PORTILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Portillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PORTILLO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- SAN JOSÉ DE VALLE: Torreón de la dehesa del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN JOSÉ DE VALLE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SAN JOSÉ DE VALLE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- SIMANCAS: Castillo de Simancas (Archivo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SIMANCAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Simancas (Archivo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SIMANCAS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- TIEDRA: Castillo de Tiedra
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 86
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TIEDRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tiedra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TIEDRA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- TORRELOBATÓN: Castillo de los Almirantes de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORRELOBATÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Almirantes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORRELOBATÓN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- TRIGUEROS DEL VALLE: Castillo de Trigueros
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TRIGUEROS DEL VALLE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Trigueros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TRIGUEROS DEL VALLE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

-- VILLALONSO: Castillo de VillalonSO
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLALONSO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de VillalonSO', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLALONSO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('VALLADOLID'));


-- PROVINCIA: ZAMORA (10 castillos)


-- BENAVENTE: Castillo de los Pimentel (Torre
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENAVENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de los Pimentel (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BENAVENTE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

-- CASTROTORAFE (MUNICIPALIDAD DE SAN: Castillo de Castrotorafe y Villa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROTORAFE (MUNICIPALIDAD DE SAN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castrotorafe y Villa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CASTROTORAFE (MUNICIPALIDAD DE SAN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

-- FERMOSELLE: Castillo de Fermoselle (Castillo
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 74
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FERMOSELLE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fermoselle (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FERMOSELLE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

-- FUENTESÁUCO: Torreón de la dehesa del
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 52
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FUENTESÁUCO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FUENTESÁUCO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

-- MOMBUEY: Torre de Mombuey
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOMBUEY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Mombuey', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOMBUEY'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

-- PUEBLA DE SANABRIA: Castillo de los Condes de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PUEBLA DE SANABRIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('PUEBLA DE SANABRIA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

-- TORO: Alcázar de Toro
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 90
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Toro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('TORO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

-- VILLALONSO: Castillo de Villalonso
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLALONSO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villalonso', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VILLALONSO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

-- VOZMEDIANO: Palacio-Castillo de Alcañices y
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VOZMEDIANO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de Alcañices y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('VOZMEDIANO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

-- ZAMORA: Castillo de Zamora
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 94
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZAMORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zamora', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ZAMORA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZAMORA'));


-- PROVINCIA: ZARAGOZA (12 castillos)


-- ALFAMÉN: Torreón de Alfamén
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 58
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALFAMÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Alfamén', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ALFAMÉN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- ANTELLÓN (PEDANÍA DE MURILLO DE: Castillo de Añón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 76
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANTELLÓN (PEDANÍA DE MURILLO DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Añón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANTELLÓN (PEDANÍA DE MURILLO DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- ANTELLÓN (PEDANÍA DE MURILLO DE: Murallas de Antellón
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 65
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANTELLÓN (PEDANÍA DE MURILLO DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Murallas de Antellón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ANTELLÓN (PEDANÍA DE MURILLO DE'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- ATECA: Castillo de Ateca (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 84
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ATECA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ateca (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ATECA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- BIOTA: Palacio-Castillo de los
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 75
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BIOTA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('BIOTA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- CALATAYUD: Recinto Fortificado Islámico de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALATAYUD'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado Islámico de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALATAYUD'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- CALATAYUD: Castillo de Doña Martina
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALATAYUD'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Doña Martina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('CALATAYUD'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- DAROCA: Castillo Mayor de Daroca
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DAROCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo Mayor de Daroca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('DAROCA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- FABARA: Palacio-Castillo de la Orden de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FABARA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de la Orden de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('FABARA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- ILLUECA: Palacio-Castillo del Papa Luna
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 92
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ILLUECA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo del Papa Luna', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ILLUECA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- LUZENI: Torre de Luceni
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LUZENI'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Luceni', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('LUZENI'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

-- MEQUINENZA: Castillo de Mequinenza
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEQUINENZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mequinenza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MEQUINENZA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ZARAGOZA'));


-- PROVINCIA: ÁVILA (10 castillos)


-- ARENAS DE SAN PEDRO: Castillo de don Álvaro de Luna
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 91
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARENAS DE SAN PEDRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de don Álvaro de Luna', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARENAS DE SAN PEDRO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

-- ARÉVALO: Castillo de Arévalo (Castillo de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 93
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARÉVALO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Arévalo (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ARÉVALO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

-- EL BARCO DE ÁVILA: Castillo de Valdecorneja
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 89
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('EL BARCO DE ÁVILA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Valdecorneja', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('EL BARCO DE ÁVILA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

-- MOMBELTRÁN: Castillo de los Duques de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 95
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOMBELTRÁN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOMBELTRÁN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

-- MOMBELTRÁN: Castillo del Duque de
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 78
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOMBELTRÁN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Duque de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('MOMBELTRÁN'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

-- NAVAS DEL MARQUÉS: Castillo-Palacio de Magalia
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 82
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NAVAS DEL MARQUÉS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Magalia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('NAVAS DEL MARQUÉS'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

-- SANTIAGO DEL COLLADO: Torre de Santiago del Collado
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 50
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTIAGO DEL COLLADO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Santiago del Collado', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('SANTIAGO DEL COLLADO'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

-- ÁVILA: Murallas de Ávila y Alcázar
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 100
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÁVILA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Murallas de Ávila y Alcázar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÁVILA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

-- ÁVILA: Castillo de Villaviciosa
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 72
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÁVILA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villaviciosa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÁVILA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

-- ÁVILA: Torre de Crespillos
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 55
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÁVILA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Crespillos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios
WHERE UPPER(TRIM(nombre))=UPPER(TRIM('ÁVILA'))
  AND UPPER(TRIM(provincia))=UPPER(TRIM('ÁVILA'));


-- VERIFICACIÓN
-- SELECT COUNT(*) as total_castillos FROM puntuaciones WHERE categoria='castillos' AND puntuacion > 0;
-- SELECT COUNT(DISTINCT codigo_ine) as municipios FROM puntuaciones WHERE categoria='castillos' AND puntuacion > 0;

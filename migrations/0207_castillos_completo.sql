-- Castillos y Torres de España - Inventario Completo
-- Fortalezas, alcázares y torres defensivas por municipio
-- Escala: 12-100 puntos (100 = Patrimonio Mundial / Alcázares únicos)

-- FASE 1: Reset de castillos a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='castillos';

-- FASE 2: Limpiar entidades basura
DELETE FROM entidades
  WHERE tipo IN ('castillo','torre','fortaleza','alcazaba','castillo-convento','conjunto_historico')
    AND fuente IN ('wikidata','OSM');

-- FASE 3: Bulk default 12 - Insertar registros faltantes
INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)
SELECT codigo_ine, 'castillos', 12 FROM municipios
WHERE codigo_ine NOT IN (SELECT codigo_ine FROM puntuaciones WHERE categoria='castillos');

-- FASE 4: Top castillos (100 puntos)

-- Almería
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE provincia='Almería' AND nombre='Almería' LIMIT 1
) AND categoria='castillos';

INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
SELECT codigo_ine,'castillo','Conjunto Monumental de Almería','Alcazaba de origen islámico del siglo X, fortaleza más grande de Al-Ándalus. Alojamiento militar, viviendas, mezquita y sistema defensivo completo.','inventario_castillos_pdf',date('now')
FROM municipios WHERE provincia='Almería' AND nombre='Almería' LIMIT 1;

-- Granada
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE provincia='Granada' AND nombre='Granada' LIMIT 1
) AND categoria='castillos';

INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
SELECT codigo_ine,'alcazaba','Alcazaba de la Alhambra','Fortaleza medieval nazarí del siglo XIV, Patrimonio de la Humanidad UNESCO. Palacios, patios, torres y jardines.','inventario_castillos_pdf',date('now')
FROM municipios WHERE provincia='Granada' AND nombre='Granada' LIMIT 1;

-- Sevilla
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE provincia='Sevilla' AND nombre='Sevilla' LIMIT 1
) AND categoria='castillos';

INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
SELECT codigo_ine,'alcazaba','Real Alcázar de Sevilla','Palacio-fortaleza mudéjar del siglo XIV, residencia de reyes cristianos. Patrimonio de la Humanidad.','inventario_castillos_pdf',date('now')
FROM municipios WHERE provincia='Sevilla' AND nombre='Sevilla' LIMIT 1;

-- Segovia
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE provincia='Segovia' AND nombre='Segovia' LIMIT 1
) AND categoria='castillos';

INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
SELECT codigo_ine,'castillo','Alcázar de Segovia','Fortaleza medieval de los siglos XIII-XIV, considerada una de las más espectaculares de Europa. Torres almenadas y arquitectura defensiva.','inventario_castillos_pdf',date('now')
FROM municipios WHERE provincia='Segovia' AND nombre='Segovia' LIMIT 1;

-- Soria - Gormaz
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE provincia='Soria' AND nombre='Gormaz' LIMIT 1
) AND categoria='castillos';

INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
SELECT codigo_ine,'fortaleza','Fortaleza Califal de Gormaz','Fortaleza medieval del siglo X de origen califal. Estructura defensiva única con 28 torres.','inventario_castillos_pdf',date('now')
FROM municipios WHERE provincia='Soria' AND nombre='Gormaz' LIMIT 1;

-- Valladolid - Medina del Campo
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE provincia='Valladolid' AND nombre='Medina del Campo' LIMIT 1
) AND categoria='castillos';

INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
SELECT codigo_ine,'castillo','Castillo de la Mota','Fortaleza de la época de los Reyes Católicos. Alcazaba, patio de armas y torre del homenaje.','inventario_castillos_pdf',date('now')
FROM municipios WHERE provincia='Valladolid' AND nombre='Medina del Campo' LIMIT 1;

-- Ávila
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE provincia='Ávila' AND nombre='Ávila' LIMIT 1
) AND categoria='castillos';

INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
SELECT codigo_ine,'conjunto_historico','Murallas de Ávila y Alcázar','Recinto amurallado medieval del siglo XI, 87 torreones y 9 puertas. Patrimonio de la Humanidad.','inventario_castillos_pdf',date('now')
FROM municipios WHERE provincia='Ávila' AND nombre='Ávila' LIMIT 1;

-- Huesca - Loarre
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE provincia='Huesca' AND nombre='Loarre' LIMIT 1
) AND categoria='castillos';

INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
SELECT codigo_ine,'castillo','Castillo de Loarre','Fortaleza románica del siglo XI. Iglesia, torre redonda, murallas. Obra maestra medieval.','inventario_castillos_pdf',date('now')
FROM municipios WHERE provincia='Huesca' AND nombre='Loarre' LIMIT 1;

-- Girona - Figueres
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE provincia='Girona' AND nombre='Figueres' LIMIT 1
) AND categoria='castillos';

INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
SELECT codigo_ine,'fortaleza','Castillo de San Fernando','Fortaleza abaluartada del siglo XVIII. Defensa de Cataluña.','inventario_castillos_pdf',date('now')
FROM municipios WHERE provincia='Girona' AND nombre='Figueres' LIMIT 1;

-- Palma - Bellver (Islas Baleares)
UPDATE puntuaciones SET puntuacion=100 WHERE codigo_ine IN (
  SELECT codigo_ine FROM municipios WHERE provincia IN ('Baleares','Islas Baleares') AND nombre='Palma' LIMIT 1
) AND categoria='castillos';

INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
SELECT codigo_ine,'castillo','Castillo de Bellver','Fortaleza gótica del siglo XIV dominando bahía de Palma. Torres circulares. Ejemplo único.','inventario_castillos_pdf',date('now')
FROM municipios WHERE provincia IN ('Baleares','Islas Baleares') AND nombre='Palma' LIMIT 1;

-- FASE 5: Castillos 95-99 puntos
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaén' AND nombre='Alcalá la Real') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=98 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaén' AND nombre='Úbeda') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Ávila' AND nombre='Arévalo') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Burgos' AND nombre='Castrojeriz') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Jaén' AND nombre='Alcaudete') AND categoria='castillos';
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Toledo' AND nombre='Consuegra') AND categoria='castillos';

-- FASE 6: Sync duplicados - actualizar códigos duplicados con puntuación del canónico
UPDATE puntuaciones SET puntuacion=(
  SELECT MAX(p2.puntuacion) FROM puntuaciones p2
  INNER JOIN municipios m1 ON p2.codigo_ine = m1.codigo_ine
  INNER JOIN municipios m2 ON m1.nombre = m2.nombre AND m1.provincia = m2.provincia
  WHERE m2.codigo_ine = puntuaciones.codigo_ine
    AND m1.codigo_ine != m2.codigo_ine
    AND p2.categoria = 'castillos'
)
WHERE categoria='castillos' AND puntuacion=12;

-- FASE 7: Sync entidades entre códigos duplicados
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.fecha_ingesta
FROM entidades e
INNER JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
INNER JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia
WHERE e.tipo IN ('castillo','torre','fortaleza','alcazaba','castillo-convento','conjunto_historico')
  AND e.fuente = 'inventario_castillos_pdf'
  AND ma.codigo_ine != mb.codigo_ine;

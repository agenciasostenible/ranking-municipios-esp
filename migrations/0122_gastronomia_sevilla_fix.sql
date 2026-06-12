-- Gastronomía Sevilla — fix: subida de municipios con datos documentados en webs comarcales
-- Fuentes: sevilla.cosasdecome.es, elpespunte.es, turismosevilla.org, apoloybaco.com,
--          canalsur.es (Tierra de Sabores), turismocomarcaecija.com

-- El Viso del Alcor (41102) → 34
-- Pechugones de la Confitería Riaño (desde 1875): dulce triangular de cabello de ángel que
-- Alfonso XIII pedía expresamente cuando cazaba en Doñana. Dato muy sólido con 150 años de historia.
UPDATE puntuaciones SET puntuacion=34 WHERE codigo_ine='41102' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41102','producto','Pechugones de El Viso del Alcor — dulce de Alfonso XIII',
  'Los pechugones son el dulce emblemático de El Viso del Alcor desde 1875. Pasta triangular dorada rellena de cabello de ángel y canela, bañada en azúcar. Alfonso XIII los pedía expresamente al pasar por el municipio camino a sus cacerías de Doñana. La Confitería Riaño los elabora de forma ininterrumpida durante 150 años. No contienen gluten ni lactosa',
  'excel_curado',date('now'));

-- Cantillana (41023) → 30
-- Alcachofa de Cantillana: Ruta de la Alcachofa oficial (Turismo Sevilla), empresa Artealca
-- con certificación "Producto Excelente" SAEIA
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='41023' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41023','producto','Alcachofa de Cantillana — Ruta de la Alcachofa oficial',
  'Cantillana es uno de los principales productores de alcachofa de Sevilla. La Ruta de la Alcachofa (febrero-marzo) está reconocida por Turismo de la Provincia de Sevilla. La empresa local Artealca tiene certificación "Producto Excelente" de la SAEIA. La alcachofa de Cantillana está comercializada y distribuida regionalmente',
  'excel_curado',date('now'));

-- Lora del Río (41055) → 30 (sube desde 28)
-- Dato adicional: Carmelas y Barquitos de la Confitería Rafael González
-- Canal Sur (Tierra de Sabores) les dedicó reportaje — dato de alta solidez
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='41055' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41055','producto','Carmelas y Barquitos — Confitería Rafael González, desde hace 60 años',
  'Lora del Río tiene dulces artesanales propios: las Carmelas (brioche tierno relleno de crema pastelera y glaseado con azúcar) y los Barquitos (cesta de hojaldre ovalada con bizcocho y glaseado). La Confitería Rafael González los elabora en tercera generación. Canal Sur los incluyó en su programa "Tierra de Sabores"',
  'excel_curado',date('now'));

-- Fuentes de Andalucía (41042) → 28
-- Destilería Anís Rigo (1947): uno de los 8 destiladores artesanales que quedan en la provincia
-- Alambique de principios del s.XX, matalahúga recién cosechada, más de 35 referencias
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='41042' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41042','producto','Destilería Anís Rigo — artesanal desde 1947',
  'Fuentes de Andalucía alberga la destilería Anís Rigo (1947), empresa familiar con alambique de principios del s.XX que utiliza matalahúga recién cosechada y fuego de leña de olivo. Es uno de los 8 últimos destiladores artesanales de la provincia. Produce más de 35 referencias: anís seco y dulce, pacharán, ginebras aromáticas',
  'excel_curado',date('now'));

-- Montellano (41064) → 28
-- Morcilla de asadura: producto estrella documentado en web municipal y elpespunte.es
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='41064' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41064','producto','Morcilla de asadura de Montellano',
  'La morcilla de asadura es el producto estrella de Montellano: embutido artesanal elaborado con vísceras y especias, consumida frita, a la plancha o en guisos. Documentada en la web municipal y en elpespunte.es con artículo específico. Otros platos propios: tagarninas y conejo en salsa de almendras',
  'excel_curado',date('now'));

-- Peñaflor (41074) → 26
-- Espárragos como seña de identidad gastronómica (declarado en web municipal oficial)
-- Concurso de Migas con más de 10 años de historia
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='41074' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41074','producto','Espárrago de Peñaflor — seña de identidad gastronómica',
  'La web oficial de turismo de Peñaflor declara el espárrago (triguero y de huerta) como "nuestra seña de identidad gastronómica". El Concurso de Migas anual tiene más de 10 años de historia. Pan artesano local bajo la marca PanFlor',
  'excel_curado',date('now'));

-- La Campana (41022) → 26
-- Empanadas dulces campaneras: masa de azúcar, canela y ajonjolí, documentadas en apoloybaco.com
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='41022' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41022','gastronomia','Empanadas dulces campaneras',
  'El dulce típico de La Campana son las empanadas dulces: masa rellena de azúcar, canela y ajonjolí (sésamo). Disponibles en cualquier panadería del municipio, documentadas en apoloybaco.com y visitarsevilla.com',
  'excel_curado',date('now'));

-- Coria del Río (41034) → 26
-- Sake de Coria: fusión sake japonés + arroz con leche, homenaje a los 700 vecinos con apellido Japón
-- Taberna Yamaoka en Casa Sendai histórica
UPDATE puntuaciones SET puntuacion=26 WHERE codigo_ine='41034' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('41034','gastronomia','Sake de Coria y Taberna Yamaoka — herencia japonesa de 1614',
  'Coria del Río tiene más de 700 vecinos con el apellido "Japón", descendientes de la embajada Keicho que llegó en 1614. Esta herencia da lugar al Sake de Coria (sake fusionado con arroz con leche) y a la Taberna Yamaoka (restaurante japonés en la histórica Casa Sendai). Gastronomía singular única en España',
  'excel_curado',date('now'));

-- SYNC duplicados actualizados
-- Peñaflor (41074) → duplicado 40017
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='41074' AND p2.categoria='gastronomia') WHERE codigo_ine='40017' AND categoria='gastronomia';

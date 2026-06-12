-- Gastronomía Granada — curación manual con datos verificados
-- Fuentes: Guía Michelin 2026, Guía Repsol 2025, MAPA DOPs/IGPs, web especializada
--
-- MICHELIN 2026:
--   Granada capital: Faralá ★ (nueva 2026, Chef Cristina Jiménez)
--   Gualchos: El Conjuro de Calahonda (recomendado Michelin)
-- REPSOL 2025:
--   Granada capital: Damasqueros (1 Sol), Cala (1 Sol), Atelier Casa de Comidas (1 Sol), Faralá (1 Sol)
--   Gualchos: El Conjuro de Calahonda (1 Sol — nuevo 2025)
-- DOPs/IGPs EN GRANADA:
--   DOP Aceite Poniente de Granada (16 munis): Algarinejo, Alhama de Granada, Arenas del Rey,
--     Cacín, Huétor Tájar, Íllora, Jayena, Loja, Montefrío, Moraleda de Zafayona, Salar,
--     Santa Cruz del Comercio, Villanueva Mesía, Zafarraya, Zagra, parte Moclín
--   DOP Aceite Montes de Granada (54 munis): comarcas Los Montes, Guadix, Baza, Huéscar, Vega
--   DOP Chirimoya Costa Tropical (Granada): Motril, Vélez de Benaudalla, Los Guájares,
--     Molvízar, Salobreña, Ítrabo, Otívar, Lentegí, Jete, Almuñécar
--   DOP Miel de Granada
--   DOP Granada (vinos)
--   IGP Espárrago Huétor Tájar: Moraleda de Zafayona, Íllora, Villanueva Mesía, Huétor Tájar, Salar, Loja
--   IGP Pan de Álfacar
--   IGP Jamón de Trevélez: Trevélez, Juviles, Busquístar, Pórtugos, La Tahá, Bubión, Capileira, Bérchules
--   IGP Piononos de Santa Fe (desde 2013)

-- 1. Reset a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Granada');

-- 2. Limpiar entidades automáticas
DELETE FROM entidades WHERE tipo IN ('gastronomia','producto')
  AND fuente IN ('wikidata','OSM')
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Granada');

-- 3. Bulk default 12
UPDATE puntuaciones SET puntuacion=12 WHERE categoria='gastronomia'
  AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE provincia='Granada');

-- ── TIER 1: MICHELIN ★ + MULTI-SOL REPSOL ────────────────────────────────

-- Granada (18087) — 92
-- 1★ Michelin (Faralá, nueva 2026) + 4 Soles Repsol (Damasqueros, Cala, Atelier, Faralá)
-- Tapas gratuitas en muchos bares, cocina andaluza de referencia
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='18087' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18087','gastronomia','Faralá — Estrella Michelin 2026','Chef Cristina Jiménez. Viaje gastronómico por Granada y el patrimonio andaluz con cocina tradicional reinterpretada. Pan Saladilla, guisantes de Huétor y cordero Segureño son protagonistas. Primera estrella Michelin de Granada capital en 2026','Michelin',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18087','gastronomia','Damasqueros — Sol Repsol','Referente de la cocina granadina de autor en el corazón del Realejo. Sol Repsol. Cocina de mercado con producto local','Repsol',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18087','gastronomia','Cala y Atelier Casa de Comidas — Soles Repsol','Dos restaurantes con Sol Repsol que representan la nueva cocina granadina: producto local, técnica contemporánea y raíces andaluzas','Repsol',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18087','gastronomia','Cultura de tapas gratuitas de Granada','Granada mantiene la tradición andaluza del tapeo — en muchos bares la tapa acompaña a cada bebida, atrayendo turismo gastronómico masivo al centro histórico','excel_curado',date('now'));

-- ── TIER 2: SOL REPSOL + MICHELIN RECOMENDADO ────────────────────────────

-- Gualchos (18093) — 62
-- El Conjuro de Calahonda: 1 Sol Repsol (nuevo 2025) + recomendado Guía Michelin
-- Cocina andaluza con raíces tradicionales, fritos, brasas y pescado de costa
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='18093' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18093','gastronomia','El Conjuro de Calahonda — Sol Repsol 2025 + Michelin recomendado','Restaurante familiar fundado en 1989, reinaugurado en 2017. Chefs Antonio y Daniel Lorenzo. Cocina andaluza de raíces con ortiguillas fritas, puntillitas y brasas. Sol Repsol 2025 y recomendado por la Guía Michelin','Michelin',date('now'));

-- ── TIER 3: IGP/DOP EMBLEMA PROPIO ───────────────────────────────────────

-- Trevélez (18180) — 58
-- IGP Jamón de Trevélez — jamón curado a más de 1.200m de altitud en Sierra Nevada
-- Curación natural en aire de montaña. Reconocimiento nacional e internacional
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='18180' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18180','producto','IGP Jamón de Trevélez','Curado a más de 1.200 metros de altitud en la cara sur de Sierra Nevada. El aire seco y frío de la Alpujarra alta y el bajo contenido en sal le confieren un sabor delicado y textura única. Uno de los jamones más valorados de España con Indicación Geográfica Protegida','excel_curado',date('now'));

-- Motril (18140) — 54
-- Quisquilla de Motril (crustáceo local de enorme fama), caña de azúcar
-- (único cultivo en Europa continental), DOP Chirimoya, propia guía gastronómica municipal
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='18140' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18140','producto','Quisquilla de Motril','Pequeño crustáceo exclusivo de las aguas de Motril — considerado uno de los mariscos más finos del Mediterráneo. Cocinada al vapor o a la plancha, es el producto gastronómico más emblemático de la Costa Tropical','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18140','producto','Caña de azúcar y Ron Pálido — único cultivo en Europa','Motril es el único municipio de Europa continental donde se cultiva caña de azúcar de forma comercial. La Torta Real, el Ron Pálido y la miel de caña son productos únicos que nacen de este cultivo histórico de origen árabe','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18140','producto','DOP Chirimoya Costa Tropical','Motril es municipio central de la DOP Chirimoya de la Costa Tropical Granada-Málaga — la única chirimoya del mundo con denominación de origen protegida europea','excel_curado',date('now'));

-- Santa Fe (18175) — 50
-- IGP Piononos de Santa Fe (reconocimiento europeo desde 2013)
-- Dulce creado en 1897 por Ceferino Isla en la pastelería Casa Ysla — único en el mundo con IGP
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='18175' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18175','producto','IGP Piononos de Santa Fe','El pionono es el único dulce de este tipo en el mundo con Indicación Geográfica Protegida europea (desde 2013). Creado en 1897 por el pastelero Ceferino Isla en la Casa Ysla de Santa Fe — bizcocho enrollado con crema y azúcar tostada que homenajea al Papa Pío IX','excel_curado',date('now'));

-- Almuñécar (19002) — 46
-- DOP Chirimoya Costa Tropical + capital gastronómica de la Costa Tropical
-- Frutas tropicales únicas en Europa: aguacate, mango, papaya, además de chirimoya
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='19002' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19002','producto','DOP Chirimoya y frutas tropicales de Europa','Almuñécar es el principal productor de chirimoya DOP de la Costa Tropical — fruta exótica única en Europa continental. El microclima de la costa granadina permite también cultivar aguacate, mango y papaya de calidad premium','excel_curado',date('now'));

-- ── TIER 4: DOP CON DATOS ESPECÍFICOS ───────────────────────────────────

-- Loja (18122) — 44
-- DOP Aceite Poniente de Granada + zona IGP Espárrago Huétor Tájar
-- Cooperativas San Isidro y Cerro Gordo premiadas en XXII edición premios DOP Poniente
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='18122' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18122','producto','DOP Aceite Poniente de Granada — cooperativas premiadas','Las cooperativas lojeñas San Isidro y Cerro Gordo fueron premiadas en los XXII Premios de Calidad de la DOP Poniente de Granada celebrados en Montefrío. Loja es municipio central de esta denominación','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18122','producto','IGP Espárrago de Huétor Tájar','Loja está incluida en la zona de producción de la IGP Espárrago de Huétor Tájar — el único espárrago del mundo con denominación de origen propia a nivel europeo','excel_curado',date('now'));

-- Montefrío (18135) — 42
-- Sede de los premios DOP Poniente de Granada (XXII edición en 2022)
-- Foto icónica incluida en las "mejores vistas del mundo" por National Geographic
-- (datos cruzados con monumentos — aquí solo gastronomía: DOP Poniente)
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='18135' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18135','producto','DOP Aceite Poniente de Granada — sede de sus premios','Montefrío acoge regularmente la gala de premios de la DOP Poniente de Granada. El aceite de oliva virgen extra de la comarca, con variedades Hojiblanca y Nevadillo de Alhama, es el producto estrella del pueblo','excel_curado',date('now'));

-- Lanjarón (18116) — 40
-- Aguas Minerales de Lanjarón — marca histórica nacional con siglos de reputación
-- Virginia Woolf y Federico García Lorca se hospedaron en el balneario
-- OMS ha destacado su contribución a la longevidad de sus habitantes
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='18116' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18116','producto','Aguas Minerales de Lanjarón — marca histórica nacional','Las Aguas de Lanjarón son una de las marcas de agua mineral más conocidas de España. Sus seis manantiales con propiedades medicinales han atraído durante siglos a visitantes ilustres — Virginia Woolf y Federico García Lorca pasaron temporadas en el balneario. La OMS ha destacado la longevidad de sus habitantes','excel_curado',date('now'));

-- Guadix (18089) — 38
-- DOP Montes de Granada + ciudad con gastronomía troglodita única
-- Única ciudad de España con barrio troglodita habitado — cocina de cuevas tradicional
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='18089' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18089','gastronomia','Gastronomía troglodita de Guadix','Guadix tiene el barrio troglodita más grande de España con más de 2.000 cuevas habitadas. La cocina de sus cuevas-restaurante es una experiencia única: migas, olla de San Antón, choto al ajillo y embutidos artesanos en un entorno sin igual','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18089','producto','DOP Aceite Montes de Granada','Guadix es municipio central de la DOP Montes de Granada — 54 municipios y 39.000 hectáreas de olivar con aceite de variedades Picual, Lucio y Loaime','excel_curado',date('now'));

-- Huétor Tájar (18100) — 36
-- IGP Espárrago Huétor Tájar — el único espárrago con denominación propia en el mundo (desde 2000)
-- El municipio da nombre a la denominación
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='18100' AND categoria='gastronomia';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18100','producto','IGP Espárrago de Huétor Tájar — único en el mundo','Huétor Tájar da nombre al único espárrago verde-morado del mundo con Indicación Geográfica Protegida europea (reconocida en 2000). Se cultiva en la Vega Baja del Genil — variedad autóctona única por su color, sabor y textura','excel_curado',date('now'));

-- ── TIER 5: DOP PONIENTE (sin datos específicos, todos igual) ─────────────
-- Alhama de Granada, Arenas del Rey, Cacín, Íllora, Jayena,
-- Moraleda de Zafayona, Salar, Santa Cruz del Comercio, Villanueva Mesía,
-- Zafarraya, Zagra, Moclín
UPDATE puntuaciones SET puntuacion=32 WHERE categoria='gastronomia' AND codigo_ine IN
  ('19001','18020','18034','18102','18107','18138','18171','18174','18188','18192','18913','18132');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('19001','producto','DOP Aceite Poniente de Granada','Municipio integrante de la DOP Aceite Poniente de Granada — aceite de variedades Hojiblanca, Picual, Nevadillo de Alhama y Loaime en el poniente granadino','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18020','producto','DOP Aceite Poniente de Granada','Municipio integrante de la DOP Aceite Poniente de Granada — aceite de variedades Hojiblanca, Picual, Nevadillo de Alhama y Loaime en el poniente granadino','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18034','producto','DOP Aceite Poniente de Granada','Municipio integrante de la DOP Aceite Poniente de Granada — aceite de variedades Hojiblanca, Picual, Nevadillo de Alhama y Loaime en el poniente granadino','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18102','producto','DOP Aceite Poniente de Granada + IGP Espárrago Huétor Tájar','Íllora pertenece tanto a la DOP Poniente de Granada (aceite) como a la zona de producción de la IGP Espárrago de Huétor Tájar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18107','producto','DOP Aceite Poniente de Granada','Municipio integrante de la DOP Aceite Poniente de Granada — aceite de variedades Hojiblanca, Picual, Nevadillo de Alhama y Loaime','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18138','producto','DOP Poniente de Granada + IGP Espárrago','Moraleda de Zafayona pertenece a la DOP Aceite Poniente de Granada y a la zona de la IGP Espárrago de Huétor Tájar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18171','producto','DOP Poniente de Granada + IGP Espárrago','Salar pertenece a la DOP Aceite Poniente de Granada y a la zona de producción de la IGP Espárrago de Huétor Tájar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18174','producto','DOP Aceite Poniente de Granada','Municipio integrante de la DOP Aceite Poniente de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18188','producto','DOP Poniente de Granada + IGP Espárrago','Villanueva Mesía pertenece a la DOP Aceite Poniente de Granada y a la zona de la IGP Espárrago de Huétor Tájar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18192','producto','DOP Aceite Poniente de Granada','Municipio integrante de la DOP Aceite Poniente de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18913','producto','DOP Aceite Poniente de Granada','Municipio integrante de la DOP Aceite Poniente de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18132','producto','DOP Aceite Poniente y Montes de Granada','Moclín pertenece parcialmente a las DOP Poniente y Montes de Granada — municipio en el límite de ambas denominaciones','excel_curado',date('now'));

-- ── TIER 6: DOP CHIRIMOYA (municipios sin ser los principales) ─────────────
-- Vélez de Benaudalla, Los Guájares, Molvízar, Salobreña, Ítrabo, Otívar, Lentegí, Jete
UPDATE puntuaciones SET puntuacion=30 WHERE categoria='gastronomia' AND codigo_ine IN
  ('18184','18906','18133','18173','18103','18148','18120','18109');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18184','producto','DOP Chirimoya Costa Tropical','Municipio integrante de la DOP Chirimoya de la Costa Tropical Granada-Málaga — la única chirimoya del mundo con denominación de origen protegida europea','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18906','producto','DOP Chirimoya Costa Tropical','Municipio integrante de la DOP Chirimoya de la Costa Tropical Granada-Málaga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18133','producto','DOP Chirimoya Costa Tropical','Municipio integrante de la DOP Chirimoya de la Costa Tropical Granada-Málaga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18173','producto','DOP Chirimoya Costa Tropical','Municipio integrante de la DOP Chirimoya de la Costa Tropical Granada-Málaga — también con historia de cultivo de caña de azúcar','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18103','producto','DOP Chirimoya Costa Tropical','Municipio integrante de la DOP Chirimoya de la Costa Tropical Granada-Málaga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18148','producto','DOP Chirimoya Costa Tropical','Municipio integrante de la DOP Chirimoya de la Costa Tropical Granada-Málaga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18120','producto','DOP Chirimoya Costa Tropical','Municipio integrante de la DOP Chirimoya de la Costa Tropical Granada-Málaga','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18109','producto','DOP Chirimoya Costa Tropical','Municipio integrante de la DOP Chirimoya de la Costa Tropical Granada-Málaga','excel_curado',date('now'));

-- ── TIER 7: IGP JAMÓN TREVÉLEZ (zona producción, sin ser Trevélez) ────────
-- Juviles, Busquístar, Pórtugos, La Tahá, Bubión, Capileira, Bérchules
UPDATE puntuaciones SET puntuacion=28 WHERE categoria='gastronomia' AND codigo_ine IN
  ('18112','18033','18163','18901','18032','18042','18030');
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18112','producto','IGP Jamón de Trevélez — zona de producción','Juviles pertenece a la zona de producción de la IGP Jamón de Trevélez — municipio de la Alpujarra alta a más de 1.200m de altitud donde el jamón se cura con el aire seco y frío de Sierra Nevada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18033','producto','IGP Jamón de Trevélez — zona de producción','Busquístar pertenece a la zona de producción de la IGP Jamón de Trevélez — Alpujarra alta, más de 1.200m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18163','producto','IGP Jamón de Trevélez — zona de producción','Pórtugos pertenece a la zona de producción de la IGP Jamón de Trevélez — Alpujarra alta, más de 1.200m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18901','producto','IGP Jamón de Trevélez — zona de producción','La Tahá pertenece a la zona de producción de la IGP Jamón de Trevélez — municipios de la Alpujarra alta a más de 1.200m','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18032','producto','IGP Jamón de Trevélez — zona de producción','Bubión pertenece a la zona de producción de la IGP Jamón de Trevélez — pueblo de la Alpujarra alta junto a Capileira y Pampaneira','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18042','producto','IGP Jamón de Trevélez — zona de producción','Capileira pertenece a la zona de producción de la IGP Jamón de Trevélez — uno de los pueblos más altos de Andalucía, con aire de Sierra Nevada para el curado natural','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta)
  VALUES ('18030','producto','IGP Jamón de Trevélez — zona de producción','Bérchules pertenece a la zona de producción de la IGP Jamón de Trevélez — Alpujarra alta a más de 1.200m','excel_curado',date('now'));

-- ── TIER 8: DOP MONTES DE GRANADA (todos igual, sin datos específicos) ────
-- Los 54 municipios identificados en la BD:
UPDATE puntuaciones SET puntuacion=26 WHERE categoria='gastronomia' AND codigo_ine IN (
  '18025','18028','18029','18037','18038','18045','18046','18050','18051',
  '18053','18054','18056','18912','18063','18064','18066','18067','18076',
  '18078','18082','18083','18085','18086','18088','18095','18096','18098',
  '18105','18128','18136','18137','18909','18144','18152','18153','18159',
  '18178','18187','18189','18194','18039','18023'
);
-- Insertar entidad genérica para municipios DOP Montes (solo los que no tienen ya)
-- (omitimos Guadix y Baza que ya tienen su entidad propia)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18025','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada — 54 municipios, 39.000 hectáreas, variedades Picual, Lucio y Loaime en las comarcas del norte y este de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18028','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18029','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18037','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18038','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18045','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18046','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18050','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18051','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18053','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18054','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18056','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18912','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18063','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18064','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18066','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18067','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18076','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18078','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18082','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18083','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18085','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18086','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18088','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18095','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18096','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18098','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18105','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18128','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18136','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18137','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18909','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18144','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18152','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18153','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18159','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18178','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18187','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18189','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18194','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18039','producto','DOP Aceite Montes de Granada','Municipio integrante de la DOP Aceite Montes de Granada','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,descripcion,fuente,fecha_ingesta) VALUES ('18023','producto','DOP Aceite Montes de Granada','Baza pertenece a la DOP Aceite Montes de Granada — municipio importante de la comarca de Baza con cocina tradicional documentada (Olla de San Antón, embutidos artesanos)','excel_curado',date('now'));

-- ── SYNC DUPLICADOS ──────────────────────────────────────────────────────
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18023' AND p2.categoria='gastronomia') WHERE codigo_ine='19003' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18032' AND p2.categoria='gastronomia') WHERE codigo_ine='19004' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18030' AND p2.categoria='gastronomia') WHERE codigo_ine='19005' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18042' AND p2.categoria='gastronomia') WHERE codigo_ine='19006' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18046' AND p2.categoria='gastronomia') WHERE codigo_ine='19007' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18035' AND p2.categoria='gastronomia') WHERE codigo_ine='19008' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18087' AND p2.categoria='gastronomia') WHERE codigo_ine='19009' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18089' AND p2.categoria='gastronomia') WHERE codigo_ine='19010' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18098' AND p2.categoria='gastronomia') WHERE codigo_ine='19012' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18116' AND p2.categoria='gastronomia') WHERE codigo_ine='19013' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18122' AND p2.categoria='gastronomia') WHERE codigo_ine='19014' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18134' AND p2.categoria='gastronomia') WHERE codigo_ine='19016' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18135' AND p2.categoria='gastronomia') WHERE codigo_ine='19017' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18140' AND p2.categoria='gastronomia') WHERE codigo_ine='19018' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18146' AND p2.categoria='gastronomia') WHERE codigo_ine='19020' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18163' AND p2.categoria='gastronomia') WHERE codigo_ine='19023' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18173' AND p2.categoria='gastronomia') WHERE codigo_ine='19024' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18175' AND p2.categoria='gastronomia') WHERE codigo_ine='19025' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18180' AND p2.categoria='gastronomia') WHERE codigo_ine='19026' AND categoria='gastronomia';
UPDATE puntuaciones SET puntuacion=(SELECT p2.puntuacion FROM puntuaciones p2 WHERE p2.codigo_ine='18182' AND p2.categoria='gastronomia') WHERE codigo_ine='19027' AND categoria='gastronomia';

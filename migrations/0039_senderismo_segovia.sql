-- 0039: Senderismo Segovia curado — Hoces del Duratón, Guadarrama, Ayllón
-- Generado: 2026-06-09

-- 1. Reset
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND (
  (codigo_ine BETWEEN '39001' AND '39011') OR
  (codigo_ine BETWEEN '40021' AND '40234') OR
  (codigo_ine BETWEEN '40702' AND '40702') OR
  (codigo_ine BETWEEN '40901' AND '40906')
);

-- 2. Limpiar entidades
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND (
  (codigo_ine BETWEEN '39001' AND '39011') OR
  (codigo_ine BETWEEN '40021' AND '40234') OR
  codigo_ine='40702' OR
  (codigo_ine BETWEEN '40901' AND '40906')
);

-- ============================================================
-- HOCES DEL DURATÓN — TOP Segovia
-- ============================================================

-- Sepúlveda: Parque Natural Hoces del Duratón, icónico = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='39010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39010','sendero','Parque Natural Hoces del Río Duratón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39010','sendero','Cañón del Duratón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39010','sendero','GR-166 Hoces del Duratón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39010','sendero','Ermita de San Frutos','excel_curado',date('now'));

-- ============================================================
-- SIERRA DE AYLLÓN / RIAZA
-- ============================================================

-- Riaza: sierra, Hayedo de Tejera Negra acceso = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='39007' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39007','sendero','Sierra de Ayllón — Riaza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39007','sendero','Hayedo de la Tejera Negra acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39007','sendero','GR-10 Ayllón','excel_curado',date('now'));

-- Riofrío de Riaza: Sierra Ayllón = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='40172' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40172','sendero','Sierra de Ayllón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40172','sendero','Hayedo de Riofrío','excel_curado',date('now'));

-- Cerezo de Arriba: Sierra Ayllón = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='40054' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40054','sendero','Sierra de Ayllón','excel_curado',date('now'));

-- Ayllón: sierra, medieval = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='39001' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39001','sendero','Sierra de Ayllón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39001','sendero','Hoces del Riaza','excel_curado',date('now'));

-- Riaguas de San Bartolomé: Hoces del Riaza = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='40168' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40168','sendero','Hoces del Riaza','excel_curado',date('now'));

-- Ribota: Ayllón = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='40171' AND categoria='senderismo';

-- Bercimuel: Ayllón = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='40029' AND categoria='senderismo';

-- Fresno de Cantespino: Ayllón = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='40079' AND categoria='senderismo';

-- ============================================================
-- SIERRA DE GUADARRAMA
-- ============================================================

-- Navafría: hayedo, Guadarrama = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='40139' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40139','sendero','Hayedo de Navafría','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40139','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40139','sendero','Puerto de Navafría','excel_curado',date('now'));

-- Real Sitio de San Ildefonso / La Granja: sierra = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='40181' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40181','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40181','sendero','Palacio de La Granja','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40181','sendero','Sendero del Bosque de Valsaín','excel_curado',date('now'));

-- San Ildefonso: La Granja = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='39008' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39008','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39008','sendero','Bosque de Valsaín','excel_curado',date('now'));

-- Navas de Riofrío: Guadarrama = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='39005' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39005','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- El Espinar: Guadarrama = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='40076' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40076','sendero','Parque Nacional Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40076','sendero','Sendero del pinar','excel_curado',date('now'));

-- Matabuena: Guadarrama = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='40123' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40123','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Prádena: Guadarrama = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='40162' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40162','sendero','Guadarrama — Prádena','excel_curado',date('now'));

-- Collado Hermoso: Guadarrama = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='40059' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40059','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Santo Tomé del Puerto: Guadarrama = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='40191' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40191','sendero','Puerto de Somosierra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40191','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Otero de Herreros: Guadarrama = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='40152' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40152','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Palazuelos de Eresma: Guadarrama = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='40155' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40155','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Ortigosa del Monte: Guadarrama = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='40901' AND categoria='senderismo';

-- La Losa: Guadarrama = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='40113' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40113','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Vegas de Matute: Guadarrama = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='40223' AND categoria='senderismo';

-- Zarzuela del Monte: sierra = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='40233' AND categoria='senderismo';

-- Navas de San Antonio: sierra = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='40146' AND categoria='senderismo';

-- Espirdo: sierra = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='40077' AND categoria='senderismo';

-- ============================================================
-- PEDRAZA / ZONA MEDIA
-- ============================================================

-- Pedraza: pueblo medieval, sierra = 75
UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='40156' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40156','sendero','Pedraza — Sierra de Guadarrama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40156','sendero','Sendero del río Pirón','excel_curado',date('now'));

-- La Granja de San Ildefonso: ya hecho arriba
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='39004' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39004','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Torre Val de San Pedro: sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='40206' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40206','sendero','Sierra de Guadarrama','excel_curado',date('now'));

-- Valleruela de Pedraza: sierra = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='40220' AND categoria='senderismo';

-- Santiuste de Pedraza: sierra = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='40188' AND categoria='senderismo';

-- Orejana: sierra = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='40150' AND categoria='senderismo';

-- Gallegos: sierra = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='40093' AND categoria='senderismo';

-- Pelayos del Arroyo: sierra = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='40157' AND categoria='senderismo';

-- ============================================================
-- HOCES DEL DURATÓN / SEPÚLVEDA entorno
-- ============================================================

-- Boceguillas: sierra baja = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='40032' AND categoria='senderismo';

-- Valleruela de Sepúlveda: sierra = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='40221' AND categoria='senderismo';

-- Sebúlcor: Hoces Duratón = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='40193' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40193','sendero','Hoces del Duratón','excel_curado',date('now'));

-- Burgomillodo: Hoces = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='40033' AND categoria='senderismo'; -- Brieva... let me check

-- ============================================================
-- SEGOVIA CAPITAL Y CAMPO
-- ============================================================

-- Segovia capital: Acueducto, sierra acceso = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='39009' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39009','sendero','Sierra de Guadarrama — acceso Segovia','excel_curado',date('now'));

-- Turégano: castillo, campo = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='39011' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('39011','sendero','Castillo de Turégano','excel_curado',date('now'));

-- Cuéllar: campo = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='39003' AND categoria='senderismo';

-- Carbonero el Mayor: campo = 20
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='39002' AND categoria='senderismo';

-- Navas de Riofrío (39005) ya hecho. 40904 = Navas de Riofrío MAX:
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='40904' AND categoria='senderismo';

-- Resto campo
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40021' AND categoria='senderismo'; -- Arevalillo de Cega
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40022' AND categoria='senderismo'; -- Armuña
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40025' AND categoria='senderismo'; -- Barbolla
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='40026' AND categoria='senderismo'; -- Basardilla (sierra)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40028' AND categoria='senderismo'; -- Bercial
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40030' AND categoria='senderismo'; -- Bernardos
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40031' AND categoria='senderismo'; -- Bernuy de Porreros
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40034' AND categoria='senderismo'; -- Caballar
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40035' AND categoria='senderismo'; -- Cabañas de Polendos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40036' AND categoria='senderismo'; -- Cabezuela
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40037' AND categoria='senderismo'; -- Calabazas de Fuentidueña
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='40039' AND categoria='senderismo'; -- Campo de San Pedro
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40039','sendero','Hoces del Riaza','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='40040' AND categoria='senderismo'; -- Cantalejo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40041' AND categoria='senderismo'; -- Cantimpalos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40044' AND categoria='senderismo'; -- Carrascal del Río
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='40045' AND categoria='senderismo'; -- Casla (sierra)
UPDATE puntuaciones SET puntuacion=38 WHERE codigo_ine='40046' AND categoria='senderismo'; -- Castillejo de Mesleón
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40047' AND categoria='senderismo'; -- Castro de Fuentidueña
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40048' AND categoria='senderismo'; -- Castrojimeno
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40049' AND categoria='senderismo'; -- Castroserna de Abajo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40051' AND categoria='senderismo'; -- Castroserracín
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40052' AND categoria='senderismo'; -- Cedillo de la Torre
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40053' AND categoria='senderismo'; -- Cerezo de Abajo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40065' AND categoria='senderismo'; -- Chañe
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40055' AND categoria='senderismo'; -- Cilleruelo de San Mamés
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40056' AND categoria='senderismo'; -- Cobos de Fuentidueña
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40057' AND categoria='senderismo'; -- Coca
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40058' AND categoria='senderismo'; -- Codorniz
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40060' AND categoria='senderismo'; -- Condado de Castilnovo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40061' AND categoria='senderismo'; -- Corral de Ayllón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40902' AND categoria='senderismo'; -- Cozuelos de Fuentidueña
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40062' AND categoria='senderismo'; -- Cubillo
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='40905' AND categoria='senderismo'; -- Cuevas de Provanco
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40068' AND categoria='senderismo'; -- Domingo García
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40069' AND categoria='senderismo'; -- Donhierro
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40070' AND categoria='senderismo'; -- Duruelo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40071' AND categoria='senderismo'; -- Encinas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40072' AND categoria='senderismo'; -- Encinillas
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='40073' AND categoria='senderismo'; -- Escalona del Prado (sierra)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40074' AND categoria='senderismo'; -- Escarabajosa de Cabezas
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40075' AND categoria='senderismo'; -- Escobar de Polendos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40078' AND categoria='senderismo'; -- Fresneda de Cuéllar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40080' AND categoria='senderismo'; -- Fresno de la Fuente
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40081' AND categoria='senderismo'; -- Frumales
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40082' AND categoria='senderismo'; -- Fuente de Santa Cruz
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40083' AND categoria='senderismo'; -- Fuente el Olmo de Fuentidueña
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40084' AND categoria='senderismo'; -- Fuente el Olmo de Íscar
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40086' AND categoria='senderismo'; -- Fuentepelayo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40087' AND categoria='senderismo'; -- Fuentepiñel
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40088' AND categoria='senderismo'; -- Fuenterrebollo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40089' AND categoria='senderismo'; -- Fuentesaúco de Fuentidueña
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40091' AND categoria='senderismo'; -- Fuentesoto
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40092' AND categoria='senderismo'; -- Fuentidueña
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40094' AND categoria='senderismo'; -- Garcillán
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40095' AND categoria='senderismo'; -- Gomezserracín
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40097' AND categoria='senderismo'; -- Grajera
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40099' AND categoria='senderismo'; -- Honrubia de la Cuesta
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40100' AND categoria='senderismo'; -- Hontalbilla
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40101' AND categoria='senderismo'; -- Hontanares de Eresma
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40103' AND categoria='senderismo'; -- Los Huertos
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40104' AND categoria='senderismo'; -- Ituero y Lama
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40105' AND categoria='senderismo'; -- Juarros de Riomoros
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40106' AND categoria='senderismo'; -- Juarros de Voltoya
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40107' AND categoria='senderismo'; -- Labajos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40108' AND categoria='senderismo'; -- Laguna de Contreras
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40109' AND categoria='senderismo'; -- Languilla
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40110' AND categoria='senderismo'; -- Lastras de Cuéllar
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40111' AND categoria='senderismo'; -- Lastras del Pozo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40112' AND categoria='senderismo'; -- La Lastrilla
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40115' AND categoria='senderismo'; -- Maderuelo (embalse)
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('40115','sendero','Embalse de Linares','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='40903' AND categoria='senderismo'; -- Marazoleja
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40118' AND categoria='senderismo'; -- Marazuela
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40119' AND categoria='senderismo'; -- Martín Miguel
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40120' AND categoria='senderismo'; -- Martín Muñoz de la Dehesa
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40121' AND categoria='senderismo'; -- Martín Muñoz de las Posadas
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40122' AND categoria='senderismo'; -- Marugán
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40124' AND categoria='senderismo'; -- Mata de Cuéllar
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40125' AND categoria='senderismo'; -- La Matilla
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40126' AND categoria='senderismo'; -- Melque de Cercos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40127' AND categoria='senderismo'; -- Membibre de la Hoz
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40128' AND categoria='senderismo'; -- Migueláñez
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40129' AND categoria='senderismo'; -- Montejo de Arévalo
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='40130' AND categoria='senderismo'; -- Montejo de la Vega de la Serrezuela (hoces)
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40131' AND categoria='senderismo'; -- Monterrubio
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='40132' AND categoria='senderismo'; -- Moral de Hornuez
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40134' AND categoria='senderismo'; -- Mozoncillo
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40135' AND categoria='senderismo'; -- Muñopedro
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40136' AND categoria='senderismo'; -- Muñoveros
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40138' AND categoria='senderismo'; -- Nava de la Asunción
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40140' AND categoria='senderismo'; -- Navalilla
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40141' AND categoria='senderismo'; -- Navalmanzano
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40142' AND categoria='senderismo'; -- Navares de Ayuso
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40143' AND categoria='senderismo'; -- Navares de Enmedio
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40144' AND categoria='senderismo'; -- Navares de las Cuevas
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40145' AND categoria='senderismo'; -- Navas de Oro
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40148' AND categoria='senderismo'; -- Nieva
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40149' AND categoria='senderismo'; -- Olombrada
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40151' AND categoria='senderismo'; -- Ortigosa de Pestaño
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40154' AND categoria='senderismo'; -- Pajarejos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40158' AND categoria='senderismo'; -- Perosillo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40159' AND categoria='senderismo'; -- Pinarejos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40160' AND categoria='senderismo'; -- Pinarnegrillo
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='40161' AND categoria='senderismo'; -- Carabias
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40163' AND categoria='senderismo'; -- Puebla de Pedraza
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40164' AND categoria='senderismo'; -- Rapariegos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40165' AND categoria='senderismo'; -- Rebollo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40166' AND categoria='senderismo'; -- Remondo
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='40173' AND categoria='senderismo'; -- Roda de Eresma
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40174' AND categoria='senderismo'; -- Sacramenia
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40176' AND categoria='senderismo'; -- Samboal
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40177' AND categoria='senderismo'; -- San Cristóbal de Cuéllar
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='40906' AND categoria='senderismo'; -- San Cristóbal de Segovia
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40178' AND categoria='senderismo'; -- San Cristóbal de la Vega
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40182' AND categoria='senderismo'; -- San Martín y Mudrián
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40183' AND categoria='senderismo'; -- San Miguel de Bernuy
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40184' AND categoria='senderismo'; -- San Pedro de Gaíllos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40179' AND categoria='senderismo'; -- Sanchonuño
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40180' AND categoria='senderismo'; -- Sangarcía
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40185' AND categoria='senderismo'; -- Santa María la Real de Nieva
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40186' AND categoria='senderismo'; -- Santa Marta del Cerro
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='40189' AND categoria='senderismo'; -- Santiuste de San Juan Bautista
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40190' AND categoria='senderismo'; -- Santo Domingo de Pirón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40192' AND categoria='senderismo'; -- Sauquillo de Cabezas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40196' AND categoria='senderismo'; -- Sequera de Fresno
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40198' AND categoria='senderismo'; -- Sotillo
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='40199' AND categoria='senderismo'; -- Sotosalbos (sierra)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40200' AND categoria='senderismo'; -- Tabanera la Luenga
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40201' AND categoria='senderismo'; -- Tolocirio
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40202' AND categoria='senderismo'; -- Torreadrada
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40203' AND categoria='senderismo'; -- Torrecaballeros (sierra)
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40204' AND categoria='senderismo'; -- Torrecilla del Pinar
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40205' AND categoria='senderismo'; -- Torreiglesias
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='40207' AND categoria='senderismo'; -- Trescasas (Guadarrama)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40210' AND categoria='senderismo'; -- Urueñas
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40211' AND categoria='senderismo'; -- Valdeprados
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40212' AND categoria='senderismo'; -- Valdevacas de Montejo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40213' AND categoria='senderismo'; -- Valdevacas y Guijar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40214' AND categoria='senderismo'; -- Valseca
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40215' AND categoria='senderismo'; -- Valtiendas
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40216' AND categoria='senderismo'; -- Valverde del Majano
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40218' AND categoria='senderismo'; -- Valle de Tabladillo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='40219' AND categoria='senderismo'; -- Vallelado
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40222' AND categoria='senderismo'; -- Veganzones
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40224' AND categoria='senderismo'; -- Ventosilla y Tejadilla
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40225' AND categoria='senderismo'; -- Villacastín
UPDATE puntuaciones SET puntuacion=25 WHERE codigo_ine='40228' AND categoria='senderismo'; -- Villaverde de Íscar
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='40229' AND categoria='senderismo'; -- Villaverde de Montejo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40230' AND categoria='senderismo'; -- Villeguillo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='40231' AND categoria='senderismo'; -- Yanguas de Eresma
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='40234' AND categoria='senderismo'; -- Zarzuela del Pinar
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='40702' AND categoria='senderismo'; -- Común Grande

-- ============================================================
-- SYNC: MIN (39xxx) → MAX (40xxx)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='39001' AND categoria='senderismo') WHERE codigo_ine='40024' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='39002' AND categoria='senderismo') WHERE codigo_ine='40043' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='39003' AND categoria='senderismo') WHERE codigo_ine='40063' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='39005' AND categoria='senderismo') WHERE codigo_ine='40904' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='39007' AND categoria='senderismo') WHERE codigo_ine='40170' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='39009' AND categoria='senderismo') WHERE codigo_ine='40194' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='39010' AND categoria='senderismo') WHERE codigo_ine='40195' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='39011' AND categoria='senderismo') WHERE codigo_ine='40208' AND categoria='senderismo';

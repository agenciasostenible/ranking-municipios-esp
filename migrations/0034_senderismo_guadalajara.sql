-- 0034: Senderismo Guadalajara curado (reset + scores + entidades en códigos canónicos 19xxx)
-- Generado: 2026-06-09
-- IMPORTANTE: entidades solo en código MIN (19xxx) de cada par duplicado

-- 1. Reset scores a 0
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '19031','19032','19033','19034','19036','19037','19038','19039','19040','19041',
  '19042','19043','19044','19045','19046','19047','19048','19049','19050','19051',
  '19052','19053','19054','19055','19057','19058','19059','19060','19061','19064',
  '19065','19066','19067','19070','19071','19073','19074','19075','19076','19078',
  '19079','19080','19081','19082','19086','19087','19088','19089','19090','19091',
  '19092','19095','19096','19097','19098','19099','19102','19103','19104','19105',
  '19106','19107','19108','19109','19110','19111','19112','19113','19114','19115',
  '19116','19117','19118','19119','19120','19121','19122','19123','19124','19125',
  '19126','19127','19129','19130','19132','19133','19134','19135','19136','19138',
  '19139','19142','19143','19145','19146','19147','19148','19150','19151','19152',
  '19153','19154','19155','19156','19157','19159','19160','19161','19162','19163',
  '19165','19166','19167','19168','19169','19170','19171','19172','19173','19174',
  '19175','19176','19177','19178','19179','19181','19182','19183','19184','19185',
  '19186','19187','19188','19189','19190','19191','19192','19193','19194','19195',
  '19196','19197','19198','19199','19200','19201','19202','19203','19204','19208',
  '19209','19210','19211','19212','19213','19214','19215','19216','19217','19218',
  '19219','19220','19221','19222','19223','19224','19225','19226','19227','19228',
  '19229','19230','19231','19232','19233','19234','19235','19237','19238','19239',
  '19240','19241','19242','19243','19244','19245','19246','19247','19248','19249',
  '19250','19251','19252','19254','19255','19256','19257','19258','19259','19260',
  '19261','19262','19263','19264','19265','19266','19267','19268','19269','19270',
  '19271','19272','19274','19277','19278','19279','19280','19281','19282','19283',
  '19284','19285','19286','19287','19288','19289','19290','19291','19293','19294',
  '19296','19297','19298','19299','19300','19301','19302','19303','19304','19305',
  '19306','19307','19308','19309','19310','19311','19314','19317','19318','19319',
  '19321','19322','19323','19324','19325','19326','19327','19329','19330','19331',
  '19332','19333','19334','19335','19554','19901',
  '20001','20002','20003','20004','20005','20006','20007','20008','20009','20010',
  '20011','20012','20013','20014','20015','20016','20017','20018'
);

-- 2. Limpiar entidades curadas previas
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine IN (
  '19031','19032','19033','19034','19036','19037','19038','19039','19040','19041',
  '19042','19043','19044','19045','19046','19047','19048','19049','19050','19051',
  '19052','19053','19054','19055','19057','19058','19059','19060','19061','19064',
  '19065','19066','19067','19070','19071','19073','19074','19075','19076','19078',
  '19079','19080','19081','19082','19086','19087','19088','19089','19090','19091',
  '19092','19095','19096','19097','19098','19099','19102','19103','19104','19105',
  '19106','19107','19108','19109','19110','19111','19112','19113','19114','19115',
  '19116','19117','19118','19119','19120','19121','19122','19123','19124','19125',
  '19126','19127','19129','19130','19132','19133','19134','19135','19136','19138',
  '19139','19142','19143','19145','19146','19147','19148','19150','19151','19152',
  '19153','19154','19155','19156','19157','19159','19160','19161','19162','19163',
  '19165','19166','19167','19168','19169','19170','19171','19172','19173','19174',
  '19175','19176','19177','19178','19179','19181','19182','19183','19184','19185',
  '19186','19187','19188','19189','19190','19191','19192','19193','19194','19195',
  '19196','19197','19198','19199','19200','19201','19202','19203','19204','19208',
  '19209','19210','19211','19212','19213','19214','19215','19216','19217','19218',
  '19219','19220','19221','19222','19223','19224','19225','19226','19227','19228',
  '19229','19230','19231','19232','19233','19234','19235','19237','19238','19239',
  '19240','19241','19242','19243','19244','19245','19246','19247','19248','19249',
  '19250','19251','19252','19254','19255','19256','19257','19258','19259','19260',
  '19261','19262','19263','19264','19265','19266','19267','19268','19269','19270',
  '19271','19272','19274','19277','19278','19279','19280','19281','19282','19283',
  '19284','19285','19286','19287','19288','19289','19290','19291','19293','19294',
  '19296','19297','19298','19299','19300','19301','19302','19303','19304','19305',
  '19306','19307','19308','19309','19310','19311','19314','19317','19318','19319',
  '19321','19322','19323','19324','19325','19326','19327','19329','19330','19331',
  '19332','19333','19334','19335','19554','19901',
  '20001','20002','20003','20004','20005','20006','20007','20008','20009','20010',
  '20011','20012','20013','20014','20015','20016','20017','20018'
);

-- ============================================================
-- SIERRA NORTE (HAYEDOS / PUEBLOS NEGROS) — zona estrella
-- ============================================================

-- Cantalojas: Hayedo de Tejera Negra, icónico NatGeo, top senderismo España = 95
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='19065' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19065','sendero','Hayedo de Tejera Negra','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19065','sendero','Reserva de la Biosfera Sierra Norte de Guadalajara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19065','sendero','PR-GU 21 Cantalojas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19065','sendero','Sendero del Hayedo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19065','sendero','Río Lillas','excel_curado',date('now'));

-- Majaelrayo: Pueblos Negros, hayedo, muy fotografiado = 92
UPDATE puntuaciones SET puntuacion=92 WHERE codigo_ine='19165' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19165','sendero','Pueblo Negro de Majaelrayo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19165','sendero','Hayedo de Tejera Negra — acceso','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19165','sendero','Ruta de los Pueblos Negros','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19165','sendero','Reserva de la Biosfera Sierra Norte','excel_curado',date('now'));

-- Valverde de los Arroyos: Pueblos Negros, cascada = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='19311' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19311','sendero','Cascada de Valverde de los Arroyos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19311','sendero','Pueblo Negro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19311','sendero','Ruta de los Pueblos Negros','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19311','sendero','Reserva de la Biosfera Sierra Norte','excel_curado',date('now'));

-- Condemios de Arriba: Pueblos Negros, hayedo = 88
UPDATE puntuaciones SET puntuacion=88 WHERE codigo_ine='19096' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19096','sendero','Ruta de los Pueblos Negros — Condemios de Arriba','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19096','sendero','Reserva de la Biosfera Sierra Norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19096','sendero','Sendero del hayedo','excel_curado',date('now'));

-- Campillo de Ranas: Pueblos Negros = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='19060' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19060','sendero','Ruta de los Pueblos Negros','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19060','sendero','Reserva de la Biosfera Sierra Norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19060','sendero','PR-GU 8','excel_curado',date('now'));

-- El Cardoso de la Sierra: Sierra Norte = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='19067' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19067','sendero','Sierra Norte de Guadalajara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19067','sendero','Río Jarama tramo alto','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19067','sendero','Reserva de la Biosfera','excel_curado',date('now'));

-- Galve de Sorbe: Sierra Norte, pueblo bonito = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='19127' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19127','sendero','Sierra Norte — Galve de Sorbe','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19127','sendero','Reserva de la Biosfera Sierra Norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19127','sendero','Sendero del Jarama','excel_curado',date('now'));

-- Campisábalos: Sierra Norte, paraje singular = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='19061' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19061','sendero','Sierra Norte de Guadalajara','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19061','sendero','Reserva de la Biosfera','excel_curado',date('now'));

-- Condemios de Abajo: Sierra Norte = 78
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='19095' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19095','sendero','Ruta de los Pueblos Negros','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19095','sendero','Sierra Norte','excel_curado',date('now'));

-- Retiendas: Sierra Norte = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='19234' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19234','sendero','Sierra Norte de Guadalajara','excel_curado',date('now'));

-- Tamajón: Sierra Norte = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='19262' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19262','sendero','Sierra Norte — Tamajón','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19262','sendero','Sendero del encinar','excel_curado',date('now'));

-- Valdepeñas de la Sierra: Sierra Norte = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='19305' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19305','sendero','Sierra Norte de Guadalajara','excel_curado',date('now'));

-- La Huerce: Sierra Norte = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='19146' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19146','sendero','Sierra Norte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19146','sendero','Reserva de la Biosfera','excel_curado',date('now'));

-- Arbancón: Sierra Pela = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='19037' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19037','sendero','Sierra Pela','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19037','sendero','Sendero de la sierra','excel_curado',date('now'));

-- Bustares: Sierra Norte = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='19057' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19057','sendero','Sierra Norte de Guadalajara','excel_curado',date('now'));

-- Somolinos: laguna glaciar, muy fotogénico = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='19259' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19259','sendero','Laguna de Somolinos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19259','sendero','Sierra Pela — Somolinos','excel_curado',date('now'));

-- Hiendelaencina: minas históricas, sierra = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='19135' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19135','sendero','Minas de Hiendelaencina','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19135','sendero','Sierra Norte','excel_curado',date('now'));

-- ============================================================
-- PARQUE NATURAL ALTO TAJO
-- ============================================================

-- Peralejos de las Truchas: PN Alto Tajo, cañones, icónico = 90
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='19216' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19216','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19216','sendero','Cañones del Tajo — Peralejos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19216','sendero','PR-GU 47','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19216','sendero','Sendero del Río Tajo alto','excel_curado',date('now'));

-- Zaorejas: PN Alto Tajo, Torcas de los Palancares = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='19333' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19333','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19333','sendero','Torcas de Los Palancares','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19333','sendero','Cañón del Tajo — Zaorejas','excel_curado',date('now'));

-- Poveda de la Sierra: PN Alto Tajo = 86
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='19223' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19223','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19223','sendero','Cañones del Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19223','sendero','PR-GU 46','excel_curado',date('now'));

-- Taravilla: PN Alto Tajo, Laguna Taravilla = 84
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='19264' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19264','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19264','sendero','Laguna de Taravilla','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19264','sendero','Sendero del Tajo','excel_curado',date('now'));

-- Orea: PN Alto Tajo, pinar del Tremedal = 82
UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='19204' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19204','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19204','sendero','Pinar del Tremedal','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19204','sendero','Sendero del pinar','excel_curado',date('now'));

-- Checa: PN Alto Tajo, Torcas = 80
UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='19103' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19103','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19103','sendero','Torcas del Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19103','sendero','Sendero del Gallo','excel_curado',date('now'));

-- Armallones: PN Alto Tajo = 76
UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='19040' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19040','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19040','sendero','Cañón del Tajo','excel_curado',date('now'));

-- Ocentejo: PN Alto Tajo = 74
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='19199' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19199','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19199','sendero','Río Tajo encajonado','excel_curado',date('now'));

-- Valhermoso: PN Alto Tajo = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='19309' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19309','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19309','sendero','Torcas del Tajo','excel_curado',date('now'));

-- Riba de Saelices: PN Alto Tajo = 72
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='19235' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19235','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19235','sendero','Ruta de los Torcales','excel_curado',date('now'));

-- Terzaga: PN Alto Tajo = 70
UPDATE puntuaciones SET puntuacion=70 WHERE codigo_ine='19267' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19267','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19267','sendero','Sendero del Tajo alto','excel_curado',date('now'));

-- Arbeteta: Alto Tajo periférico = 68
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='19038' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19038','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19038','sendero','Río Tajo ribera','excel_curado',date('now'));

-- Cobeta: Alto Tajo = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='19090' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19090','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));

-- Baños de Tajo: Alto Tajo = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='19048' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19048','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19048','sendero','Río Tajo','excel_curado',date('now'));

-- Valtablado del Río: Alto Tajo = 58
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='19310' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19310','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));

-- Huertahernando: Alto Tajo = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19148' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19148','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));

-- Tierzo: Alto Tajo = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19268' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19268','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));

-- Chequilla: PN Alto Tajo = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='19104' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19104','sendero','Parque Natural Alto Tajo','excel_curado',date('now'));

-- Megina: Alto Tajo = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19178' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19178','sendero','Alto Tajo','excel_curado',date('now'));

-- Tragacete del Tajo / Setiles / Tordesilos: sierra alta
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='19255' AND categoria='senderismo'; -- Setiles
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19255','sendero','Sierra alta — Setiles','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='19272' AND categoria='senderismo'; -- Tordesilos
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19265' AND categoria='senderismo'; -- Tartanedo
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='19287' AND categoria='senderismo'; -- Tortuera
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='19324' AND categoria='senderismo'; -- Villel de Mesa
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='19254' AND categoria='senderismo'; -- Selas
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='19175' AND categoria='senderismo'; -- Mazarete
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19332' AND categoria='senderismo'; -- La Yunta
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='19059' AND categoria='senderismo'; -- Campillo de Dueñas
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19076' AND categoria='senderismo'; -- Castellar de la Muela
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19076','sendero','Sierra de la Muela','excel_curado',date('now'));

-- Villanueva de Alcorón: cascada Trillo, buen entorno = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='19317' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19317','sendero','Cascada de Trillo — entorno','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19317','sendero','Serranía de Guadalajara','excel_curado',date('now'));

-- ============================================================
-- MOLINA DE ARAGÓN / SEÑORÍO DE MOLINA
-- ============================================================

-- Molina de Aragón (19190 canónico): comarca sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='19190' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19190','sendero','Castillo de Molina','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19190','sendero','Serranía de Molina','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19190','sendero','Río Gallo','excel_curado',date('now'));

-- Milmarcos: sierra = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='19183' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19183','sendero','Serranía de Molina','excel_curado',date('now'));

-- Anguita: sierra = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='19032' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19032','sendero','Sierra de Anguita','excel_curado',date('now'));

-- Prados Redondos: sierra = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='19227' AND categoria='senderismo';

-- Rueda de la Sierra: sierra = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='19243' AND categoria='senderismo';

-- Tordellego: sierra = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='19271' AND categoria='senderismo';

-- Torrecuadrada de Molina: sierra = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='19277' AND categoria='senderismo';

-- Alcoroches: sierra alta = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='19031' AND categoria='senderismo'; -- Angón (check name)

-- ============================================================
-- EMBALSES ENTREPEÑAS-BUENDÍA / ZONA CENTRAL
-- ============================================================

-- Sacedón (19245 canónico): Entrepeñas/Buendía, buen entorno = 62
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='19245' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19245','sendero','Embalse de Entrepeñas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19245','sendero','Embalse de Buendía','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19245','sendero','Sendero de la ribera','excel_curado',date('now'));

-- Pareja: Entrepeñas = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19211' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19211','sendero','Embalse de Entrepeñas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19211','sendero','Sendero de la ribera','excel_curado',date('now'));

-- Auñón: Tajo embalse = 48
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='19045' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19045','sendero','Embalse de Entrepeñas','excel_curado',date('now'));

-- Budia (19054 canónico): Entrepeñas = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19054' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19054','sendero','Embalse de Entrepeñas','excel_curado',date('now'));

-- Trillo (19291 canónico): embalse, Tajo = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19291' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19291','sendero','Embalse de Entrepeñas — Trillo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19291','sendero','Río Tajo ribera','excel_curado',date('now'));

-- Cifuentes (19086 canónico): Tajo = 50
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='19086' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19086','sendero','Río Cifuentes','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19086','sendero','Sendero del río','excel_curado',date('now'));

-- Brihuega (19053 canónico): lavanda, campo histórico = 40
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='19053' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19053','sendero','Campos de lavanda de Brihuega','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19053','sendero','Río Tajuña','excel_curado',date('now'));

-- Pastrana (19212 canónico): histórico = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='19212' AND categoria='senderismo';

-- Atienza (19044 canónico): castillo, sierra = 65
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='19044' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19044','sendero','Castillo de Atienza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19044','sendero','Sierra Norte — Atienza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19044','sendero','Sendero del castillo','excel_curado',date('now'));

-- Sigüenza (19257 canónico): catedral, sierra media = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='19257' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19257','sendero','Hoz del Río Henares — Sigüenza','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19257','sendero','Sendero del Castillo','excel_curado',date('now'));

-- Guadalajara capital (19130 canónico): Henares = 30
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='19130' AND categoria='senderismo';

-- Mondéjar (19192 canónico): llano = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='19192' AND categoria='senderismo';

-- Azuqueca de Henares (19046 canónico): llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19046' AND categoria='senderismo';

-- ============================================================
-- RESTO (sierras secundarias y zonas llanas)
-- ============================================================

-- Ujados: Sierra Norte = 55
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='19294' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19294','sendero','Sierra Norte','excel_curado',date('now'));

-- Cincovillas: sierra = 60
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='19087' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19087','sendero','Sierra Norte de Guadalajara','excel_curado',date('now'));

-- Cogolludo: sierra = 52
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='19092' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19092','sendero','Sierra Norte','excel_curado',date('now'));

-- Hita (19138 canónico): medieval, llano = 35
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='19138' AND categoria='senderismo';

-- Torija (19274 canónico): castillo, llano = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='19274' AND categoria='senderismo';

-- Horche (19143 canónico): llano = 22
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19143' AND categoria='senderismo';

-- Yunquera de Henares (19331 canónico): llano = 18
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19331' AND categoria='senderismo';

-- Cabanillas del Campo (19058 canónico): llano = 16
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19058' AND categoria='senderismo';

-- Medinaceli (20010): histórico, llano = 28
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='20010' AND categoria='senderismo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('20010','sendero','Medinaceli histórico','excel_curado',date('now'));

-- Municipios llanos / campo (valores bajos)
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19036' AND categoria='senderismo'; -- Aranzueque
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19039' AND categoria='senderismo'; -- Argecilla
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19041' AND categoria='senderismo'; -- Armuña de Tajuña
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='19042' AND categoria='senderismo'; -- Arroyo de las Fraguas
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19042','sendero','Sierra Norte periférico','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19043' AND categoria='senderismo'; -- Atanzón
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19047' AND categoria='senderismo'; -- Baides
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19049' AND categoria='senderismo'; -- Bañuelos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19050' AND categoria='senderismo'; -- Barriopedro
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19051' AND categoria='senderismo'; -- Berninches
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19052' AND categoria='senderismo'; -- La Bodera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19055' AND categoria='senderismo'; -- Bujalaro
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19064' AND categoria='senderismo'; -- Canredondo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19066' AND categoria='senderismo'; -- Cañizar
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19070' AND categoria='senderismo'; -- Casa de Uceda
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19073' AND categoria='senderismo'; -- Casas de San Galindo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19074' AND categoria='senderismo'; -- Caspueñas
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19075' AND categoria='senderismo'; -- Castejón de Henares
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19078' AND categoria='senderismo'; -- Castilforte
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19079' AND categoria='senderismo'; -- Castilnuevo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19080' AND categoria='senderismo'; -- Cendejas de Enmedio
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19081' AND categoria='senderismo'; -- Cendejas de la Torre
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19082' AND categoria='senderismo'; -- Centenera
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19088' AND categoria='senderismo'; -- Ciruelas
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19089' AND categoria='senderismo'; -- Ciruelos del Pinar
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19091' AND categoria='senderismo'; -- Cogollor
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19097' AND categoria='senderismo'; -- Congostrina
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19098' AND categoria='senderismo'; -- Copernal
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19099' AND categoria='senderismo'; -- Corduente
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19102' AND categoria='senderismo'; -- El Cubillo de Uceda
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19105' AND categoria='senderismo'; -- Chiloeches
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19106' AND categoria='senderismo'; -- Chillarón del Rey
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19107' AND categoria='senderismo'; -- Driebes
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='19108' AND categoria='senderismo'; -- Durón (embalse)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19108','sendero','Embalse de Entrepeñas','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19109' AND categoria='senderismo'; -- Embid
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19110' AND categoria='senderismo'; -- Escamilla
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19111' AND categoria='senderismo'; -- Escariche
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19112' AND categoria='senderismo'; -- Escopete
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19113' AND categoria='senderismo'; -- Espinosa de Henares
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19114' AND categoria='senderismo'; -- Esplegares
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19115' AND categoria='senderismo'; -- Establés
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19116' AND categoria='senderismo'; -- Estriégana
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19117' AND categoria='senderismo'; -- Fontanar
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19118' AND categoria='senderismo'; -- Fuembellida
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19119' AND categoria='senderismo'; -- Fuencemillán
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19120' AND categoria='senderismo'; -- Fuentelahiguera
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19121' AND categoria='senderismo'; -- Fuentelencina
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19122' AND categoria='senderismo'; -- Fuentelsaz
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19123' AND categoria='senderismo'; -- Fuentelviejo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19124' AND categoria='senderismo'; -- Fuentenovilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19125' AND categoria='senderismo'; -- Gajanejos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19126' AND categoria='senderismo'; -- Galápagos
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19129' AND categoria='senderismo'; -- Gascueña de Bornova
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19132' AND categoria='senderismo'; -- Henche
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19133' AND categoria='senderismo'; -- Heras de Ayuso
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19134' AND categoria='senderismo'; -- Herrería
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19136' AND categoria='senderismo'; -- Hijes
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19139' AND categoria='senderismo'; -- Hombrados
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19142' AND categoria='senderismo'; -- Hontoba
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19145' AND categoria='senderismo'; -- Hortezuela de Océn
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19147' AND categoria='senderismo'; -- Huérmeces del Cerro
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19150' AND categoria='senderismo'; -- Hueva
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19151' AND categoria='senderismo'; -- Humanes
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19152' AND categoria='senderismo'; -- Illana
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19153' AND categoria='senderismo'; -- Iniéstola
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19154' AND categoria='senderismo'; -- Las Inviernas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19155' AND categoria='senderismo'; -- Irueste
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19156' AND categoria='senderismo'; -- Jadraque
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19157' AND categoria='senderismo'; -- Jirueque
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19159' AND categoria='senderismo'; -- Ledanca
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19160' AND categoria='senderismo'; -- Loranca de Tajuña
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19161' AND categoria='senderismo'; -- Lupiana
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19162' AND categoria='senderismo'; -- Luzaga
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19163' AND categoria='senderismo'; -- Luzón
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19166' AND categoria='senderismo'; -- Málaga del Fresno
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19167' AND categoria='senderismo'; -- Malaguilla
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19168' AND categoria='senderismo'; -- Mandayona
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19169' AND categoria='senderismo'; -- Mantiel
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19170' AND categoria='senderismo'; -- Maranchón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19171' AND categoria='senderismo'; -- Marchamalo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19172' AND categoria='senderismo'; -- Masegoso de Tajuña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19173' AND categoria='senderismo'; -- Matarrubia
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19174' AND categoria='senderismo'; -- Matillas
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19176' AND categoria='senderismo'; -- Mazuecos
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19177' AND categoria='senderismo'; -- Medranda
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19179' AND categoria='senderismo'; -- Membrillera
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19181' AND categoria='senderismo'; -- Miedes de Atienza
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19182' AND categoria='senderismo'; -- La Mierla
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19184' AND categoria='senderismo'; -- Millana
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19185' AND categoria='senderismo'; -- La Miñosa
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19186' AND categoria='senderismo'; -- Mirabueno
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19187' AND categoria='senderismo'; -- Miralrío
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19188' AND categoria='senderismo'; -- Mochales
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19189' AND categoria='senderismo'; -- Mohernando
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19191' AND categoria='senderismo'; -- Monasterio
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19193' AND categoria='senderismo'; -- Montarrón
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19194' AND categoria='senderismo'; -- Moratilla de los Meleros
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19195' AND categoria='senderismo'; -- Morenilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19196' AND categoria='senderismo'; -- Muduex
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19197' AND categoria='senderismo'; -- Las Navas de Jadraque
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19198' AND categoria='senderismo'; -- Negredo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19200' AND categoria='senderismo'; -- El Olivar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19201' AND categoria='senderismo'; -- Olmeda de Cobeta
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19202' AND categoria='senderismo'; -- La Olmeda de Jadraque
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19203' AND categoria='senderismo'; -- El Ordial
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19208' AND categoria='senderismo'; -- Pálmaces de Jadraque
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19209' AND categoria='senderismo'; -- Pardos
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19210' AND categoria='senderismo'; -- Paredes de Sigüenza
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19213' AND categoria='senderismo'; -- El Pedregal
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19214' AND categoria='senderismo'; -- Peñalén (Tajo)
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19214','sendero','Tajo encajonado','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19215' AND categoria='senderismo'; -- Peñalver
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19217' AND categoria='senderismo'; -- Peralveche
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19218' AND categoria='senderismo'; -- Pinilla de Jadraque
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19219' AND categoria='senderismo'; -- Pinilla de Molina
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19220' AND categoria='senderismo'; -- Pioz
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19221' AND categoria='senderismo'; -- Piqueras
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19222' AND categoria='senderismo'; -- El Pobo de Dueñas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19224' AND categoria='senderismo'; -- Pozo de Almoguera
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19225' AND categoria='senderismo'; -- Pozo de Guadalajara
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19226' AND categoria='senderismo'; -- Prádena de Atienza
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19228' AND categoria='senderismo'; -- Puebla de Beleña
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19229' AND categoria='senderismo'; -- Puebla de Valles
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19230' AND categoria='senderismo'; -- Quer
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19231' AND categoria='senderismo'; -- Rebollosa de Jadraque
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19232' AND categoria='senderismo'; -- El Recuenco
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19233' AND categoria='senderismo'; -- Renera
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19237' AND categoria='senderismo'; -- Rillo de Gallo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19238' AND categoria='senderismo'; -- Riofrío del Llano
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19239' AND categoria='senderismo'; -- Robledillo de Mohernando
UPDATE puntuaciones SET puntuacion=28 WHERE codigo_ine='19240' AND categoria='senderismo'; -- Robledo de Corpes
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, fuente, fecha_ingesta) VALUES ('19240','sendero','Sierra Norte — Robledo de Corpes','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19241' AND categoria='senderismo'; -- Romanillos de Atienza
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19242' AND categoria='senderismo'; -- Romanones
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19244' AND categoria='senderismo'; -- Sacecorbo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19246' AND categoria='senderismo'; -- Saelices de la Sal
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19247' AND categoria='senderismo'; -- Salmerón
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19248' AND categoria='senderismo'; -- San Andrés del Congosto
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19249' AND categoria='senderismo'; -- San Andrés del Rey
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19250' AND categoria='senderismo'; -- Santiuste
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19251' AND categoria='senderismo'; -- Saúca
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19252' AND categoria='senderismo'; -- Sayatón
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19256' AND categoria='senderismo'; -- Sienes
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19258' AND categoria='senderismo'; -- Solanillos del Extremo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19260' AND categoria='senderismo'; -- El Sotillo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19261' AND categoria='senderismo'; -- Sotodosos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19263' AND categoria='senderismo'; -- Taragudo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19265' AND categoria='senderismo'; -- Tartanedo
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19266' AND categoria='senderismo'; -- Tendilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19269' AND categoria='senderismo'; -- La Toba
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19270' AND categoria='senderismo'; -- Tordelrábano
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19278' AND categoria='senderismo'; -- Torrecuadradilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19279' AND categoria='senderismo'; -- Torre del Burgo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19280' AND categoria='senderismo'; -- Torrejón del Rey
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19281' AND categoria='senderismo'; -- Torremocha de Jadraque
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19282' AND categoria='senderismo'; -- Torremocha del Campo
UPDATE puntuaciones SET puntuacion=20 WHERE codigo_ine='19283' AND categoria='senderismo'; -- Torremocha del Pinar
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19284' AND categoria='senderismo'; -- Torremochuela
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19285' AND categoria='senderismo'; -- Torrubia
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19286' AND categoria='senderismo'; -- Tórtola de Henares
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19288' AND categoria='senderismo'; -- Tortuero
UPDATE puntuaciones SET puntuacion=22 WHERE codigo_ine='19289' AND categoria='senderismo'; -- Traíd
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19290' AND categoria='senderismo'; -- Trijueque
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19293' AND categoria='senderismo'; -- Uceda
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19296' AND categoria='senderismo'; -- Utande
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19297' AND categoria='senderismo'; -- Valdarachas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19298' AND categoria='senderismo'; -- Valdearenas
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19299' AND categoria='senderismo'; -- Valdeavellano
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19300' AND categoria='senderismo'; -- Valdeaveruelo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19301' AND categoria='senderismo'; -- Valdeconcha
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19302' AND categoria='senderismo'; -- Valdegrudas
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19303' AND categoria='senderismo'; -- Valdelcubo
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19304' AND categoria='senderismo'; -- Valdenuño Fernández
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19306' AND categoria='senderismo'; -- Valderrebollo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19307' AND categoria='senderismo'; -- Valdesotos
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19308' AND categoria='senderismo'; -- Valfermoso de Tajuña
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19314' AND categoria='senderismo'; -- Viana de Jadraque
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19318' AND categoria='senderismo'; -- Villanueva de Argecilla
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19319' AND categoria='senderismo'; -- Villanueva de la Torre
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19321' AND categoria='senderismo'; -- Villares de Jadraque
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19322' AND categoria='senderismo'; -- Villaseca de Henares
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19323' AND categoria='senderismo'; -- Villaseca de Uceda
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19325' AND categoria='senderismo'; -- Viñuelas
UPDATE puntuaciones SET puntuacion=14 WHERE codigo_ine='19326' AND categoria='senderismo'; -- Yebes
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19327' AND categoria='senderismo'; -- Yebra
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19329' AND categoria='senderismo'; -- Yélamos de Abajo
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19330' AND categoria='senderismo'; -- Yélamos de Arriba
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19334' AND categoria='senderismo'; -- Zarzuela de Jadraque
UPDATE puntuaciones SET puntuacion=18 WHERE codigo_ine='19335' AND categoria='senderismo'; -- Zorita de los Canes
UPDATE puntuaciones SET puntuacion=10 WHERE codigo_ine='19554' AND categoria='senderismo'; -- Romancos
UPDATE puntuaciones SET puntuacion=12 WHERE codigo_ine='19901' AND categoria='senderismo'; -- Semillas
UPDATE puntuaciones SET puntuacion=33 WHERE codigo_ine='19033' AND categoria='senderismo'; -- Anquela del Ducado
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='19034' AND categoria='senderismo'; -- Anquela del Pedregal
UPDATE puntuaciones SET puntuacion=16 WHERE codigo_ine='19071' AND categoria='senderismo'; -- El Casar

-- ============================================================
-- SYNC: copiar puntuaciones MIN (19xxx) → MAX (20xxx) (duplicados)
-- ============================================================
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19044' AND categoria='senderismo') WHERE codigo_ine='20001' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19046' AND categoria='senderismo') WHERE codigo_ine='20002' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19053' AND categoria='senderismo') WHERE codigo_ine='20003' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19054' AND categoria='senderismo') WHERE codigo_ine='20004' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19058' AND categoria='senderismo') WHERE codigo_ine='20005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19086' AND categoria='senderismo') WHERE codigo_ine='20006' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19130' AND categoria='senderismo') WHERE codigo_ine='20007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19138' AND categoria='senderismo') WHERE codigo_ine='20008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19143' AND categoria='senderismo') WHERE codigo_ine='20009' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19190' AND categoria='senderismo') WHERE codigo_ine='20011' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19192' AND categoria='senderismo') WHERE codigo_ine='20012' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19212' AND categoria='senderismo') WHERE codigo_ine='20013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19245' AND categoria='senderismo') WHERE codigo_ine='20014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19257' AND categoria='senderismo') WHERE codigo_ine='20015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19274' AND categoria='senderismo') WHERE codigo_ine='20016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19291' AND categoria='senderismo') WHERE codigo_ine='20017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='19331' AND categoria='senderismo') WHERE codigo_ine='20018' AND categoria='senderismo';

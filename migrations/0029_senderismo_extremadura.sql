-- 0029: Senderismo Extremadura (Cáceres + Badajoz)
-- Generado: 2026-06-08

-- ============================================================
-- RESET CÁCERES
-- ============================================================
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '10021','10022','10023','10024','10025','10026','10027','10028','10029','10030',
  '10031','10032','10033','10034','10035','10036','10037','10038','10039','10040',
  '10041','10042','10043','10044','10045','10046','10047','10048','10049','10050',
  '10051','10052','10053','10054','10055','10056','10057','10058','10059','10060',
  '10061','10062','10063','10064','10065','10066','10067','10068','10069','10070',
  '10071','10072','10073','10075','10076','10077','10078','10079','10080','10081',
  '10082','10083','10084','10085','10086','10087','10088','10089','10090','10091',
  '10092','10093','10094','10095','10096','10097','10098','10099','10100','10101',
  '10102','10103','10104','10105','10106','10107','10108','10109','10110','10111',
  '10112','10113','10114','10115','10116','10117','10118','10119','10120','10121',
  '10122','10123','10124','10125','10126','10127','10128','10129','10130','10131',
  '10132','10133','10134','10135','10136','10137','10138','10139','10140','10141',
  '10142','10143','10144','10145','10146','10147','10148','10149','10150','10151',
  '10152','10153','10154','10155','10156','10157','10158','10159','10160','10161',
  '10162','10163','10164','10165','10166','10167','10168','10169','10170','10171',
  '10172','10173','10174','10175','10176','10177','10178','10179','10180','10181',
  '10182','10183','10184','10185','10186','10187','10188','10189','10190','10191',
  '10192','10193','10194','10195','10196','10197','10198','10199','10200','10201',
  '10202','10203','10204','10205','10206','10207','10208','10209','10210','10211',
  '10212','10213','10214','10215','10216','10217','10218','10219',
  '10901','10902','10903','10904','10905',
  '15001','15002','15003','15004','15005','15006','15007','15008','15009','15010',
  '15011','15012','15013','15014','15015','15016','15017','15018','15019','15020','15021'
);
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine LIKE '10%';
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine LIKE '15%';

-- ============================================================
-- CÁCERES — VALLE DEL JERTE (zona estrella)
-- ============================================================
UPDATE puntuaciones SET puntuacion=95 WHERE codigo_ine='10147' AND categoria='senderismo'; -- Piornal
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10147','sendero','Garganta de los Infiernos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10147','sendero','Ruta del Piornal al Jerte','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10147','sendero','Sendero PR-CC 5','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine='10107' AND categoria='senderismo'; -- Jerte
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10107','sendero','Garganta de los Infiernos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10107','sendero','Ruta de los Cerezos en flor','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10107','sendero','Sendero del Río Jerte','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='10183' AND categoria='senderismo'; -- Tornavacas
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10183','sendero','Puerto de Tornavacas — GR-10','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10183','sendero','Sendero del Alto Jerte','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=83 WHERE codigo_ine='10035' AND categoria='senderismo'; -- Cabezuela del Valle
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10035','sendero','Valle del Jerte sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10035','sendero','Ruta de los Castaños','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=79 WHERE codigo_ine='10184' AND categoria='senderismo'; -- El Torno
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10184','sendero','Sendero del Valle del Jerte','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=76 WHERE codigo_ine='10130' AND categoria='senderismo'; -- Navaconcejo
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10130','sendero','Ruta del Cerezo del Jerte','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=73 WHERE codigo_ine='10025' AND categoria='senderismo'; -- Barrado
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10025','sendero','Sendero del Jerte alto','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='10054' AND categoria='senderismo'; -- Casas del Castañar
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10054','sendero','Castañar del Jerte','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='10196' AND categoria='senderismo'; -- Valdastillas
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='10154' AND categoria='senderismo'; -- Rebollar

-- ============================================================
-- CÁCERES — LA VERA
-- ============================================================
UPDATE puntuaciones SET puntuacion=84 WHERE codigo_ine='10091' AND categoria='senderismo'; -- Guijo de Santa Bárbara
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10091','sendero','Acceso Sierra de Gredos sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10091','sendero','Garganta del Trampal','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10091','sendero','Sendero del Río Tiétar alto','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=83 WHERE codigo_ine='10079' AND categoria='senderismo'; -- Garganta la Olla
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10079','sendero','Garganta de Santa María','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10079','sendero','Sendero de la Vera alta','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='10157' AND categoria='senderismo'; -- Robledillo de la Vera
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10157','sendero','Sendero de Robledillo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10157','sendero','Garganta de Alardos','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='10105' AND categoria='senderismo'; -- Jarandilla de la Vera
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10105','sendero','Garganta de Jarandilla','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10105','sendero','Ruta del Castillo de los Zúñiga','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='10068' AND categoria='senderismo'; -- Cuacos de Yuste
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10068','sendero','Monasterio de Yuste entorno','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10068','sendero','Sendero de la Vera media','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='10110' AND categoria='senderismo'; -- Losar de la Vera
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10110','sendero','Garganta de Losar','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='10022' AND categoria='senderismo'; -- Arroyomolinos de la Vera
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10022','sendero','Garganta de Arroyomolinos','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='10111' AND categoria='senderismo'; -- Madrigal de la Vera
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10111','sendero','Sendero del Tiétar La Vera','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='10204' AND categoria='senderismo'; -- Valverde de la Vera
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='10212' AND categoria='senderismo'; -- Villanueva de la Vera
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='10138' AND categoria='senderismo'; -- Pasarón de la Vera
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='10081' AND categoria='senderismo'; -- Gargüera de la Vera
UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='10065' AND categoria='senderismo'; -- Collado de la Vera
UPDATE puntuaciones SET puntuacion=59 WHERE codigo_ine='10181' AND categoria='senderismo'; -- Tejeda de Tiétar
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='10104' AND categoria='senderismo'; -- Jaraíz de la Vera
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='10179' AND categoria='senderismo'; -- Talaveruela de la Vera
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='10206' AND categoria='senderismo'; -- Viandar de la Vera

-- ============================================================
-- CÁCERES — LAS HURDES
-- ============================================================
UPDATE puntuaciones SET puntuacion=85 WHERE codigo_ine='10041' AND categoria='senderismo'; -- Caminomorisco
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10041','sendero','Las Hurdes — Río Hurdano','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10041','sendero','Sendero de los Chorros de la Meancera','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10041','sendero','Ruta de las Albercas','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='10135' AND categoria='senderismo'; -- Nuñomoral
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10135','sendero','Las Hurdes — Nuñomoral','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10135','sendero','Sendero del Río de la Vega','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='10108' AND categoria='senderismo'; -- Ladrillar
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10108','sendero','Las Hurdes remotas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10108','sendero','Río Las Hurdes alto','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='10146' AND categoria='senderismo'; -- Pinofranqueado
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10146','sendero','Sendero del Río Hurdano bajo','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='10051' AND categoria='senderismo'; -- Casares de las Hurdes
UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='10144' AND categoria='senderismo'; -- La Pesga

-- ============================================================
-- CÁCERES — SIERRA DE GATA
-- ============================================================
UPDATE puntuaciones SET puntuacion=86 WHERE codigo_ine='10164' AND categoria='senderismo'; -- San Martín de Trevejo
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10164','sendero','Sierra de Jálama','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10164','sendero','Sendero de San Martín de Trevejo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10164','sendero','Ruta de los Tres Países','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=82 WHERE codigo_ine='10156' AND categoria='senderismo'; -- Robledillo de Gata
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10156','sendero','Sierra de Gata — Robledillo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10156','sendero','Sendero del olivar y castaños','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=75 WHERE codigo_ine='10071' AND categoria='senderismo'; -- Descargamaría
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10071','sendero','Sierra de Gata alta','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='10187' AND categoria='senderismo'; -- Torre de Don Miguel
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10187','sendero','Sierra de Gata — Torre','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='10072' AND categoria='senderismo'; -- Eljas
UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='10100' AND categoria='senderismo'; -- Hoyos
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='10210' AND categoria='senderismo'; -- Villamiel
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='10093' AND categoria='senderismo'; -- Hernán-Pérez
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='10142' AND categoria='senderismo'; -- Perales del Puerto
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='10205' AND categoria='senderismo'; -- Valverde del Fresno
UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='10084' AND categoria='senderismo'; -- Gata
UPDATE puntuaciones SET puntuacion=59 WHERE codigo_ine='10215' AND categoria='senderismo'; -- Villasbuenas de Gata
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='10171' AND categoria='senderismo'; -- Santibáñez el Alto
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='10064' AND categoria='senderismo'; -- Cilleros
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='10185' AND categoria='senderismo'; -- Torrecilla de los Ángeles

-- ============================================================
-- CÁCERES — MONFRAGÜE
-- ============================================================
UPDATE puntuaciones SET puntuacion=91 WHERE codigo_ine='10190' AND categoria='senderismo'; -- Torrejón el Rubio
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10190','sendero','Parque Nacional Monfragüe','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10190','sendero','Castillo de Monfragüe','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10190','sendero','Sendero del Salto del Gitano','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=77 WHERE codigo_ine='10175' AND categoria='senderismo'; -- Serradilla
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10175','sendero','Monfragüe sur — Serradilla','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='10116' AND categoria='senderismo'; -- Malpartida de Plasencia
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10116','sendero','Monfragüe acceso — Los Barruecos','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='10176' AND categoria='senderismo'; -- Serrejón

-- ============================================================
-- CÁCERES — VILLUERCAS-IBORES
-- ============================================================
UPDATE puntuaciones SET puntuacion=90 WHERE codigo_ine='10087' AND categoria='senderismo'; -- Guadalupe
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10087','sendero','Villuercas — Guadalupe','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10087','sendero','Sendero de las Villuercas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10087','sendero','Ruta del Monasterio de Guadalupe','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=80 WHERE codigo_ine='10044' AND categoria='senderismo'; -- Cañamero
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10044','sendero','Sierra de las Villuercas','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10044','sendero','Río Ruecas garganta','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='10029' AND categoria='senderismo'; -- Berzocana
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10029','sendero','Villuercas norte','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=67 WHERE codigo_ine='10132' AND categoria='senderismo'; -- Navalvillar de Ibor
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='10033' AND categoria='senderismo'; -- Cabañas del Castillo
UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='10060' AND categoria='senderismo'; -- Castañar de Ibor
UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='10109' AND categoria='senderismo'; -- Logrosán
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='10159' AND categoria='senderismo'; -- Robledollano
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='10134' AND categoria='senderismo'; -- Navezuelas
UPDATE puntuaciones SET puntuacion=53 WHERE codigo_ine='10075' AND categoria='senderismo'; -- Fresnedoso de Ibor
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='10120' AND categoria='senderismo'; -- Mesas de Ibor

-- ============================================================
-- CÁCERES — SIERRA DE BÉJAR / HERVÁS / BAÑOS
-- ============================================================
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='10096' AND categoria='senderismo'; -- Hervás
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10096','sendero','Sierra de Béjar acceso sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10096','sendero','Sendero del Río Ambroz','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='10024' AND categoria='senderismo'; -- Baños de Montemayor
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10024','sendero','Puerto de Béjar — GR-10','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10024','sendero','Sendero termal y sierra','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='10174' AND categoria='senderismo'; -- Segura de Toro

-- ============================================================
-- CÁCERES — OTROS DESTACADOS
-- ============================================================
UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='10126' AND categoria='senderismo'; -- Montánchez
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10126','sendero','Castillo de Montánchez entorno','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='10148' AND categoria='senderismo'; -- Plasencia
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('10148','sendero','Valle del Jerte acceso','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='10195' AND categoria='senderismo'; -- Trujillo
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='10203' AND categoria='senderismo'; -- Valencia de Alcántara
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='10037' AND categoria='senderismo'; -- Cáceres capital
UPDATE puntuaciones SET puntuacion=45 WHERE codigo_ine='10131' AND categoria='senderismo'; -- Navalmoral de la Mata
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='10218' AND categoria='senderismo'; -- Zarza la Mayor
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='10067' AND categoria='senderismo'; -- Coria

-- SYNC Cáceres 10xxx → 15xxx
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10032' AND categoria='senderismo') WHERE codigo_ine='15001' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10037' AND categoria='senderismo') WHERE codigo_ine='15005' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10067' AND categoria='senderismo') WHERE codigo_ine='15003' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10068' AND categoria='senderismo') WHERE codigo_ine='15004' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10082' AND categoria='senderismo') WHERE codigo_ine='15006' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10087' AND categoria='senderismo') WHERE codigo_ine='15007' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10096' AND categoria='senderismo') WHERE codigo_ine='15008' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10104' AND categoria='senderismo') WHERE codigo_ine='15010' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10105' AND categoria='senderismo') WHERE codigo_ine='15009' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10110' AND categoria='senderismo') WHERE codigo_ine='15011' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10126' AND categoria='senderismo') WHERE codigo_ine='15013' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10128' AND categoria='senderismo') WHERE codigo_ine='15014' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10131' AND categoria='senderismo') WHERE codigo_ine='15015' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10148' AND categoria='senderismo') WHERE codigo_ine='15016' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10180' AND categoria='senderismo') WHERE codigo_ine='15017' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10195' AND categoria='senderismo') WHERE codigo_ine='15018' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10212' AND categoria='senderismo') WHERE codigo_ine='15019' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='10218' AND categoria='senderismo') WHERE codigo_ine='15021' AND categoria='senderismo';

-- ============================================================
-- RESET BADAJOZ
-- ============================================================
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='senderismo' AND codigo_ine IN (
  '06001','06002','06003','06004','06005','06006','06007','06008','06009','06010',
  '06011','06012','06013','06014','06015','06016','06017','06018','06019','06020',
  '06021','06022','06023','06024','06025','06026','06027','06028','06029','06030',
  '06031','06032','06033','06034','06035','06036','06037','06038','06039','06040',
  '06041','06042','06043','06044','06045','06046','06047','06048','06049','06050',
  '06051','06052','06053','06054','06055','06056','06057','06058','06059','06060',
  '06061','06062','06063','06064','06065','06066','06067','06068','06069','06070',
  '06071','06072','06073','06074','06075','06076','06077','06078','06079','06080',
  '06081','06082','06083','06084','06085','06086','06087','06088','06089','06090',
  '06091','06092','06093','06094','06095','06096','06097','06098','06099','06100',
  '06101','06102','06103','06104','06105','06106','06107','06108','06109','06110',
  '06111','06112','06113','06114','06115','06116','06117','06118','06119','06120',
  '06121','06122','06123','06124','06125','06126','06127','06128','06129','06130',
  '06131','06132','06133','06134','06135','06136','06137','06138','06139','06140',
  '06141','06142','06143','06144','06145','06146','06147','06148','06149','06150',
  '06151','06152','06153','06154','06155','06156','06157','06158','06159','06160',
  '06161','06162','06901','06902','06903'
);
DELETE FROM entidades WHERE tipo='sendero' AND fuente='excel_curado' AND codigo_ine LIKE '06%';

-- ============================================================
-- BADAJOZ — TENTUDÍA (zona estrella)
-- ============================================================
UPDATE puntuaciones SET puntuacion=78 WHERE codigo_ine='06016' AND categoria='senderismo'; -- Monesterio
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06016','sendero','Parque Natural Tentudía','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06016','sendero','GR-41 Ruta de la Plata','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06016','sendero','Sendero del Convento de Tentudía','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='06055' AND categoria='senderismo'; -- Fuentes de León
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06055','sendero','Sierra Morena — Tentudía sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06055','sendero','Sendero del Río Ardila','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=71 WHERE codigo_ine='06026' AND categoria='senderismo'; -- Calera de León
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06026','sendero','Tentudía — Calera de León','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06026','sendero','Convento de Tentudía acceso','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='06124' AND categoria='senderismo'; -- Segura de León
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06124','sendero','Sierra Morena — Segura de León','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=62 WHERE codigo_ine='06086' AND categoria='senderismo'; -- Montemolín
UPDATE puntuaciones SET puntuacion=59 WHERE codigo_ine='06067' AND categoria='senderismo'; -- Higuera la Real
UPDATE puntuaciones SET puntuacion=57 WHERE codigo_ine='06105' AND categoria='senderismo'; -- Puebla del Maestre

-- ============================================================
-- BADAJOZ — LA SIBERIA
-- ============================================================
UPDATE puntuaciones SET puntuacion=74 WHERE codigo_ine='06035' AND categoria='senderismo'; -- Castilblanco
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06035','sendero','Embalse de García de Sola','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06035','sendero','La Siberia Extremeña','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=69 WHERE codigo_ine='06013' AND categoria='senderismo'; -- Herrera del Duque
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06013','sendero','Embalse de García de Sola','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06013','sendero','La Siberia — Herrera','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='06125' AND categoria='senderismo'; -- Siruela
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06125','sendero','La Siberia — Siruela','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='06033' AND categoria='senderismo'; -- Casas de Don Pedro
UPDATE puntuaciones SET puntuacion=61 WHERE codigo_ine='06127' AND categoria='senderismo'; -- Talarrubias
UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='06102' AND categoria='senderismo'; -- Puebla de Alcocer
UPDATE puntuaciones SET puntuacion=58 WHERE codigo_ine='06137' AND categoria='senderismo'; -- Valdecaballeros
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06137','sendero','Embalse del Cíjara','excel_curado',date('now'));
UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='06062' AND categoria='senderismo'; -- Helechosa de los Montes
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='06030' AND categoria='senderismo'; -- Capilla
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='06051' AND categoria='senderismo'; -- Fuenlabrada de los Montes
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='06100' AND categoria='senderismo'; -- Peñalsordo
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='06057' AND categoria='senderismo'; -- Garlitos

-- ============================================================
-- BADAJOZ — SIERRA DE SAN PEDRO / ALBURQUERQUE
-- ============================================================
UPDATE puntuaciones SET puntuacion=68 WHERE codigo_ine='06001' AND categoria='senderismo'; -- Alburquerque
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06001','sendero','Parque Natural Sierra de San Pedro','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06001','sendero','Castillo de Alburquerque entorno','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=63 WHERE codigo_ine='06123' AND categoria='senderismo'; -- San Vicente de Alcántara
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06123','sendero','Sierra de San Pedro','excel_curado',date('now'));

-- ============================================================
-- BADAJOZ — HORNACHOS / SIERRA GRANDE
-- ============================================================
UPDATE puntuaciones SET puntuacion=72 WHERE codigo_ine='06069' AND categoria='senderismo'; -- Hornachos
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06069','sendero','Peñas de Hornachos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06069','sendero','Sendero al Castillo de Hornachos','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06069','sendero','Sierra Grande de Hornachos','excel_curado',date('now'));

-- ============================================================
-- BADAJOZ — FREGENAL / SIERRA MORENA SUR
-- ============================================================
UPDATE puntuaciones SET puntuacion=64 WHERE codigo_ine='06010' AND categoria='senderismo'; -- Fregenal de la Sierra
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06010','sendero','Sierra Morena sur','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06010','sendero','Río Buiten','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=60 WHERE codigo_ine='06005' AND categoria='senderismo'; -- Azuaga
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06005','sendero','Sierra Morena — Azuaga','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=56 WHERE codigo_ine='06015' AND categoria='senderismo'; -- Llerena
UPDATE puntuaciones SET puntuacion=55 WHERE codigo_ine='06110' AND categoria='senderismo'; -- Reina
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='06053' AND categoria='senderismo'; -- Fuente del Arco
UPDATE puntuaciones SET puntuacion=52 WHERE codigo_ine='06059' AND categoria='senderismo'; -- Granja de Torrehermosa
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='06011' AND categoria='senderismo'; -- Fuente de Cantos

-- ============================================================
-- BADAJOZ — JEREZ DE LOS CABALLEROS
-- ============================================================
UPDATE puntuaciones SET puntuacion=65 WHERE codigo_ine='06014' AND categoria='senderismo'; -- Jerez de los Caballeros
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06014','sendero','Sierra de Jerez','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06014','sendero','Río Ardila ribera','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='06024' AND categoria='senderismo'; -- Zahínos
UPDATE puntuaciones SET puntuacion=50 WHERE codigo_ine='06093' AND categoria='senderismo'; -- Oliva de la Frontera
UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='06140' AND categoria='senderismo'; -- Valencia del Mombuey

-- ============================================================
-- BADAJOZ — MÉRIDA / CORNALVO
-- ============================================================
UPDATE puntuaciones SET puntuacion=54 WHERE codigo_ine='06018' AND categoria='senderismo'; -- Mérida
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06018','sendero','Parque Natural Cornalvo','excel_curado',date('now'));
INSERT OR IGNORE INTO entidades (codigo_ine,tipo,nombre,fuente,fecha_ingesta) VALUES ('06018','sendero','Embalse de Proserpina','excel_curado',date('now'));

UPDATE puntuaciones SET puntuacion=48 WHERE codigo_ine='06096' AND categoria='senderismo'; -- Orellana de la Sierra
UPDATE puntuaciones SET puntuacion=46 WHERE codigo_ine='06097' AND categoria='senderismo'; -- Orellana la Vieja

-- ============================================================
-- BADAJOZ — OTROS
-- ============================================================
UPDATE puntuaciones SET puntuacion=44 WHERE codigo_ine='06019' AND categoria='senderismo'; -- Olivenza
UPDATE puntuaciones SET puntuacion=42 WHERE codigo_ine='06023' AND categoria='senderismo'; -- Zafra
UPDATE puntuaciones SET puntuacion=40 WHERE codigo_ine='06006' AND categoria='senderismo'; -- Badajoz capital
UPDATE puntuaciones SET puntuacion=36 WHERE codigo_ine='06007' AND categoria='senderismo'; -- Cabeza del Buey
UPDATE puntuaciones SET puntuacion=35 WHERE codigo_ine='06036' AND categoria='senderismo'; -- Castuera
UPDATE puntuaciones SET puntuacion=32 WHERE codigo_ine='06022' AND categoria='senderismo'; -- Villanueva de la Serena
UPDATE puntuaciones SET puntuacion=30 WHERE codigo_ine='06009' AND categoria='senderismo'; -- Don Benito

-- SYNC Badajoz pares
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06008' AND categoria='senderismo') WHERE codigo_ine='06042' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06009' AND categoria='senderismo') WHERE codigo_ine='06044' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06010' AND categoria='senderismo') WHERE codigo_ine='06050' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06011' AND categoria='senderismo') WHERE codigo_ine='06052' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06012' AND categoria='senderismo') WHERE codigo_ine='06060' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06013' AND categoria='senderismo') WHERE codigo_ine='06063' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06014' AND categoria='senderismo') WHERE codigo_ine='06070' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06015' AND categoria='senderismo') WHERE codigo_ine='06074' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06016' AND categoria='senderismo') WHERE codigo_ine='06085' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06017' AND categoria='senderismo') WHERE codigo_ine='06088' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06018' AND categoria='senderismo') WHERE codigo_ine='06083' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06019' AND categoria='senderismo') WHERE codigo_ine='06095' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06020' AND categoria='senderismo') WHERE codigo_ine='06129' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06022' AND categoria='senderismo') WHERE codigo_ine='06153' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06023' AND categoria='senderismo') WHERE codigo_ine='06158' AND categoria='senderismo';
UPDATE puntuaciones SET puntuacion=(SELECT puntuacion FROM puntuaciones WHERE codigo_ine='06024' AND categoria='senderismo') WHERE codigo_ine='06159' AND categoria='senderismo';

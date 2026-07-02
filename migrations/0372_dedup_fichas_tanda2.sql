-- 0372 auditoría de credibilidad: fusión de fichas duplicadas visibles (2ª tanda, 65 pares)
-- Mecánica igual que 0312: mover entidades, puntuaciones a MAX, ocultar secundaria.

-- 03059 -> 03013
UPDATE OR IGNORE entidades SET codigo_ine='03013' WHERE codigo_ine='03059';
DELETE FROM entidades WHERE codigo_ine='03059';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '03013',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='03059' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='03059';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='03059';

-- 03082 -> 03022
UPDATE OR IGNORE entidades SET codigo_ine='03022' WHERE codigo_ine='03082';
DELETE FROM entidades WHERE codigo_ine='03082';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '03022',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='03082' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='03082';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='03082';

-- 45016 -> 03022
UPDATE OR IGNORE entidades SET codigo_ine='03022' WHERE codigo_ine='45016';
DELETE FROM entidades WHERE codigo_ine='45016';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '03022',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='45016' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='45016';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='45016';

-- 03139 -> 03039
UPDATE OR IGNORE entidades SET codigo_ine='03039' WHERE codigo_ine='03139';
DELETE FROM entidades WHERE codigo_ine='03139';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '03039',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='03139' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='03139';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='03139';

-- 03065 -> 03016
UPDATE OR IGNORE entidades SET codigo_ine='03016' WHERE codigo_ine='03065';
DELETE FROM entidades WHERE codigo_ine='03065';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '03016',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='03065' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='03065';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='03065';

-- 06021 -> 10203
UPDATE OR IGNORE entidades SET codigo_ine='10203' WHERE codigo_ine='06021';
DELETE FROM entidades WHERE codigo_ine='06021';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '10203',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='06021' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='06021';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='06021';

-- 07033 -> 07012
UPDATE OR IGNORE entidades SET codigo_ine='07012' WHERE codigo_ine='07033';
DELETE FROM entidades WHERE codigo_ine='07033';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '07012',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='07033' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='07033';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07033';

-- 90021 -> 07013
UPDATE OR IGNORE entidades SET codigo_ine='07013' WHERE codigo_ine='90021';
DELETE FROM entidades WHERE codigo_ine='90021';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '07013',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90021' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90021';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90021';

-- 07032 -> 07013
UPDATE OR IGNORE entidades SET codigo_ine='07013' WHERE codigo_ine='07032';
DELETE FROM entidades WHERE codigo_ine='07032';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '07013',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='07032' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='07032';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07032';

-- 07015 -> 07040
UPDATE OR IGNORE entidades SET codigo_ine='07040' WHERE codigo_ine='07015';
DELETE FROM entidades WHERE codigo_ine='07015';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '07040',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='07015' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='07015';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07015';

-- 07041 -> 07016
UPDATE OR IGNORE entidades SET codigo_ine='07016' WHERE codigo_ine='07041';
DELETE FROM entidades WHERE codigo_ine='07041';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '07016',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='07041' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='07041';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07041';

-- 07061 -> 07023
UPDATE OR IGNORE entidades SET codigo_ine='07023' WHERE codigo_ine='07061';
DELETE FROM entidades WHERE codigo_ine='07061';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '07023',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='07061' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='07061';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07061';

-- 08018 -> 17147
UPDATE OR IGNORE entidades SET codigo_ine='17147' WHERE codigo_ine='08018';
DELETE FROM entidades WHERE codigo_ine='08018';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '17147',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='08018' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='08018';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='08018';

-- 11007 -> 44126
UPDATE OR IGNORE entidades SET codigo_ine='44126' WHERE codigo_ine='11007';
DELETE FROM entidades WHERE codigo_ine='11007';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '44126',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='11007' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='11007';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='11007';

-- 11011 -> 44160
UPDATE OR IGNORE entidades SET codigo_ine='44160' WHERE codigo_ine='11011';
DELETE FROM entidades WHERE codigo_ine='11011';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '44160',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='11011' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='11011';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='11011';

-- 15002 -> 37046
UPDATE OR IGNORE entidades SET codigo_ine='37046' WHERE codigo_ine='15002';
DELETE FROM entidades WHERE codigo_ine='15002';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '37046',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='15002' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='15002';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='15002';

-- 16015 -> 46230
UPDATE OR IGNORE entidades SET codigo_ine='46230' WHERE codigo_ine='16015';
DELETE FROM entidades WHERE codigo_ine='16015';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '46230',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='16015' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='16015';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='16015';

-- 20010 -> 42113
UPDATE OR IGNORE entidades SET codigo_ine='42113' WHERE codigo_ine='20010';
DELETE FROM entidades WHERE codigo_ine='20010';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '42113',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='20010' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='20010';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='20010';

-- 33021 -> 50267
UPDATE OR IGNORE entidades SET codigo_ine='50267' WHERE codigo_ine='33021';
DELETE FROM entidades WHERE codigo_ine='33021';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '50267',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='33021' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='33021';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='33021';

-- 43086 -> 42009
UPDATE OR IGNORE entidades SET codigo_ine='42009' WHERE codigo_ine='43086';
DELETE FROM entidades WHERE codigo_ine='43086';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '42009',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='43086' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='43086';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='43086';

-- 46220 -> 45013
UPDATE OR IGNORE entidades SET codigo_ine='45013' WHERE codigo_ine='46220';
DELETE FROM entidades WHERE codigo_ine='46220';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '45013',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='46220' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='46220';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='46220';

-- 01021 -> 50013
UPDATE OR IGNORE entidades SET codigo_ine='50013' WHERE codigo_ine='01021';
DELETE FROM entidades WHERE codigo_ine='01021';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '50013',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='01021' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='01021';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='01021';

-- 01046 -> 50015
UPDATE OR IGNORE entidades SET codigo_ine='50015' WHERE codigo_ine='01046';
DELETE FROM entidades WHERE codigo_ine='01046';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '50015',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='01046' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='01046';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='01046';

-- 01051 -> 50035
UPDATE OR IGNORE entidades SET codigo_ine='50035' WHERE codigo_ine='01051';
DELETE FROM entidades WHERE codigo_ine='01051';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '50035',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='01051' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='01051';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='01051';

-- 01059 -> 50039
UPDATE OR IGNORE entidades SET codigo_ine='50039' WHERE codigo_ine='01059';
DELETE FROM entidades WHERE codigo_ine='01059';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '50039',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='01059' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='01059';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='01059';

-- 90085 -> 05246
UPDATE OR IGNORE entidades SET codigo_ine='05246' WHERE codigo_ine='90085';
DELETE FROM entidades WHERE codigo_ine='90085';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '05246',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90085' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90085';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90085';

-- 90680 -> 08098 (se conserva la ficha con población y se renombra)
UPDATE OR IGNORE entidades SET codigo_ine='08098' WHERE codigo_ine='90680';
DELETE FROM entidades WHERE codigo_ine='90680';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '08098',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90680' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90680';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90680';
UPDATE municipios SET nombre='Sant Salvador de Guardiola' WHERE codigo_ine='08098';

-- 90579 -> 08142 (se conserva la ficha con población y se renombra)
UPDATE OR IGNORE entidades SET codigo_ine='08142' WHERE codigo_ine='90579';
DELETE FROM entidades WHERE codigo_ine='90579';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '08142',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90579' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90579';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90579';
UPDATE municipios SET nombre='La Nou de Berguedà' WHERE codigo_ine='08142';

-- 90581 -> 08191 (se conserva la ficha con población y se renombra)
UPDATE OR IGNORE entidades SET codigo_ine='08191' WHERE codigo_ine='90581';
DELETE FROM entidades WHERE codigo_ine='90581';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '08191',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90581' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90581';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90581';
UPDATE municipios SET nombre='Sallent' WHERE codigo_ine='08191';

-- 15026 -> 15902
UPDATE OR IGNORE entidades SET codigo_ine='15902' WHERE codigo_ine='15026';
DELETE FROM entidades WHERE codigo_ine='15026';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '15902',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='15026' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='15026';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='15026';

-- 90034 -> 17034
UPDATE OR IGNORE entidades SET codigo_ine='17034' WHERE codigo_ine='90034';
DELETE FROM entidades WHERE codigo_ine='90034';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '17034',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90034' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90034';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90034';

-- 90965 -> 18149
UPDATE OR IGNORE entidades SET codigo_ine='18149' WHERE codigo_ine='90965';
DELETE FROM entidades WHERE codigo_ine='90965';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '18149',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90965' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90965';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90965';

-- 24052 -> 19049
UPDATE OR IGNORE entidades SET codigo_ine='19049' WHERE codigo_ine='24052';
DELETE FROM entidades WHERE codigo_ine='24052';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '19049',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='24052' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='24052';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='24052';

-- 20055 -> 21002
UPDATE OR IGNORE entidades SET codigo_ine='21002' WHERE codigo_ine='20055';
DELETE FROM entidades WHERE codigo_ine='20055';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '21002',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='20055' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='20055';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='20055';

-- 90702 -> 20065
UPDATE OR IGNORE entidades SET codigo_ine='20065' WHERE codigo_ine='90702';
DELETE FROM entidades WHERE codigo_ine='90702';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '20065',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90702' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90702';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90702';

-- 21016 -> 20069
UPDATE OR IGNORE entidades SET codigo_ine='20069' WHERE codigo_ine='21016';
DELETE FROM entidades WHERE codigo_ine='21016';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '20069',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='21016' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='21016';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='21016';

-- 90262 -> 20076
UPDATE OR IGNORE entidades SET codigo_ine='20076' WHERE codigo_ine='90262';
DELETE FROM entidades WHERE codigo_ine='90262';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '20076',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90262' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90262';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90262';

-- 90802 -> 24099
UPDATE OR IGNORE entidades SET codigo_ine='24099' WHERE codigo_ine='90802';
DELETE FROM entidades WHERE codigo_ine='90802';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '24099',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90802' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90802';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90802';

-- 90073 -> 28024
UPDATE OR IGNORE entidades SET codigo_ine='28024' WHERE codigo_ine='90073';
DELETE FROM entidades WHERE codigo_ine='90073';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '28024',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90073' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90073';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90073';

-- 31058 -> 33005
UPDATE OR IGNORE entidades SET codigo_ine='33005' WHERE codigo_ine='31058';
DELETE FROM entidades WHERE codigo_ine='31058';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '33005',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='31058' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='31058';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='31058';

-- 90730 -> 31088
UPDATE OR IGNORE entidades SET codigo_ine='31088' WHERE codigo_ine='90730';
DELETE FROM entidades WHERE codigo_ine='90730';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '31088',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90730' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90730';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90730';

-- 31097 -> 33007
UPDATE OR IGNORE entidades SET codigo_ine='33007' WHERE codigo_ine='31097';
DELETE FROM entidades WHERE codigo_ine='31097';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '33007',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='31097' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='31097';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='31097';

-- 31201 -> 33014
UPDATE OR IGNORE entidades SET codigo_ine='33014' WHERE codigo_ine='31201';
DELETE FROM entidades WHERE codigo_ine='31201';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '33014',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='31201' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='31201';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='31201';

-- 31206 -> 33015
UPDATE OR IGNORE entidades SET codigo_ine='33015' WHERE codigo_ine='31206';
DELETE FROM entidades WHERE codigo_ine='31206';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '33015',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='31206' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='31206';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='31206';

-- 90937 -> 31244
UPDATE OR IGNORE entidades SET codigo_ine='31244' WHERE codigo_ine='90937';
DELETE FROM entidades WHERE codigo_ine='90937';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '31244',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90937' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90937';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90937';

-- 90532 -> 32070
UPDATE OR IGNORE entidades SET codigo_ine='32070' WHERE codigo_ine='90532';
DELETE FROM entidades WHERE codigo_ine='90532';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '32070',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90532' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90532';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90532';

-- 90242 -> 34096
UPDATE OR IGNORE entidades SET codigo_ine='34096' WHERE codigo_ine='90242';
DELETE FROM entidades WHERE codigo_ine='90242';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '34096',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90242' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90242';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90242';

-- 51010 -> 40076
UPDATE OR IGNORE entidades SET codigo_ine='40076' WHERE codigo_ine='51010';
DELETE FROM entidades WHERE codigo_ine='51010';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '40076',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='51010' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='51010';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='51010';

-- 90918 -> 43075
UPDATE OR IGNORE entidades SET codigo_ine='43075' WHERE codigo_ine='90918';
DELETE FROM entidades WHERE codigo_ine='90918';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '43075',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90918' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90918';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90918';

-- 90052 -> 43104
UPDATE OR IGNORE entidades SET codigo_ine='43104' WHERE codigo_ine='90052';
DELETE FROM entidades WHERE codigo_ine='90052';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '43104',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90052' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90052';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90052';

-- 90769 -> 44209
UPDATE OR IGNORE entidades SET codigo_ine='44209' WHERE codigo_ine='90769';
DELETE FROM entidades WHERE codigo_ine='90769';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '44209',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90769' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90769';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90769';

-- 90818 -> 47055
UPDATE OR IGNORE entidades SET codigo_ine='47055' WHERE codigo_ine='90818';
DELETE FROM entidades WHERE codigo_ine='90818';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '47055',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90818' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90818';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90818';

-- 90819 -> 47100
UPDATE OR IGNORE entidades SET codigo_ine='47100' WHERE codigo_ine='90819';
DELETE FROM entidades WHERE codigo_ine='90819';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '47100',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90819' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90819';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90819';

-- 48524 -> 48060
UPDATE OR IGNORE entidades SET codigo_ine='48060' WHERE codigo_ine='48524';
DELETE FROM entidades WHERE codigo_ine='48524';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '48060',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='48524' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='48524';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='48524';

-- 90956 -> 48085
UPDATE OR IGNORE entidades SET codigo_ine='48085' WHERE codigo_ine='90956';
DELETE FROM entidades WHERE codigo_ine='90956';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '48085',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90956' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90956';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90956';

-- 90162 -> 50295
UPDATE OR IGNORE entidades SET codigo_ine='50295' WHERE codigo_ine='90162';
DELETE FROM entidades WHERE codigo_ine='90162';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '50295',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90162' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90162';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90162';

-- 90045 -> 90776
UPDATE OR IGNORE entidades SET codigo_ine='90776' WHERE codigo_ine='90045';
DELETE FROM entidades WHERE codigo_ine='90045';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '90776',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90045' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90045';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90045';

-- 90046 -> 90777
UPDATE OR IGNORE entidades SET codigo_ine='90777' WHERE codigo_ine='90046';
DELETE FROM entidades WHERE codigo_ine='90046';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '90777',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90046' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90046';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90046';

-- 19019 -> 29075
UPDATE OR IGNORE entidades SET codigo_ine='29075' WHERE codigo_ine='19019';
DELETE FROM entidades WHERE codigo_ine='19019';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '29075',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='19019' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='19019';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='19019';

-- 26013 -> 49166
UPDATE OR IGNORE entidades SET codigo_ine='49166' WHERE codigo_ine='26013';
DELETE FROM entidades WHERE codigo_ine='26013';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '49166',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='26013' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='26013';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='26013';

-- 46244 -> 45014
UPDATE OR IGNORE entidades SET codigo_ine='45014' WHERE codigo_ine='46244';
DELETE FROM entidades WHERE codigo_ine='46244';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '45014',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='46244' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='46244';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='46244';

-- 01055 -> 50037
UPDATE OR IGNORE entidades SET codigo_ine='50037' WHERE codigo_ine='01055';
DELETE FROM entidades WHERE codigo_ine='01055';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '50037',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='01055' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='01055';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='01055';

-- 24029 -> 23028
UPDATE OR IGNORE entidades SET codigo_ine='23028' WHERE codigo_ine='24029';
DELETE FROM entidades WHERE codigo_ine='24029';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '23028',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='24029' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='24029';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='24029';

-- 31191 -> 33013
UPDATE OR IGNORE entidades SET codigo_ine='33013' WHERE codigo_ine='31191';
DELETE FROM entidades WHERE codigo_ine='31191';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '33013',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='31191' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='31191';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='31191';

-- 90060 -> 48913 (se conserva la ficha con población y se renombra)
UPDATE OR IGNORE entidades SET codigo_ine='48913' WHERE codigo_ine='90060';
DELETE FROM entidades WHERE codigo_ine='90060';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) SELECT '48913',categoria,puntuacion FROM puntuaciones WHERE codigo_ine='90060' ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,excluded.puntuacion);
DELETE FROM puntuaciones WHERE codigo_ine='90060';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90060';
UPDATE municipios SET nombre='Zierbena' WHERE codigo_ine='48913';

-- Renombres a nombre oficial
UPDATE municipios SET nombre='Otura' WHERE codigo_ine='18149';
UPDATE municipios SET nombre='Ordizia' WHERE codigo_ine='20076';
UPDATE municipios SET nombre='San Xoán de Río' WHERE codigo_ine='32070';
UPDATE municipios SET nombre='Sopela' WHERE codigo_ine='48085';

-- Terrenos mancomunados (Comunidad de…/Ledanía…): no son municipios turísticos, se ocultan
UPDATE municipios SET es_duplicado=1 WHERE COALESCE(es_duplicado,0)=0 AND (nombre LIKE 'Comunidad de %' OR nombre LIKE 'Comunidad del %' OR nombre LIKE 'Ledanía%' OR nombre LIKE 'Mancomunidad%' OR nombre LIKE 'Facería%');
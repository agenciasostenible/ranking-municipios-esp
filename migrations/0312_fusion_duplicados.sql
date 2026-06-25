-- 0312 fusión de fichas duplicadas (mismo municipio, dos fichas es_duplicado=0).
-- Mueve restaurantes/entidades y puntuaciones (máximo) a la ficha canónica (KEEP)
-- y oculta la secundaria (DROP) con es_duplicado=1. 32 pares.

-- 45004 -> 03014
UPDATE OR IGNORE entidades SET codigo_ine='03014' WHERE codigo_ine='45004';
DELETE FROM entidades WHERE codigo_ine='45004';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','yacimientos',32.7) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','museos',45.1) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','conjuntos',25.4) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','restaurantes_top',47.3) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','escalada',24.5) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','mochilero',21.4) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','accesible',56.2) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','balnearios',6.3) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','mercados',40.1) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','productos_locales',34.8) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('03014','mercados_gastro',46.5) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='45004';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='45004';

-- 07028 -> 07011
UPDATE OR IGNORE entidades SET codigo_ine='07011' WHERE codigo_ine='07028';
DELETE FROM entidades WHERE codigo_ine='07028';
DELETE FROM puntuaciones WHERE codigo_ine='07028';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07028';

-- 07038 -> 07014
UPDATE OR IGNORE entidades SET codigo_ine='07014' WHERE codigo_ine='07038';
DELETE FROM entidades WHERE codigo_ine='07038';
DELETE FROM puntuaciones WHERE codigo_ine='07038';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07038';

-- 07057 -> 07020
UPDATE OR IGNORE entidades SET codigo_ine='07020' WHERE codigo_ine='07057';
DELETE FROM entidades WHERE codigo_ine='07057';
DELETE FROM puntuaciones WHERE codigo_ine='07057';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07057';

-- 07060 -> 07022
UPDATE OR IGNORE entidades SET codigo_ine='07022' WHERE codigo_ine='07060';
DELETE FROM entidades WHERE codigo_ine='07060';
DELETE FROM puntuaciones WHERE codigo_ine='07060';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07060';

-- 90033 -> 08006
UPDATE OR IGNORE entidades SET codigo_ine='08006' WHERE codigo_ine='90033';
DELETE FROM entidades WHERE codigo_ine='90033';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08006','Playas',91) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08006','monumentos',84) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08006','fiestas',79) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08006','festivales',55) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08006','lujo',82) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08006','miradores',96) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08006','naturaleza',75) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08006','gastronomia',68) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90033';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90033';

-- 08171 -> 08017
UPDATE OR IGNORE entidades SET codigo_ine='08017' WHERE codigo_ine='08171';
DELETE FROM entidades WHERE codigo_ine='08171';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08017','notoriedad_instagram',38.9) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='08171';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='08171';

-- 08901 -> 08019
UPDATE OR IGNORE entidades SET codigo_ine='08019' WHERE codigo_ine='08901';
DELETE FROM entidades WHERE codigo_ine='08901';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08019','notoriedad_search',14.6) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='08901';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='08901';

-- 08215 -> 08020
UPDATE OR IGNORE entidades SET codigo_ine='08020' WHERE codigo_ine='08215';
DELETE FROM entidades WHERE codigo_ine='08215';
DELETE FROM puntuaciones WHERE codigo_ine='08215';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='08215';

-- 17184 -> 08022
UPDATE OR IGNORE entidades SET codigo_ine='08022' WHERE codigo_ine='17184';
DELETE FROM entidades WHERE codigo_ine='17184';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08022','gastronomia',48) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08022','aceite',16) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08022','TurismoRural',95) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08022','fiestas',50) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08022','miradores',96) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='17184';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='17184';

-- 09015 -> 09301
UPDATE OR IGNORE entidades SET codigo_ine='09301' WHERE codigo_ine='09015';
DELETE FROM entidades WHERE codigo_ine='09015';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','estrellas',52.3) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','yacimientos',3.6) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','museos',3.6) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','conjuntos',2.8) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','restaurantes_top',4.5) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','birdwatching',76) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','cuevas',95) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','ciclismo',80.8) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','escalada',32.7) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','pesca',37.1) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','mochilero',31.6) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','accesible',50.4) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','balnearios',9.5) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','mercados',37.6) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','productos_locales',28.8) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('09301','mercados_gastro',40.2) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='09015';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='09015';

-- 12004 -> 11001
UPDATE OR IGNORE entidades SET codigo_ine='11001' WHERE codigo_ine='12004';
DELETE FROM entidades WHERE codigo_ine='12004';
DELETE FROM puntuaciones WHERE codigo_ine='12004';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='12004';

-- 36060 -> 36016
UPDATE OR IGNORE entidades SET codigo_ine='36016' WHERE codigo_ine='36060';
DELETE FROM entidades WHERE codigo_ine='36060';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('36016','notoriedad_search',32.2) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='36060';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='36060';

-- 46078 -> 45003
UPDATE OR IGNORE entidades SET codigo_ine='45003' WHERE codigo_ine='46078';
DELETE FROM entidades WHERE codigo_ine='46078';
DELETE FROM puntuaciones WHERE codigo_ine='46078';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='46078';

-- 46145 -> 45017
UPDATE OR IGNORE entidades SET codigo_ine='45017' WHERE codigo_ine='46145';
DELETE FROM entidades WHERE codigo_ine='46145';
DELETE FROM puntuaciones WHERE codigo_ine='46145';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='46145';

-- 48068 -> 47011
UPDATE OR IGNORE entidades SET codigo_ine='47011' WHERE codigo_ine='48068';
DELETE FROM entidades WHERE codigo_ine='48068';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('47011','notoriedad_search',24.5) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='48068';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='48068';

-- 90588 -> 08251
UPDATE OR IGNORE entidades SET codigo_ine='08251' WHERE codigo_ine='90588';
DELETE FROM entidades WHERE codigo_ine='90588';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08251','monumentos',76) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('08251','fiestas',42) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90588';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90588';

-- 90355 -> 12021
UPDATE OR IGNORE entidades SET codigo_ine='12021' WHERE codigo_ine='90355';
DELETE FROM entidades WHERE codigo_ine='90355';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('12021','monumentos',64) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('12021','naturaleza',45) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90355';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90355';

-- 90356 -> 12119
UPDATE OR IGNORE entidades SET codigo_ine='12119' WHERE codigo_ine='90356';
DELETE FROM entidades WHERE codigo_ine='90356';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('12119','monumentos',45) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('12119','fiestas',33) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('12119','miradores',73) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('12119','naturaleza',52) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90356';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90356';

-- 90895 -> 17129
UPDATE OR IGNORE entidades SET codigo_ine='17129' WHERE codigo_ine='90895';
DELETE FROM entidades WHERE codigo_ine='90895';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('17129','fiestas',31) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('17129','miradores',71) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90895';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90895';

-- 90901 -> 17233
UPDATE OR IGNORE entidades SET codigo_ine='17233' WHERE codigo_ine='90901';
DELETE FROM entidades WHERE codigo_ine='90901';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('17233','fiestas',50) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90901';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90901';

-- 24046 -> 18105
UPDATE OR IGNORE entidades SET codigo_ine='18105' WHERE codigo_ine='24046';
DELETE FROM entidades WHERE codigo_ine='24046';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','museos',2) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','conjuntos',3.1) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','restaurantes_top',21.4) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','cuevas',1.7) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','ciclismo',1) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','escalada',3.9) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','pesca',2.8) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','mochilero',5.3) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','accesible',1.5) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','balnearios',0.5) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','productos_locales',6.3) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','mercados_gastro',19) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('18105','notoriedad_instagram',40.4) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='24046';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='24046';

-- 20039 -> 21010
UPDATE OR IGNORE entidades SET codigo_ine='21010' WHERE codigo_ine='20039';
DELETE FROM entidades WHERE codigo_ine='20039';
DELETE FROM puntuaciones WHERE codigo_ine='20039';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='20039';

-- 90701 -> 20060
UPDATE OR IGNORE entidades SET codigo_ine='20060' WHERE codigo_ine='90701';
DELETE FROM entidades WHERE codigo_ine='90701';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('20060','monumentos',51) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('20060','fiestas',31) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('20060','miradores',84) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90701';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90701';

-- 24041 -> 23041
UPDATE OR IGNORE entidades SET codigo_ine='23041' WHERE codigo_ine='24041';
DELETE FROM entidades WHERE codigo_ine='24041';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('23041','conjuntos',3) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('23041','restaurantes_top',13.6) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('23041','estrellas',3.1) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('23041','ciclismo',2.9) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('23041','escalada',3.3) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('23041','mochilero',3.1) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('23041','accesible',1.5) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('23041','productos_locales',1.8) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('23041','mercados_gastro',13.7) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('23041','notoriedad_instagram',34.1) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='24041';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='24041';

-- 25137 -> 27009
UPDATE OR IGNORE entidades SET codigo_ine='27009' WHERE codigo_ine='25137';
DELETE FROM entidades WHERE codigo_ine='25137';
DELETE FROM puntuaciones WHERE codigo_ine='25137';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='25137';

-- 90727 -> 31138
UPDATE OR IGNORE entidades SET codigo_ine='31138' WHERE codigo_ine='90727';
DELETE FROM entidades WHERE codigo_ine='90727';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('31138','monumentos',58) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('31138','miradores',84) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('31138','soletes',35) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90727';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90727';

-- 90950 -> 48014
UPDATE OR IGNORE entidades SET codigo_ine='48014' WHERE codigo_ine='90950';
DELETE FROM entidades WHERE codigo_ine='90950';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48014','fiestas',37) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48014','turismo_lgtbi',65) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48014','lujo',76) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48014','miradores',92) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48014','naturaleza',80) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48014','soletes',49) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90950';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90950';

-- 90954 -> 48063
UPDATE OR IGNORE entidades SET codigo_ine='48063' WHERE codigo_ine='90954';
DELETE FROM entidades WHERE codigo_ine='90954';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48063','fiestas',35) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48063','miradores',86) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90954';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90954';

-- 90693 -> 48064
UPDATE OR IGNORE entidades SET codigo_ine='48064' WHERE codigo_ine='90693';
DELETE FROM entidades WHERE codigo_ine='90693';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48064','monumentos',57) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48064','fiestas',33) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48064','miradores',76) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48064','soletes',35) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90693';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90693';

-- 90955 -> 48904
UPDATE OR IGNORE entidades SET codigo_ine='48904' WHERE codigo_ine='90955';
DELETE FROM entidades WHERE codigo_ine='90955';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48904','fiestas',41) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48904','miradores',74) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48904','soletes',35) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90955';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90955';

-- 90948 -> 48914
UPDATE OR IGNORE entidades SET codigo_ine='48914' WHERE codigo_ine='90948';
DELETE FROM entidades WHERE codigo_ine='90948';
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48914','fiestas',32) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
INSERT INTO puntuaciones (codigo_ine,categoria,puntuacion) VALUES ('48914','miradores',81) ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=excluded.puntuacion;
DELETE FROM puntuaciones WHERE codigo_ine='90948';
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='90948';


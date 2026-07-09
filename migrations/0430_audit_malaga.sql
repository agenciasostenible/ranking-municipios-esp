-- 0430 auditoría Málaga: dedup, basura, fusión de fichas duplicadas
UPDATE entidades SET nombre='Núñez de Prado' WHERE id=84808;
UPDATE entidades SET nombre='Aceites premiados de Córdoba' WHERE id=84809;
UPDATE entidades SET nombre='DOP Montoro-Adamuz' WHERE id=84810;
UPDATE entidades SET nombre='Rincón de la Subbética' WHERE id=84807;
DELETE FROM entidades WHERE id=87854; -- dup-ficha 32006: ya existe en 29041
UPDATE entidades SET codigo_ine='29045' WHERE id=100887; -- movida de ficha dup 32007
UPDATE entidades SET codigo_ine='29045' WHERE id=100888; -- movida de ficha dup 32007
UPDATE entidades SET codigo_ine='29045' WHERE id=111582; -- movida de ficha dup 32007
DELETE FROM entidades WHERE id=78394; -- dup-ficha 32009: ya existe en 29051
DELETE FROM entidades WHERE id=79740; -- dup-ficha 32009: ya existe en 29051
DELETE FROM entidades WHERE id=87856; -- dup-ficha 32009: ya existe en 29051
DELETE FROM entidades WHERE id=137; -- dup-ficha 32010: ya existe en 29053
DELETE FROM entidades WHERE id=138; -- dup-ficha 32010: ya existe en 29053
DELETE FROM entidades WHERE id=139; -- dup-ficha 32010: ya existe en 29053
DELETE FROM entidades WHERE id=140; -- dup-ficha 32010: ya existe en 29053
DELETE FROM entidades WHERE id=78391; -- dup-ficha 32010: ya existe en 29053
DELETE FROM entidades WHERE id=79741; -- dup-ficha 32010: ya existe en 29053
DELETE FROM entidades WHERE id=79742; -- dup-ficha 32011: ya existe en 29054
DELETE FROM entidades WHERE id=87858; -- dup-ficha 32012: ya existe en 29056
DELETE FROM entidades WHERE id=78392; -- dup-ficha 32014: ya existe en 29069
DELETE FROM entidades WHERE id=79743; -- dup-ficha 32014: ya existe en 29069
DELETE FROM entidades WHERE id=87863; -- dup-ficha 32014: ya existe en 29069
UPDATE entidades SET codigo_ine='29069' WHERE id=141674; -- movida de ficha dup 32014
DELETE FROM entidades WHERE id=78393; -- dup-ficha 32015: ya existe en 29070
DELETE FROM entidades WHERE id=79744; -- dup-ficha 32015: ya existe en 29070
DELETE FROM entidades WHERE id=79745; -- dup-ficha 32016: ya existe en 29067
DELETE FROM entidades WHERE id=87861; -- dup-ficha 32016: ya existe en 29067
DELETE FROM entidades WHERE id=84; -- dup-ficha 32017: ya existe en 29075
DELETE FROM entidades WHERE id=86; -- dup-ficha 32017: ya existe en 29075
DELETE FROM entidades WHERE id=79746; -- dup-ficha 32017: ya existe en 29075
DELETE FROM entidades WHERE id=79747; -- dup-ficha 32019: ya existe en 29084
DELETE FROM entidades WHERE id=87865; -- dup-ficha 32019: ya existe en 29084
DELETE FROM entidades WHERE id=79748; -- dup-ficha 32022: ya existe en 29091
DELETE FROM entidades WHERE id=79749; -- dup-ficha 32023: ya existe en 29094

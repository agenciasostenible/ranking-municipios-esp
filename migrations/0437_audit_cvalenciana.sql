-- 0437 auditoría Comunidad Valenciana: dedup, basura, fusión (3 provincias)
-- === ali (capital 03003) ===
DELETE FROM entidades WHERE id=100036; -- Castillo Biar copia monumentos (queda 87728)
DELETE FROM entidades WHERE id=100050; -- Castillo Castalla copia monumentos (queda 87729)
DELETE FROM entidades WHERE id=100068; -- Palacio Altamira Elche copia monumentos (queda 87733)
DELETE FROM entidades WHERE id=100106; -- Castillo la Mola copia monumentos (queda 87737)
DELETE FROM entidades WHERE id=100145; -- Fortaleza Santa Pola copia monumentos (queda 87740)
DELETE FROM entidades WHERE id=100148; -- Castillo Sax copia monumentos (queda 87742)
DELETE FROM entidades WHERE id=100162; -- Castillo Atalaya Villena copia monumentos (queda 87743)
DELETE FROM entidades WHERE id=163809; -- restaurante nombre basura 28
DELETE FROM entidades WHERE id=166892; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166893; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166894; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166895; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166896; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166898; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168873; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=170059; -- ocio nombre basura DQ
DELETE FROM entidades WHERE id=186208; -- Certamen Habaneras copia en fiestas (queda festival 184034)
DELETE FROM entidades WHERE id=187290; -- Museu Alcoia de la Festa como fiesta (queda Museo 178246)
DELETE FROM entidades WHERE id=190249; -- calle/carrer como oleoturismo
DELETE FROM entidades WHERE id=190251; -- calle/carrer como oleoturismo
DELETE FROM entidades WHERE id=200117; -- Marin sector cueva dup OSM (queda 200605)
DELETE FROM entidades WHERE id=78966; -- dup-ficha 03047: ya existe en 03010
DELETE FROM entidades WHERE id=80496; -- dup-ficha 03047: ya existe en 03010
DELETE FROM entidades WHERE id=80502; -- dup-ficha 03053: ya existe en 03011
DELETE FROM entidades WHERE id=87730; -- dup-ficha 03053: ya existe en 03011
DELETE FROM entidades WHERE id=80506; -- dup-ficha 03056: ya existe en 03012
DELETE FROM entidades WHERE id=80511; -- dup-ficha 03063: ya existe en 03014
DELETE FROM entidades WHERE id=87732; -- dup-ficha 03063: ya existe en 03014
DELETE FROM entidades WHERE id=80498; -- dup-ficha 03050: ya existe en 03015
DELETE FROM entidades WHERE id=80515; -- dup-ficha 03066: ya existe en 03017
DELETE FROM entidades WHERE id=80519; -- dup-ficha 03069: ya existe en 03018
DELETE FROM entidades WHERE id=80525; -- dup-ficha 03075: ya existe en 03019
DELETE FROM entidades WHERE id=87735; -- dup-ficha 03075: ya existe en 03019
DELETE FROM entidades WHERE id=80527; -- dup-ficha 03076: ya existe en 03020
DELETE FROM entidades WHERE id=80530; -- dup-ficha 03079: ya existe en 03021
DELETE FROM entidades WHERE id=80542; -- dup-ficha 03092: ya existe en 03024
DELETE FROM entidades WHERE id=80545; -- dup-ficha 03093: ya existe en 03026
DELETE FROM entidades WHERE id=87738; -- dup-ficha 03093: ya existe en 03026
DELETE FROM entidades WHERE id=78963; -- dup-ficha 03099: ya existe en 03027
DELETE FROM entidades WHERE id=80551; -- dup-ficha 03099: ya existe en 03027
DELETE FROM entidades WHERE id=80555; -- dup-ficha 03102: ya existe en 03028
DELETE FROM entidades WHERE id=80560; -- dup-ficha 03106: ya existe en 03030
DELETE FROM entidades WHERE id=80562; -- dup-ficha 03107: ya existe en 03031
DELETE FROM entidades WHERE id=80568; -- dup-ficha 03112: ya existe en 03032
DELETE FROM entidades WHERE id=80570; -- dup-ficha 03113: ya existe en 03033
DELETE FROM entidades WHERE id=80578; -- dup-ficha 03122: ya existe en 03034
DELETE FROM entidades WHERE id=80581; -- dup-ficha 03121: ya existe en 03035
DELETE FROM entidades WHERE id=87741; -- dup-ficha 03121: ya existe en 03035
DELETE FROM entidades WHERE id=80584; -- dup-ficha 03124: ya existe en 03036
DELETE FROM entidades WHERE id=80588; -- dup-ficha 03128: ya existe en 03037
DELETE FROM entidades WHERE id=80594; -- dup-ficha 03133: ya existe en 03038
DELETE FROM entidades WHERE id=80601; -- dup-ficha 03140: ya existe en 03040
DELETE FROM entidades WHERE id=87744; -- dup-ficha 03140: ya existe en 03040
-- === cas (capital 12040) ===
DELETE FROM entidades WHERE id=78967; -- Conjunto Historico Morella dup BIC (queda 196)
DELETE FROM entidades WHERE id=99392; -- Conjunto Historico Culla copia monumentos (queda BIC 78984)
DELETE FROM entidades WHERE id=99393; -- Castillo Culla copia monumentos (queda 87787)
DELETE FROM entidades WHERE id=99430; -- Plaza Mayor Forcall copia monumentos (queda BIC 78977)
DELETE FROM entidades WHERE id=99554; -- Castillo Todolella copia monumentos (queda 87797)
DELETE FROM entidades WHERE id=137666; -- solete nombre cortado por parser: Le
DELETE FROM entidades WHERE id=137669; -- solete nombre cortado por parser: La
DELETE FROM entidades WHERE id=137675; -- solete nombre cortado por parser: El
DELETE FROM entidades WHERE id=167717; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169440; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=190064; -- Casa Rural La Almazara como oleoturismo (es casa rural 166956)
DELETE FROM entidades WHERE id=190265; -- calle/carrer como oleoturismo
DELETE FROM entidades WHERE id=190294; -- calle/carrer como oleoturismo
DELETE FROM entidades WHERE id=205433; -- Observatorio Astropunt Santa Barbara como mirador (queda astro 213429)
DELETE FROM entidades WHERE id=205440; -- Observatorio Astropunt Torremiro como mirador (queda astro 213430)
DELETE FROM entidades WHERE id=206341; -- Castillo de Peniscola como mirador (el castillo real esta en castillos)
DELETE FROM entidades WHERE id=215295; -- Castillo de Peniscola como encanto_osm (idem)
DELETE FROM entidades WHERE id=80470; -- dup-ficha 11003: ya existe en 12027
DELETE FROM entidades WHERE id=78974; -- dup-ficha 11005: ya existe en 12040
DELETE FROM entidades WHERE id=80471; -- dup-ficha 11005: ya existe en 12040
DELETE FROM entidades WHERE id=87784; -- dup-ficha 11005: ya existe en 12040
UPDATE entidades SET codigo_ine='12051' WHERE id=77781; -- movida de 11006
DELETE FROM entidades WHERE id=78972; -- dup-ficha 11006: ya existe en 12051
DELETE FROM entidades WHERE id=80472; -- dup-ficha 11006: ya existe en 12051
DELETE FROM entidades WHERE id=87786; -- dup-ficha 11006: ya existe en 12051
DELETE FROM entidades WHERE id=87788; -- dup-ficha 11006: ya existe en 12051
UPDATE entidades SET codigo_ine='12072' WHERE id=77776; -- movida de 11008
DELETE FROM entidades WHERE id=80473; -- dup-ficha 11008: ya existe en 12072
UPDATE entidades SET codigo_ine='12079' WHERE id=77779; -- movida de 11009
UPDATE entidades SET codigo_ine='12079' WHERE id=77780; -- movida de 11009
DELETE FROM entidades WHERE id=80474; -- dup-ficha 11009: ya existe en 12079
DELETE FROM entidades WHERE id=196; -- dup-ficha 11010: ya existe en 12080
UPDATE entidades SET codigo_ine='12080' WHERE id=197; -- movida de 11010
UPDATE entidades SET codigo_ine='12080' WHERE id=77770; -- movida de 11010
DELETE FROM entidades WHERE id=80475; -- dup-ficha 11010: ya existe en 12080
DELETE FROM entidades WHERE id=87790; -- dup-ficha 11010: ya existe en 12080
DELETE FROM entidades WHERE id=80476; -- dup-ficha 11012: ya existe en 12085
DELETE FROM entidades WHERE id=80477; -- dup-ficha 11013: ya existe en 12089
DELETE FROM entidades WHERE id=78970; -- dup-ficha 11015: ya existe en 12104
DELETE FROM entidades WHERE id=80478; -- dup-ficha 11015: ya existe en 12104
DELETE FROM entidades WHERE id=87794; -- dup-ficha 11015: ya existe en 12104
DELETE FROM entidades WHERE id=80479; -- dup-ficha 11016: ya existe en 12121
UPDATE entidades SET codigo_ine='12129' WHERE id=77773; -- movida de 11017
UPDATE entidades SET codigo_ine='12129' WHERE id=77774; -- movida de 11017
-- === val (capital 46250) ===
DELETE FROM entidades WHERE id=99644; -- Castillo Ayora copia monumentos (queda 87952)
DELETE FROM entidades WHERE id=99740; -- Castillo Chulilla copia monumentos (queda 87955)
DELETE FROM entidades WHERE id=99742; -- Castillo Cofrentes copia monumentos (queda 87953)
DELETE FROM entidades WHERE id=99904; -- Castillo Sagunto copia monumentos (queda 87958)
DELETE FROM entidades WHERE id=166946; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166947; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166948; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166949; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166950; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166951; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166952; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=178265; -- Casa-Museo Blasco Ibanez dup wikidata (queda 148652)
DELETE FROM entidades WHERE id=186680; -- Fiesta Vendimia Requena copia wiki (queda PDF 116647)
DELETE FROM entidades WHERE id=190257; -- calle/carrer como oleoturismo
DELETE FROM entidades WHERE id=190258; -- calle/carrer como oleoturismo
DELETE FROM entidades WHERE id=190259; -- calle/carrer como oleoturismo
DELETE FROM entidades WHERE id=190263; -- calle/carrer como oleoturismo
DELETE FROM entidades WHERE id=190293; -- calle/carrer como oleoturismo
DELETE FROM entidades WHERE id=205328; -- Mirador Pena Garrate dup OSM (queda 205330)
DELETE FROM entidades WHERE id=80343; -- dup-ficha 45006: ya existe en 46131
DELETE FROM entidades WHERE id=80344; -- dup-ficha 45008: ya existe en 46169
DELETE FROM entidades WHERE id=78939; -- dup-ficha 45009: ya existe en 46181
DELETE FROM entidades WHERE id=80345; -- dup-ficha 45009: ya existe en 46181
DELETE FROM entidades WHERE id=80346; -- dup-ficha 45011: ya existe en 46190
DELETE FROM entidades WHERE id=78931; -- dup-ficha 45012: ya existe en 46213
DELETE FROM entidades WHERE id=80347; -- dup-ficha 45012: ya existe en 46213
DELETE FROM entidades WHERE id=87956; -- dup-ficha 45012: ya existe en 46213
UPDATE entidades SET codigo_ine='46250' WHERE id=117; -- movida de 45015
UPDATE entidades SET codigo_ine='46250' WHERE id=77796; -- movida de 45015
DELETE FROM entidades WHERE id=80348; -- dup-ficha 45015: ya existe en 46250
UPDATE entidades SET nombre='Fiesta de la Tostada y el Aceite Nuevo' WHERE id=119806; -- era 'La' (nombre cortado por el parser, Cascante)

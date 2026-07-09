-- 0441 auditoría Galicia: dedup, basura, reasignaciones, fusión (4 provincias)
UPDATE entidades SET codigo_ine='36003' WHERE id=147844; -- Museo do Lume: a 2,6km de Bueu, estaba en Cambados (22km)
UPDATE entidades SET codigo_ine='36003' WHERE id=211153; -- Praia de Rebentons: Morrazo/Bueu, estaba en Cambados
UPDATE entidades SET codigo_ine='36003' WHERE id=211154; -- A Praia Vella: Morrazo/Bueu, estaba en Cambados
UPDATE entidades SET codigo_ine='36003' WHERE id=211788; -- A Area do Porto do Sol: Illa de Ons (Bueu), estaba en Cambados
-- === aco (capital 01001) ===
DELETE FROM entidades WHERE id=77693; -- Playa de Carnota como sendero relleno (queda playa PDF 92391)
DELETE FROM entidades WHERE id=106511; -- Torre de Hercules copia monumentos (queda UNESCO 79118)
DELETE FROM entidades WHERE id=115913; -- Festival Mundo Celta copia en fiestas PDF (queda festival 118593)
DELETE FROM entidades WHERE id=139673; -- Taberna da Galera copia ampliacion (queda solete 139032)
DELETE FROM entidades WHERE id=166273; -- Playa de Quenxe como rural (es una playa; queda PDF 92388)
DELETE FROM entidades WHERE id=168049; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168050; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168051; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168052; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168053; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168054; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168055; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168056; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168057; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168058; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168059; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168060; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168061; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168062; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168063; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168064; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168065; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168066; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168067; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169194; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169195; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169196; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=172002; -- ocio nombre basura 2515
DELETE FROM entidades WHERE id=186611; -- Festival de Ortigueira copia en fiestas wiki (queda 184240)
DELETE FROM entidades WHERE id=205896; -- Fervenza do Belelle como mirador (queda cascada 150012)
UPDATE entidades SET codigo_ine='15022' WHERE id=77704; -- movida de 01008
DELETE FROM entidades WHERE id=81476; -- dup-ficha 01008: ya existe en 15022
DELETE FROM entidades WHERE id=79127; -- dup-ficha 01009: ya existe en 15028
DELETE FROM entidades WHERE id=81477; -- dup-ficha 01009: ya existe en 15028
DELETE FROM entidades WHERE id=79120; -- dup-ficha 01010: ya existe en 15036
DELETE FROM entidades WHERE id=81478; -- dup-ficha 01010: ya existe en 15036
DELETE FROM entidades WHERE id=79126; -- dup-ficha 01012: ya existe en 15053
DELETE FROM entidades WHERE id=81479; -- dup-ficha 01012: ya existe en 15053
UPDATE entidades SET codigo_ine='15061' WHERE id=77702; -- movida de 01015
UPDATE entidades SET codigo_ine='15061' WHERE id=77703; -- movida de 01015
DELETE FROM entidades WHERE id=79129; -- dup-ficha 01015: ya existe en 15061
DELETE FROM entidades WHERE id=81480; -- dup-ficha 01015: ya existe en 15061
DELETE FROM entidades WHERE id=81481; -- dup-ficha 01016: ya existe en 15065
DELETE FROM entidades WHERE id=79128; -- dup-ficha 01019: ya existe en 15073
DELETE FROM entidades WHERE id=81482; -- dup-ficha 01019: ya existe en 15073
UPDATE entidades SET codigo_ine='15078' WHERE id=106; -- movida de 01020
UPDATE entidades SET codigo_ine='15078' WHERE id=77705; -- movida de 01020
DELETE FROM entidades WHERE id=79117; -- dup-ficha 01020: ya existe en 15078
DELETE FROM entidades WHERE id=81483; -- dup-ficha 01020: ya existe en 15078
UPDATE entidades SET codigo_ine='15078' WHERE id=141528; -- movida de 01020
-- === lu (capital 27028) ===
DELETE FROM entidades WHERE id=106506; -- Muralla Romana de Lugo copia monumentos (queda UNESCO 79139)
DELETE FROM entidades WHERE id=166387; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166388; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166389; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166390; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168765; -- Casa rural O Verxel dup (queda 166395)
DELETE FROM entidades WHERE id=178034; -- Centro Arqueoloxico San Roque dup wikidata GL (queda ES 147069)
DELETE FROM entidades WHERE id=215090; -- Palacio de Cantiz encanto dup (queda rural 166445)
DELETE FROM entidades WHERE id=81495; -- dup-ficha 28003: ya existe en 27016
DELETE FROM entidades WHERE id=87971; -- dup-ficha 28003: ya existe en 27016
DELETE FROM entidades WHERE id=81488; -- dup-ficha 27018: ya existe en 28004
DELETE FROM entidades WHERE id=79148; -- dup-ficha 28006: ya existe en 27028
DELETE FROM entidades WHERE id=81496; -- dup-ficha 28006: ya existe en 27028
DELETE FROM entidades WHERE id=87973; -- dup-ficha 28006: ya existe en 27028
DELETE FROM entidades WHERE id=81497; -- dup-ficha 28007: ya existe en 27031
DELETE FROM entidades WHERE id=87975; -- dup-ficha 28007: ya existe en 27031
DELETE FROM entidades WHERE id=79149; -- dup-ficha 28010: ya existe en 27051
DELETE FROM entidades WHERE id=81498; -- dup-ficha 28010: ya existe en 27051
DELETE FROM entidades WHERE id=79150; -- dup-ficha 28011: ya existe en 27057
-- === ou (capital 32054) ===
DELETE FROM entidades WHERE id=102674; -- Castillo de Maceda copia monumentos (queda 87979)
DELETE FROM entidades WHERE id=178203; -- Museo Arqueoloxico Ourense dup wikidata GL (queda ES 147609)
DELETE FROM entidades WHERE id=203632; -- Pozo dos Fumes como mirador (queda cascada 150204)
DELETE FROM entidades WHERE id=215082; -- Pazo de Bentraces encanto dup (queda palacio 102550)
DELETE FROM entidades WHERE id=215088; -- Pazo do Castro encanto dup (queda palacio 102555)
DELETE FROM entidades WHERE id=215300; -- Pazo de Chaioso encanto dup (queda rural 169603)
DELETE FROM entidades WHERE id=79161; -- dup-ficha 34009: ya existe en 32069
DELETE FROM entidades WHERE id=81510; -- dup-ficha 34009: ya existe en 32069
DELETE FROM entidades WHERE id=87980; -- dup-ficha 34009: ya existe en 32069
DELETE FROM entidades WHERE id=79162; -- dup-ficha 34011: ya existe en 32085
DELETE FROM entidades WHERE id=81511; -- dup-ficha 34011: ya existe en 32085
DELETE FROM entidades WHERE id=87982; -- dup-ficha 34011: ya existe en 32085
-- === po (capital 36011) ===
DELETE FROM entidades WHERE id=92637; -- Playa de A Mouta dup PDF (queda 92506)
DELETE FROM entidades WHERE id=92652; -- Playa de Ribeira dup PDF (queda 92571)
DELETE FROM entidades WHERE id=164105; -- Argentinos Burguer copia OSM (queda solete 135475)
DELETE FROM entidades WHERE id=166252; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166253; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166254; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=186596; -- Festival Aereo Vigo copia en fiestas (queda festival 184090)
DELETE FROM entidades WHERE id=187493; -- Romeria Vikinga copia wiki (queda PDF 116103)
DELETE FROM entidades WHERE id=215213; -- Pazo Baion encanto dup (queda bodega 210558)
DELETE FROM entidades WHERE id=81529; -- dup-ficha 36026: ya existe en 36007
DELETE FROM entidades WHERE id=81534; -- dup-ficha 36029: ya existe en 36008
DELETE FROM entidades WHERE id=79172; -- dup-ficha 36038: ya existe en 36011
DELETE FROM entidades WHERE id=81517; -- dup-ficha 36038: ya existe en 36011
DELETE FROM entidades WHERE id=81527; -- dup-ficha 36045: ya existe en 36012
DELETE FROM entidades WHERE id=81521; -- dup-ficha 36051: ya existe en 36013
DELETE FROM entidades WHERE id=79173; -- dup-ficha 36057: ya existe en 36015
DELETE FROM entidades WHERE id=81514; -- dup-ficha 36057: ya existe en 36015
DELETE FROM entidades WHERE id=87987; -- dup-ficha 36057: ya existe en 36015

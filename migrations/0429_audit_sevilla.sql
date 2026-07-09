-- 0429 auditoría Sevilla: dedup, basura, fusión de fichas duplicadas
DELETE FROM entidades WHERE id=120; -- Necrópolis Carmona en ficha dup 40003 (queda 78528 en 41024)
DELETE FROM entidades WHERE id=123; -- Conjunto Histórico Carmona en ficha dup (queda 78379)
DELETE FROM entidades WHERE id=78100; -- Conjunto Histórico Carmona dup (queda 78379)
DELETE FROM entidades WHERE id=78101; -- Necrópolis Carmona sin acento en ficha dup
DELETE FROM entidades WHERE id=78545; -- Necrópolis Carmona sin acento dup (queda 78528)
DELETE FROM entidades WHERE id=101178; -- Castillo de Alanís copia monumentos (queda 87868)
DELETE FROM entidades WHERE id=101221; -- Necrópolis Carmona copia monumentos (queda BIC 78528)
DELETE FROM entidades WHERE id=101337; -- Itálica copia monumentos (queda BIC 78099)
DELETE FROM entidades WHERE id=101351; -- Castillo de Utrera copia monumentos (queda 87892)
DELETE FROM entidades WHERE id=106487; -- Real Alcázar copia monumentos (queda 87890)
DELETE FROM entidades WHERE id=140508; -- Bodeguita Romero copia ampliación (queda solete 135081)
DELETE FROM entidades WHERE id=163973; -- Asador La Puebla copia OSM (queda ampliación 140490)
DELETE FROM entidades WHERE id=166499; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166500; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166501; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166502; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166503; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166504; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166505; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166506; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166507; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166508; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166509; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166510; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166511; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166512; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166513; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166514; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168781; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168782; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168783; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168784; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168785; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168786; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168787; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=170720; -- ocio nombre basura B3
DELETE FROM entidades WHERE id=170729; -- ocio nombre basura 1987
DELETE FROM entidades WHERE id=174317; -- ocio nombre basura 84
DELETE FROM entidades WHERE id=184192; -- Festival Cine Europeo edición 2009 (queda el festival base 184191)
DELETE FROM entidades WHERE id=184193; -- Festival Cine Europeo edición 2010
DELETE FROM entidades WHERE id=184194; -- Festival Cine Europeo edición 2011
DELETE FROM entidades WHERE id=184195; -- Festival Cine Europeo edición 2012
DELETE FROM entidades WHERE id=184196; -- Festival Cine Europeo edición 2013
DELETE FROM entidades WHERE id=203834; -- Torre del Oro como mirador OSM (quedan monumento 106489 y Museo 148275)
DELETE FROM entidades WHERE id=215220; -- Cortijo Rosario encanto dup (queda rural 168780)
UPDATE entidades SET codigo_ine='41024' WHERE id=75702; -- movida de ficha dup 40003
UPDATE entidades SET codigo_ine='41024' WHERE id=75703; -- movida de ficha dup 40003
DELETE FROM entidades WHERE id=87870; -- dup-ficha 40003: ya existe en 41024
DELETE FROM entidades WHERE id=87872; -- dup-ficha 40003: ya existe en 41024
UPDATE entidades SET codigo_ine='41032' WHERE id=129; -- movida de ficha dup 40004
UPDATE entidades SET codigo_ine='41032' WHERE id=131; -- movida de ficha dup 40004
UPDATE entidades SET codigo_ine='41032' WHERE id=132; -- movida de ficha dup 40004
UPDATE entidades SET codigo_ine='41032' WHERE id=75634; -- movida de ficha dup 40004
UPDATE entidades SET codigo_ine='41032' WHERE id=75635; -- movida de ficha dup 40004
UPDATE entidades SET codigo_ine='41032' WHERE id=75636; -- movida de ficha dup 40004
UPDATE entidades SET codigo_ine='41032' WHERE id=75637; -- movida de ficha dup 40004
DELETE FROM entidades WHERE id=78112; -- dup-ficha 40004: ya existe en 41032
UPDATE entidades SET codigo_ine='41033' WHERE id=75638; -- movida de ficha dup 40005
UPDATE entidades SET codigo_ine='41033' WHERE id=75639; -- movida de ficha dup 40005
UPDATE entidades SET codigo_ine='41033' WHERE id=75640; -- movida de ficha dup 40005
DELETE FROM entidades WHERE id=78115; -- dup-ficha 40005: ya existe en 41033
DELETE FROM entidades WHERE id=87874; -- dup-ficha 40005: ya existe en 41033
UPDATE entidades SET codigo_ine='41073' WHERE id=75644; -- movida de ficha dup 40007
UPDATE entidades SET codigo_ine='41073' WHERE id=75645; -- movida de ficha dup 40007
UPDATE entidades SET codigo_ine='41073' WHERE id=75646; -- movida de ficha dup 40007
UPDATE entidades SET codigo_ine='41083' WHERE id=75657; -- movida de ficha dup 40008
UPDATE entidades SET codigo_ine='41083' WHERE id=75658; -- movida de ficha dup 40008
UPDATE entidades SET codigo_ine='41041' WHERE id=75700; -- movida de ficha dup 40009
UPDATE entidades SET codigo_ine='41041' WHERE id=75701; -- movida de ficha dup 40009
DELETE FROM entidades WHERE id=78106; -- dup-ficha 40009: ya existe en 41041
DELETE FROM entidades WHERE id=87876; -- dup-ficha 40009: ya existe en 41041
UPDATE entidades SET codigo_ine='41048' WHERE id=75647; -- movida de ficha dup 40010
UPDATE entidades SET codigo_ine='41048' WHERE id=75648; -- movida de ficha dup 40010
UPDATE entidades SET codigo_ine='41048' WHERE id=75649; -- movida de ficha dup 40010
DELETE FROM entidades WHERE id=87879; -- dup-ficha 40010: ya existe en 41048
DELETE FROM entidades WHERE id=87882; -- dup-ficha 40011: ya existe en 41053
UPDATE entidades SET codigo_ine='41055' WHERE id=75711; -- movida de ficha dup 40012
UPDATE entidades SET codigo_ine='41055' WHERE id=75712; -- movida de ficha dup 40012
UPDATE entidades SET codigo_ine='41060' WHERE id=75704; -- movida de ficha dup 40013
DELETE FROM entidades WHERE id=78105; -- dup-ficha 40013: ya existe en 41060
DELETE FROM entidades WHERE id=87885; -- dup-ficha 40013: ya existe en 41060
UPDATE entidades SET codigo_ine='41065' WHERE id=75673; -- movida de ficha dup 40014
UPDATE entidades SET codigo_ine='41065' WHERE id=75674; -- movida de ficha dup 40014
DELETE FROM entidades WHERE id=87887; -- dup-ficha 40014: ya existe en 41065
DELETE FROM entidades WHERE id=126; -- dup-ficha 40015: ya existe en 41068
UPDATE entidades SET codigo_ine='41068' WHERE id=127; -- movida de ficha dup 40015
UPDATE entidades SET codigo_ine='41068' WHERE id=75696; -- movida de ficha dup 40015
UPDATE entidades SET codigo_ine='41068' WHERE id=75697; -- movida de ficha dup 40015
DELETE FROM entidades WHERE id=78103; -- dup-ficha 40015: ya existe en 41068
UPDATE entidades SET codigo_ine='41091' WHERE id=75698; -- movida de ficha dup 40018
UPDATE entidades SET codigo_ine='41091' WHERE id=75699; -- movida de ficha dup 40018
DELETE FROM entidades WHERE id=87889; -- dup-ficha 40018: ya existe en 41091
DELETE FROM entidades WHERE id=87891; -- dup-ficha 40019: ya existe en 41095
UPDATE entidades SET codigo_ine='41039' WHERE id=75713; -- movida de ficha dup 40020
DELETE FROM entidades WHERE id=78102; -- dup-ficha 40020: ya existe en 41039

-- 0428 auditoría Córdoba: dedup, basura, fusión de fichas duplicadas
UPDATE entidades SET nombre='Núñez de Prado' WHERE id=84808;
UPDATE entidades SET nombre='Aceites premiados de Córdoba' WHERE id=84809;
UPDATE entidades SET nombre='DOP Montoro-Adamuz' WHERE id=84810;
UPDATE entidades SET nombre='Rincón de la Subbética' WHERE id=84807;
DELETE FROM entidades WHERE id=75541; -- Fuente del Río sendero relleno (queda monumento OSM 156096)
DELETE FROM entidades WHERE id=78065; -- Medina Azahara yacimiento dup en ficha duplicada
DELETE FROM entidades WHERE id=78544; -- Medina Azahara yacimiento dup (queda conjunto 79)
DELETE FROM entidades WHERE id=101014; -- Castillo de Baena copia monumentos (queda 87701)
DELETE FROM entidades WHERE id=101017; -- Castillo Sotomayor Belalcázar copia monumentos (queda 87702)
DELETE FROM entidades WHERE id=101026; -- Castillo de Bujalance copia monumentos (queda 87703)
DELETE FROM entidades WHERE id=101053; -- Conjunto Histórico Dos Torres copia monumentos (queda BIC 78092)
DELETE FROM entidades WHERE id=101056; -- Castillo de Espejo copia monumentos (queda 87710)
DELETE FROM entidades WHERE id=101082; -- Castillo de Iznájar copia monumentos (queda 87714)
DELETE FROM entidades WHERE id=101090; -- Castillo de Luque copia monumentos (queda 87715)
DELETE FROM entidades WHERE id=101155; -- Castillo de Miramontes copia monumentos (queda 87723)
DELETE FROM entidades WHERE id=101171; -- Castillo de Zuheros copia monumentos (queda 87725)
DELETE FROM entidades WHERE id=101172; -- Cueva de los Murciélagos copia monumentos (queda ACTE 142004)
DELETE FROM entidades WHERE id=106478; -- Alcázar Reyes Cristianos copia monumentos (queda 87705)
DELETE FROM entidades WHERE id=139984; -- Taberna Chatopecess copia ampliación (queda solete 137309)
DELETE FROM entidades WHERE id=166681; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166682; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166683; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166684; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166685; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166686; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166687; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166688; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166689; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166690; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166691; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166692; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166693; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166694; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166695; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166696; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166697; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166698; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166699; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166700; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166701; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166702; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166703; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166704; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166705; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166706; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166707; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166708; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168816; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=172705; -- ocio nombre basura "13"
DELETE FROM entidades WHERE id=190115; -- calle como oleoturismo
DELETE FROM entidades WHERE id=190120; -- calle como oleoturismo
DELETE FROM entidades WHERE id=190313; -- B&B Casa Rural El Olivar como oleoturismo (queda rural 166586)
DELETE FROM entidades WHERE id=215119; -- Hospedería Los Ángeles encanto dup (queda rural 166704)
UPDATE entidades SET codigo_ine='14021' WHERE id=79; -- movida de ficha dup 17008
DELETE FROM entidades WHERE id=78374; -- dup-ficha 17008: ya existe en 14021
DELETE FROM entidades WHERE id=87704; -- dup-ficha 17008: ya existe en 14021
DELETE FROM entidades WHERE id=87706; -- dup-ficha 17008: ya existe en 14021
DELETE FROM entidades WHERE id=87709; -- dup-ficha 17009: ya existe en 14025
DELETE FROM entidades WHERE id=87711; -- dup-ficha 17009: ya existe en 14025
UPDATE entidades SET codigo_ine='17010' WHERE id=79601; -- movida de ficha dup 14027
DELETE FROM entidades WHERE id=78377; -- dup-ficha 17011: ya existe en 14029
DELETE FROM entidades WHERE id=87713; -- dup-ficha 17013: ya existe en 14037
DELETE FROM entidades WHERE id=87717; -- dup-ficha 17016: ya existe en 14042
DELETE FROM entidades WHERE id=78376; -- dup-ficha 17017: ya existe en 14043
DELETE FROM entidades WHERE id=87719; -- dup-ficha 17020: ya existe en 14053
DELETE FROM entidades WHERE id=134; -- dup-ficha 17022: ya existe en 14055
UPDATE entidades SET codigo_ine='14055' WHERE id=136; -- movida de ficha dup 17022
DELETE FROM entidades WHERE id=78375; -- dup-ficha 17022: ya existe en 14055
DELETE FROM entidades WHERE id=87721; -- dup-ficha 17022: ya existe en 14055
DELETE FROM entidades WHERE id=78378; -- dup-ficha 17024: ya existe en 14058

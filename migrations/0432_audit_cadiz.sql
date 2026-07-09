-- 0432 auditoría Cádiz: dedup, basura, fusión de fichas duplicadas
UPDATE entidades SET latitud=NULL, longitud=NULL WHERE id=184010; -- Alrumbo Festival geocodificado a 1.095km de Chiclana
UPDATE entidades SET nombre='Club de Pescadores Deportivos Playa Casería de Ossio' WHERE id=198729; -- estaba EN MAYÚSCULAS
DELETE FROM entidades WHERE id=78143; -- Torre de Guzman excel dup (queda castillos_pdf 87510)
DELETE FROM entidades WHERE id=93614; -- Castillo de Vejer copia monumentos (queda 87539)
DELETE FROM entidades WHERE id=101500; -- Castillo Alcalá de los Gazules copia monumentos (queda 87505)
DELETE FROM entidades WHERE id=101562; -- Castillo de Luna Rota copia monumentos (queda 87523)
DELETE FROM entidades WHERE id=101565; -- Castillo San Romualdo copia monumentos (queda 87525)
DELETE FROM entidades WHERE id=101573; -- Castillo de Santiago copia monumentos (queda 87529)
DELETE FROM entidades WHERE id=139845; -- Las Banderillas copia ampliación (queda solete 137360)
DELETE FROM entidades WHERE id=139866; -- Casa Balbino copia ampliación (queda solete 137340)
DELETE FROM entidades WHERE id=139958; -- La Cárcel copia ampliación (queda solete 137447)
DELETE FROM entidades WHERE id=139968; -- Casa Manteca copia ampliación (queda solete 137395)
DELETE FROM entidades WHERE id=166448; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166449; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166450; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166451; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=184149; -- Festival Música Sanlúcar copia wiki (queda PDF 118234)
DELETE FROM entidades WHERE id=190099; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=190100; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=190349; -- Camping Cala del aceite como oleoturismo (queda camping 213827)
DELETE FROM entidades WHERE id=198730; -- Pantalanes del club de pescadores dup (queda 198729)
DELETE FROM entidades WHERE id=203307; -- Mirador a Trafalgar dup (queda 203304)
DELETE FROM entidades WHERE id=210603; -- Cooperativa Vinícola Palomares dup OSM (queda 210602)
DELETE FROM entidades WHERE id=211279; -- Playas de la Jara copia OSM (queda PDF 93411)
DELETE FROM entidades WHERE id=215208; -- Palacio Sancti Petri encanto dup (queda lujo 198265)
DELETE FROM entidades WHERE id=79776; -- dup-ficha 16005: ya existe en 11901
DELETE FROM entidades WHERE id=79777; -- dup-ficha 16010: ya existe en 11027
DELETE FROM entidades WHERE id=87519; -- dup-ficha 16010: ya existe en 11027
UPDATE entidades SET codigo_ine='11019' WHERE id=63; -- movida de ficha dup 16011
UPDATE entidades SET codigo_ine='11019' WHERE id=65; -- movida de ficha dup 16011
DELETE FROM entidades WHERE id=78390; -- dup-ficha 16011: ya existe en 11019
DELETE FROM entidades WHERE id=79778; -- dup-ficha 16011: ya existe en 11019
UPDATE entidades SET codigo_ine='11020' WHERE id=72; -- movida de ficha dup 16012
UPDATE entidades SET codigo_ine='11020' WHERE id=73; -- movida de ficha dup 16012
DELETE FROM entidades WHERE id=79779; -- dup-ficha 16012: ya existe en 11020
DELETE FROM entidades WHERE id=87511; -- dup-ficha 16012: ya existe en 11020
DELETE FROM entidades WHERE id=79780; -- dup-ficha 16013: ya existe en 11021
DELETE FROM entidades WHERE id=87513; -- dup-ficha 16013: ya existe en 11021
DELETE FROM entidades WHERE id=79781; -- dup-ficha 16014: ya existe en 11022
DELETE FROM entidades WHERE id=78389; -- dup-ficha 16017: ya existe en 11023
DELETE FROM entidades WHERE id=79782; -- dup-ficha 16017: ya existe en 11023
DELETE FROM entidades WHERE id=87515; -- dup-ficha 16017: ya existe en 11023
DELETE FROM entidades WHERE id=79783; -- dup-ficha 16018: ya existe en 11024
DELETE FROM entidades WHERE id=87517; -- dup-ficha 16018: ya existe en 11024
DELETE FROM entidades WHERE id=79784; -- dup-ficha 16020: ya existe en 11030
DELETE FROM entidades WHERE id=87522; -- dup-ficha 16020: ya existe en 11030
DELETE FROM entidades WHERE id=79785; -- dup-ficha 16021: ya existe en 11031
DELETE FROM entidades WHERE id=87524; -- dup-ficha 16021: ya existe en 11031
DELETE FROM entidades WHERE id=79786; -- dup-ficha 16022: ya existe en 11033
DELETE FROM entidades WHERE id=87526; -- dup-ficha 16022: ya existe en 11033
DELETE FROM entidades WHERE id=78387; -- dup-ficha 16023: ya existe en 11032
DELETE FROM entidades WHERE id=79787; -- dup-ficha 16023: ya existe en 11032
DELETE FROM entidades WHERE id=87528; -- dup-ficha 16023: ya existe en 11032
DELETE FROM entidades WHERE id=87530; -- dup-ficha 16023: ya existe en 11032
UPDATE entidades SET codigo_ine='11034' WHERE id=66; -- movida de ficha dup 16024
UPDATE entidades SET codigo_ine='11034' WHERE id=67; -- movida de ficha dup 16024
DELETE FROM entidades WHERE id=78388; -- dup-ficha 16024: ya existe en 11034
DELETE FROM entidades WHERE id=79788; -- dup-ficha 16024: ya existe en 11034
DELETE FROM entidades WHERE id=69; -- dup-ficha 16025: ya existe en 11035
DELETE FROM entidades WHERE id=78546; -- dup-ficha 16025: ya existe en 11035
DELETE FROM entidades WHERE id=79789; -- dup-ficha 16025: ya existe en 11035
DELETE FROM entidades WHERE id=87532; -- dup-ficha 16025: ya existe en 11035
DELETE FROM entidades WHERE id=87534; -- dup-ficha 16025: ya existe en 11035
DELETE FROM entidades WHERE id=87536; -- dup-ficha 16025: ya existe en 11035
DELETE FROM entidades WHERE id=78547; -- dup-ficha 16026: ya existe en 11038
DELETE FROM entidades WHERE id=79790; -- dup-ficha 16026: ya existe en 11038
DELETE FROM entidades WHERE id=78386; -- dup-ficha 16027: ya existe en 11039
DELETE FROM entidades WHERE id=79791; -- dup-ficha 16027: ya existe en 11039
DELETE FROM entidades WHERE id=87538; -- dup-ficha 16027: ya existe en 11039
DELETE FROM entidades WHERE id=87540; -- dup-ficha 16027: ya existe en 11039
DELETE FROM entidades WHERE id=79792; -- dup-ficha 16028: ya existe en 11042
DELETE FROM entidades WHERE id=87542; -- dup-ficha 16028: ya existe en 11042

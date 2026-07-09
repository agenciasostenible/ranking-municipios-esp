-- 0435 auditoría Castilla-La Mancha: dedup, basura, fusión (5 provincias)
UPDATE entidades SET nombre='Palacio de los Olivos' WHERE id=84813;
UPDATE entidades SET nombre='Casas de Hualdo' WHERE id=84812;
-- === ab ===
DELETE FROM entidades WHERE id=99206; -- Castillo Almansa copia monumentos (queda 87941)
DELETE FROM entidades WHERE id=99293; -- Castillo Socovos copia monumentos (queda 87948)
DELETE FROM entidades WHERE id=99316; -- Castillo Yeste copia monumentos (queda 87950)
DELETE FROM entidades WHERE id=139690; -- CATACALDOS copia ampliacion (queda solete 138847)
DELETE FROM entidades WHERE id=145062; -- Museo y Oficina wikidata: nombre generico y a 22km de Caudete
DELETE FROM entidades WHERE id=150367; -- Cascada Arroyo del Tejo dup (queda 150366)
DELETE FROM entidades WHERE id=166869; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166870; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166871; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=186093; -- Bienal Artes Plasticas copia en fiestas (queda festival 184024)
DELETE FROM entidades WHERE id=186608; -- Festival Bandas copia en fiestas (queda festival 184169)
DELETE FROM entidades WHERE id=190238; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=190248; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=210145; -- La Bodega de Serapio vinos dup (quedan solete 138828 y 210148)
DELETE FROM entidades WHERE id=210164; -- Bodegas Hnos TORRES dup mayusculas (queda 210165)
DELETE FROM entidades WHERE id=84732; -- dup-ficha 02031: ya existe en 02013
DELETE FROM entidades WHERE id=78550; -- dup-ficha 02037: ya existe en 02014
DELETE FROM entidades WHERE id=84739; -- dup-ficha 02037: ya existe en 02014
DELETE FROM entidades WHERE id=87944; -- dup-ficha 02037: ya existe en 02014
DELETE FROM entidades WHERE id=84778; -- dup-ficha 02069: ya existe en 02015
DELETE FROM entidades WHERE id=78409; -- dup-ficha 02042: ya existe en 02016
DELETE FROM entidades WHERE id=84745; -- dup-ficha 02042: ya existe en 02016
DELETE FROM entidades WHERE id=78551; -- dup-ficha 02051: ya existe en 02017
DELETE FROM entidades WHERE id=84755; -- dup-ficha 02051: ya existe en 02017
DELETE FROM entidades WHERE id=78552; -- dup-ficha 02055: ya existe en 02018
DELETE FROM entidades WHERE id=84760; -- dup-ficha 02055: ya existe en 02018
DELETE FROM entidades WHERE id=84763; -- dup-ficha 02057: ya existe en 02019
DELETE FROM entidades WHERE id=84765; -- dup-ficha 02058: ya existe en 02020
DELETE FROM entidades WHERE id=84768; -- dup-ficha 02059: ya existe en 02021
DELETE FROM entidades WHERE id=84771; -- dup-ficha 02063: ya existe en 02022
DELETE FROM entidades WHERE id=78410; -- dup-ficha 02067: ya existe en 02023
DELETE FROM entidades WHERE id=84775; -- dup-ficha 02067: ya existe en 02023
DELETE FROM entidades WHERE id=87947; -- dup-ficha 02067: ya existe en 02023
DELETE FROM entidades WHERE id=84782; -- dup-ficha 02072: ya existe en 02024
DELETE FROM entidades WHERE id=87949; -- dup-ficha 02072: ya existe en 02024
DELETE FROM entidades WHERE id=84785; -- dup-ficha 02074: ya existe en 02025
DELETE FROM entidades WHERE id=84791; -- dup-ficha 02079: ya existe en 02026
DELETE FROM entidades WHERE id=84794; -- dup-ficha 02081: ya existe en 02027
DELETE FROM entidades WHERE id=84797; -- dup-ficha 02083: ya existe en 02028
DELETE FROM entidades WHERE id=84800; -- dup-ficha 02085: ya existe en 02029
DELETE FROM entidades WHERE id=84802; -- dup-ficha 02086: ya existe en 02030
DELETE FROM entidades WHERE id=87951; -- dup-ficha 02086: ya existe en 02030
-- === cr ===
DELETE FROM entidades WHERE id=99055; -- Castillo Penarroya copia monumentos (queda 87769)
DELETE FROM entidades WHERE id=99061; -- Castillo Salvatierra copia monumentos (queda 87776)
DELETE FROM entidades WHERE id=99122; -- Castillo Miraflores copia monumentos (queda 87777)
DELETE FROM entidades WHERE id=190236; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=204215; -- Chorrera chica como mirador (queda cascada 150659)
DELETE FROM entidades WHERE id=215135; -- Hospederia Santa Elena encanto dup (queda solete 137591)
DELETE FROM entidades WHERE id=82218; -- dup-ficha 13034: ya existe en 13004
DELETE FROM entidades WHERE id=87772; -- dup-ficha 13034: ya existe en 13004
DELETE FROM entidades WHERE id=87774; -- dup-ficha 13034: ya existe en 13004
DELETE FROM entidades WHERE id=78549; -- dup-ficha 13039: ya existe en 13005
DELETE FROM entidades WHERE id=82223; -- dup-ficha 13039: ya existe en 13005
DELETE FROM entidades WHERE id=82274; -- dup-ficha 13079: ya existe en 13007
DELETE FROM entidades WHERE id=82236; -- dup-ficha 13052: ya existe en 13008
DELETE FROM entidades WHERE id=82238; -- dup-ficha 13053: ya existe en 13009
DELETE FROM entidades WHERE id=82240; -- dup-ficha 13054: ya existe en 13010
DELETE FROM entidades WHERE id=82243; -- dup-ficha 13056: ya existe en 13011
DELETE FROM entidades WHERE id=82246; -- dup-ficha 13058: ya existe en 13012
DELETE FROM entidades WHERE id=82260; -- dup-ficha 13071: ya existe en 13013
DELETE FROM entidades WHERE id=82264; -- dup-ficha 13902: ya existe en 13014
DELETE FROM entidades WHERE id=82270; -- dup-ficha 13077: ya existe en 13015
DELETE FROM entidades WHERE id=82272; -- dup-ficha 13078: ya existe en 13016
DELETE FROM entidades WHERE id=82278; -- dup-ficha 13082: ya existe en 13017
DELETE FROM entidades WHERE id=78405; -- dup-ficha 13087: ya existe en 13018
DELETE FROM entidades WHERE id=82284; -- dup-ficha 13087: ya existe en 13018
DELETE FROM entidades WHERE id=78404; -- dup-ficha 13093: ya existe en 13019
DELETE FROM entidades WHERE id=82291; -- dup-ficha 13093: ya existe en 13019
DELETE FROM entidades WHERE id=87780; -- dup-ficha 13093: ya existe en 13019
DELETE FROM entidades WHERE id=82297; -- dup-ficha 13098: ya existe en 13020
-- === cu ===
DELETE FROM entidades WHERE id=98717; -- Castillo Alarcon copia monumentos (queda 87929)
DELETE FROM entidades WHERE id=98751; -- Castillo Belmonte copia monumentos (queda 87930)
DELETE FROM entidades WHERE id=98818; -- Castillo Enguidanos copia monumentos (queda 87933)
DELETE FROM entidades WHERE id=98906; -- Segobriga copia monumentos (queda BIC 78248)
DELETE FROM entidades WHERE id=167675; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=167676; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=167677; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=190240; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=190241; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=190242; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=215249; -- Castillo de Alarcon encanto_osm dup del castillo (el Parador va en curado)
UPDATE entidades SET codigo_ine='16035' WHERE id=76206; -- movida de 14002
UPDATE entidades SET codigo_ine='16035' WHERE id=76207; -- movida de 14002
UPDATE entidades SET codigo_ine='16035' WHERE id=76208; -- movida de 14002
UPDATE entidades SET codigo_ine='16035' WHERE id=76209; -- movida de 14002
UPDATE entidades SET codigo_ine='16035' WHERE id=79588; -- movida de 14002
DELETE FROM entidades WHERE id=82502; -- dup-ficha 14002: ya existe en 16035
UPDATE entidades SET codigo_ine='16048' WHERE id=76257; -- movida de 14003
UPDATE entidades SET codigo_ine='16048' WHERE id=76258; -- movida de 14003
UPDATE entidades SET codigo_ine='16048' WHERE id=79606; -- movida de 14003
DELETE FROM entidades WHERE id=82503; -- dup-ficha 14003: ya existe en 16048
UPDATE entidades SET codigo_ine='16078' WHERE id=76276; -- movida de 14004
UPDATE entidades SET codigo_ine='16078' WHERE id=76277; -- movida de 14004
UPDATE entidades SET codigo_ine='16078' WHERE id=76278; -- movida de 14004
DELETE FROM entidades WHERE id=78242; -- dup-ficha 14004: ya existe en 16078
UPDATE entidades SET codigo_ine='16078' WHERE id=79607; -- movida de 14004
DELETE FROM entidades WHERE id=82504; -- dup-ficha 14004: ya existe en 16078
DELETE FROM entidades WHERE id=87931; -- dup-ficha 14004: ya existe en 16078
UPDATE entidades SET codigo_ine='16091' WHERE id=76236; -- movida de 14006
UPDATE entidades SET codigo_ine='16091' WHERE id=76237; -- movida de 14006
DELETE FROM entidades WHERE id=82505; -- dup-ficha 14006: ya existe en 16091
DELETE FROM entidades WHERE id=82506; -- dup-ficha 14007: ya existe en 16125
DELETE FROM entidades WHERE id=82507; -- dup-ficha 14008: ya existe en 16133
DELETE FROM entidades WHERE id=82508; -- dup-ficha 14009: ya existe en 16134
UPDATE entidades SET codigo_ine='16170' WHERE id=76254; -- movida de 14010
UPDATE entidades SET codigo_ine='16170' WHERE id=76255; -- movida de 14010
UPDATE entidades SET codigo_ine='16170' WHERE id=76256; -- movida de 14010
DELETE FROM entidades WHERE id=78255; -- dup-ficha 14010: ya existe en 16170
DELETE FROM entidades WHERE id=82509; -- dup-ficha 14010: ya existe en 16170
DELETE FROM entidades WHERE id=78253; -- dup-ficha 14011: ya existe en 16190
UPDATE entidades SET codigo_ine='16190' WHERE id=79609; -- movida de 14011
DELETE FROM entidades WHERE id=82510; -- dup-ficha 14011: ya existe en 16190
DELETE FROM entidades WHERE id=87938; -- dup-ficha 14011: ya existe en 16190
DELETE FROM entidades WHERE id=82511; -- dup-ficha 14012: ya existe en 16203
UPDATE entidades SET codigo_ine='16215' WHERE id=76197; -- movida de 14013
UPDATE entidades SET codigo_ine='16215' WHERE id=76198; -- movida de 14013
UPDATE entidades SET codigo_ine='16215' WHERE id=76199; -- movida de 14013
UPDATE entidades SET codigo_ine='16215' WHERE id=76200; -- movida de 14013
UPDATE entidades SET codigo_ine='16215' WHERE id=76201; -- movida de 14013
DELETE FROM entidades WHERE id=82512; -- dup-ficha 14013: ya existe en 16215
UPDATE entidades SET codigo_ine='16219' WHERE id=76202; -- movida de 14014
UPDATE entidades SET codigo_ine='16219' WHERE id=76203; -- movida de 14014
UPDATE entidades SET codigo_ine='16219' WHERE id=76204; -- movida de 14014
UPDATE entidades SET codigo_ine='16219' WHERE id=76205; -- movida de 14014
DELETE FROM entidades WHERE id=82513; -- dup-ficha 14014: ya existe en 16219
DELETE FROM entidades WHERE id=76210; -- dup-ficha 14016: ya existe en 16245
UPDATE entidades SET codigo_ine='16245' WHERE id=76211; -- movida de 14016
UPDATE entidades SET codigo_ine='16245' WHERE id=76212; -- movida de 14016
UPDATE entidades SET codigo_ine='16245' WHERE id=76213; -- movida de 14016
DELETE FROM entidades WHERE id=82514; -- dup-ficha 14016: ya existe en 16245
-- === gu ===
DELETE FROM entidades WHERE id=96374; -- Castillo Cifuentes copia monumentos (queda 87827)
DELETE FROM entidades WHERE id=96385; -- Castillo Cogolludo copia monumentos (queda 87828)
DELETE FROM entidades WHERE id=96457; -- Castillo Jadraque copia monumentos (queda 87830)
DELETE FROM entidades WHERE id=96526; -- plantilla sin rellenar [Nombre del Monumento 1] Orea
DELETE FROM entidades WHERE id=96527; -- plantilla sin rellenar [Nombre del Monumento 2] Orea
DELETE FROM entidades WHERE id=96546; -- Castillo Pioz copia monumentos (queda 87833)
DELETE FROM entidades WHERE id=97722; -- Castillo Torija copia monumentos (queda 87835)
DELETE FROM entidades WHERE id=97775; -- Castillo Funes copia monumentos (queda 87836)
DELETE FROM entidades WHERE id=97790; -- Castillo Zorita copia monumentos (queda 87837)
DELETE FROM entidades WHERE id=105541; -- Castillo Atienza copia monumentos (queda 87825)
DELETE FROM entidades WHERE id=140008; -- Kiosco Alameda copia ampliacion (queda solete 136881)
DELETE FROM entidades WHERE id=140020; -- Taberna Rompeculos copia ampliacion (queda solete 136839)
DELETE FROM entidades WHERE id=167666; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=167667; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=167668; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=167669; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=186105; -- Caballada de Atienza copia wiki (queda PDF 115131)
DELETE FROM entidades WHERE id=187205; -- Maraton de los Cuentos copia en fiestas (queda festival 184290)
DELETE FROM entidades WHERE id=187671; -- Tenorio Mendocino copia en fiestas (queda festival 184374)
DELETE FROM entidades WHERE id=190292; -- La Almazara de Mantiel como oleoturismo (es casa rural 169040)
DELETE FROM entidades WHERE id=78411; -- dup-ficha 20001: ya existe en 19044
DELETE FROM entidades WHERE id=81986; -- dup-ficha 20001: ya existe en 19044
DELETE FROM entidades WHERE id=87824; -- dup-ficha 20001: ya existe en 19044
DELETE FROM entidades WHERE id=81987; -- dup-ficha 20002: ya existe en 19046
DELETE FROM entidades WHERE id=78412; -- dup-ficha 20003: ya existe en 19053
DELETE FROM entidades WHERE id=81988; -- dup-ficha 20003: ya existe en 19053
DELETE FROM entidades WHERE id=81989; -- dup-ficha 20004: ya existe en 19054
DELETE FROM entidades WHERE id=81990; -- dup-ficha 20005: ya existe en 19058
DELETE FROM entidades WHERE id=81991; -- dup-ficha 20006: ya existe en 19086
DELETE FROM entidades WHERE id=87826; -- dup-ficha 20006: ya existe en 19086
DELETE FROM entidades WHERE id=81992; -- dup-ficha 20007: ya existe en 19130
DELETE FROM entidades WHERE id=78413; -- dup-ficha 20008: ya existe en 19138
DELETE FROM entidades WHERE id=81993; -- dup-ficha 20008: ya existe en 19138
DELETE FROM entidades WHERE id=81994; -- dup-ficha 20009: ya existe en 19143
DELETE FROM entidades WHERE id=81995; -- dup-ficha 20011: ya existe en 19190
DELETE FROM entidades WHERE id=87831; -- dup-ficha 20011: ya existe en 19190
DELETE FROM entidades WHERE id=81996; -- dup-ficha 20012: ya existe en 19192
UPDATE entidades SET codigo_ine='19212' WHERE id=210; -- movida de 20013
DELETE FROM entidades WHERE id=81997; -- dup-ficha 20013: ya existe en 19212
DELETE FROM entidades WHERE id=81998; -- dup-ficha 20014: ya existe en 19245
DELETE FROM entidades WHERE id=81999; -- dup-ficha 20015: ya existe en 19257
UPDATE entidades SET codigo_ine='19257' WHERE id=141616; -- movida de 20015
DELETE FROM entidades WHERE id=82000; -- dup-ficha 20016: ya existe en 19274
DELETE FROM entidades WHERE id=87834; -- dup-ficha 20016: ya existe en 19274
DELETE FROM entidades WHERE id=82001; -- dup-ficha 20017: ya existe en 19291
DELETE FROM entidades WHERE id=82002; -- dup-ficha 20018: ya existe en 19331
-- === to ===
DELETE FROM entidades WHERE id=98405; -- Castillo Barcience copia monumentos (queda 87577)
DELETE FROM entidades WHERE id=98448; -- Castillo la Muela Consuegra copia monumentos (queda 87579)
DELETE FROM entidades WHERE id=98472; -- Castillo-Palacio Escalona copia monumentos (queda 87580)
DELETE FROM entidades WHERE id=98491; -- Castillo Guadamur copia monumentos (queda 87581)
DELETE FROM entidades WHERE id=98583; -- Castillo Orgaz copia monumentos (queda 87585)
DELETE FROM entidades WHERE id=98599; -- Castillo Polan copia monumentos (queda 87588)
DELETE FROM entidades WHERE id=98675; -- Museo Etnografico Silos copia monumentos (queda wikidata 148548)
DELETE FROM entidades WHERE id=106410; -- Alcazar de Toledo copia monumentos (queda 87593)
DELETE FROM entidades WHERE id=140570; -- Taberna el Botero copia ampliacion (queda solete 134686)
DELETE FROM entidades WHERE id=140571; -- Taberna Skala copia ampliacion (queda solete 134685)
DELETE FROM entidades WHERE id=148499; -- escuela de herreros dup minusculas (queda 148508)
DELETE FROM entidades WHERE id=166769; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166770; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166771; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166772; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166773; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166774; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166775; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=167151; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=186205; -- CI Pecados y Danzantes copia en fiestas (queda Museo 148490)
DELETE FROM entidades WHERE id=186336; -- Corpus Lagartera copia wiki (queda PDF 115397)
DELETE FROM entidades WHERE id=187608; -- Semana Santa Ocana copia wiki (queda PDF 115429)
DELETE FROM entidades WHERE id=190161; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=190162; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=190275; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=190289; -- calle/plaza como oleoturismo
DELETE FROM entidades WHERE id=215146; -- Hospederia del Comendador encanto dup (queda rural 167154)
DELETE FROM entidades WHERE id=215303; -- Hospederia El Convento encanto dup (queda rural 169607)
UPDATE entidades SET codigo_ine='45053' WHERE id=76196; -- movida de 44001
DELETE FROM entidades WHERE id=82184; -- dup-ficha 44001: ya existe en 45053
DELETE FROM entidades WHERE id=87578; -- dup-ficha 44001: ya existe en 45053
DELETE FROM entidades WHERE id=82185; -- dup-ficha 44002: ya existe en 45081
DELETE FROM entidades WHERE id=82186; -- dup-ficha 44003: ya existe en 45082
DELETE FROM entidades WHERE id=78223; -- dup-ficha 44004: ya existe en 45087
DELETE FROM entidades WHERE id=82187; -- dup-ficha 44004: ya existe en 45087
DELETE FROM entidades WHERE id=82188; -- dup-ficha 44005: ya existe en 45106
DELETE FROM entidades WHERE id=78211; -- dup-ficha 44006: ya existe en 45121
DELETE FROM entidades WHERE id=82189; -- dup-ficha 44006: ya existe en 45121
UPDATE entidades SET codigo_ine='45124' WHERE id=76195; -- movida de 44007
DELETE FROM entidades WHERE id=82190; -- dup-ficha 44007: ya existe en 45124
DELETE FROM entidades WHERE id=87584; -- dup-ficha 44007: ya existe en 45124
UPDATE entidades SET codigo_ine='45125' WHERE id=76185; -- movida de 44008
UPDATE entidades SET codigo_ine='45125' WHERE id=76186; -- movida de 44008
DELETE FROM entidades WHERE id=82191; -- dup-ficha 44008: ya existe en 45125
DELETE FROM entidades WHERE id=87586; -- dup-ficha 44008: ya existe en 45125
DELETE FROM entidades WHERE id=82192; -- dup-ficha 44009: ya existe en 45142
DELETE FROM entidades WHERE id=82193; -- dup-ficha 44010: ya existe en 45165
DELETE FROM entidades WHERE id=78212; -- dup-ficha 44011: ya existe en 45166
DELETE FROM entidades WHERE id=82194; -- dup-ficha 44011: ya existe en 45166
UPDATE entidades SET codigo_ine='45168' WHERE id=76191; -- movida de 44012
UPDATE entidades SET codigo_ine='45168' WHERE id=76192; -- movida de 44012
DELETE FROM entidades WHERE id=78205; -- dup-ficha 44012: ya existe en 45168
DELETE FROM entidades WHERE id=82195; -- dup-ficha 44012: ya existe en 45168
DELETE FROM entidades WHERE id=87590; -- dup-ficha 44012: ya existe en 45168
DELETE FROM entidades WHERE id=87592; -- dup-ficha 44012: ya existe en 45168
DELETE FROM entidades WHERE id=82196; -- dup-ficha 44013: ya existe en 45177

-- 0444 auditoría final: cornisa + Navarra + Rioja + Baleares + Canarias + Ceuta/Melilla
UPDATE entidades SET nombre='Oli Treurer' WHERE id=84819; -- era '07002' (Algaida)
UPDATE entidades SET codigo_ine='38003' WHERE id=199329; -- Buenavista Golf: esta en Buenavista del Norte, no Los Realejos
UPDATE entidades SET codigo_ine='38003' WHERE id=211504; -- Playa de los Barqueros: junto a Buenavista Golf
UPDATE entidades SET codigo_ine='38003' WHERE id=203118; -- Mirador de los Barqueros: idem
-- === as (capital 33044) ===
DELETE FROM entidades WHERE id=106953; -- Tito Bustillo copia monumentos (queda UNESCO 79192)
DELETE FROM entidades WHERE id=151772; -- Paseo fluvial Piles dup (queda 151778)
DELETE FROM entidades WHERE id=168134; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168137; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168138; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168139; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168140; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168141; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168142; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168143; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169219; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169223; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=186600; -- Interceltico Aviles copia en fiestas (queda 184113)
DELETE FROM entidades WHERE id=187285; -- Museo Semana Santa Villaviciosa como fiesta (queda Museo 147709)
DELETE FROM entidades WHERE id=215201; -- Palacio Inguanzo encanto dup (queda rural 168168)
DELETE FROM entidades WHERE id=79183; -- dup-ficha 05009: ya existe en 33024
DELETE FROM entidades WHERE id=81438; -- dup-ficha 05009: ya existe en 33024
UPDATE entidades SET codigo_ine='33036' WHERE id=77685; -- movida de 05010
UPDATE entidades SET codigo_ine='33036' WHERE id=77686; -- movida de 05010
DELETE FROM entidades WHERE id=79181; -- dup-ficha 05010: ya existe en 33036
DELETE FROM entidades WHERE id=81439; -- dup-ficha 05010: ya existe en 33036
UPDATE entidades SET codigo_ine='33043' WHERE id=77655; -- movida de 05012
UPDATE entidades SET codigo_ine='33043' WHERE id=77656; -- movida de 05012
UPDATE entidades SET codigo_ine='33043' WHERE id=77657; -- movida de 05012
DELETE FROM entidades WHERE id=81440; -- dup-ficha 05012: ya existe en 33043
UPDATE entidades SET codigo_ine='33044' WHERE id=77691; -- movida de 05013
DELETE FROM entidades WHERE id=81441; -- dup-ficha 05013: ya existe en 33044
UPDATE entidades SET codigo_ine='33045' WHERE id=77668; -- movida de 05014
DELETE FROM entidades WHERE id=81442; -- dup-ficha 05014: ya existe en 33045
UPDATE entidades SET codigo_ine='33046' WHERE id=77667; -- movida de 05015
DELETE FROM entidades WHERE id=81443; -- dup-ficha 05015: ya existe en 33046
DELETE FROM entidades WHERE id=81444; -- dup-ficha 05016: ya existe en 33047
UPDATE entidades SET codigo_ine='33053' WHERE id=77681; -- movida de 05018
UPDATE entidades SET codigo_ine='33053' WHERE id=77682; -- movida de 05018
DELETE FROM entidades WHERE id=81445; -- dup-ficha 05018: ya existe en 33053
DELETE FROM entidades WHERE id=81446; -- dup-ficha 05019: ya existe en 33055
DELETE FROM entidades WHERE id=79178; -- dup-ficha 05020: ya existe en 33056
DELETE FROM entidades WHERE id=81447; -- dup-ficha 05020: ya existe en 33056
UPDATE entidades SET codigo_ine='33068' WHERE id=77669; -- movida de 05021
UPDATE entidades SET codigo_ine='33068' WHERE id=77670; -- movida de 05021
UPDATE entidades SET codigo_ine='33068' WHERE id=77671; -- movida de 05021
DELETE FROM entidades WHERE id=81448; -- dup-ficha 05021: ya existe en 33068
UPDATE entidades SET codigo_ine='33071' WHERE id=77687; -- movida de 05022
UPDATE entidades SET codigo_ine='33071' WHERE id=77688; -- movida de 05022
DELETE FROM entidades WHERE id=81449; -- dup-ficha 05022: ya existe en 33071
UPDATE entidades SET codigo_ine='33072' WHERE id=77683; -- movida de 05023
DELETE FROM entidades WHERE id=77684; -- dup-ficha 05023: ya existe en 33072
DELETE FROM entidades WHERE id=81450; -- dup-ficha 05023: ya existe en 33072
UPDATE entidades SET codigo_ine='33073' WHERE id=77690; -- movida de 05024
DELETE FROM entidades WHERE id=81451; -- dup-ficha 05024: ya existe en 33073
-- === cb (capital 39075) ===
DELETE FROM entidades WHERE id=168212; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168213; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168214; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168215; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168216; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168217; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168218; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168219; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168220; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168221; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168222; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168223; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169357; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=174194; -- ocio nombre basura 1769
DELETE FROM entidades WHERE id=182882; -- Santuario Las Caldas copia religioso_osm (queda PDF 119072)
DELETE FROM entidades WHERE id=186086; -- Batalla de Flores copia wiki (queda PDF 112579)
DELETE FROM entidades WHERE id=206076; -- Cascada de Lamina como mirador (queda cascada 150025)
DELETE FROM entidades WHERE id=212589; -- Playa de Portio copia OSM (queda PDF 92605)
DELETE FROM entidades WHERE id=80877; -- dup-ficha 10003: ya existe en 39012
DELETE FROM entidades WHERE id=80878; -- dup-ficha 10004: ya existe en 39016
DELETE FROM entidades WHERE id=80879; -- dup-ficha 10005: ya existe en 39027
DELETE FROM entidades WHERE id=80880; -- dup-ficha 10006: ya existe en 39020
UPDATE entidades SET codigo_ine='39024' WHERE id=192; -- movida de 10007
DELETE FROM entidades WHERE id=80881; -- dup-ficha 10007: ya existe en 39024
UPDATE entidades SET codigo_ine='39032' WHERE id=77637; -- movida de 10008
UPDATE entidades SET codigo_ine='39032' WHERE id=77638; -- movida de 10008
UPDATE entidades SET codigo_ine='39032' WHERE id=77639; -- movida de 10008
DELETE FROM entidades WHERE id=80882; -- dup-ficha 10008: ya existe en 39032
DELETE FROM entidades WHERE id=79203; -- dup-ficha 10009: ya existe en 39035
DELETE FROM entidades WHERE id=80883; -- dup-ficha 10009: ya existe en 39035
DELETE FROM entidades WHERE id=80884; -- dup-ficha 10010: ya existe en 39025
DELETE FROM entidades WHERE id=80885; -- dup-ficha 10011: ya existe en 39051
UPDATE entidades SET codigo_ine='39055' WHERE id=77629; -- movida de 10012
UPDATE entidades SET codigo_ine='39055' WHERE id=77630; -- movida de 10012
UPDATE entidades SET codigo_ine='39055' WHERE id=77631; -- movida de 10012
DELETE FROM entidades WHERE id=79199; -- dup-ficha 10012: ya existe en 39055
DELETE FROM entidades WHERE id=80886; -- dup-ficha 10012: ya existe en 39055
DELETE FROM entidades WHERE id=79206; -- dup-ficha 10013: ya existe en 39059
DELETE FROM entidades WHERE id=80887; -- dup-ficha 10013: ya existe en 39059
DELETE FROM entidades WHERE id=80888; -- dup-ficha 10014: ya existe en 39068
UPDATE entidades SET codigo_ine='39080' WHERE id=77651; -- movida de 10015
UPDATE entidades SET codigo_ine='39080' WHERE id=77652; -- movida de 10015
DELETE FROM entidades WHERE id=79197; -- dup-ficha 10015: ya existe en 39080
DELETE FROM entidades WHERE id=80889; -- dup-ficha 10015: ya existe en 39080
UPDATE entidades SET codigo_ine='39075' WHERE id=77654; -- movida de 10016
DELETE FROM entidades WHERE id=80890; -- dup-ficha 10016: ya existe en 39075
DELETE FROM entidades WHERE id=109; -- dup-ficha 10017: ya existe en 39076
UPDATE entidades SET codigo_ine='39076' WHERE id=110; -- movida de 10017
UPDATE entidades SET codigo_ine='39076' WHERE id=159; -- movida de 10017
UPDATE entidades SET codigo_ine='39076' WHERE id=160; -- movida de 10017
UPDATE entidades SET codigo_ine='39076' WHERE id=77653; -- movida de 10017
DELETE FROM entidades WHERE id=79194; -- dup-ficha 10017: ya existe en 39076
DELETE FROM entidades WHERE id=80891; -- dup-ficha 10017: ya existe en 39076
DELETE FROM entidades WHERE id=80892; -- dup-ficha 10018: ya existe en 39079
DELETE FROM entidades WHERE id=80893; -- dup-ficha 10019: ya existe en 39087
DELETE FROM entidades WHERE id=80894; -- dup-ficha 10020: ya existe en 39102
-- === vi (capital 48020) ===
DELETE FROM entidades WHERE id=121478; -- Necropolis Argineta como mirador (queda monumento 97436)
DELETE FROM entidades WHERE id=139633; -- Gure Toki copia ampliacion (queda solete 137959)
DELETE FROM entidades WHERE id=140614; -- El Globo copia ampliacion (queda solete 137971)
DELETE FROM entidades WHERE id=140616; -- Sorginzulo copia ampliacion (queda solete 137930)
DELETE FROM entidades WHERE id=140617; -- Victor Montes copia ampliacion (queda solete 137920)
DELETE FROM entidades WHERE id=168236; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168237; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168238; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168239; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168245; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168246; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168247; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168248; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168249; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168250; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168251; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168252; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168253; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168254; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168255; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168256; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168257; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168258; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168259; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168260; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168261; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168262; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168263; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168264; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168265; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168266; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168267; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=174705; -- ocio nombre basura X
DELETE FROM entidades WHERE id=206153; -- mirador nombre basura 16
DELETE FROM entidades WHERE id=206154; -- mirador nombre basura 15
DELETE FROM entidades WHERE id=215288; -- Palacio Arriluce encanto dup (queda lujo 198353)
DELETE FROM entidades WHERE id=77525; -- dup-ficha 47003: ya existe en 48017
UPDATE entidades SET codigo_ine='48017' WHERE id=77526; -- movida de 47003
DELETE FROM entidades WHERE id=79262; -- dup-ficha 47003: ya existe en 48017
DELETE FROM entidades WHERE id=81312; -- dup-ficha 47003: ya existe en 48017
DELETE FROM entidades WHERE id=79256; -- dup-ficha 47004: ya existe en 48020
DELETE FROM entidades WHERE id=81313; -- dup-ficha 47004: ya existe en 48020
UPDATE entidades SET codigo_ine='48028' WHERE id=77523; -- movida de 47005
DELETE FROM entidades WHERE id=81314; -- dup-ficha 47005: ya existe en 48028
DELETE FROM entidades WHERE id=81299; -- dup-ficha 48073: ya existe en 47012
-- === gp (capital 20069) ===
DELETE FROM entidades WHERE id=97494; -- Torre Luzea copia monumentos (queda BIC 79277)
DELETE FROM entidades WHERE id=140025; -- DA Taberna copia ampliacion (queda solete 137220)
DELETE FROM entidades WHERE id=164960; -- restaurante nombre basura Da
DELETE FROM entidades WHERE id=168299; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168300; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168301; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168302; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168303; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168304; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168305; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168306; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168307; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168308; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168310; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168311; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168312; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168313; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168314; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169381; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169382; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=170391; -- ocio nombre basura Gu
DELETE FROM entidades WHERE id=173090; -- ocio nombre basura 1990
DELETE FROM entidades WHERE id=206166; -- Itxaspe como mirador (quedan playa/camping/mascotas)
DELETE FROM entidades WHERE id=215291; -- Palacio San Narciso encanto dup (queda rural 169388)
DELETE FROM entidades WHERE id=81322; -- dup-ficha 20019: ya existe en 21005
DELETE FROM entidades WHERE id=81331; -- dup-ficha 20030: ya existe en 21008
UPDATE entidades SET codigo_ine='21012' WHERE id=77492; -- movida de 20045
UPDATE entidades SET codigo_ine='21012' WHERE id=77493; -- movida de 20045
DELETE FROM entidades WHERE id=81346; -- dup-ficha 20045: ya existe en 21012
DELETE FROM entidades WHERE id=79281; -- dup-ficha 21017: ya existe en 20071
DELETE FROM entidades WHERE id=81373; -- dup-ficha 21017: ya existe en 20071
DELETE FROM entidades WHERE id=81372; -- dup-ficha 20080: ya existe en 21020
-- === al2 (capital None) ===
DELETE FROM entidades WHERE id=79293; -- dup-ficha 50014: ya existe en 01022
DELETE FROM entidades WHERE id=81242; -- dup-ficha 50014: ya existe en 01022
DELETE FROM entidades WHERE id=79294; -- dup-ficha 50021: ya existe en 01028
DELETE FROM entidades WHERE id=79292; -- dup-ficha 50023: ya existe en 01031
DELETE FROM entidades WHERE id=79295; -- dup-ficha 50032: ya existe en 01044
-- === na (capital None) ===
DELETE FROM entidades WHERE id=77587; -- Senorio de Bertiz como sendero relleno (queda espacio 132005)
DELETE FROM entidades WHERE id=105965; -- El Cerco de Artajona copia monumentos (queda BIC 79235)
DELETE FROM entidades WHERE id=121658; -- El Cerco de Artajona como mirador (queda BIC 79235)
DELETE FROM entidades WHERE id=121675; -- Senorio de Bertiz como mirador (queda espacio 132005)
DELETE FROM entidades WHERE id=121677; -- Torre de Olcoz como mirador (queda monumento 106016)
DELETE FROM entidades WHERE id=173775; -- ocio nombre basura 1920
DELETE FROM entidades WHERE id=190302; -- calle como oleoturismo
DELETE FROM entidades WHERE id=79239; -- dup-ficha 33004: ya existe en 31038
DELETE FROM entidades WHERE id=81233; -- dup-ficha 33004: ya existe en 31038
DELETE FROM entidades WHERE id=81234; -- dup-ficha 33010: ya existe en 31159
DELETE FROM entidades WHERE id=81235; -- dup-ficha 33011: ya existe en 31167
UPDATE entidades SET codigo_ine='31211' WHERE id=103; -- movida de 33017
UPDATE entidades SET codigo_ine='31211' WHERE id=104; -- movida de 33017
DELETE FROM entidades WHERE id=81236; -- dup-ficha 33019: ya existe en 31232
DELETE FROM entidades WHERE id=81237; -- dup-ficha 33020: ya existe en 31235
-- === ri (capital 26089) ===
DELETE FROM entidades WHERE id=149103; -- CI Contrebia Leucade dup wikidata (queda 149102)
DELETE FROM entidades WHERE id=164917; -- Meson Buen Yantar copia OSM (queda ampliacion 140195)
DELETE FROM entidades WHERE id=167836; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=167837; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=215183; -- Hospederia de Vico encanto dup (queda rural 167792)
-- === bl (capital None) ===
DELETE FROM entidades WHERE id=105533; -- Castillo Santueri copia monumentos (queda 87962)
DELETE FROM entidades WHERE id=138353; -- solete nombre cortado por parser: Nu
DELETE FROM entidades WHERE id=145392; -- es Celler wikidata generico a 23km de Ses Salines
DELETE FROM entidades WHERE id=181107; -- Talaiot con acento dup (queda 181108)
-- === ib (capital 07040) ===
DELETE FROM entidades WHERE id=168378; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168379; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=168380; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169423; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=169424; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=206220; -- Es Portitxol como mirador (queda playa 212775)
DELETE FROM entidades WHERE id=207264; -- es Raco d en Xic como mirador (quedan playa y lgtbi)
DELETE FROM entidades WHERE id=207295; -- Torre de Fornells como mirador (queda monumento 105080)
DELETE FROM entidades WHERE id=215294; -- Castillo Son Vida encanto dup (queda lujo 198378)
-- === lp (capital 35016) ===
DELETE FROM entidades WHERE id=151287; -- Playa de Mogan como poza (queda playa PDF 93535)
DELETE FROM entidades WHERE id=166105; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166107; -- rural nombre basura 77
DELETE FROM entidades WHERE id=168680; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=199007; -- lujo nombre basura 15
DELETE FROM entidades WHERE id=199008; -- lujo nombre basura 14
UPDATE entidades SET codigo_ine='35014' WHERE id=77907; -- movida de 25006
DELETE FROM entidades WHERE id=81673; -- dup-ficha 25006: ya existe en 35014
DELETE FROM entidades WHERE id=79322; -- dup-ficha 25007: ya existe en 35016
UPDATE entidades SET codigo_ine='35012' WHERE id=77901; -- movida de 25009
UPDATE entidades SET codigo_ine='35012' WHERE id=77902; -- movida de 25009
DELETE FROM entidades WHERE id=81674; -- dup-ficha 25009: ya existe en 35012
DELETE FROM entidades WHERE id=81675; -- dup-ficha 25010: ya existe en 35017
UPDATE entidades SET codigo_ine='35015' WHERE id=77906; -- movida de 25011
DELETE FROM entidades WHERE id=81676; -- dup-ficha 25011: ya existe en 35015
UPDATE entidades SET codigo_ine='35025' WHERE id=77888; -- movida de 25012
UPDATE entidades SET codigo_ine='35025' WHERE id=77889; -- movida de 25012
UPDATE entidades SET codigo_ine='35025' WHERE id=77890; -- movida de 25012
DELETE FROM entidades WHERE id=79329; -- dup-ficha 25012: ya existe en 35025
DELETE FROM entidades WHERE id=81677; -- dup-ficha 25012: ya existe en 35025
DELETE FROM entidades WHERE id=79328; -- dup-ficha 25013: ya existe en 35026
DELETE FROM entidades WHERE id=81678; -- dup-ficha 25013: ya existe en 35026
DELETE FROM entidades WHERE id=81679; -- dup-ficha 25014: ya existe en 35030
-- === tf (capital 38012) ===
DELETE FROM entidades WHERE id=140431; -- Bodegon El Puntero copia ampliacion (queda solete 135225)
DELETE FROM entidades WHERE id=150328; -- El Chorro de El Cedro dup (queda 150999)
DELETE FROM entidades WHERE id=166103; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=166104; -- alojamiento urbano de la capital en turismo rural
DELETE FROM entidades WHERE id=200039; -- activo nombre basura ?
DELETE FROM entidades WHERE id=203108; -- Playa Abama como mirador (queda playa 211493)
DELETE FROM entidades WHERE id=203210; -- Roque Caramujo dup (queda 203211)
DELETE FROM entidades WHERE id=211116; -- Playa del Medano dup OSM (queda 211527)
DELETE FROM entidades WHERE id=79343; -- dup-ficha 38015: ya existe en 38005
DELETE FROM entidades WHERE id=81683; -- dup-ficha 38015: ya existe en 38005
DELETE FROM entidades WHERE id=79344; -- dup-ficha 38022: ya existe en 38006
DELETE FROM entidades WHERE id=81691; -- dup-ficha 38022: ya existe en 38006
DELETE FROM entidades WHERE id=81702; -- dup-ficha 38031: ya existe en 38010
DELETE FROM entidades WHERE id=81698; -- dup-ficha 38028: ya existe en 38011
DELETE FROM entidades WHERE id=81709; -- dup-ficha 38038: ya existe en 38012
DELETE FROM entidades WHERE id=81712; -- dup-ficha 38040: ya existe en 38013
-- === ce (capital 12001) ===
DELETE FROM entidades WHERE id=166158; -- alojamiento urbano de la capital en turismo rural
-- === me (capital 52001) ===
DELETE FROM entidades WHERE id=168703; -- alojamiento urbano de la capital en turismo rural
-- === Baleares: fusion Ibiza y Ariañy dobles + provincia unificada ===
UPDATE entidades SET codigo_ine='07026' WHERE id=77829; -- movida del gemelo 07010
UPDATE entidades SET codigo_ine='07026' WHERE id=77830; -- movida del gemelo 07010
DELETE FROM entidades WHERE id=79298; -- gemelo Baleares 07010: ya existe en 07026
UPDATE entidades SET codigo_ine='07026' WHERE id=88034; -- movida del gemelo 07010
UPDATE entidades SET codigo_ine='07026' WHERE id=140760; -- movida del gemelo 07010
UPDATE entidades SET codigo_ine='07026' WHERE id=140761; -- movida del gemelo 07010
UPDATE entidades SET codigo_ine='07026' WHERE id=141543; -- movida del gemelo 07010
UPDATE entidades SET codigo_ine='07026' WHERE id=141544; -- movida del gemelo 07010
UPDATE entidades SET codigo_ine='07026' WHERE id=143505; -- movida del gemelo 07010
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07010'; -- gemelo de 07026
DELETE FROM puntuaciones WHERE codigo_ine='07010' AND categoria='ranking_global'; -- fuera del ranking
UPDATE entidades SET codigo_ine='07003' WHERE id=152797; -- movida del gemelo 07901
UPDATE entidades SET codigo_ine='07003' WHERE id=206295; -- movida del gemelo 07901
UPDATE entidades SET codigo_ine='07003' WHERE id=211011; -- movida del gemelo 07901
UPDATE municipios SET es_duplicado=1 WHERE codigo_ine='07901'; -- gemelo de 07003
DELETE FROM puntuaciones WHERE codigo_ine='07901' AND categoria='ranking_global'; -- fuera del ranking
UPDATE municipios SET provincia='Baleares' WHERE provincia='Islas Baleares'; -- unificar nombre de provincia

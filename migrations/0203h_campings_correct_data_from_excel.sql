-- Migration: 0203h_campings_correct_data_from_excel.sql
-- Fecha: 2026-06-11
-- Descripción: Cargar datos correctos de campings desde Excel original

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='Campings';

UPDATE puntuaciones SET puntuacion=92 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Tarifa' AND provincia='Cádiz' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Valdevaqueros, Camping Paloma, Camping Torre de la Peña - Meca mundial del windsurf, instalaciones integradas en la naturaleza con ambiente joven y deportivo') WHERE nombre='Tarifa' AND provincia='Cádiz';

UPDATE puntuaciones SET puntuacion=89 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Conil de la Frontera' AND provincia='Cádiz' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Cala del Aceite, Camping Rosaleda - Excelentes bungalows, piscinas grandes y acceso directo a calas vírgenes') WHERE nombre='Conil de la Frontera' AND provincia='Cádiz';

UPDATE puntuaciones SET puntuacion=84 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Zahara de los Atunes / Barbate' AND provincia='Cádiz' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Bahía de la Plata, Camping Caños de Meca - Muy familiares, parcelas con sombra excelente a pie de playa') WHERE nombre='Zahara de los Atunes / Barbate' AND provincia='Cádiz';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='El Puerto de Santa María' AND provincia='Cádiz' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Playa Las Dunas - Ubicado en un entorno de pinar junto a la playa de la Puntilla, servicios urbanos completos') WHERE nombre='El Puerto de Santa María' AND provincia='Cádiz';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Vejer de la Frontera' AND provincia='Cádiz' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Palmar - Pequeño, muy enfocado al surf y la tranquilidad en la famosa playa de El Palmar') WHERE nombre='Vejer de la Frontera' AND provincia='Cádiz';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Grazalema' AND provincia='Cádiz' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Tajo Rodillo - Instalaciones rústicas de montaña en pleno Parque Natural, ideal para senderistas') WHERE nombre='Grazalema' AND provincia='Cádiz';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Olvera' AND provincia='Cádiz' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Pueblo Blanco - Ubicado en un típico cortijo andaluz reformado, parada estratégica de la Vía Verde de la Sierra') WHERE nombre='Olvera' AND provincia='Cádiz';

UPDATE puntuaciones SET puntuacion=62 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Algeciras' AND provincia='Cádiz' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Los Gazules - Sencillo, de interior, muy enfocado al Parque de los Alcornocales') WHERE nombre='Algeciras' AND provincia='Cádiz';

UPDATE puntuaciones SET puntuacion=83 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Marbella' AND provincia='Málaga' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Cabopino - Abierto todo el año, piscina cubierta climatizada, excelentes actividades de animación y pinar protegido') WHERE nombre='Marbella' AND provincia='Málaga';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Estepona' AND provincia='Málaga' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Parque Tropical - Destaca por su vegetación exótica, ambiente muy tranquilo y cercanía a la playa') WHERE nombre='Estepona' AND provincia='Málaga';

UPDATE puntuaciones SET puntuacion=74 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Nerja' AND provincia='Málaga' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Nerja - Pequeño y de corte tradicional, muy valorado por turistas extranjeros por su clima invernal') WHERE nombre='Nerja' AND provincia='Málaga';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Torrox' AND provincia='Málaga' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Pino - Gran capacidad de parcelas, piscina de buen tamaño y rodeado de árboles de aguacate') WHERE nombre='Torrox' AND provincia='Málaga';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ronda' AND provincia='Málaga' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Sur - Parcelas con vistas espectaculares a la ciudad monumental, entorno de olivos muy cuidado') WHERE nombre='Ronda' AND provincia='Málaga';

UPDATE puntuaciones SET puntuacion=69 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Fuengirola / Mijas' AND provincia='Málaga' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping La Buganvilla - Ambiente familiar, dos piscinas y mucha sombra natural') WHERE nombre='Fuengirola / Mijas' AND provincia='Málaga';

UPDATE puntuaciones SET puntuacion=65 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Humilladero' AND provincia='Málaga' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping La Sierrecilla - Interior de Málaga, complejo moderno con cabañas adaptadas e instalaciones accesibles') WHERE nombre='Humilladero' AND provincia='Málaga';

UPDATE puntuaciones SET puntuacion=86 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Moguer / Palos de la Frontera' AND provincia='Huelva' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Doñana Playa - Un gigante en pleno Espacio Natural de Doñana, piscinas con formas naturales, amplias playas vírgenes y todo tipo de servicios') WHERE nombre='Moguer / Palos de la Frontera' AND provincia='Huelva';

UPDATE puntuaciones SET puntuacion=82 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Isla Cristina' AND provincia='Huelva' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Giralda - Situado en un pinar inmenso junto a la ría de Carreras, muy familiar y activo en verano') WHERE nombre='Isla Cristina' AND provincia='Huelva';

UPDATE puntuaciones SET puntuacion=79 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ayamonte' AND provincia='Huelva' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Atlántico - Estratégico para cruzar a Portugal, instalaciones cuidadas y ambiente muy internacional') WHERE nombre='Ayamonte' AND provincia='Huelva';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Punta Umbría' AND provincia='Huelva' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Playa La Bota - Excelente restauración local dentro del recinto, muy cercano a las marismas del Odiel') WHERE nombre='Punta Umbría' AND provincia='Huelva';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cortegana' AND provincia='Huelva' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Ribera del Chanza - Ubicado en la Sierra de Aracena, parcelas tranquilas y actividades de ecoturismo') WHERE nombre='Cortegana' AND provincia='Huelva';

UPDATE puntuaciones SET puntuacion=88 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Níjar / Cabo de Gata' AND provincia='Almería' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Los Escullos, Camping Cabo de Gata - Los Escullos es un resort de primera con gimnasio, jacuzzi, parcelas con sombreado artificial y abierto todo el año en pleno parque natural') WHERE nombre='Níjar / Cabo de Gata' AND provincia='Almería';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Roquetas de Mar' AND provincia='Almería' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Roquetas - Muy plano, ideal para caravanas grandes, piscina y ambiente residencial europeo') WHERE nombre='Roquetas de Mar' AND provincia='Almería';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mojácar' AND provincia='Almería' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Cantal - Ubicación excelente en primera línea de la playa de Mojácar, estilo puramente costero') WHERE nombre='Mojácar' AND provincia='Almería';

UPDATE puntuaciones SET puntuacion=67 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cuevas del Almanzora' AND provincia='Almería' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Cuevas Mar - Cerca de la playa de Palomares, piscina, tranquilo y orientado al turismo naturista/textil mixto') WHERE nombre='Cuevas del Almanzora' AND provincia='Almería';

UPDATE puntuaciones SET puntuacion=64 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Vélez-Blanco' AND provincia='Almería' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Pinar del Rey - Camping de interior en la Sierra de María, mucha sombra de pino natural, ambiente fresco en verano') WHERE nombre='Vélez-Blanco' AND provincia='Almería';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Órgiva' AND provincia='Granada' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Órgiva - El corazón de la Alpujarra, bungalows de piedra integrados en el paisaje, jardines cuidados y paz absoluta') WHERE nombre='Órgiva' AND provincia='Granada';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Motril / Carchuna' AND provincia='Granada' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Playa de Poniente, Camping Don Cactus - Don Cactus destaca por su piscina tropical con cascadas y acceso directo a la playa de la Costa Tropical') WHERE nombre='Motril / Carchuna' AND provincia='Granada';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Granada' AND provincia='Granada' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Sierra Nevada - Urbano, funcional, ideal para dejar el coche o la caravana y visitar la Alhambra en autobús directo') WHERE nombre='Granada' AND provincia='Granada';

UPDATE puntuaciones SET puntuacion=66 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Güejar Sierra' AND provincia='Granada' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Las Lomas - Vistas espectaculares al embalse de Canales, parcelas en terrazas, muy fresco y perfecto para subir a Sierra Nevada') WHERE nombre='Güejar Sierra' AND provincia='Granada';

UPDATE puntuaciones SET puntuacion=63 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='La Zubia' AND provincia='Granada' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Reina Isabel - Pequeño, familiar, con buena sombra y trato muy cercano a las faldas de la sierra') WHERE nombre='La Zubia' AND provincia='Granada';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='La Iruela / Cazorla' AND provincia='Jaén' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Llanos de Arance, Camping San Isicio - Llanos de Arance está junto al río Guadalquivir en pleno Parque Natural, con cabañas de madera excelentes') WHERE nombre='La Iruela / Cazorla' AND provincia='Jaén';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Santiago-Pontones' AND provincia='Jaén' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Chopera Coto Ríos - Entorno rústico insuperable, aislamiento natural total, instalaciones sencillas pero limpias') WHERE nombre='Santiago-Pontones' AND provincia='Jaén';

UPDATE puntuaciones SET puntuacion=67 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Santa Elena' AND provincia='Jaén' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Despeñaperros - La puerta de entrada a Andalucía, piscina, restaurante de cocina local y parcelas de paso muy cómodas') WHERE nombre='Santa Elena' AND provincia='Jaén';

UPDATE puntuaciones SET puntuacion=64 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Baños de la Encina' AND provincia='Jaén' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Agramón - Junto al embalse del Rumblar, ideal para combinar historia con el castillo califal y el baño en el pantano') WHERE nombre='Baños de la Encina' AND provincia='Jaén';

UPDATE puntuaciones SET puntuacion=65 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Córdoba' AND provincia='Córdoba' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Brillante - Ubicado en la mejor zona residencial de la ciudad, con parada de autobús en la puerta hacia la Mezquita') WHERE nombre='Córdoba' AND provincia='Córdoba';

UPDATE puntuaciones SET puntuacion=60 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Carcabuey' AND provincia='Córdoba' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Carlos III - En las Subbéticas Cordobesas, piscina, tranquilo y funcional para visitar los pueblos blancos cordobeses') WHERE nombre='Carcabuey' AND provincia='Córdoba';

UPDATE puntuaciones SET puntuacion=58 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villafranca de Córdoba' AND provincia='Córdoba' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping La Albolafia - Instalaciones básicas, muy útil para disfrutar del parque acuático y multiaventura fluvial cercano') WHERE nombre='Villafranca de Córdoba' AND provincia='Córdoba';

UPDATE puntuaciones SET puntuacion=64 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Dos Hermanas' AND provincia='Sevilla' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Villsom - El más cercano y mejor comunicado con Sevilla capital. Sombra de naranjos y ambiente internacional de paso') WHERE nombre='Dos Hermanas' AND provincia='Sevilla';

UPDATE puntuaciones SET puntuacion=61 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Aznalcázar' AND provincia='Sevilla' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Dehesa Nueva - Ubicado en los pinares de Aznalcázar, entorno natural rústico a las puertas de Doñana') WHERE nombre='Aznalcázar' AND provincia='Sevilla';

UPDATE puntuaciones SET puntuacion=95 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Crevillente' AND provincia='Alicante' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Alannia Costa Blanca - Un mega-resort de lujo de categoría internacional. Destaca por sus espectaculares piscinas tropicales con toboganes, bungalows de diseño, spa completo y un equipamiento de ocio masivo') WHERE nombre='Crevillente' AND provincia='Alicante';

UPDATE puntuaciones SET puntuacion=93 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Guardamar del Segura' AND provincia='Alicante' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Alannia Guardamar - Hermano del anterior, enfocado al turismo familiar premium con un complejo acuático de primer nivel y muy cerca de las dunas de Guardamar') WHERE nombre='Guardamar del Segura' AND provincia='Alicante';

UPDATE puntuaciones SET puntuacion=88 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Benidorm' AND provincia='Alicante' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Villamar, Camping Armanello, Camping Arena Blanca - Benidorm es una potencia en campings urbanos y residenciales. Abiertos todo el año, con piscinas tematizadas y excelentes servicios de animación enfocados al público europeo') WHERE nombre='Benidorm' AND provincia='Alicante';

UPDATE puntuaciones SET puntuacion=85 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Javea / Xàbia' AND provincia='Alicante' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Jávea - Muy bien valorado por sus cuidadas zonas verdes, su inmensa piscina y su tranquilidad, a un paso de las mejores calas de la provincia') WHERE nombre='Javea / Xàbia' AND provincia='Alicante';

UPDATE puntuaciones SET puntuacion=83 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Calpe / Calp' AND provincia='Alicante' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Calpemar - Pequeño, moderno y muy funcional. Su gran fuerte es la ubicación urbana que permite ir caminando a la playa de la Fossa y al Peñón de Ifach') WHERE nombre='Calpe / Calp' AND provincia='Alicante';

UPDATE puntuaciones SET puntuacion=80 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Dénia' AND provincia='Alicante' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Los Pinos - Un camping de ambiente familiar e histórico en la zona de Les Rotes, con mucha sombra natural y acceso directo a playas de roca y calas') WHERE nombre='Dénia' AND provincia='Alicante';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Elche / Elx' AND provincia='Alicante' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping La Marina - Frecuentemente asociado a Elche por su cercanía limítrofe. Es otro de los gigantes galardonados de la provincia por su parque acuático') WHERE nombre='Elche / Elx' AND provincia='Alicante';

UPDATE puntuaciones SET puntuacion=74 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Santa Pola' AND provincia='Alicante' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Bahía de Santa Pola - Instalaciones correctas, muy llanas y enfocadas al turismo de caravanas de larga estancia, cerca de las salinas') WHERE nombre='Santa Pola' AND provincia='Alicante';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villajoyosa / La Vila Joiosa' AND provincia='Alicante' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Alicante Imperium - Tematizado con motivos del Imperio Romano, es un camping moderno, con parcelas amplias y piscina adaptada') WHERE nombre='Villajoyosa / La Vila Joiosa' AND provincia='Alicante';

UPDATE puntuaciones SET puntuacion=90 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Oropesa del Mar' AND provincia='Castellón' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Kiko Park Oropesa, Camping Didota - Kiko Park destaca por sus servicios e instalaciones a pie de playa, mientras que Didota ofrece actividades de animación durante prácticamente todo el año') WHERE nombre='Oropesa del Mar' AND provincia='Castellón';

UPDATE puntuaciones SET puntuacion=84 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Peñíscola' AND provincia='Castellón' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Eden, Camping Vizmar - El Camping Eden está situado en primera línea de la playa norte, ofreciendo un complejo de piscinas excelente y bungalows muy bien equipados') WHERE nombre='Peñíscola' AND provincia='Castellón';

UPDATE puntuaciones SET puntuacion=82 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Benicàssim' AND provincia='Castellón' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Bonterra Resort, Camping Gran Avenida - Bonterra es un referente nacional por la calidad de sus parcelas, sus servicios sanitarios de primer nivel y su apertura anual') WHERE nombre='Benicàssim' AND provincia='Castellón';

UPDATE puntuaciones SET puntuacion=80 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alcossebre / Alcalà de Xivert' AND provincia='Castellón' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Playa Tropicana - Ubicado en primera línea de una playa de arena fina, cuenta con una gran piscina cubierta y exterior, y un entorno muy familiar') WHERE nombre='Alcossebre / Alcalà de Xivert' AND provincia='Castellón';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Navajas' AND provincia='Castellón' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Altomira - Situado en el interior de la provincia, junto a la Vía Verde de Ojos Negros. Es el mejor camping de interior de Castellón, con parcelas en terrazas y excelentes vistas') WHERE nombre='Navajas' AND provincia='Castellón';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Moncofa' AND provincia='Castellón' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Monmar - Camping familiar, con un parque acuático infantil compacto pero muy divertido y parcelas bien delimitadas') WHERE nombre='Moncofa' AND provincia='Castellón';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Vinaròs' AND provincia='Castellón' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Riu - Instalaciones de corte tradicional y tranquilo, perfectas para quienes huyen de las grandes aglomeraciones turísticas') WHERE nombre='Vinaròs' AND provincia='Castellón';

UPDATE puntuaciones SET puntuacion=65 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ribera de Cabanes' AND provincia='Castellón' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Torre la Sal2 - Un complejo clásico muy familiar, pegado al Parque Natural del Prat de Cabanes-Torreblanca') WHERE nombre='Ribera de Cabanes' AND provincia='Castellón';

UPDATE puntuaciones SET puntuacion=88 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Oliva' AND provincia='Valencia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Kiko Park Oliva - El referente absoluto de la provincia de Valencia. Ubicación inmejorable sobre la misma arena de la playa, restaurante de alta calidad, spa y servicios náuticos integrados') WHERE nombre='Oliva' AND provincia='Valencia';

UPDATE puntuaciones SET puntuacion=76 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Gandía' AND provincia='Valencia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping l''Alqueria - Situado entre el pueblo y la playa, ofrece una piscina climatizada, jacuzzi y parcelas con abundante sombra artificial') WHERE nombre='Gandía' AND provincia='Valencia';

UPDATE puntuaciones SET puntuacion=74 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Enguera' AND provincia='Valencia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Teularet - Un concepto diferente en el interior de Valencia, muy enfocado al ecoturismo, la educación ambiental y la desconexión en la naturaleza') WHERE nombre='Enguera' AND provincia='Valencia';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Puzol / Puçol' AND provincia='Valencia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Valencia - Cuenta con un buen complejo de piscinas con toboganes y está situado a escados metros de la playa de Puzol, siendo una opción tranquila cerca de la capital') WHERE nombre='Puzol / Puçol' AND provincia='Valencia';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Bétera' AND provincia='Valencia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Valencia Camper Park - El mejor espacio adaptado para autocaravanas y campers cerca de Valencia ciudad, con conexión directa en metro al centro urbano') WHERE nombre='Bétera' AND provincia='Valencia';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Tuéjar' AND provincia='Valencia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Garroferal - Instalaciones rústicas de interior en la comarca de Los Serranos, ideales para disfrutar de las piscinas naturales del río Tuéjar') WHERE nombre='Tuéjar' AND provincia='Valencia';

UPDATE puntuaciones SET puntuacion=65 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Anna' AND provincia='Valencia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Municipal de Anna - Muy básico en instalaciones, pero con una puntuación sostenida por su ubicación directa junto a la famosa Albufera de Anna y sus cascadas') WHERE nombre='Anna' AND provincia='Valencia';

UPDATE puntuaciones SET puntuacion=100 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sant Pere Pescador' AND provincia='Girona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ La Ballena Alegre, Camping Las Dunas, Camping Ámfora - Es el municipio rey del camping en el norte. La Ballena Alegre y Las Dunas son auténticas ciudades vacacionales a pie de playa con spas, complejos deportivos, festivales propios de furgonetas y bungalows sostenibles de máximo lujo') WHERE nombre='Sant Pere Pescador' AND provincia='Girona';

UPDATE puntuaciones SET puntuacion=98 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Calonge / Sant Antoni de Calonge' AND provincia='Girona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Eurocamping, Camping International de Calonge, Camping Cala Gogo - Destacan por sus piscinas infinitas, sus toboganes acuáticos gigantescos y por estar conectados directamente con las calas más bonitas de la Costa Brava') WHERE nombre='Calonge / Sant Antoni de Calonge' AND provincia='Girona';

UPDATE puntuaciones SET puntuacion=95 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Blanes' AND provincia='Girona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Bella Terra, Camping El Pinar - Ubicados al inicio de la Costa Brava, ofrecen amplias parcelas con sombra total, acceso directo a la playa de S''Abanell y un ambiente familiar impecable') WHERE nombre='Blanes' AND provincia='Girona';

UPDATE puntuaciones SET puntuacion=94 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Castell-Platja d''Aro' AND provincia='Girona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Valldaro - Un camping histórico de primera categoría con inmensas zonas verdes, pistas de pádel, múltiples piscinas tematizadas y un alto estándar de limpieza') WHERE nombre='Castell-Platja d''Aro' AND provincia='Girona';

UPDATE puntuaciones SET puntuacion=92 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Torroella de Montgrí / L''Estartit' AND provincia='Girona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Castell Montgrí - Famoso por su monumental piscina ''Panorama'' (una de las más grandes de la Costa Brava) y su excelente programa de animación para jóvenes frente a las Islas Medas') WHERE nombre='Torroella de Montgrí / L''Estartit' AND provincia='Girona';

UPDATE puntuaciones SET puntuacion=89 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Tossa de Mar' AND provincia='Girona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Cala Llevadó - Un concepto único donde las parcelas e instalaciones están totalmente mimetizadas en un bosque de pinos que cae directamente sobre calas de agua cristalina') WHERE nombre='Tossa de Mar' AND provincia='Girona';

UPDATE puntuaciones SET puntuacion=84 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cadaqués' AND provincia='Girona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Cadaqués - Instalaciones sencillas pero con una puntuación muy alta debido a su ubicación exclusiva en el aislado y protegido Cap de Creus, a pie del pueblo de Dalí') WHERE nombre='Cadaqués' AND provincia='Girona';

UPDATE puntuaciones SET puntuacion=82 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ribes de Freser' AND provincia='Girona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Vall de Ribes - El mejor exponente del pirineo gerundense. Excelentes bungalows de madera, piscina climatizada y base perfecta para subir al tren cremallera de la Vall de Núria') WHERE nombre='Ribes de Freser' AND provincia='Girona';

UPDATE puntuaciones SET puntuacion=100 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Roda de Berà' AND provincia='Tarragona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Playa Montroig Camping Resort, Alannia Els Prats, Camping Stel - El Camping Stel destaca por su inmenso parque acuático de temática polinesia y su espectacular zona de restauración') WHERE nombre='Roda de Berà' AND provincia='Tarragona';

UPDATE puntuaciones SET puntuacion=98 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Salou' AND provincia='Tarragona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Sangulí Resort Salou - Considerado repetidamente como uno de los mejores campings de Europa. Cuenta con zonas tematizadas (África, Caribe, Polinesia), bungalows que simulan lodges de la sabana, piscinas con elefantes a tamaño real y anfiteatros de animación profesionales junto a PortAventura') WHERE nombre='Salou' AND provincia='Tarragona';

UPDATE puntuaciones SET puntuacion=96 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mont-roig del Camp / Miami Platja' AND provincia='Tarragona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Playa Montroig Camping Resort - Un clásico del lujo nacional con un kilómetro de playa propia, jardines tropicales impecables, un centro de spa de primer nivel y parcelas en primera línea de mar') WHERE nombre='Mont-roig del Camp / Miami Platja' AND provincia='Tarragona';

UPDATE puntuaciones SET puntuacion=93 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cambrils' AND provincia='Tarragona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Joan Bungalow Park, Camping Don Camilo - El Camping Joan destaca por su ambiente tranquilo y familiar, ideal para recorrer el paseo marítimo peatonal y ciclista de Cambrils') WHERE nombre='Cambrils' AND provincia='Tarragona';

UPDATE puntuaciones SET puntuacion=85 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='L''Ametlla de Mar' AND provincia='Tarragona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Ametlla - Emplazado en una zona de costa virgen llena de calas de roca y arena, cuenta con excelentes instalaciones deportivas y tres piscinas') WHERE nombre='L''Ametlla de Mar' AND provincia='Tarragona';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Deltebre' AND provincia='Tarragona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping L''Aube - Situado en la misma desembocadura del río Ebro, es perfecto para los amantes de la pesca, el avistamiento de aves y la tranquilidad del Parque Natural') WHERE nombre='Deltebre' AND provincia='Tarragona';

UPDATE puntuaciones SET puntuacion=95 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Vilanova i la Geltrú' AND provincia='Barcelona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Vilanova Park - Un megaresort abierto todo el año. Cuenta con un complejo deportivo de última generación, piscina cubierta, spa, bungalows de alta gama y un autobús interno que conecta directamente con Barcelona capital') WHERE nombre='Vilanova i la Geltrú' AND provincia='Barcelona';

UPDATE puntuaciones SET puntuacion=92 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Berga' AND provincia='Barcelona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Berga Resort - El centro wellness-camping de montaña por excelencia de Cataluña. Su fuerte es su macro-gimnasio, sus piscinas climatizadas de hidroterapia y sus bungalows preparados para el invierno pirenaico') WHERE nombre='Berga' AND provincia='Barcelona';

UPDATE puntuaciones SET puntuacion=84 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Canet de Mar' AND provincia='Barcelona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Globus Barcelona - Excelente camping de costa con parcelas muy sombreadas, piscina y acceso directo a la playa del Maresme') WHERE nombre='Canet de Mar' AND provincia='Barcelona';

UPDATE puntuaciones SET puntuacion=82 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sitges' AND provincia='Barcelona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Garrofer - Destaca por su apuesta por el glamping de diseño (tiendas safari y domos geométricos) y su ambiente moderno y cosmopolita') WHERE nombre='Sitges' AND provincia='Barcelona';

UPDATE puntuaciones SET puntuacion=80 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Santa Susanna' AND provincia='Barcelona' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Bon Repòs - Situado literalmente sobre la arena de la playa, permitiendo salir de la tienda o el bungalow directamente al mar') WHERE nombre='Santa Susanna' AND provincia='Barcelona';

UPDATE puntuaciones SET puntuacion=89 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Espot' AND provincia='Lleida' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping La Mola - Ubicado en la misma entrada del Parque Nacional de Aigüestortes y Estany de Sant Maurici. Césped impecable, entorno de alta montaña idílico y piscina rodeada de cumbres') WHERE nombre='Espot' AND provincia='Lleida';

UPDATE puntuaciones SET puntuacion=84 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sort' AND provincia='Lleida' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Noguera Pallaresa - Situado a orillas del río, es la capital indiscutible para los aficionados al rafting, kayak y los deportes de aventura en el Pirineo') WHERE nombre='Sort' AND provincia='Lleida';

UPDATE puntuaciones SET puntuacion=82 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Pont de Suert' AND provincia='Lleida' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Alta Ribagorça - Instalaciones muy cuidadas, ambiente muy familiar y estratégico para visitar el conjunto de iglesias románicas de la Vall de Boí') WHERE nombre='Pont de Suert' AND provincia='Lleida';

UPDATE puntuaciones SET puntuacion=80 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='La Seu d''Urgell' AND provincia='Lleida' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Gran Sol - Un camping tranquilo, muy verde, excelente para caravanas de paso hacia Andorra o para realizar piragüismo en el canal olímpico') WHERE nombre='La Seu d''Urgell' AND provincia='Lleida';

UPDATE puntuaciones SET puntuacion=90 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Noja' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Playa Joyel - Es el referente absoluto de la comunidad. Dispone de acceso directo a la playa de Ris, un parque zoológico propio con animales dentro del recinto, un gran complejo de piscinas y un entorno natural súper protegido') WHERE nombre='Noja' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=86 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Comillas' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Comillas - Ubicado sobre una colina con vistas panorámicas espectaculares del mar Cantábrico, el centro histórico monumental y el Capricho de Gaudí. Sus parcelas en terrazas son su punto más fuerte') WHERE nombre='Comillas' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=85 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Valdáliga / Oyambre' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Caravaning Oyambre, Camping Playa de Oyambre - Emplazados en pleno Parque Natural de Oyambre, rodeados de rías y praderas verdes. Son campings excelentes para los amantes del surf y de la naturaleza pura') WHERE nombre='Valdáliga / Oyambre' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=82 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Potes' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping La Viorna - Situado a solo un kilómetro de la capital de Liébana, ofrece unas vistas espectaculares a los macizos de los Picos de Europa, con dos piscinas excelentes y un ambiente de montaña inmejorable') WHERE nombre='Potes' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=80 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Laredo' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Laredo - Muy valorado por su ubicación inmediata junto a la impresionante playa de La Salvé (de más de 4 kilómetros de largo) y su cercanía al centro urbano') WHERE nombre='Laredo' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=79 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ribamontán al Mar / Somo' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Somo Parque - Una de las grandes mecas del surf en el norte de España. Es un camping tranquilo, muy arbolado y perfecto para cruzar en barco la bahía hacia Santander') WHERE nombre='Ribamontán al Mar / Somo' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=74 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Castro Urdiales' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Castro - Ideal tanto para campistas de paso debido a su cercanía con la autovía del Cantábrico como para estancias de fin de semana, con instalaciones correctas y muy sombreadas') WHERE nombre='Castro Urdiales' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ruiloba' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Helguero - Un camping de interior muy tranquilo y metido en un bonito valle boscoso, pero situado a escasos 10 minutos en coche de las playas de Comillas') WHERE nombre='Ruiloba' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Santillana del Mar' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Santillana - Un complejo clásico muy amplio con buenas instalaciones deportivas y piscina, cuya principal ventaja es permitir ir andando al casco histórico medieval de Santillana') WHERE nombre='Santillana del Mar' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=92 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Llanes' AND provincia='Asturias' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Las Conchas, Camping Troenzo, Camping San Pedro de la Podada - Llanes es el municipio asturiano por excelencia para el camping. Destaca por sus pequeñas instalaciones familiares encajadas directamente entre prados verdes, acantilados calcáreos y calas escondidas de agua turquesa') WHERE nombre='Llanes' AND provincia='Asturias';

UPDATE puntuaciones SET puntuacion=87 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cangas de Onís' AND provincia='Asturias' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Picos de Europa - Es el mejor punto de partida para visitar el Santuario de Covadonga y los Lagos. Cuenta con un río que cruza las instalaciones, excelentes bungalows de madera y un restaurante de cocina sidrera tradicional') WHERE nombre='Cangas de Onís' AND provincia='Asturias';

UPDATE puntuaciones SET puntuacion=85 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cudillero' AND provincia='Asturias' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping L''Amuravela - Muy limpio y cuidado, situado en las inmediaciones de uno de los pueblos marineros más pintorescos de España. Es perfecto para recorrer el occidente asturiano') WHERE nombre='Cudillero' AND provincia='Asturias';

UPDATE puntuaciones SET puntuacion=83 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ribadesella' AND provincia='Asturias' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Ribadesella - Cuenta con instalaciones modernas que incluyen piscina exterior, piscina cubierta climatizada, gimnasio y actividades guiadas para niños en los meses de verano') WHERE nombre='Ribadesella' AND provincia='Asturias';

UPDATE puntuaciones SET puntuacion=80 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villaviciosa' AND provincia='Asturias' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Costa Verde - Situado en la misma playa de Rodiles (famosa por su ola para el surf y su pinar), ofrece un ambiente puramente costero y familiar') WHERE nombre='Villaviciosa' AND provincia='Asturias';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Valdés / Luarca' AND provincia='Asturias' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Los Cantiles - Un camping icónico emplazado literalmente sobre un acantilado con vistas infinitas al mar Cantábrico. Despertar en su zona de acampada libre es una de las mejores experiencias del norte de España') WHERE nombre='Valdés / Luarca' AND provincia='Asturias';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Caravia' AND provincia='Asturias' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Arenal de Morís - Un camping moderno, muy enfocado a familias y surfistas, con amplias parcelas llanas de césped y acceso directo a la playa de Morís') WHERE nombre='Caravia' AND provincia='Asturias';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Somiedo' AND provincia='Asturias' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping La Pola - Camping rústico de alta montaña ubicado en el corazón del Parque Natural de Somiedo. Es de servicios sencillos pero insuperable para avistar osos y realizar las rutas de los lagos de Saliencia') WHERE nombre='Somiedo' AND provincia='Asturias';

UPDATE puntuaciones SET puntuacion=91 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Torla-Ordesa' AND provincia='Huesca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Río Ara, Camping Ordesa - El Camping Río Ara está ubicado a las puertas del Parque Nacional de Ordesa y Monte Perdido, flanqueado por aguas cristalinas de deshielo. Destaca por sus praderas impecables de césped y un entorno de roca caliza espectacular') WHERE nombre='Torla-Ordesa' AND provincia='Huesca';

UPDATE puntuaciones SET puntuacion=88 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Aínsa-Sobrarbe / Boltaña' AND provincia='Huesca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Peña Montañesa, Camping Boltaña - Complejos de gran tamaño que combinan piscinas climatizadas y jacuzzis exteriores con vistas a los Pirineos. Excelentes bungalows y un ambiente inmejorable para los ciclistas de montaña (Zona Zero)') WHERE nombre='Aínsa-Sobrarbe / Boltaña' AND provincia='Huesca';

UPDATE puntuaciones SET puntuacion=86 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Benasque' AND provincia='Huesca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Aneto - El centro base por excelencia del pirineísmo para ascender al Aneto. Cuenta con una gestión impecable, parcelas muy amplias, piscina exterior de temporada y bungalows de madera con excelente aislamiento térmico') WHERE nombre='Benasque' AND provincia='Huesca';

UPDATE puntuaciones SET puntuacion=83 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sallent de Gállego / Formigal' AND provincia='Huesca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Escarra - Ubicado en pleno Valle de Tena. Ideal tanto para el verano por su frescura como para el invierno por su cercanía a las pistas de esquí, con instalaciones rústicas muy cuidadas') WHERE nombre='Sallent de Gállego / Formigal' AND provincia='Huesca';

UPDATE puntuaciones SET puntuacion=81 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Alquézar' AND provincia='Huesca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Alquézar - Emplazado en un frondoso bosque de olivos y encinas centenarias en el Parque Natural de la Sierra y Cañones de Guara. Es el punto de encuentro internacional para los amantes del barranquismo') WHERE nombre='Alquézar' AND provincia='Huesca';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Villanúa' AND provincia='Huesca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Roca Nevada - Un camping alpino en el Valle del Aragón, perfecto para visitar las cuevas de las Güixas y subir a las estaciones de Astún y Candanchú') WHERE nombre='Villanúa' AND provincia='Huesca';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Bielsa' AND provincia='Huesca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Pineta - Situado en el fondo del espectacular Valle de Pineta, bajo la sombra del glaciar de Monte Perdido. Es un camping puramente natural, donde el paisaje suple cualquier necesidad de lujos artificiales') WHERE nombre='Bielsa' AND provincia='Huesca';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Graus' AND provincia='Huesca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Lago Barasona - Con acceso directo al embalse, cuenta con una piscina climatizada con centro de spa, alquiler de canoas y actividades acuáticas muy populares para familias en verano') WHERE nombre='Graus' AND provincia='Huesca';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Albarracín' AND provincia='Teruel' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Albarracín - Situado a un kilómetro de uno de los pueblos más bonitos de España. Cuenta con una altitud idónea para disfrutar de noches frescas en verano y es el campamento base mundial para los aficionados a la escalada en bloque (búlder)') WHERE nombre='Albarracín' AND provincia='Teruel';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Valderrobres / Beceite' AND provincia='Teruel' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Roble - Ubicado en la preciosa comarca del Matarraña (la ''Toscana aragonesa''). Instalaciones familiares muy limpias, sombreadas y perfectas para realizar la ruta de las pasarelas del río Parrizal') WHERE nombre='Valderrobres / Beceite' AND provincia='Teruel';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Manzanera' AND provincia='Teruel' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Sabina - Ubicado en la Sierra de Javalambre, es un camping de montaña humilde y tranquilo que ofrece una desconexión total y un cielo nocturno libre de contaminación lumínica') WHERE nombre='Manzanera' AND provincia='Teruel';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Nuévalos' AND provincia='Zaragoza' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Lago Resort - Su gran valor turístico radica en estar situado a escasos 2 kilómetros de la entrada monumental del Monasterio de Piedra y sus cascadas, a orillas del embalse de La Tranquera') WHERE nombre='Nuévalos' AND provincia='Zaragoza';

UPDATE puntuaciones SET puntuacion=66 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Zaragoza' AND provincia='Zaragoza' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Municipal de Zaragoza - Un complejo de corte urbano moderno, heredado de la Expo 2008. Dispone de parcelas llanas, piscina grande, canchas de tenis y transporte público directo para visitar la Basílica del Pilar') WHERE nombre='Zaragoza' AND provincia='Zaragoza';

UPDATE puntuaciones SET puntuacion=62 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ateca' AND provincia='Zaragoza' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Relatos de Ateca - Instalaciones muy funcionales e ideales como punto de paso de caravanas que cruzan la autovía del Nordeste (A-2) entre Madrid y Barcelona') WHERE nombre='Ateca' AND provincia='Zaragoza';

UPDATE puntuaciones SET puntuacion=91 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='O Grove' AND provincia='Pontevedra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping San Vicente, Camping Paisaxe II - Ubicados en la península de O Grove, destacan por su cercanía a la playa de La Lanzada. Disponen de piscinas excelentes, jacuzzis exteriores, amplias zonas de sombra bajo pinares y restaurantes con marisco local de primera calidad') WHERE nombre='O Grove' AND provincia='Pontevedra';

UPDATE puntuaciones SET puntuacion=89 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Baiona' AND provincia='Pontevedra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Bayona Playa - Un camping de primera categoría completamente reformado. Es famoso por sus bungalows de diseño vanguardista construidos con terrazas acristaladas suspendidas directamente sobre la playa de Ladeira, ofreciendo las mejores puestas de sol de la zona') WHERE nombre='Baiona' AND provincia='Pontevedra';

UPDATE puntuaciones SET puntuacion=86 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sanxenxo' AND provincia='Pontevedra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Baltar, Camping Cachadelos - Situados en la capital del turismo de las Rías Baixas. Son campings grandes, muy bien equipados, con piscinas con toboganes y excelentes servicios de animación infantil para el verano') WHERE nombre='Sanxenxo' AND provincia='Pontevedra';

UPDATE puntuaciones SET puntuacion=84 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cangas do Morrazo' AND provincia='Pontevedra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Liméns - Emplazado en la península del Morrazo con acceso directo a la playa de Liméns. Destaca por su ambiente tranquilo, familiar y natural, ideal para desconectar frente a la ría de Vigo') WHERE nombre='Cangas do Morrazo' AND provincia='Pontevedra';

UPDATE puntuaciones SET puntuacion=76 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='A Guarda' AND provincia='Pontevedra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Santa Tecla - Situado en la desembocadura del río Miño, justo en la frontera con Portugal. Es muy verde, cuenta con piscina y es la base perfecta para subir al impresionante Castro de Santa Trega') WHERE nombre='A Guarda' AND provincia='Pontevedra';

UPDATE puntuaciones SET puntuacion=88 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mazaricos' AND provincia='A Coruña' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Naturaza Glamping - Un concepto premium e innovador en el interior de la provincia. Ofrece cabañas de madera de diseño integradas entre los árboles, jacuzzis privados en las terrazas, piscina y actividades de turismo activo en el entorno del río Xallas') WHERE nombre='Mazaricos' AND provincia='A Coruña';

UPDATE puntuaciones SET puntuacion=80 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ribeira / Aguiño' AND provincia='A Coruña' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Coroso - Situado a pie de playa en la ría de Arousa, ofrece parcelas con césped muy cuidado y una ubicación estratégica para visitar el Parque Natural de las Dunas de Corrubedo') WHERE nombre='Ribeira / Aguiño' AND provincia='A Coruña';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Fisterra / Finisterre' AND provincia='A Coruña' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Praia de Estorde - Ubicado en una preciosa cala resguardada del mar abierto de la Costa da Morte. Cuenta con un restaurante excelente y un ambiente multicultural único gracias a los peregrinos que terminan el Camino de Santiago') WHERE nombre='Fisterra / Finisterre' AND provincia='A Coruña';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Valdoviño' AND provincia='A Coruña' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping A Frouxeira - Situado junto a la espectacular playa y laguna de A Frouxeira. Es un referente absoluto en el norte de Galicia para los amantes del surf por el fuerte oleaje de la zona') WHERE nombre='Valdoviño' AND provincia='A Coruña';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Porto do Son' AND provincia='A Coruña' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Cabeiro - Un camping tradicional, muy familiar y sombreado, situado en primera línea de una playa de aguas cristalinas e ideal para visitar el Castro de Baroña') WHERE nombre='Porto do Son' AND provincia='A Coruña';

UPDATE puntuaciones SET puntuacion=82 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Barreiros' AND provincia='Lugo' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Gaivota - Un camping ecológico y muy cuidado situado a pie de playa en la Mariña Lucense, a menos de 10 minutos de la famosa Playa de las Catedrales. Destaca por su tranquilidad y su gestión sostenible') WHERE nombre='Barreiros' AND provincia='Lugo';

UPDATE puntuaciones SET puntuacion=76 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Foz' AND provincia='Lugo' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping San Rafael - Instalaciones correctas, llanas y muy familiares, situadas muy cerca de la playa de Rapadoira, ofreciendo un ambiente puramente costero') WHERE nombre='Foz' AND provincia='Lugo';

UPDATE puntuaciones SET puntuacion=74 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Viveiro' AND provincia='Lugo' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Viveiro - Ubicado en la playa de Covas, es un camping urbano y funcional, excelente como base para explorar los acantilados de Loiba y la costa norte de Lugo') WHERE nombre='Viveiro' AND provincia='Lugo';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Muíños' AND provincia='Ourense' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping O Corgo - Situado en el Parque Natural Baixa Limia-Serra do Xurés, a orillas del embalse de Encoro de Salas. Cuenta con playa fluvial, alquiler de piraguas e instalaciones deportivas excelentes en plena naturaleza montañosa') WHERE nombre='Muíños' AND provincia='Ourense';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Allariz' AND provincia='Ourense' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Invernadero - Un camping pequeño y muy singular integrado en una finca agrícola-educativa junto al río Arnoia, ideal para visitar el precioso casco histórico de Allariz') WHERE nombre='Allariz' AND provincia='Ourense';

UPDATE puntuaciones SET puntuacion=86 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cartagena / La Manga' AND provincia='Murcia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Caravaning La Manga - Todo un clásico de la costa murciana y un complejo de enormes dimensiones. Cuenta con acceso directo a las playas del Mar Menor, piscina olímpica, pistas de tenis, supermercado completo y servicios residenciales óptimos para pasar la temporada de invierno') WHERE nombre='Cartagena / La Manga' AND provincia='Murcia';

UPDATE puntuaciones SET puntuacion=80 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Águilas' AND provincia='Murcia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Águilas - Un complejo moderno, muy llano y limpio, excelentemente preparado tanto para familias en verano como para autocaravanas europeas en invierno. Cuenta con una piscina fantástica y un ambiente muy tranquilo') WHERE nombre='Águilas' AND provincia='Murcia';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mazarrón' AND provincia='Murcia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Playa de Mazarrón, Camping Bolnuevo - El Camping Bolnuevo destaca por su ubicación privilegiada en primera línea de playa, justo enfrente de las famosas erosiones de Bolnuevo (las Gredas), ofreciendo una estampa única') WHERE nombre='Mazarrón' AND provincia='Murcia';

UPDATE puntuaciones SET puntuacion=74 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Totana' AND provincia='Murcia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Totana - Ubicado en el interior, a las faldas de la Sierra Espuña. Es un complejo muy tranquilo con excelentes bungalows, piscina con tobogán y un entorno de huerta ideal para los amantes del senderismo y la bicicleta de montaña') WHERE nombre='Totana' AND provincia='Murcia';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Fortuna' AND provincia='Murcia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Fuente - Su gran elemento diferenciador es su espectacular piscina de agua termal minero-medicinal que brota de manera natural a 36°C, lo que lo convierte en un destino de relax absoluto durante los meses más fríos') WHERE nombre='Fortuna' AND provincia='Murcia';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Santa Eulària des Riu' AND provincia='Ibiza' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Es Cana, Camping La Playa - El Camping La Playa cuenta con una ubicación bohemia espectacular junto al famoso mercadillo hippy de Punta Arabí y a pie de playa. Ofrece zonas de acampada sombreadas y bungalows sencillos con un ambiente muy relajado y cosmopolita') WHERE nombre='Santa Eulària des Riu' AND provincia='Ibiza';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sant Antoni de Portmany' AND provincia='Ibiza' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping San Antonio - Situado muy cerca del núcleo urbano y de la bahía. Cuenta con una piscina fantástica, ambiente joven e internacional, y es muy funcional para recorrer las calas del oeste ibicenco') WHERE nombre='Sant Antoni de Portmany' AND provincia='Ibiza';

UPDATE puntuaciones SET puntuacion=62 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Escorca' AND provincia='Mallorca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Zona de Acampada de Lluc - Es el único espacio autorizado para acampar en el interior de la isla, gestionado bajo reserva en plena Sierra de Tramuntana (Patrimonio de la Humanidad). Es un entorno puramente rústico y forestal, enfocado a senderistas') WHERE nombre='Escorca' AND provincia='Mallorca';

UPDATE puntuaciones SET puntuacion=85 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Zarautz' AND provincia='Guipúzcoa' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Gran Zarautz, Camping Talaimendi - El Gran Zarautz está ubicado de forma espectacular sobre una colina con vistas panorámicas a la playa de Zarautz (meca del surf). Cuenta con parcelas llanas de césped y un ambiente deportivo inmejorable') WHERE nombre='Zarautz' AND provincia='Guipúzcoa';

UPDATE puntuaciones SET puntuacion=74 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='San Sebastián / Donostia' AND provincia='Guipúzcoa' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Igueldo - Situado en el famoso monte Igueldo, ofrece una conexión fantástica en autobús urbano directo al centro de la ciudad y a la playa de la Concha. Es muy verde, tranquilo y funcional') WHERE nombre='San Sebastián / Donostia' AND provincia='Guipúzcoa';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Orio' AND provincia='Guipúzcoa' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Orio - Emplazado en la misma desembocadura de la ría de Orio y a pie de playa, cuenta con excelentes instalaciones deportivas y una piscina muy cuidada') WHERE nombre='Orio' AND provincia='Guipúzcoa';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mutriku' AND provincia='Guipúzcoa' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Santa Elena - Instalaciones tradicionales ubicadas en un entorno rural muy tranquilo, ideal para explorar la Costa Vasca y el Geoparque de la Costa Vasca (Flysch)') WHERE nombre='Mutriku' AND provincia='Guipúzcoa';

UPDATE puntuaciones SET puntuacion=80 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sopela / Sopelana' AND provincia='Vizcaya' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Sopelana - Muy popular entre la comunidad surfera internacional por su proximidad a las playas de Atxabiribil y Barinatxe. Cuenta con piscina, buenos bungalows y amplias zonas sombreadas') WHERE nombre='Sopela / Sopelana' AND provincia='Vizcaya';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mundaka' AND provincia='Vizcaya' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Portuondo - Ubicado en plena Reserva de la Biosfera de Urdaibai, con vistas espectaculares a la famosa ola izquierda de Mundaka. Su restaurante de cocina vasca es un gran referente en la zona') WHERE nombre='Mundaka' AND provincia='Vizcaya';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Gorliz' AND provincia='Vizcaya' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Arrien - Un camping de ambiente puramente familiar, situado a escasos metros de la bahía y playa de Gorliz, muy seguro para ir con niños') WHERE nombre='Gorliz' AND provincia='Vizcaya';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Karrantza Harana / Valle de Carranza' AND provincia='Vizcaya' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Angosto - Ideal para desconectar en el interior vizcaíno profundo') WHERE nombre='Karrantza Harana / Valle de Carranza' AND provincia='Vizcaya';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Valdegovía / Gaubea' AND provincia='Álava' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Angosto - El referente absoluto del interior alavés. Situado junto al Parque Natural de Valderejo, destaca por su piscina cubierta climatizada (abierta todo el año) y su fuerte apuesta por el ecoturismo') WHERE nombre='Valdegovía / Gaubea' AND provincia='Álava';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Elburgo / Landazuri' AND provincia='Álava' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Roble Verde - Un camping moderno y muy familiar con piscina cubierta, rodeado de bosques de robles y perfecto para visitar Vitoria-Gasteiz') WHERE nombre='Elburgo / Landazuri' AND provincia='Álava';

UPDATE puntuaciones SET puntuacion=82 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Galar / Pamplona' AND provincia='Navarra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Ezcaba - Situado a solo 5 minutos de Pamplona, a orillas del río Ulzama. Destaca por sus magníficas instalaciones, piscina exterior, carriles bici conectados con la capital y por ser el centro neurálgico durante las fiestas de San Fermín') WHERE nombre='Galar / Pamplona' AND provincia='Navarra';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Auritz/Burguete' AND provincia='Navarra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Urrobi - Ubicado en pleno Pirineo navarro, muy cerca de Roncesvalles y de la Selva de Irati. Es un camping inmenso rodeado de bosques, con piscina natural en el río y bungalows de madera rústicos excelentes') WHERE nombre='Auritz/Burguete' AND provincia='Navarra';

UPDATE puntuaciones SET puntuacion=76 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Riezu / Valle de Yerri' AND provincia='Navarra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Lerate - Situado a pie del Embalse de Alloz. Es la capital navarra de los deportes acuáticos (vela, windsurf, kayak), con parcelas con excelente sombra natural') WHERE nombre='Riezu / Valle de Yerri' AND provincia='Navarra';

UPDATE puntuaciones SET puntuacion=74 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mendigorría' AND provincia='Navarra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Molino - Un complejo familiar de gran tamaño que cuenta con piscina cubierta climatizada, toboganes acuáticos exteriores, embarcadero propio en el río Arga y una gran oferta de animación') WHERE nombre='Mendigorría' AND provincia='Navarra';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Arbizu' AND provincia='Navarra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Eco-Arbizu - Diseñado bajo criterios de bioconstrucción y sostenibilidad ambiental. Ofrece bungalows bioclimáticos, piscina de arena natural y unas vistas imponentes a la Sierra de Urbasa') WHERE nombre='Arbizu' AND provincia='Navarra';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ochagavía' AND provincia='Navarra' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Osate - Camping de montaña humilde y acogedor a las puertas del Valle de Salazar, ideal para los senderistas que buscan explorar la Selva de Irati de forma pura') WHERE nombre='Ochagavía' AND provincia='Navarra';

UPDATE puntuaciones SET puntuacion=82 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cuacos de Yuste / Aldeanueva de la Vera' AND provincia='Cáceres' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Carlos I - Ubicado en la comarca de La Vera, destaca por sus frondosas arboledas que garantizan sombra total en verano, su gran piscina y su proximidad al Monasterio de Yuste. La zona es famosa por sus gargantas de agua cristalina') WHERE nombre='Cuacos de Yuste / Aldeanueva de la Vera' AND provincia='Cáceres';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Baños de Montemayor / Hervás' AND provincia='Cáceres' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Las Cabañas, Camping Pinajarro - Situados en el Valle del Ambroz, ofrecen un clima excelente en verano. Cuentan con bungalows de piedra y madera muy acogedores y un entorno ideal para el senderismo entre bosques de castaños') WHERE nombre='Baños de Montemayor / Hervás' AND provincia='Cáceres';

UPDATE puntuaciones SET puntuacion=76 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Malpartida de Plasencia / Monfragüe' AND provincia='Cáceres' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Monfragüe - Es el centro de operaciones por excelencia para los amantes de la ornitología y la naturaleza salvaje. Cuenta con excelentes instalaciones fijas, piscina y acceso inmediato al Parque Nacional de Monfragüe') WHERE nombre='Malpartida de Plasencia / Monfragüe' AND provincia='Cáceres';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cáceres' AND provincia='Cáceres' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Ciudad de Cáceres - Un camping único en España: destaca porque cada una de sus parcelas dispone de un baño propio, privado e individual con ducha dentro de la misma parcela. Ideal para visitar el casco histórico medieval') WHERE nombre='Cáceres' AND provincia='Cáceres';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Gata / Hoyos' AND provincia='Cáceres' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Sierra de Gata - Instalaciones integradas en un entorno de robles y pinos en una de las zonas más vírgenes y tranquilas de Extremadura, con acceso a múltiples piscinas naturales fluviales') WHERE nombre='Gata / Hoyos' AND provincia='Cáceres';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Pinofranqueado / Las Hurdes' AND provincia='Cáceres' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Pino - Camping tradicional de montaña con un ambiente muy familiar, situado justo al lado del río de los Ángeles y sus zonas de baño reguladas') WHERE nombre='Pinofranqueado / Las Hurdes' AND provincia='Cáceres';

UPDATE puntuaciones SET puntuacion=66 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Monesterio' AND provincia='Badajoz' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Agua de Luna - Ubicado en plena dehesa extremeña del sur. Cuenta con piscina, buenas instalaciones de restauración orientadas al producto ibérico local y un ambiente idóneo para el descanso de paso') WHERE nombre='Monesterio' AND provincia='Badajoz';

UPDATE puntuaciones SET puntuacion=64 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Mérida' AND provincia='Badajoz' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Mérida - Instalaciones funcionales y llanas, situadas en las inmediaciones de la ciudad romana y el embalse de Proserpina. Muy práctico para el turismo cultural de fin de semana') WHERE nombre='Mérida' AND provincia='Badajoz';

UPDATE puntuaciones SET puntuacion=65 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Aguimes / San Bartolomé de Tirajana' AND provincia='Las Palmas' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Playa de Vargas - Es uno de los pocos campings privados con servicios completos del archipiélago. Ubicado a pie de playa en una zona mundialmente famosa para la práctica del windsurf y kitesurf, cuenta con cafetería y zonas delimitadas para tiendas y autocaravanas') WHERE nombre='Aguimes / San Bartolomé de Tirajana' AND provincia='Las Palmas';

UPDATE puntuaciones SET puntuacion=60 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Yaiza' AND provincia='Las Palmas' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Área de Acampada de Papagayo - Gestionada de forma pública y abierta de manera estacional. Carece de lujos artificiales o bungalows, pero su puntuación se sostiene por su ubicación exclusiva sobre la misma arena de las playas vírgenes de Papagayo, en pleno Monumento Natural de Los Ajaches') WHERE nombre='Yaiza' AND provincia='Las Palmas';

UPDATE puntuaciones SET puntuacion=58 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Guía de Isora / San Cristóbal de la Laguna' AND provincia='Santa Cruz de Tenerife' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Invernaderito - Un espacio de acampada alternativo y rural muy singular. Ofrece servicios básicos de duchas y cocinas comunitarias en un entorno agrícola rodeado de plataneras y cerca del mar') WHERE nombre='Guía de Isora / San Cristóbal de la Laguna' AND provincia='Santa Cruz de Tenerife';

UPDATE puntuaciones SET puntuacion=55 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='El Paso' AND provincia='Santa Cruz de Tenerife' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Zona de Acampada de la Caldera de Taburiente - Situada en el mismísimo corazón del Parque Nacional. Es un espacio puramente forestal y de montaña, accesible únicamente a pie tras una ruta de senderismo. Cuenta con aseos básicos y requiere permiso previo obligatorio, ofreciendo una experiencia de pernocta bajo uno de los cielos más limpios del planeta') WHERE nombre='El Paso' AND provincia='Santa Cruz de Tenerife';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Riaza' AND provincia='Segovia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Riaza - El referente absoluto de la provincia. Cuenta con unas instalaciones modernas, parcelas muy llanas y cuidadas, piscina, excelentes pistas polideportivas y unos bungalows de alta calidad, ideales tanto para el verano como para la temporada de esquí en La Pinilla') WHERE nombre='Riaza' AND provincia='Segovia';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Segovia' AND provincia='Segovia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Acueducto - Un camping de corte urbano y muy funcional. Su gran fuerte es la localización, ya que cuenta con una parada de autobús directo en la entrada que te deja en el centro histórico y el acueducto romano en pocos minutos') WHERE nombre='Segovia' AND provincia='Segovia';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cantalejo' AND provincia='Segovia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Hoces del Duratón - Rodeado de un inmenso bosque de pinos y muy cercano al Parque Natural de las Hoces del Río Duratón, es perfecto para los amantes del piragüismo y el avistamiento de buitres leonados') WHERE nombre='Cantalejo' AND provincia='Segovia';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Burgohondo' AND provincia='Ávila' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Valle del Alberche - Ubicado en un entorno natural precioso junto al río Alberche, con zonas de piscinas naturales aptas para el baño. Cuenta con buenas sombras y un ambiente muy familiar los fines de semana') WHERE nombre='Burgohondo' AND provincia='Ávila';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Navaluenga' AND provincia='Ávila' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Navaluenga - Instalaciones tradicionales de montaña muy vinculadas al disfrute de la Sierra de Gredos, con parcelas de césped bien cuidadas') WHERE nombre='Navaluenga' AND provincia='Ávila';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Hoyos del Espino' AND provincia='Ávila' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Gredos - Situado a gran altitud, en plena entrada a la Plataforma de Gredos. Es un camping puramente de montaña, muy fresco en verano y con un entorno forestal idílico de pinos silvestres') WHERE nombre='Hoyos del Espino' AND provincia='Ávila';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Sotoserrano' AND provincia='Salamanca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Vega de Francia - Ubicado en el corazón del Parque Natural de Las Batuecas - Sierra de Francia. Destaca por su tranquilidad, su vegetación exuberante y su cercanía al río Alagón') WHERE nombre='Sotoserrano' AND provincia='Salamanca';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Salamanca' AND provincia='Salamanca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Regio - Un complejo clásico de gran tamaño integrado en un recinto hotelero. Cuenta con dos piscinas grandes, excelentes conexiones de autobús al centro de Salamanca y parcelas con buena sombra artificial') WHERE nombre='Salamanca' AND provincia='Salamanca';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ciudad Rodrigo' AND provincia='Salamanca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping La Pesquera - Un camping pequeño y de ambiente muy familiar, situado junto al río Águeda y su zona de baño, a un paso del recinto amurallado de la ciudad') WHERE nombre='Ciudad Rodrigo' AND provincia='Salamanca';

UPDATE puntuaciones SET puntuacion=74 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Riaño' AND provincia='León' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Riaño - Su ubicación es sencillamente espectacular, con parcelas en terrazas que ofrecen vistas panorámicas directas al embalse de Riaño y a los majestuosos ''Fiordos Leoneses''. Cuenta con piscina y ambiente de montaña puro') WHERE nombre='Riaño' AND provincia='León';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Hospital de Órbigo' AND provincia='León' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Don Suero - Un camping muy tranquilo y sombreado, situado junto al famoso puente medieval del Paso Honroso. Es una parada estratégica muy valorada por los campistas que recorren el Camino de Santiago') WHERE nombre='Hospital de Órbigo' AND provincia='León';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Vega de Espinareda' AND provincia='León' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Elfo - Ubicado en la comarca de El Bierzo, destaca por estar junto a una de las playas fluviales más grandes de la zona y por su ambiente integrado en la naturaleza') WHERE nombre='Vega de Espinareda' AND provincia='León';

UPDATE puntuaciones SET puntuacion=76 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Galende / Lago de Sanabria' AND provincia='Zamora' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Los Robledales, Camping Isla de Puebla - Galende es el epicentro del camping en Zamora gracias al Parque Natural del Lago de Sanabria. Los alojamientos están inmersos en densos bosques de robles, ofreciendo una frescura inmejorable y acceso directo a las playas del mayor lago glacial de la península') WHERE nombre='Galende / Lago de Sanabria' AND provincia='Zamora';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Quintanar de la Sierra' AND provincia='Burgos' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Arlanza - Emplazado en un pinar inmenso de la Sierra de la Demanda. Ofrece una desconexión absoluta, temperaturas nocturnas muy frescas en verano e instalaciones de madera muy acogedoras') WHERE nombre='Quintanar de la Sierra' AND provincia='Burgos';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Burgos' AND provincia='Burgos' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Fuentes Blancas - Situado en el gran parque urbano de la ciudad, junto a la playa fluvial del río Arlanzón. Instalaciones correctas, muy llanas y con carril bici directo hasta la Catedral') WHERE nombre='Burgos' AND provincia='Burgos';

UPDATE puntuaciones SET puntuacion=66 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Frías' AND provincia='Burgos' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Frías - Un camping municipal y humilde pero con una localización privilegiada a los pies de la imponente ciudad medieval de Frías y su castillo colgado de la roca') WHERE nombre='Frías' AND provincia='Burgos';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Abejar' AND provincia='Soria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Concurso - Ubicado en la comarca de Pinares, muy cerca de la Playa Pita y el Embalse de la Cuerda del Pozo. Cuenta con unas instalaciones deportivas excelentes, piscina y un entorno de bosque idílico') WHERE nombre='Abejar' AND provincia='Soria';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Vinuesa' AND provincia='Soria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Cobaleda / El Cobijo - Ideal como base para ascender a la Laguna Negra y los Picos de Urbión, con un ambiente rústico de acampada tradicional') WHERE nombre='Vinuesa' AND provincia='Soria';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cervera de Pisuerga' AND provincia='Palencia' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Fuentes Carrionas - Situado en plena Montaña Palentina. Un camping tranquilo, de gestión familiar, ideal para realizar rutas de senderismo en busca del bisonte europeo y disfrutar de la naturaleza virgen') WHERE nombre='Cervera de Pisuerga' AND provincia='Palencia';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Tordesillas' AND provincia='Valladolid' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Astral - Es el gran referente de la provincia. Un camping de primera categoría, con una limpieza impecable, parcelas de césped muy cuidadas, piscina y una atención al cliente sobresaliente. Muy utilizado como punto de descanso estratégico para rutas norte-sur por la autovía') WHERE nombre='Tordesillas' AND provincia='Valladolid';

UPDATE puntuaciones SET puntuacion=74 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cuenca' AND provincia='Cuenca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Caravaning Cuenca - Es el más grande e importante de la provincia. Situado en un denso pinar junto al río Júcar, a solo 5 minutos de las Casas Colgadas. Cuenta con piscina, campos de deporte, restaurante de cocina manchega y parcelas llanas con excelente sombra natural') WHERE nombre='Cuenca' AND provincia='Cuenca';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Cañizares' AND provincia='Cuenca' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Soleia d''en Pol - Ubicado en plena Serranía de Cuenca, cerca del nacimiento del río Cuervo y del Parque Cinegético de El Hosquillo. Ideal para el descanso y el senderismo puro de montaña') WHERE nombre='Cañizares' AND provincia='Cuenca';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ruidera' AND provincia='Ciudad Real' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Los Molinos - Situado en el corazón del Parque Natural de las Lagunas de Ruidera. Es el gran referente de la provincia por su acceso directo a las zonas de baño y cascadas, ofreciendo parcelas muy sombreadas, piscina y alquiler de kayaks') WHERE nombre='Ruidera' AND provincia='Ciudad Real';

UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Riópar' AND provincia='Albacete' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Fuente del Taif - Ubicado a las faldas de la Sierra del Segura y muy cerca del espectacular nacimiento del río Mundo (Los Chorros). Cuenta con bungalows de madera muy acogedores y un entorno forestal fresco muy cotizado en verano') WHERE nombre='Riópar' AND provincia='Albacete';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Ossa de Montiel' AND provincia='Albacete' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Montesinos - Comparte el entorno del Parque Natural de las Lagunas de Ruidera en su vertiente albaceteña, muy valorado por su tranquilidad y cercanía a la famosa Cueva de Montesinos citada en el Quijote') WHERE nombre='Ossa de Montiel' AND provincia='Albacete';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Toledo' AND provincia='Toledo' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Greco - Un camping puramente urbano y estratégico. Su mayor virtud son sus parcelas con vistas panorámicas al casco histórico de Toledo y la comodidad de su línea de autobús directo para visitar la ciudad monumental') WHERE nombre='Toledo' AND provincia='Toledo';

UPDATE puntuaciones SET puntuacion=68 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Orea / Peralejos de las Truchas' AND provincia='Guadalajara' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Orea - Situado a gran altitud en pleno Parque Natural del Alto Tajo. Es un camping rústico de montaña, rodeado de pinares silvestres, ideal para buscar setas en otoño y disfrutar de noches frescas en verano') WHERE nombre='Orea / Peralejos de las Truchas' AND provincia='Guadalajara';

UPDATE puntuaciones SET puntuacion=82 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Haro' AND provincia='La Rioja' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping de Haro - El referente absoluto de la comunidad, situado en la capital del vino de Rioja. Cuenta con unas instalaciones impecables, piscina, restaurante de alta calidad y parcelas de césped muy cuidadas junto al río Tirón. Perfecto para hacer rutas por las bodegas del Barrio de la Estación') WHERE nombre='Haro' AND provincia='La Rioja';

UPDATE puntuaciones SET puntuacion=76 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Santo Domingo de la Calzada / Bañares' AND provincia='La Rioja' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Bañares - Un complejo familiar de gran tamaño que cuenta con un magnífico complejo de piscinas (incluyendo zonas infantiles y toboganes), bungalows modernos y un amplio programa de animación en verano. Muy valorado por campistas fijos de fin de semana') WHERE nombre='Santo Domingo de la Calzada / Bañares' AND provincia='La Rioja';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Castañares de Rioja' AND provincia='La Rioja' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Dehesa de Canyat - Un camping moderno, muy tranquilo, rodeado de campos y perfecto para explorar tanto la ruta de los monasterios (San Millán de la Cogolla) como los paisajes del valle del Oja') WHERE nombre='Castañares de Rioja' AND provincia='La Rioja';

UPDATE puntuaciones SET puntuacion=84 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Val de San Vicente' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Rosal, Camping Las Arenas - Ubicados en la desembocadura de las rías de Tina Mayor y Tina Menor, justo en el límite con Asturias. Destacan por sus impresionantes parcelas situadas sobre acantilados y bosques de pinos que mueren en playas salvajes, ideales para el descanso absoluto') WHERE nombre='Val de San Vicente' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=81 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Arnuero / Isla' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Playa La Arena - Un camping de ambiente puramente costero y familiar con acceso directo a la preciosa playa de la Arena. Cuenta con excelentes instalaciones deportivas y parcelas llanas de césped muy cuidado') WHERE nombre='Arnuero / Isla' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=78 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Bareyo / Ajo' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Cabo de Ajo - Situado cerca del espectacular faro de Ajo, cuenta con una piscina fantástica y parcelas muy expuestas al mar Cantábrico, ideales para disfrutar de la brisa marina en verano') WHERE nombre='Bareyo / Ajo' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=72 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Guriezo' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping El Pontarrón - Un camping pequeño, rústico y muy tranquilo de interior, situado en un bonito valle junto al río Agüera, ideal como base de paso para autocaravanas') WHERE nombre='Guriezo' AND provincia='Cantabria';

UPDATE puntuaciones SET puntuacion=70 WHERE categoria='Campings' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='Liérganes' AND provincia='Cantabria' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('⛺ Camping Liérganes - Camping de corte tradicional con un entorno verde bellísimo a un paso del casco histórico medieval de Liérganes (famoso por la leyenda del Hombre Pez). Cuenta con conexiones de tren directo a Santander') WHERE nombre='Liérganes' AND provincia='Cantabria';


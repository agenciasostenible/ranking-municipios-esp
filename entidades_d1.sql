-- Entidades y recursos turísticos reales por municipio
-- Fuentes: turismo oficial, BIC Ministerio Cultura, turismo.gob.es, blogs especializados
-- Importar: wrangler d1 execute ranking-municipios --file=entidades_d1.sql

BEGIN TRANSACTION;
DELETE FROM entidades;

-- ══════════════════════════════════════════════════════════════
-- JAÉN
-- ══════════════════════════════════════════════════════════════

-- ALCALÁ LA REAL
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Fortaleza de La Mota','BIC Nacional','Ciudad fortaleza árabe del s.XIII a 1.200m. Uno de los complejos amurallados fronterizos más espectaculares del reino nazarí. Incluye iglesia mayor, alcazaba, cementerio islámico y vistas a Sierra Nevada.','BIC/turismo' FROM municipios WHERE nombre='Alcalá la Real' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','Festival Etnosur','IT Autonómico','Uno de los festivales de músicas del mundo más importantes de España, celebrado desde 1994 cada julio en la Fortaleza de La Mota. Mezcla música, artesanía, cine, talleres y convivencia multicultural durante 4 días.','turismo' FROM municipios WHERE nombre='Alcalá la Real' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Palacio Abacial','BIC Nacional','Barroco austero con hermoso patio interior porticado. Alberga la Oficina de Turismo y el Museo Arqueológico con piezas ibéricas y romanas.','BIC' FROM municipios WHERE nombre='Alcalá la Real' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Semana Santa de Alcalá la Real','IT Autonómico','Declarada de Interés Turístico Autonómico. Procesiones con siglos de historia por las empinadas calles del casco histórico.','turismo.gob.es' FROM municipios WHERE nombre='Alcalá la Real' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Aceite de oliva Sierra Sur','DO Sierra Sur de Jaén','El olivar rodea el municipio: 60 millones de árboles, el mayor olivar del mundo. Centro de Interpretación del Aceite y almazaras visitables.','DO' FROM municipios WHERE nombre='Alcalá la Real' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'sendero','Sendero de los Zumaques','—','Ruta entre bosques de zumaque que en otoño se tiñen de intenso rojo. Una de las rutas más fotografiadas de la provincia de Jaén.','turismo' FROM municipios WHERE nombre='Alcalá la Real' LIMIT 1;

-- SEGURA DE LA SIERRA
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo de Segura de la Sierra','BIC Nacional','Atalaya árabe con vistas a tres provincias. Alberga el Espacio de Interpretación de Jorge Manrique, poeta nacido aquí en el s.XV. Autor de las Coplas a la muerte de su padre.','BIC' FROM municipios WHERE nombre='Segura de la Sierra' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Conjunto Histórico de Segura','BIC Nacional','Villa medieval prácticamente intacta. Calles empedradas, casas blancas y restos árabes se conservan tal como hace siglos.','BIC' FROM municipios WHERE nombre='Segura de la Sierra' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural Cazorla-Segura-Villas','Parque Natural','El parque natural más grande de España (214.000 ha) y Reserva de la Biosfera UNESCO. Nacimiento del Guadalquivir, lince ibérico, águila imperial.','PORN' FROM municipios WHERE nombre='Segura de la Sierra' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Baños Árabes de Segura','BIC Nacional','Uno de los pocos baños árabes conservados en la provincia de Jaén, del s.XII.','BIC' FROM municipios WHERE nombre='Segura de la Sierra' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Aceite DO Sierra de Segura','DOP Sierra de Segura','Denominación de Origen Protegida con aroma único a hierba fresca y tomate. Considerado uno de los mejores aceites del mundo.','DOP' FROM municipios WHERE nombre='Segura de la Sierra' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Cuna de Jorge Manrique','Patrimonio literario','Uno de los grandes poetas del siglo XV nació aquí. Sus Coplas a la muerte de su padre son consideradas obra cumbre de la lírica castellana medieval.','cultura' FROM municipios WHERE nombre='Segura de la Sierra' LIMIT 1;

-- CAZORLA
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural Cazorla-Segura-Villas','Parque Natural','El parque natural más grande de España y Reserva Biosfera UNESCO. 214.000 ha, 34 senderos señalizados, 24 áreas recreativas. Nacimiento del río Guadalquivir, venados, linces.','PORN' FROM municipios WHERE nombre='Cazorla' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo de la Yedra','BIC Nacional','Fortaleza medieval sobre roca del s.XIII. Alberga el Museo del Alto Guadalquivir con piezas arqueológicas y etnográficas. Vistas espectaculares al casco histórico.','BIC' FROM municipios WHERE nombre='Cazorla' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Ruinas Iglesia Santa María','BIC Nacional','Iglesia renacentista del s.XVI inacabada, convertida en plaza mayor natural. Sus arcos y columnas entre la naturaleza crean una estampa única.','BIC' FROM municipios WHERE nombre='Cazorla' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','Festival Internacional del Aire El Yelmo','—','Referente mundial del vuelo libre celebrado en Cortijos Nuevos. El Yelmo es la meca del parapente y ala delta en España, con vistas al parque natural.','turismo' FROM municipios WHERE nombre='Cazorla' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','Fiesta del Adelantamiento','IT Autonómico','Recreación histórica medieval con mercado, combates, música y artesanía. Conmemora cuando Cazorla fue capital del Adelantamiento del Reino de Granada.','turismo' FROM municipios WHERE nombre='Cazorla' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Capital del Turismo Rural 2022','—','Cazorla fue elegida Capital del Turismo Rural de España en 2022 por su oferta de naturaleza, cultura y gastronomía.','turismo' FROM municipios WHERE nombre='Cazorla' LIMIT 1;

-- ANDÚJAR
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Romería Virgen de la Cabeza','IT Internacional','La mayor romería de España con más de 1 millón de personas. Se celebra el último domingo de abril en el Santuario del Cerro del Cabezo. 800 años de historia.','turismo.gob.es' FROM municipios WHERE nombre='Andújar' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural Sierra de Andújar','Parque Natural','Reserva del lince ibérico más importante del mundo y del águila imperial ibérica. 740 km de ríos y arroyos. Punto de avistamiento de aves rapaces excepcional.','PORN' FROM municipios WHERE nombre='Andújar' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Iglesia de Santa María la Mayor','BIC Nacional','Gótico-mudéjar del s.XV. Alberga un cuadro de El Greco: Cristo en la Oración del Huerto, de gran valor artístico.','BIC' FROM municipios WHERE nombre='Andújar' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Puente Romano de Andújar','BIC Nacional','Puente romano del s.I sobre el Guadalquivir, con 15 arcos, uno de los mejor conservados de Andalucía.','BIC' FROM municipios WHERE nombre='Andújar' LIMIT 1;

-- JAÉN CAPITAL
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo de Santa Catalina','BIC Nacional','Parador Nacional desde 1965. Domina la ciudad desde 742m. Vista panorámica de 60km de olivares. Historia árabe y cristiana desde el s.VIII.','BIC' FROM municipios WHERE nombre='Jaén' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Catedral de Jaén','BIC Nacional','Modelo del Renacimiento español diseñada por Andrés de Vandelvira. Alberga el Santo Rostro, el lienzo con el que la Verónica limpió el rostro de Cristo.','BIC' FROM municipios WHERE nombre='Jaén' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Baños Árabes de Jaén','BIC Nacional','Los más grandes y mejor conservados de la Península Ibérica. Del s.XI, con 470 m² y tres salas: fría, templada y caliente.','BIC' FROM municipios WHERE nombre='Jaén' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Capital mundial del aceite de oliva','—','Jaén produce el 20% del aceite de oliva mundial. El olivar con 60 millones de árboles es el mayor bosque cultivado del planeta.','turismo' FROM municipios WHERE nombre='Jaén' LIMIT 1;

-- ÚBEDA
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Sacra Capilla del Salvador','UNESCO','Joya del Renacimiento español, s.XVI. Encargada por Francisco de los Cobos, secretario de Carlos V. Fachada plateresca única.','UNESCO' FROM municipios WHERE nombre='Úbeda' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Hospital de Santiago','BIC Nacional','Llamado el Escorial andaluz. Obra maestra de Andrés de Vandelvira del s.XVI. Actualmente centro cultural.','BIC' FROM municipios WHERE nombre='Úbeda' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Conjunto Histórico de Úbeda','UNESCO','Patrimonio Mundial desde 2003 junto con Baeza. La plaza Vázquez de Molina es la más representativa del Renacimiento español.','UNESCO' FROM municipios WHERE nombre='Úbeda' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Alfarería de Úbeda','—','Tradición alfarera de más de 1.000 años. Los jarros, tinajas y platos verdes de Úbeda son únicos en España. Barrio de los alfareros visitable.','patrimonio' FROM municipios WHERE nombre='Úbeda' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','Semana de Música Religiosa','IT Nacional','Festival de música sacra de referencia nacional celebrado en la Sacra Capilla del Salvador.','turismo.gob.es' FROM municipios WHERE nombre='Úbeda' LIMIT 1;

-- BAEZA
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Catedral de Baeza','UNESCO','Construida sobre la antigua mezquita mayor. Mezcla gótico, plateresco y barroco. Torre con reloj del s.XVI.','UNESCO' FROM municipios WHERE nombre='Baeza' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Palacio de Jabalquinto','UNESCO','Fachada gótica isabelina de finales del s.XV con decoración en diamante única en España.','UNESCO' FROM municipios WHERE nombre='Baeza' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Universidad Internacional de Baeza','UNESCO','Fundada en 1538. Antonio Machado impartió clases aquí de 1912 a 1919. Sede del curso de verano de la UNIA.','UNESCO' FROM municipios WHERE nombre='Baeza' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Conjunto Histórico de Baeza','UNESCO','Patrimonio Mundial desde 2003. Paseo de Antonio Machado con vistas a la campiña.','UNESCO' FROM municipios WHERE nombre='Baeza' LIMIT 1;

-- LINARES
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Ciudad ibero-romana de Cástulo','BIC Nacional','Capital de la Oretania, habitada desde el s.VII aC. Mosaico del dios Eros, el mejor conservado de Andalucía. Conjunto arqueológico visitable con centro de interpretación.','BIC' FROM municipios WHERE nombre='Linares' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','Fiestas Íbero-Romanas de Cástulo','—','Recreación histórica anual en mayo. Campamentos, talleres artesanos, combates de gladiadores, desfiles y mercado romano. 5 días de historia viva.','turismo' FROM municipios WHERE nombre='Linares' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Cuna de Andrés Segovia','Patrimonio cultural','El mayor guitarrista clásico del s.XX nació en Linares en 1893. Fundación Andrés Segovia con archivo y colección de instrumentos.','cultura' FROM municipios WHERE nombre='Linares' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','FIMAE Festival de Artes Escénicas','—','Festival Internacional de Música y Artes Escénicas con flamenco, música clásica, danza y teatro en el Teatro Cervantes y la Fundación Segovia.','turismo' FROM municipios WHERE nombre='Linares' LIMIT 1;

-- MARTOS
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo de la Peña de Martos','BIC Nacional','Fortaleza medieval de la Orden de Calatrava sobre cortado rocoso de 40m. Escenario del famoso Despeñamiento de los Carvajales, leyenda medieval.','BIC' FROM municipios WHERE nombre='Martos' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Mayor productor de aceite del mundo','—','Martos es el municipio con mayor producción de aceite de oliva del mundo. La Vía Verde del Aceite atraviesa sus campos de olivar.','turismo' FROM municipios WHERE nombre='Martos' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Fiesta de la Aceituna','—','Celebración de la cosecha de la aceituna en diciembre. Molinos en funcionamiento, degustaciones y cultura del aceite en vivo.','turismo' FROM municipios WHERE nombre='Martos' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'sendero','Vía Verde del Aceite','—','Antigua vía del tren aceitero reconvertida en ruta cicloturista y senderista de 55km entre olivares centenarios.','FEDME' FROM municipios WHERE nombre='Martos' LIMIT 1;

-- BAÑOS DE LA ENCINA
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo de Burgalimar','BIC Nacional','Construido en 968 por el califa Al-Hakam II. Uno de los castillos califales mejor conservados de Europa. 14 torres rectangulares y 1 pentagonal. Solo dos castillos europeos lucen la bandera del Consejo de Europa: este y el de Florencia (Nápoles).','BIC' FROM municipios WHERE nombre='Baños de la Encina' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Conjunto Histórico Baños de la Encina','BIC Nacional','Pueblo medieval con iglesia románica del s.XIII y calles que conservan su trazado árabe original.','BIC' FROM municipios WHERE nombre='Baños de la Encina' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Escenario de cine','—','El castillo fue escenario de rodajes de El Capitán Trueno y El Santo Grial entre otras producciones cinematográficas.','turismo' FROM municipios WHERE nombre='Baños de la Encina' LIMIT 1;

-- ══════════════════════════════════════════════════════════════
-- GRANADA
-- ══════════════════════════════════════════════════════════════

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Alhambra y Generalife','UNESCO','El monumento más visitado de España: 2,6 millones de visitas/año. Palacio nazarí del s.XIII-XIV con jardines del Generalife. Reserva con meses de antelación.','UNESCO' FROM municipios WHERE nombre='Granada' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Catedral de Granada','BIC Nacional','Primera catedral renacentista de España, s.XVI. Capilla Real con los sepulcros de los Reyes Católicos.','BIC' FROM municipios WHERE nombre='Granada' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Albaicín','UNESCO','Barrio árabe medieval Patrimonio Mundial. Cármenes con vistas a la Alhambra. El mirador de San Nicolás al atardecer es una de las mejores vistas de España.','UNESCO' FROM municipios WHERE nombre='Granada' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Día de la Cruz','IT Internacional','El 3 de mayo toda Granada se llena de cruces engalanadas con flores. Música, baile y concursos de cruces en patios, plazas y calles.','turismo.gob.es' FROM municipios WHERE nombre='Granada' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'gastronomia','Tapas gratis con la consumición','—','Granada es la única ciudad de España donde las tapas son gratuitas con cada bebida. Tradición única que atrae a miles de visitantes.','turismo' FROM municipios WHERE nombre='Granada' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Dólmenes de Montefrío','BIC Nacional','Más de 100 dólmenes en la Peña de los Gitanos. Necrópolis megalítica de 5.000 años con restos romanos y medievales. Uno de los mejores conjuntos megalíticos de Andalucía.','BIC' FROM municipios WHERE nombre='Montefrío' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Iglesia de la Encarnación','BIC Nacional','Iglesia de cúpula circular única en España, inspirada en el Panteón de Roma. Diseñada por Ventura Rodríguez en el s.XVIII.','BIC' FROM municipios WHERE nombre='Montefrío' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'mirador','Mirador National Geographic','—','En 2015 National Geographic lo incluyó entre los 10 pueblos con mejores vistas del mundo. Vista simultánea del castillo árabe y la iglesia circular sobre peñones.','NatGeo' FROM municipios WHERE nombre='Montefrío' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Nacional Sierra Nevada','Parque Nacional','El municipio más alto de la Alpujarra con acceso al Mulhacén (3.479m). Alta Ruta del Veleta y senderos de alta montaña.','Parque Nacional' FROM municipios WHERE nombre='Capileira' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Arquitectura bereber alpujarreña','BIC Nacional','Chimeneas troncocónicas, tinaos (pasadizos techados) y terrazas de launa única en Europa. Herencia directa de los moriscos.','BIC' FROM municipios WHERE nombre='Capileira' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Jamón de Trevélez','IGP','La única zona de España con IGP para jamón serrano de montaña. Curado a más de 1.200m con viento frío alpujarreño. Fama mundial.','IGP' FROM municipios WHERE nombre='Trevélez' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Pueblo más alto de España','Geográfico','Con su núcleo principal a 1.476m, Trevélez es el municipio habitado más alto de España peninsular.','geográfico' FROM municipios WHERE nombre='Trevélez' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Barrio de las Cuevas','BIC Nacional','Más de 2.000 viviendas trogloditas habitadas hoy en día. Únicas en Europa por su escala. Temperatura constante de 18-20°C todo el año.','BIC' FROM municipios WHERE nombre='Guadix' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Catedral de Guadix','BIC Nacional','Barroco granadino del s.XVI-XVIII. Torre campanario del s.XVIII con vistas al barrio troglodita.','BIC' FROM municipios WHERE nombre='Guadix' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Balneario árabe de Alhama','BIC Nacional','Aguas termales conocidas desde época romana. Los baños árabes del s.XI son de los mejores conservados de España.','BIC' FROM municipios WHERE nombre='Alhama de Granada' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Tajo de Alhama','PORN','Espectacular cañón natural del río Alhama con paredes de hasta 100m. Pasarela y ruta de senderismo por el interior del tajo.','PORN' FROM municipios WHERE nombre='Alhama de Granada' LIMIT 1;

-- ══════════════════════════════════════════════════════════════
-- CÁDIZ
-- ══════════════════════════════════════════════════════════════

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural Sierra de Grazalema','PORN Nacional','Primera Reserva de la Biosfera de España (UNESCO, 1977). Bosque de pinsapos (abeto español endémico). La Garganta Verde solo accesible con guía.','PORN' FROM municipios WHERE nombre='Grazalema' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Pueblo más lluvioso de España','Récord nacional','Media de 2.200 mm anuales. El contraste entre lluvia y sol crea paisajes únicos de niebla entre las sierras.','geografía' FROM municipios WHERE nombre='Grazalema' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Mantas de Grazalema','Artesanía DO','Desde el s.XVIII, la Real Fábrica de Paños produce mantas artesanales de lana merina. La única que queda activa en Andalucía.','artesanía' FROM municipios WHERE nombre='Grazalema' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Casas bajo la roca','BIC Nacional','Viviendas encajadas bajo cornisas naturales de roca. Una calle tiene el techo de roca y otra la calle excavada. Fotografiado millones de veces.','BIC' FROM municipios WHERE nombre='Setenil de las Bodegas' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'gastronomia','Ruta del ibérico y los quesos','—','Famoso por sus embutidos ibéricos, quesos artesanales y mieles de la sierra. Tiendas artesanas en las mismas calles bajo la roca.','turismo' FROM municipios WHERE nombre='Setenil de las Bodegas' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'deporte','Capital mundial del kitesurf','—','El Estrecho de Gibraltar canaliza el viento de Levante. Tarifa tiene viento 300 días al año, atrayendo surfistas de todo el mundo.','deporte' FROM municipios WHERE nombre='Tarifa' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural del Estrecho','PORN Nacional','El punto donde África y Europa se separan solo 14km. Avistamiento de ballenas, delfines y aves migratorias.','PORN' FROM municipios WHERE nombre='Tarifa' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Punto más sur de Europa continental','Geográfico','El Punta Marroquí es el punto más meridional de Europa continental. Vista simultánea de dos continentes y dos mares.','geográfico' FROM municipios WHERE nombre='Tarifa' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Feria del Caballo de Jerez','IT Nacional','La feria más elegante de España. Caballos de pura raza española, flamenco, manzanilla y vestidos de flamenca por doquier durante una semana.','turismo.gob.es' FROM municipios WHERE nombre='Jerez de la Frontera' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','DO Jerez-Xérès-Sherry','DO','La denominación de origen vinícola más antigua del mundo, desde 1933. La manzanilla y el fino jerezano son únicos en el mundo.','DO' FROM municipios WHERE nombre='Jerez de la Frontera' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Cuna del flamenco español','Patrimonio Inmaterial','Jerez es junto a Cádiz y Sevilla la cuna del flamenco. La Zambomba navideña jerezana es Patrimonio Inmaterial de la Humanidad UNESCO.','UNESCO' FROM municipios WHERE nombre='Jerez de la Frontera' LIMIT 1;

-- ══════════════════════════════════════════════════════════════
-- SEVILLA, CÓRDOBA, MÁLAGA (selección)
-- ══════════════════════════════════════════════════════════════

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Catedral y Giralda','UNESCO','La catedral gótica más grande del mundo y la tercera más grande en general. La Giralda fue alminar árabe del s.XII.','UNESCO' FROM municipios WHERE nombre='Sevilla' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Real Alcázar','UNESCO','Palacio real habitado más antiguo de Europa. Construido por Pedro I en el s.XIV sobre palacio árabe anterior.','UNESCO' FROM municipios WHERE nombre='Sevilla' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Feria de Abril de Sevilla','IT Internacional','La fiesta más grande de España: 1 millón de visitas en 7 días. Casetas, sevillanas, caballos y trajes de flamenca.','turismo.gob.es' FROM municipios WHERE nombre='Sevilla' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Semana Santa de Sevilla','IT Internacional','La más famosa del mundo. 60 hermandades, 100.000 costaleros y nazarenos, vistas en 180 países.','turismo.gob.es' FROM municipios WHERE nombre='Sevilla' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Mezquita-Catedral de Córdoba','UNESCO','Mayor mezquita de Occidente del s.VIII-X. 856 columnas de mármol y jaspe. El bosque de columnas más fotogénico del mundo.','UNESCO' FROM municipios WHERE nombre='Córdoba' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Medina Azahara','UNESCO','Ciudad palatina califal del s.X. Solo excavado el 10%. Considerada la Versalles del Islam occidental.','UNESCO' FROM municipios WHERE nombre='Córdoba' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Fiesta de los Patios Cordobeses','UNESCO','Patrimonio Inmaterial de la Humanidad. Cada mayo los patios privados se abren al público rebosantes de flores y plantas.','UNESCO' FROM municipios WHERE nombre='Córdoba' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Tajo de Ronda y Puente Nuevo','BIC Nacional','El Tajo de 120m de profundidad divide la ciudad. El Puente Nuevo del s.XVIII es el símbolo de Ronda y escenario de numerosas películas.','BIC' FROM municipios WHERE nombre='Ronda' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Plaza de Toros de Ronda','BIC Nacional','La más antigua de España (1785) y cuna de la tauromaquia moderna. Pedro Romero inventó el toreo a pie aquí.','BIC' FROM municipios WHERE nombre='Ronda' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Corrida Goyesca de Ronda','IT Nacional','Celebrada en septiembre con trajes de época goyesca. Una de las corridas más elegantes y fotografiadas del mundo.','turismo.gob.es' FROM municipios WHERE nombre='Ronda' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Cueva de Nerja','BIC Nacional','Arte rupestre de 40.000 años, las pinturas más antiguas del mundo atribuidas al Homo sapiens. La Sala del Cataclismo tiene la columna natural más grande del mundo.','BIC' FROM municipios WHERE nombre='Nerja' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Balcón de Europa','BIC Nacional','Mirador sobre el Mediterráneo en el centro del pueblo. En 1885 el rey Alfonso XII visitó Nerja tras un terremoto y llamó al mirador Balcón de Europa.','BIC' FROM municipios WHERE nombre='Nerja' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','Festival de Música y Danza en la Cueva','—','Conciertos de música clásica, flamenco y danza en el interior de la Cueva de Nerja. Una experiencia acústica y visual única en el mundo.','turismo' FROM municipios WHERE nombre='Nerja' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Dólmenes de Antequera','UNESCO','Patrimonio Mundial desde 2016. Los dólmenes de Menga, Viera y El Romeral son los más grandes de Europa, de hace 5.500 años.','UNESCO' FROM municipios WHERE nombre='Antequera' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','El Torcal de Antequera','PORN Nacional','Paisaje kárstico único en el mundo. Rocas labradas por el agua durante millones de años. Reserva de la Biosfera.','PORN' FROM municipios WHERE nombre='Antequera' LIMIT 1;

-- ══════════════════════════════════════════════════════════════
-- CASTILLA Y LEON, ARAGÓN, PAÍS VASCO, NAVARRA (selección)
-- ══════════════════════════════════════════════════════════════

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Ciudad histórica de Salamanca','UNESCO','Patrimonio Mundial. La universidad más antigua de España (1218). Ciudad universitaria viva con 30.000 estudiantes.','UNESCO' FROM municipios WHERE nombre='Salamanca' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Plaza Mayor de Salamanca','BIC Nacional','Considerada la más bella de España. Construida de 1729 a 1755, con 88 arcos y medallones con retratos de reyes y personajes célebres.','BIC' FROM municipios WHERE nombre='Salamanca' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Acueducto Romano de Segovia','UNESCO','2.000 años en perfecto estado, sin argamasa. 728m de longitud, 166 arcos, 28m de altura máxima. El más impresionante de la Hispania romana.','UNESCO' FROM municipios WHERE nombre='Segovia' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Alcázar de Segovia','BIC Nacional','Castillo-palacio del s.XI-XV. Inspiró a Walt Disney para el castillo de La Bella Durmiente. Vistas espectaculares desde la Torre de Juan II.','BIC' FROM municipios WHERE nombre='Segovia' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Ciudad Monumental de Ávila','UNESCO','Las murallas medievales mejor conservadas del mundo: 2.516m, 88 torreones, 9 puertas. Del s.XI, en perfecto estado.','UNESCO' FROM municipios WHERE nombre='Ávila' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Cuna de Santa Teresa de Jesús','Patrimonio espiritual','La mística más importante del cristianismo nació aquí en 1515. Ruta teresiana por conventos y lugares relacionados con su vida.','cultura' FROM municipios WHERE nombre='Ávila' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Villa medieval de Albarracín','BIC Nacional','Considerado uno de los pueblos medievales mejor conservados de España. Color tierra roja único, murallas árabes de 5km.','BIC' FROM municipios WHERE nombre='Albarracín' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'deporte','Escalada en Albarracín','FEDME','Destino mundial de escalada con más de 400 vías. La roca arenisca naranja crea formas únicas. Visitado por escaladores de todo el mundo.','FEDME' FROM municipios WHERE nombre='Albarracín' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Nacional de Ordesa','Parque Nacional','El primer parque nacional de España (1918). Cañón de 1.000m de profundidad, cascada de Cotatuero, Flora y fauna pirenaica. El paraíso del senderismo.','Parque Nacional' FROM municipios WHERE nombre='Torla-Ordesa' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'gastronomia','Capital mundial de la gastronomía','Michelin','Más estrellas Michelin por habitante que cualquier lugar del mundo. Arzak, Berasategui, Mugaritz. Los pintxos como cultura de barra única.','Michelin' FROM municipios WHERE nombre='San Sebastián/Donostia' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'playa','Playa de La Concha','—','Repetidamente elegida la mejor playa urbana de Europa. El paseo marítimo La Concha es el más elegante de España.','turismo' FROM municipios WHERE nombre='San Sebastián/Donostia' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','Festival Internacional de Cine de San Sebastián','IT Nacional','El festival de cine más antiguo de España (1953). Concha de Oro. Glamour internacional cada septiembre.','turismo.gob.es' FROM municipios WHERE nombre='San Sebastián/Donostia' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Sanfermines','IT Internacional','La fiesta más famosa del mundo: 7 al 14 de julio. El encierro de toros por las calles, exportado a la cultura popular global por Hemingway.','turismo.gob.es' FROM municipios WHERE nombre='Pamplona/Iruña' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Ciudadela de Pamplona','BIC Nacional','Fortaleza renacentista en estrella del s.XVI, una de las mejores conservadas de Europa. Actualmente parque urbano y centro cultural.','BIC' FROM municipios WHERE nombre='Pamplona/Iruña' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'ruta','Inicio del Camino de Santiago','UNESCO','El paso de Roncesvalles es el inicio del Camino Francés, el más transitado. Cada año pasan más de 200.000 peregrinos.','UNESCO' FROM municipios WHERE nombre='Roncesvalles' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Selva de Irati','PORN','El segundo hayedo más extenso de Europa (17.000 ha). Otoño espectacular. Uno de los bosques más vírgenes de España.','PORN' FROM municipios WHERE nombre='Roncesvalles' LIMIT 1;

-- ══════════════════════════════════════════════════════════════
-- GALICIA, ASTURIAS, CANTABRIA
-- ══════════════════════════════════════════════════════════════

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Catedral de Santiago de Compostela','UNESCO','Meta de peregrinación desde el s.IX. El Botafumeiro es el incensario más grande del mundo. 350.000 peregrinos al año.','UNESCO' FROM municipios WHERE nombre='Santiago de Compostela' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Casco histórico de Santiago','UNESCO','Patrimonio Mundial. La plaza del Obradoiro es una de las plazas más bellas del mundo.','UNESCO' FROM municipios WHERE nombre='Santiago de Compostela' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Lagos de Covadonga','Parque Nacional','Los lagos Enol y Ercina a 1.100m dentro de los Picos de Europa. La subida en temporada es solo en bus por la masificación.','Parque Nacional' FROM municipios WHERE nombre='Covadonga' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Santuario de Covadonga','BIC Nacional','El lugar más sagrado de Asturias. La Santa Cueva alberga la imagen de la Virgen de Covadonga. Inicio de la Reconquista, año 722.','BIC' FROM municipios WHERE nombre='Covadonga' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Cueva de Altamira','UNESCO','Arte rupestre de 35.000 años. Las pinturas del bisonte son el primer gran arte de la humanidad. Neocueva para visitas.','UNESCO' FROM municipios WHERE nombre='Santillana del Mar' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Conjunto Histórico Medieval','BIC Nacional','Villa medieval perfectamente conservada. Adoquines, palacios y casas blasonadas del s.XV. Conocida como la ciudad de los tres mentiras.','BIC' FROM municipios WHERE nombre='Santillana del Mar' LIMIT 1;

-- ══════════════════════════════════════════════════════════════
-- EXTREMADURA, CATALUÑA, MADRID, VALENCIA, BALEARES, CANARIAS
-- ══════════════════════════════════════════════════════════════

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Ciudad Monumental de Cáceres','UNESCO','La ciudad medieval mejor conservada de España. 30 torres, palacios y conventos del s.XV-XVI sin apenas construcciones modernas.','UNESCO' FROM municipios WHERE nombre='Cáceres' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Teatro Romano de Mérida','UNESCO','El mejor conservado de España. Construido en el s.I aC con aforo para 6.000 espectadores. Festival de Teatro Clásico cada verano.','UNESCO' FROM municipios WHERE nombre='Mérida' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Nacional de Monfragüe','Parque Nacional','Mayor colonia de buitre negro de Europa. Águila imperial, cigüeña negra. El mejor lugar de España para ver rapaces en vuelo.','Parque Nacional' FROM municipios WHERE nombre='Monfragüe' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Sagrada Família','UNESCO','La obra arquitectónica más visitada de España: 4,5M visitas/año. Gaudí trabajó en ella 43 años. Prevista finalización 2026.','UNESCO' FROM municipios WHERE nombre='Barcelona' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'gastronomia','Mercado de La Boquería','—','El mercado más famoso del mundo. 300 puestos de frutas exóticas, mariscos y productos locales en Las Ramblas desde 1217.','turismo' FROM municipios WHERE nombre='Barcelona' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Las Fallas de Valencia','UNESCO','Patrimonio Inmaterial de la Humanidad. 800 monumentos de cartón y madera de hasta 30m que se queman en la noche del 19 de marzo.','UNESCO' FROM municipios WHERE nombre='Valencia' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'gastronomia','Paella valenciana','—','El plato más famoso de España nació en la Albufera de Valencia. La paella original lleva pollo, conejo y judías verdes, sin marisco.','turismo' FROM municipios WHERE nombre='Valencia' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Posidonia oceánica','UNESCO','La pradera submarina más extensa y mejor conservada del Mediterráneo. Produce el 70% del oxígeno del mar. Patrimonio Mundial UNESCO.','UNESCO' FROM municipios WHERE nombre='Formentera' LIMIT 1;

INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Nacional del Teide','Parque Nacional','El volcán más alto de España (3.718m) y el tercer volcán más grande del mundo. Reserva de la Biosfera y Patrimonio Mundial UNESCO.','UNESCO' FROM municipios WHERE nombre='Vilaflor' LIMIT 1;

COMMIT;

-- ══════════════════════════════════════════════════════════════
-- AMPLIACIÓN — NUEVOS MUNICIPIOS INVESTIGADOS
-- ══════════════════════════════════════════════════════════════

-- CARMONA (Sevilla)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Necrópolis Romana de Carmona','BIC Nacional','Una de las mayores necrópolis romanas de la Península Ibérica. Cámaras sepulcrales subterráneas, crematorios y pinturas funerarias del s.I aC.','BIC' FROM municipios WHERE nombre='Carmona' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Puerta de Córdoba','BIC Nacional','Arco romano del s.I d.C. con columnas y torres octogonales. Mejor conservado de los arcos romanos de Andalucía.','BIC' FROM municipios WHERE nombre='Carmona' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Alcázar del Rey Don Pedro','BIC Nacional','Palacio-fortaleza del rey Pedro I en lo más alto de Carmona, s.XIV. Actualmente Parador Nacional con vistas a la Campiña sevillana.','BIC' FROM municipios WHERE nombre='Carmona' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Conjunto Histórico de Carmona','BIC Nacional','Ciudad romana, árabe y cristiana con 3.000 años de historia continua. Murallas romanas parcialmente conservadas.','BIC' FROM municipios WHERE nombre='Carmona' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Semana Santa de Carmona','IT Nacional','Declarada de Interés Turístico Nacional. Cofradías con siglos de historia en una ciudad amurallada medieval.','turismo.gob.es' FROM municipios WHERE nombre='Carmona' LIMIT 1;

-- OSUNA (Sevilla)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Colegiata de Santa María de la Asunción','BIC Nacional','Panteón de los Duques de Osuna, s.XVI. Interior exuberante con obras de Ribera, Zurbarán y Roldán. Cripta ducal accesible.','BIC' FROM municipios WHERE nombre='Osuna' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Necrópolis ibero-romana de Urso','BIC Nacional','Origen prerromano. Necrópolis fenicio-púnica del s.V-IV aC. El Coto de las Canteras, gruta excavada en la roca, fue escenario de Juego de Tronos.','BIC' FROM municipios WHERE nombre='Osuna' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Escenario de Juego de Tronos','—','La Colegiata y el Coto de las Canteras fueron escenario de la ciudad de Meereen en Juego de Tronos (temporadas 4 y 5). Ruta turística oficial.','turismo' FROM municipios WHERE nombre='Osuna' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Universidad de Osuna','BIC Nacional','Fundada en 1548, una de las universidades más antiguas de Andalucía. Edificio renacentista con claustro.','BIC' FROM municipios WHERE nombre='Osuna' LIMIT 1;

-- CAZALLA DE LA SIERRA (Sevilla)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural Sierra Norte de Sevilla','PORN Nacional','Corazón verde de la Sierra Morena sevillana. Dehesas de encinas y alcornoques, rutas de senderismo y observación de fauna.','PORN' FROM municipios WHERE nombre='Cazalla de la Sierra' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Cartuja de la Inmaculada Concepción','BIC Nacional','Monasterio cartujo del s.XV declarado Monumento Nacional. Actualmente hospedería y Centro de Arte Contemporáneo con exposiciones permanentes.','BIC' FROM municipios WHERE nombre='Cazalla de la Sierra' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Aguardiente de Cazalla','—','El anís y aguardiente más famoso de España junto al de Chinchón. Destilerías El Clavel y Miura con siglos de tradición. Visitas guiadas.','DO' FROM municipios WHERE nombre='Cazalla de la Sierra' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'gastronomia','Ibérico y setas de la Sierra','—','Chacinas del cerdo ibérico de bellota, setas silvestres, espárragos trigueros y cocido de collejas. Gastronomía auténtica de monte.','turismo' FROM municipios WHERE nombre='Cazalla de la Sierra' LIMIT 1;

-- PRIEGO DE CÓRDOBA
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Fuente del Rey','BIC Nacional','Monumento hidráulico barroco del s.XVIII con 139 caños y esculturas mitológicas. Coronada por Neptuno. Considerada la más bella de Andalucía.','BIC' FROM municipios WHERE nombre='Priego de Córdoba' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Barrio de La Villa','BIC Nacional','La capital del Barroco andaluz. Calles blancas, balconadas de hierro forjado y macetas de flores. Declarado Conjunto Histórico-Artístico.','BIC' FROM municipios WHERE nombre='Priego de Córdoba' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Iglesia de la Asunción','BIC Nacional','Obra cumbre del barroco andaluz. Sagrario con yeserías doradas y cúpula elíptica de extraordinaria belleza, s.XVIII.','BIC' FROM municipios WHERE nombre='Priego de Córdoba' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Aceite DOP Priego de Córdoba','DOP','Uno de los aceites de oliva virgen extra más premiados del mundo. Museo del Aceite en antigua almazara con catas guiadas.','DOP' FROM municipios WHERE nombre='Priego de Córdoba' LIMIT 1;

-- FRIGILIANA (Málaga)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Barrio árabe de Frigiliana','BIC Nacional','El conjunto arquitectónico popular de origen árabe más puro de la provincia de Málaga. Callejuelas, adraves y casas blancas del s.XVI.','BIC' FROM municipios WHERE nombre='Frigiliana' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Miel de caña de azúcar','IGP','El único lugar de Europa continental donde se produce miel de caña artesanal. El Ingenio, fábrica del s.XVI, sigue en funcionamiento.','IGP' FROM municipios WHERE nombre='Frigiliana' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','Festival de las Tres Culturas','—','Festival anual en agosto que celebra la convivencia cristiana, musulmana y judía. Música, danza, gastronomía y mercado tradicional.','turismo' FROM municipios WHERE nombre='Frigiliana' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'historia','Batalla de Frigiliana 1569','BIC Nacional','Última resistencia morisca en la Península. Los paneles cerámicos en las calles narran la historia de la sublevación morisca.','BIC' FROM municipios WHERE nombre='Frigiliana' LIMIT 1;

-- COVARRUBIAS (Burgos)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Colegiata de San Cosme y San Damián','BIC Nacional','Fundada por el rey visigodo Chindasvinto en el s.VII. Panteón de los Condes de Castilla. Tríptico de los Reyes Magos del s.XV obra maestra.','BIC' FROM municipios WHERE nombre='Covarrubias' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Villa medieval de Covarrubias','BIC Nacional','Una de las villas medievales mejor conservadas de Castilla. Casas con entramado de madera, torre árabe y calles empedradas del Medievo.','BIC' FROM municipios WHERE nombre='Covarrubias' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Sepulcro de la princesa vikinga Kristina','BIC Nacional','En el claustro reposa la infanta noruega Kristina (s.XIII), hija del rey Haakon IV de Noruega, casada con el hermano de Alfonso X el Sabio.','BIC' FROM municipios WHERE nombre='Covarrubias' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Vinos Ribera del Duero','DOCa','Covarrubias está en el corazón de la Ribera del Duero, con bodegas centenarias y los mejores tintos de España.','DOCa' FROM municipios WHERE nombre='Covarrubias' LIMIT 1;

-- HONDARRIBIA (Guipúzcoa)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Casco histórico amurallado','BIC Nacional','La villa amurallada mejor conservada de Gipuzkoa. Casas blasonadas, murallas medievales y Castillo del Emperador Carlos V (Parador).','BIC' FROM municipios WHERE nombre='Hondarribia' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'gastronomia','Pintxos del Barrio de La Marina','—','Elegido el bar de pintxos más premiado del País Vasco repetidamente. El barrio de La Marina tiene la mayor concentración de bares de pintxos por metro cuadrado de España.','turismo' FROM municipios WHERE nombre='Hondarribia' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Frontera con Francia por el Bidasoa','Geográfico','El río Bidasoa separa España de Francia. Vistas desde la muralla a Hendaya y el País Vasco francés. Ambiente internacional único.','geográfico' FROM municipios WHERE nombre='Hondarribia' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Alarde de Hondarribia','IT Nacional','Desfile militar histórico que conmemora el levantamiento del sitio de 1638. Declarado de Interés Turístico Nacional.','turismo.gob.es' FROM municipios WHERE nombre='Hondarribia' LIMIT 1;

-- OLITE (Navarra)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Palacio Real de Olite','BIC Nacional','Uno de los palacios-castillo medievales más lujosos de Europa. Corte de los Reyes de Navarra en el s.XV, con jardines colgantes y jaulas de leones.','BIC' FROM municipios WHERE nombre='Olite/Erriberri' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','DO Navarra Vinos','DO Navarra','Capital del vino de Navarra. Museo de la Viña y el Vino. Bodegas visitables con vinos blancos garnacha y rosados únicos.','DO' FROM municipios WHERE nombre='Olite/Erriberri' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','Festival Medieval de Olite','—','Cada agosto la ciudad se transforma en un mercado medieval con trovadores, cetreros, artesanos y espectáculos en torno al castillo.','turismo' FROM municipios WHERE nombre='Olite/Erriberri' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Iglesias de Santa María y San Pedro','BIC Nacional','Dos iglesias góticas del s.XIII-XIV con portadas esculpidas de gran valor artístico. Frente al Palacio Real.','BIC' FROM municipios WHERE nombre='Olite/Erriberri' LIMIT 1;

-- SEPÚLVEDA (Segovia)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Hoces del Río Duratón','Parque Natural','Cañón de 100m de paredes donde anida la mayor colonia de buitres leonados de Europa (700+ parejas). 27km de ruta fluvial espectacular.','PORN' FROM municipios WHERE nombre='Sepúlveda' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Iglesia del Salvador','BIC Nacional','El edificio románico más antiguo del sur del Duero, construido en 1093. Uno de los mejores ejemplos del románico rural segoviano.','BIC' FROM municipios WHERE nombre='Sepúlveda' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fauna','Colonia de buitres leonados','Parque Natural','La mayor colonia reproductora de buitres leonados de Europa. Observatorio ornitológico en las Hoces para verlos volar a pocos metros.','PORN' FROM municipios WHERE nombre='Sepúlveda' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'gastronomia','Cochinillo asado de Sepúlveda','—','Junto a Segovia, Sepúlveda es la capital del cochinillo asado. Restaurantes centenarios con hornos de leña tradicionales.','turismo' FROM municipios WHERE nombre='Sepúlveda' LIMIT 1;

-- SANTILLANA DEL MAR (Cantabria)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Colegiata de Santa Juliana','BIC Nacional','Románico cántabro del s.XII. Claustro considerado uno de los más bellos del norte de España. Reliquia de Santa Juliana.','BIC' FROM municipios WHERE nombre='Santillana del Mar' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Cueva de Altamira','UNESCO','A 2km del pueblo. Arte rupestre de 35.000 años, la Capilla Sixtina del Paleolítico. Neocueva para visitar con réplica exacta.','UNESCO' FROM municipios WHERE nombre='Santillana del Mar' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Casco histórico medieval','BIC Nacional','Una de las villas medievales mejor conservadas de España. Empedrado original del s.XV, casas blasonadas y sin coches en el centro.','BIC' FROM municipios WHERE nombre='Santillana del Mar' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','La ciudad de los tres mentiras','—','Conocida como ciudad de las tres mentiras: ni santa (Santillana), ni llana (terreno irregular), ni del mar (está tierra adentro).','turismo' FROM municipios WHERE nombre='Santillana del Mar' LIMIT 1;

-- ══════════════════════════════════════════════════════════════
-- MUNICIPIOS ADICIONALES — JAÉN COMPLETO
-- ══════════════════════════════════════════════════════════════

-- PORCUNA (Jaén)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Obulco ciudad ibero-romana','BIC Nacional','Capital de la Bastetania romana. Hallazgos escultóricos ibéricos excepcionales. Museo con la escultura del Jinete de Obulco, s.IV aC.','BIC' FROM municipios WHERE nombre='Porcuna' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Iglesia de la Asunción','BIC Nacional','Gótico-renacentista con restos de muralla árabe integrados. Torre campanario del s.XVI.','BIC' FROM municipios WHERE nombre='Porcuna' LIMIT 1;

-- SABIOTE (Jaén)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo-Palacio de Sabiote','BIC Nacional','Fortaleza renacentista del s.XVI ampliada por Francisco de los Cobos, el mismo mecenas que impulsó Úbeda. Vistas a la campiña jiennense.','BIC' FROM municipios WHERE nombre='Sabiote' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Conjunto Histórico de Sabiote','BIC Nacional','Villa renacentista amurallada con lienzos de muralla árabe conservados. Iglesia parroquial con portada plateresca.','BIC' FROM municipios WHERE nombre='Sabiote' LIMIT 1;

-- JÓDAR (Jaén)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo de Jódar','BIC Nacional','Fortaleza árabe del s.XI sobre roca. Dominó la comarca durante siglos. Vistas al Parque Natural de Cazorla.','BIC' FROM municipios WHERE nombre='Jódar' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Necrópolis ibérica Molino de Sax','BIC Nacional','Importante necrópolis ibérica del s.V-III aC con ajuares funerarios excepcionales conservados en el museo local.','BIC' FROM municipios WHERE nombre='Jódar' LIMIT 1;

-- VILLACARRILLO (Jaén)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Iglesia de la Asunción','BIC Nacional','Construida sobre antigua mezquita árabe. Portada renacentista de gran valor. Torre mudéjar del s.XVI.','BIC' FROM municipios WHERE nombre='Villacarrillo' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural Cazorla-Segura-Villas','PORN Nacional','Entrada norte al mayor parque natural de España. Rutas de senderismo y cicloturismo entre pinares centenarios.','PORN' FROM municipios WHERE nombre='Villacarrillo' LIMIT 1;

-- NAVAS DE SAN JUAN (Jaén)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural Cazorla-Segura-Villas','PORN Nacional','Acceso al parque por la zona norte. Embalse del Tranco de Beas con miradores y rutas.','PORN' FROM municipios WHERE nombre='Navas de San Juan' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Ermita de la Virgen de la Cabeza','BIC Nacional','Ermita histórica en el término municipal relacionada con la romería de Andújar.','BIC' FROM municipios WHERE nombre='Navas de San Juan' LIMIT 1;

-- MANCHA REAL (Jaén)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Semana Santa de Mancha Real','IT Autonómico','Declarada de Interés Turístico Autonómico. Cofradías con tallas barrocas del s.XVII. Ambiente recogido de pueblo andaluz.','turismo.gob.es' FROM municipios WHERE nombre='Mancha Real' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Cuna de Santa Teresa de Jesús (Cepeda)','Cultural','Municipios del entorno relacionados con la familia de la santa. Ruta teresiana por la Sierra Mágina.','cultura' FROM municipios WHERE nombre='Mancha Real' LIMIT 1;

-- BAILÉN (Jaén)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Monumento a la Batalla de Bailén','BIC Nacional','La batalla del 19 de julio de 1808 fue la primera derrota del ejército napoleónico en campo abierto. Cambió el curso de la historia de Europa.','BIC' FROM municipios WHERE nombre='Bailén' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'museo','Museo de la Batalla de Bailén','—','Museo dedicado a la batalla que inspiró a los movimientos de independencia de América Latina. Recreaciones históricas anuales.','turismo' FROM municipios WHERE nombre='Bailén' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Cerámica de Bailén','—','Tradición cerámica desde el s.XVIII. La cerámica de barro rojo de Bailén se exportó a toda España. Talleres artesanos visitables.','artesanía' FROM municipios WHERE nombre='Bailén' LIMIT 1;

-- MARMOLEJO (Jaén)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'balneario','Balneario de Marmolejo','—','Aguas medicinales conocidas desde época romana. Balneario histórico del s.XIX frecuentado por la aristocracia española. Manantiales sulfurosos.','turismo' FROM municipios WHERE nombre='Marmolejo' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Riberas del Guadalquivir','—','El Guadalquivir a su paso por Marmolejo ofrece zonas de baño y rutas de senderismo entre choperas centenarias.','turismo' FROM municipios WHERE nombre='Marmolejo' LIMIT 1;

-- HUELMA (Jaén - Sierra Mágina)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo de Huelma','BIC Nacional','Fortaleza nazarí del s.XIV en lo alto del pueblo. Una de las mejores vistas de la Sierra Mágina desde sus torres.','BIC' FROM municipios WHERE nombre='Huelma' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural Sierra Mágina','PORN Nacional','El pico Mágina a 2.167m es el más alto de Jaén. Bosques de encinas y quejigos, aves rapaces y rutas de alta montaña.','PORN' FROM municipios WHERE nombre='Huelma' LIMIT 1;

-- QUESADA (Jaén)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'museo','Museo Rafael Zabaleta','BIC Nacional','Museo dedicado al pintor jiennense Rafael Zabaleta (1907-1960), uno de los grandes del expresionismo español. Colección permanente en el pueblo donde nació.','BIC' FROM municipios WHERE nombre='Quesada' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural Cazorla-Segura-Villas','PORN Nacional','Acceso al parque por la Cueva del Agua. Embalse de la Bolera con playas fluviales y rutas de senderismo.','PORN' FROM municipios WHERE nombre='Quesada' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Cueva del Agua de Quesada','BIC Nacional','Cueva con lago interior navegable en barca. Una de las cuevas más espectaculares de Andalucía, con estalactitas sobre el agua.','BIC' FROM municipios WHERE nombre='Quesada' LIMIT 1;

-- PEAL DE BECERRO (Jaén)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'yacimiento','Necrópolis ibérica de Tugia','BIC Nacional','Importante necrópolis ibérica del s.IV-III aC. Tumbas con ajuares excepcionales. Centro de interpretación de la cultura ibérica.','BIC' FROM municipios WHERE nombre='Peal de Becerro' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'espacio','Parque Natural Cazorla — Embalse del Tranco','PORN Nacional','El embalse más grande de Andalucía está en el término. Rutas en barco, playas fluviales y avistamiento de ciervos al amanecer.','PORN' FROM municipios WHERE nombre='Peal de Becerro' LIMIT 1;

-- ══════════════════════════════════════════════════════════════
-- MUNICIPIOS ADICIONALES — OTRAS PROVINCIAS
-- ══════════════════════════════════════════════════════════════

-- HARO (La Rioja)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Bodegas históricas DOCa Rioja','DOCa','El Barrio de la Estación tiene la mayor concentración de bodegas centenarias de España: López de Heredia, CVNE, Muga, Roda.','DOCa' FROM municipios WHERE nombre='Haro' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Batalla del Vino','IT Nacional','El 29 de junio miles de personas se arrojan vino de la Rioja. Declarada de Interés Turístico Nacional. Una de las fiestas más originales del mundo.','turismo.gob.es' FROM municipios WHERE nombre='Haro' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Casco histórico de Haro','BIC Nacional','Calles con palacetes del s.XVI-XVIII. La plaza de la Paz con soportales y la iglesia de Santo Tomás de estilo gótico tardío.','BIC' FROM municipios WHERE nombre='Haro' LIMIT 1;

-- ARANDA DE DUERO (Burgos/Valladolid)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Vinos Ribera del Duero','DOCa','Capital de la Ribera del Duero. Más de 20 bodegas visitables. Los mejores tintos de España envejecen en las bodegas subterráneas del s.XVI.','DOCa' FROM municipios WHERE nombre='Aranda de Duero' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Iglesia de Santa María','BIC Nacional','Portada plateresca del s.XVI de extraordinaria riqueza escultórica. Considerada una de las mejores del plateresco castellano.','BIC' FROM municipios WHERE nombre='Aranda de Duero' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'gastronomia','Lechazo asado en horno de leña','—','Aranda es la capital del lechazo churro asado. Más de 30 asadores con hornos de adobe de siglos de antigüedad.','turismo' FROM municipios WHERE nombre='Aranda de Duero' LIMIT 1;

-- PEÑAFIEL (Valladolid)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo de Peñafiel','BIC Nacional','El castillo más espectacular de Castilla: 210m de largo por 23m de ancho, como un barco de piedra sobre la colina. Alberga el Museo del Vino.','BIC' FROM municipios WHERE nombre='Peñafiel' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Vinos Ribera del Duero','DOCa','Peñafiel es el corazón de la Ribera del Duero. Bodegas Protos (primera bodega de la Ribera, 1927) visitable en el propio castillo.','DOCa' FROM municipios WHERE nombre='Peñafiel' LIMIT 1;

-- COMILLAS (Cantabria)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','El Capricho de Gaudí','BIC Nacional','Una de las primeras obras de Gaudí fuera de Cataluña (1885). Palacete modernista con girasoles en cerámica, único en el norte de España.','BIC' FROM municipios WHERE nombre='Comillas' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Universidad Pontificia de Comillas','BIC Nacional','Edificio neogótico del s.XIX diseñado por Joan Martorell. Jardines con vistas al Cantábrico espectaculares.','BIC' FROM municipios WHERE nombre='Comillas' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','El verano de los Reyes','—','Comillas fue el verano favorito de Alfonso XII. La nobleza española construyó aquí sus palacios veraniegos en el s.XIX.','turismo' FROM municipios WHERE nombre='Comillas' LIMIT 1;

-- ALCOY/ALCOI (Alicante)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Moros y Cristianos de Alcoy','IT Internacional','La fiesta de Moros y Cristianos más antigua y espectacular de España, desde 1276. Declarada de Interés Turístico Internacional.','turismo.gob.es' FROM municipios WHERE nombre='Alcoy/Alcoi' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Cuna del papel pintado y la industria textil','—','La primera fábrica de papel pintado de España (1769) y capital del textil valenciano. Patrimonio industrial del s.XIX.','cultura' FROM municipios WHERE nombre='Alcoy/Alcoi' LIMIT 1;

-- MORELLA (Castellón)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo de Morella','BIC Nacional','Fortaleza inexpugnable sobre roca de 1.072m. Conserva murallas medievales de 2.5km que rodean toda la ciudad. Vistas a 360° del Maestrazgo.','BIC' FROM municipios WHERE nombre='Morella' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Conjunto histórico de Morella','BIC Nacional','Ciudad medieval perfectamente conservada. Única en España por mantener íntegro su recinto amurallado con la ciudad dentro.','BIC' FROM municipios WHERE nombre='Morella' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'festival','Festival de Morella','IT Autonómico','Festival de cine y música de montaña en el castillo medieval. Único en España por su localización.','turismo' FROM municipios WHERE nombre='Morella' LIMIT 1;

-- SIGÜENZA (Guadalajara)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Catedral de Sigüenza','BIC Nacional','Catedral románico-gótica del s.XII con el sepulcro del Doncel, una de las esculturas funerarias más bellas del arte español.','BIC' FROM municipios WHERE nombre='Sigüenza' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'castillo','Castillo de Sigüenza','BIC Nacional','Castillo episcopal del s.XII reconvertido en Parador Nacional. La mayor fortaleza medieval de Castilla La Mancha.','BIC' FROM municipios WHERE nombre='Sigüenza' LIMIT 1;

-- DAROCA (Zaragoza)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Murallas medievales de Daroca','BIC Nacional','4km de murallas medievales del s.XIV, las más largas de Europa en proporción al tamaño de la ciudad. 114 torres conservadas.','BIC' FROM municipios WHERE nombre='Daroca' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Colegiata de Santa María','BIC Nacional','Románico-gótica con el relicario de los Santos Corporales, uno de los más venerados de España (milagro eucarístico de 1239).','BIC' FROM municipios WHERE nombre='Daroca' LIMIT 1;

-- CARAVACA DE LA CRUZ (Murcia)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Santuario de la Vera Cruz','BIC Nacional','Una de las 5 Ciudades Santas del mundo para el turismo de peregrinación. La Stauroteca alberga un fragmento de la Cruz de Cristo.','BIC' FROM municipios WHERE nombre='Caravaca de la Cruz' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Ciudad Santa del Jubileo Perpetuo','Santa Sede','Una de solo 5 ciudades del mundo con Jubileo Perpetuo (las otras son Roma, Jerusalén, Santiago y Santo Toribio de Liébana).','Santa Sede' FROM municipios WHERE nombre='Caravaca de la Cruz' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'fiesta','Fiestas de la Vera Cruz','IT Nacional','Los Caballos del Vino bajan a toda velocidad hasta el castillo. Declaradas de Interés Turístico Nacional.','turismo.gob.es' FROM municipios WHERE nombre='Caravaca de la Cruz' LIMIT 1;

-- CHINCHÓN (Madrid)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'conjunto','Plaza Mayor de Chinchón','BIC Nacional','La plaza mayor porticada más fotogénica de España, con balcones de madera del s.XV-XVII. Escenario de corridas de toros y obras de teatro en verano.','BIC' FROM municipios WHERE nombre='Chinchón' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'producto','Anís de Chinchón','DO','El anís más famoso de España, producido desde el s.XV. Destilería González Byass en el antiguo convento agustino.','DO' FROM municipios WHERE nombre='Chinchón' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Castillo de los Condes','BIC Nacional','Fortaleza del s.XIV sobre la colina con vistas a la vega del Tajo y la sierra de Madrid.','BIC' FROM municipios WHERE nombre='Chinchón' LIMIT 1;

-- PASTRANA (Guadalajara)
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Palacio Ducal de Pastrana','BIC Nacional','Residencia de la Princesa de Éboli (s.XVI). Alberga los famosos tapices de la Conquista de Tánger, únicos en el mundo.','BIC' FROM municipios WHERE nombre='Pastrana' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'monumento','Colegiata de la Asunción','BIC Nacional','Gótico del s.XV con los tapices de la conquista portuguesa de África. Joya del arte hispano-flamenco.','BIC' FROM municipios WHERE nombre='Pastrana' LIMIT 1;
INSERT INTO entidades (codigo_ine,tipo,nombre,nivel_sello,descripcion,fuente) SELECT codigo_ine,'dato','Residencia de la Princesa de Éboli','BIC Nacional','Fue lugar de reclusión de Ana de Mendoza, la enigmática Princesa de Éboli, favorita de Felipe II.','BIC' FROM municipios WHERE nombre='Pastrana' LIMIT 1;

COMMIT;

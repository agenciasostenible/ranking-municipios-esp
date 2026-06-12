-- Castillos: Insertar entidades (descripciones técnicas)
DELETE FROM entidades WHERE fuente='inventario_castillos_pdf';

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Tiel (Torre de Albox)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Albox' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'conjunto_historico', 'Conjunto Monumental de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Almería' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Andrés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Carboneras' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Rayo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Carboneras' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Marqués de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cuevas Del Almanzora' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Fiñana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cuevas Del Almanzora' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Escobas (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Garrucha' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Gérgal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Gérgal' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe (Los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Níjar' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Alumbres', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Níjar' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Vela Blanca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Níjar' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Ana (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Roquetas de Mar' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tabernas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Tabernas' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Fajardo (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vélez-blanco' AND provincia='Almería';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcalá de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá de los Gazules' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Cerca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá Del Valle' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas Meriníes de Algeciras', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Algeciras' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San García', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Algeciras' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Arcos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Arcos de la Frontera' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Tajo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Barbate' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Meca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Barbate' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de los Ribera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Bornos' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Sebastián', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cadiz' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Catalina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cadiz' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castellar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castellar de la Frontera' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chipiona', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Chipiona' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Guzmán el Bueno', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Conil de la Frontera' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Marcos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='El Puerto de Santa María' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Jerez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jerez de la Frontera' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Jimena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jimena de la Frontera' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Medina Sidonia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Medina Sidonia' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Olvera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Olvera' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Matagorda (Restos del Fuerte)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Puerto Real' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Luna', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Rota' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Romualdo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='San Fernando' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Fuerte de Isla Verde', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='San Roque' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santiago', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sanlúcar de Barrameda' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Salvador (El', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sanlúcar de Barrameda' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Guzmán el Bueno', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Tarifa' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Catalina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Tarifa' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Cabo de Gracia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Tarifa' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vejer', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vejer de la Frontera' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Tajo (Vejer oriental)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vejer de la Frontera' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zahara de la Sierra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Zahara de la Sierra' AND provincia='Cádiz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aguilar (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Aguilar de la Frontera' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almodóvar del Río', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Almodóvar Del Río' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Baena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Baena' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Sotomayor y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Belalcázar' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Belmez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Belmez' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo de Bujalance (Alcazaba', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Bujalance' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Carcabuey (El', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Carcabuey' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de los Reyes Cristianos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Córdoba' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Calahorra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Córdoba' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de Los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Dos Torres' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Espejo (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Espejo' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los Duques', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Espejo' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Iznájar (Hisn Ashar)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Iznájar' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Luque (Hisn Lukk)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Luque' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Dos Hermanas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Montemayor' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montilla (Gran', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Montilla' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Murallas y Alcázar de Palma del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma Del Río' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Cabrilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Posadas' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Priego', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Priego de Córdoba' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miramontes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Santa Eufemia' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Mogábar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torrecampo' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zuheros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Zuheros' AND provincia='Córdoba';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Rábita', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Albondón' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Huarea', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Albondón' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Albondón (Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Albondón' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Algarinejo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Algarinejo' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de Fuentes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Algarinejo' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Miguel', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhama de Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhama de Granada', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhama de Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Herradura', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhama de Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Torresolana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhama de Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Diablo (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhama de Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Luna', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhama de Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Velilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhama de Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Marchal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhama de Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Puesto Fortificado', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Arenas Del Rey' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Ermita de los Tres Juanes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Atarfe' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Baza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Baza' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Baza' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Benamaurel' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Homenaje de la Iglesia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Bubión' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Calicasas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Calicasas' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de Cañar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Caniles' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Caniles', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Caniles' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castell de Ferro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castell de Ferro' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Cambriles', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castell de Ferro' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castril', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castril' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Chimeneas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Chimeneas' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Cogollos Vega', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cogollos Vega' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Cádiar (Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cádiar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Cájar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cájar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Cúllar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cúllar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Dúrcal (El Castillejo)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Dúrcal' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Feneite', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Dúrcal' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Freila', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Freila' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuente Vaqueros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Fuente Vaqueros' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de la Alhambra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Alcazaba de la Alhambra (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres Bermejas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de la Qadima', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Granada' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Guadix', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Guadix' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'El Castillejo de Güéjar (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Guadix' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Restos del Alcázar de Huéscar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Huéscar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de la Sierra de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Huéscar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Huétor Tájar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Huétor Tájar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Iznalloz (Los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Iznalloz' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Jayena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jayena' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Calahorra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='La Calahorra' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Lanjarón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Lanjarón' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mondújar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Lecrín' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chite', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Lecrín' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Loja', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Loja' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Agicampe', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Loja' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Riofrío', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Loja' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de Lugros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Lugros' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Malá', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Malpartida' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Maracena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Maracena' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moclín', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Moclín' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Porqueriza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Moclín' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Mingoandrés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Moclín' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Solana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Moclín' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Monachil' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montefrío', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Montefrío' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Guzmanes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Montefrío' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Restos de las Murallas e Iglesia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Motril' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Mar (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Motril' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de Nigüelas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Motril' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Orce (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Orce' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Peligros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Peligros' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Píñar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pinos Puente' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pinos Puente (Cerro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pinos Puente' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alberquilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pinos Puente' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Ilurco', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pinos Puente' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Culibre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Purullena' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Salobreña', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Salar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón del Castillo de Salar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Salar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Cambrón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Salar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puertas Fortificadas de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Santa Fe' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de Ugíjar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ugíjar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puesto Fortificado del Boquete', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ventas de Zafarraya' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Válor (Torre de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Válor' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Vélez de Benaudalla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vélez de Benaudalla' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Zújar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Zújar' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Íllora', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Íllora' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Mesa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Íllora' AND provincia='Granada';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aracena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Aracena' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aroche', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Aroche' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ayamonte' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puesto Fortificado del río', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Belmez Rural (córdoba' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Zúñiga (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cartaya' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la dehesa del Viar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Constantina Rural (sevilla' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cortegana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cortegana' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sancho IV (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cumbres Mayores' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Encinasola y Fuerte', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Encinasola' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moguer', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Moguer' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Palos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palos de la Frontera' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Olalla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Santa Olalla Del Cala' AND provincia='Huelva';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de la Mota', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá la Real' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Cascante', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá la Real' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Moraleja', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá la Real' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuente Álamo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá la Real' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Charcón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá la Real' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Pedriza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá la Real' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcaudete', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcaudete' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Harina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcaudete' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Canuto', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcaudete' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas e Imperio de Andújar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Andújar' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Aragonesa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Andújar' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar e Iglesia de Santa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Arjona' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Garbancera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Arjona' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Trovador Macías', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Arjonilla' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Burgalimar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Bailén' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Bailén', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Bailén' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Migaldías', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Bailén' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Beas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Beas de Segura' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Homenaje de Begíjar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Begíjar' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Bélmez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Belmez de la Moraleda' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Sol', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Belmez de la Moraleda' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Cabra (Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cabra Del Santo Cristo' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cambil', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cambil' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhabar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cambil' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Campones', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cambil' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Canena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Canena' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Consolación', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castellar' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de San Andrés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castellar de Santisteban' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Yedra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cazorla' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Cinco Esquinas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cazorla' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chiclana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Chiclana de Segura' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Carchelejo (Castillejo)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cárchel' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Espeluy', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Espeluy' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Dehesilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Fuensanta de Martos' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuerte del Rey', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Fuerte Del Rey' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Hornos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Hornos de Segura' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Bujaraiza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Hornos de Segura' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Muralla Ciclópea e Imperio de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ibros' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Jamilena (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jamilena' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Catalina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jaén' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Peña de la Grajuela', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jaén' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Jódar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jódar' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Guardia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='La Guardia de Jaén' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de La Iruela', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='La Iruela' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tobaruela', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Linares' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Lopera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Lopera' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Dehesa de Mancha', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Mancha Real' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Villa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Martos' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Peña de Martos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Martos' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Mengíbar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Mengíbar' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Las Navas de Tolosa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Navas de Tolosa (pedanía de la' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Noalejo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Noalejo' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres de Peal (Torre del Reloj y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Orcera' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres de Santa Catalina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Orcera' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Arco de la Encarnación y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pegalajar' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Porcuna (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Porcuna' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tíscar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Quesada' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas y Arco de los Santos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Quesada' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Rus', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Rus' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sabiote', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sabiote' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castro Ferral', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Santa Elena' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Segura de la Sierra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Santisteban Del Puerto' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Esteban', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Santisteban Del Puerto' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Escribana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Santisteban Del Puerto' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Gontar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Santisteban Del Puerto' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torreblascopedro' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Muña', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torredelcampo' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Olid', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torredelcampo' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Lucero', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torredelcampo' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Muña (Atalaya)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torredelcampo' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Villagordo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torredelcampo' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Megía', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torredelcampo' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Torredonjimeno', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torredonjimeno' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Fuencubierta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torredonjimeno' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Venzala', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torredonjimeno' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres Oscuras de Torreperogil', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torreperogil' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos del Castillejo de Torres', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torres' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vilches', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vilches' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Giribaile', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vilches' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villacarrillo' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Alquería de El Batán', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villanueva de la Reina' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villardompardo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villardompar' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Murallas y Alcázar de Úbeda', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Úbeda' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Susana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Úbeda' AND provincia='Jaén';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Arco de Coín y Restos del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhaurín el Grande' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Alcazaba de Antequera (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Antequera' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo-Alcazaba de Archidona', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Archidona' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Peña de Ardales', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ardales' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Turón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ardales' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre Muelle (Red de Torres', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Benalmádena' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Moro de Benaoján', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Benaoján' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Casares', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Casares' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cártama', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cártama' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Luis', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Estepona' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Águila', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Gaucín' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Duquesa (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Manilva' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo de Marbella (Murallas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Marbella' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Maro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Maro' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Málaga y Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Málaga' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Ronda y Puerta de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ronda' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Estrella', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Teba' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de Vélez-Málaga', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Velez-málaga' AND provincia='Málaga';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alanís', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alanís' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado del Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá de Guadaíra' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar del Rey Don Pedro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Carmona' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de la Puerta de Sevilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Carmona' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Constantina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Constantina' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de El Real de la Jara', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='El Real de la Jara' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Estepa (Palacio de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Estepa' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Guadalcanal' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Armada (Restos)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Las Navas de la Concepción' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Lebrija', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Lebrija' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Los Molares', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Los Molares' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Marchena y Puerta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Marchena' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Morón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Morón de la Frontera' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Real Alcázar de Sevilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sevilla' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Utrera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Utrera' AND provincia='Sevilla';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Colegiata-Castillo de Alquézar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alquézar' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de AíNSA', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Aínsa' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Boltaña', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Bastarás (municipalidad de Casbas de' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Bastarás', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Bastarás (municipalidad de Casbas de' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos del Torreón de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Benasque' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Marcuello', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Embid de Ariza' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Ciudadela de Jaca (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jaca' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Loarre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Loarre' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monzón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Monzón' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Cotón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Monzón' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Novés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Monzón' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Real Monasterio-Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Quicena' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Samitier (Torres de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Samitier' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Secastilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Secastilla' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya del Gállego Medio', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Secastilla' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Benasque', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vall de Arán Rural (área Limítrofe de' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Agüero', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villarluengo' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de los Guzmanes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villarluengo' AND provincia='Huesca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio Episcopal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Albalate Del Arzobispo' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo y Murallas de Albarracín', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Albarracín' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Calatravos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Albarracín' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcalá de la Selva', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá de la Selva' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá de la Selva' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Báguena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Báguena' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Calaceite y Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Calaceite' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Templarios de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castellote' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cedrillas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cedrillas' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo y Murallas de Mirambel', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Mirambel' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Monroyo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Monroyo' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Fernández de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Mora de Rubielos' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Peralta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pera Lerma (pedanía de Peralta de' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peracense', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Peracense' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Puertomingalvo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Puertomingalvo' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Rubielos de Mora y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Rubielos de Mora' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Teruel y Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Teruel' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Valderrobres', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Valderrobres' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Villafranca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villafranca Del Campo' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villarluengo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villarluengo' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Cella', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villarluengo' AND provincia='Teruel';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Alfamén', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alfamén' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Añón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Antellón (pedanía de Murillo de' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Antellón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Antellón (pedanía de Murillo de' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ateca (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ateca' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Biota' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado Islámico de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Calatayud' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Doña Martina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Calatayud' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo Mayor de Daroca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Daroca' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de la Orden de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Fabara' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo del Papa Luna', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Illueca' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Luceni', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Luzeni' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mequinenza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Mequinenza' AND provincia='Zaragoza';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Albices', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Albices (pedanía de Villaquirán de los' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Burgos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Burgos' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castrojeriz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castrojeriz' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Coruña del Conde', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castrojeriz' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Fernán González', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Covarrubias' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Velasco', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Espinosa de los Monteros' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Azulejos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Espinosa de los Monteros' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de Frías', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Frías' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de los Velasco (Las', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Medina de Pomar' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Olmillos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Olmillos de Sasemón (pedanía de' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñaranda de Duero', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pancorbo' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Marta (Las', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pancorbo' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de Santa Engracia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pancorbo' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Rojas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Poza de la Sal' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Palacio de los Porras (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Puentedey' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Quintanilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Quintanilla de San García' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos de la Torre de San', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='San Zadornil' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sotopalacios', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sotopalacios (merindad de Río' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Torregalindo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torregalindo' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de los Velasco (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Valle de Mena' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Villaquirán', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villaquirán de los Infantes' AND provincia='Burgos';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Pimentel (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alija Del Infantado' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Almanza' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del Órbigo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cebrones Del Órbigo (área de' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Marqueses de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Corullón' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Grajal de Campos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Grajal de Campos' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Laguna de NegrillOS', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Laguna de Negrillos' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de León y Torre de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='León' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Sahún Alto', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Maqueda de Campos (pedanía de' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Templarios de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ponferrada' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cornatel (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Priaranza Del Bierzo' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Coyanza (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Valencia de Don Juan' AND provincia='León';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aguilar de Campoo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Aguilar de Campoo' AND provincia='Palencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Galisancho', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alba de Tormes (salamanca' AND provincia='Palencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ampudia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ampudia' AND provincia='Palencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo de la Mota y Murallas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Astudillo' AND provincia='Palencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Belmonte de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Belmonte de Campos' AND provincia='Palencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puesto Fortificado del río Pedro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castroviejo' AND provincia='Palencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fuentes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Fuentes de Valdepero' AND provincia='Palencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Pozal de Gallinas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Medina Del Campo Rural (valladolid' AND provincia='Palencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monzón de Campos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Monzón de Campos' AND provincia='Palencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palenzuela' AND provincia='Palencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de Alba', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alba de Tormes' AND provincia='Salamanca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Aldeadávila de la Ribera (arribes Del' AND provincia='Salamanca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Enrique II de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ciudad Rodrigo' AND provincia='Salamanca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ledesma', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ledesma' AND provincia='Salamanca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Vicente', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Montemayor Del Río' AND provincia='Salamanca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Montemayor Del Río' AND provincia='Salamanca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de San Felices (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='San Felices de los Gallegos' AND provincia='Salamanca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Sobradillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sobradillo' AND provincia='Salamanca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Arcones (La Torrecilla)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Arcones' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Ayllón y Torre de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ayllón' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Casla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Casla' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín del soto del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castillejo de Mesleón' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Coca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Coca' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Castralvo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Condado de Castralvo (pedanía de' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cuéllar' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Fresno de Cantespino' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Maderuelo y Puerta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Maderuelo' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Orejana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Orejana' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pedraza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pedraza' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Bardal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Prádena' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Segovia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Segovia' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Segovia (Puerta de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Segovia' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sepúlveda (Fernán', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sepúlveda' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Puerta del Ecce Homo y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sepúlveda' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Turégano', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Turégano' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de los Condes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Valdeprados' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya del Valle de Tabladillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Valle de Tabladillo' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Veganzones', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Veganzones' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Villaverde', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villaverde de Íscar' AND provincia='Segovia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Almazán (Puerta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Almazán' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almenar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Almenar de Soria' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Berlanga de Duero', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Berlanga de Duero' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Calatañazor', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Berlanga de Duero' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Deza' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza Califal de Gormaz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Gormaz' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Magaña (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Gormaz' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Medinaceli', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Medinaceli' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Leonardo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Rello' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Rello y Villa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Rello' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Soria y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Soria' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vozmediano', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vozmediano' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la Muela y Murallas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ágreda' AND provincia='Soria';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Castromonte (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castromonte' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fuensaldaña', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Encinas de Esgueva' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Encinas de Esgueva', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Encinas de Esgueva' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Íscar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Iscar' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Mota', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Medina Del Campo' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñafiel', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Medina Del Campo' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Portillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Portillo' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='San José de Valle' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Simancas (Archivo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Simancas' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tiedra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Tiedra' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Almirantes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torrelobatón' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Trigueros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Trigueros Del Valle' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de VillalonSO', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villalonso' AND provincia='Valladolid';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de los Pimentel (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Benavente' AND provincia='Zamora';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castrotorafe y Villa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castrotorafe (municipalidad de San' AND provincia='Zamora';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fermoselle (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Fermoselle' AND provincia='Zamora';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Fuentesáuco' AND provincia='Zamora';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Mombuey', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Mombuey' AND provincia='Zamora';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Puebla de Sanabria' AND provincia='Zamora';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Toro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Toro' AND provincia='Zamora';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villalonso', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villalonso' AND provincia='Zamora';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de Alcañices y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vozmediano' AND provincia='Zamora';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zamora', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Zamora' AND provincia='Zamora';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de don Álvaro de Luna', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Arenas de San Pedro' AND provincia='Ávila';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Arévalo (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Arévalo' AND provincia='Ávila';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Valdecorneja', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='El Barco de Ávila' AND provincia='Ávila';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Mombeltrán' AND provincia='Ávila';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Duque de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Mombeltrán' AND provincia='Ávila';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Magalia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Navas Del Marqués' AND provincia='Ávila';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Santiago del Collado', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Santiago Del Collado' AND provincia='Ávila';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Murallas de Ávila y Alcázar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ávila' AND provincia='Ávila';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villaviciosa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ávila' AND provincia='Ávila';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Crespillos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ávila' AND provincia='Ávila';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alcalá del Júcar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcalá Del Júcar' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Cristóbal y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcaraz' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almansa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Almansa' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Conde de Casal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Carcelén' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chinchilla (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Chinchilla de Montearagón' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Yedra (Restos)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cotillas' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Restos de la Alcazaba de Hellín', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Hellín' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Jorquera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jorquera' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Riópar Viejo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Riópar' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Socovos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Socovos' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la campiña de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Tarazona de la Mancha Rural' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Yeste', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Yeste' AND provincia='Albacete';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón del Gran Prior (Torreón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Albazete de San Juan (alcázar de San' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de los Montes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcublas (alcoba de los Montes' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhambra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhambra' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio de los Maestres de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Almagro' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Almodóvar Del Campo' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñarroya', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Argamasilla de Alba' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la dehesa del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Argamasilla de Calatrava' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Convento de Calatrava', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Calzada de Calatrava' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Salvatierra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Calzada de Calatrava' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Convento de Calatrava', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Carrión de Calatrava' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado e Imperio de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ciudad Real' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Puerta de Toledo y Murallas de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ciudad Real' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miraflores', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Piedrabuena' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del rincón de Ruanales', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Piedrabuena' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Jamila', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villanueva de los Infantes' AND provincia='Ciudad Real';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alarcón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alarcón' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Belmonte', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Belmonte' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cuenca (Las', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cuenca' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Garcimuñoz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Enguídanos' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Enguídanos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Enguídanos' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almonacid (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Huete' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Iniesta (Restos del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Iniesta' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moya y Villa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Moya' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Paracuellos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Paracuellos (paracuellos de la Vega' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre Vieja de San Clemente', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='San Clemente' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo y Murallas de Uclés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Tarancón Rural' AND provincia='Cuenca';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Atienza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Atienza' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Don Juan Manuel', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cifuentes' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cogolludo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cogolludo' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la campiña baja de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cogolludo' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Jadraque (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jadraque' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo-Alcazaba de Molina de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Molina de Aragón' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Palazuelos y Villa', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palazuelos (municipalidad de' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pioz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pioz' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo de Sigüenza (Alcázar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Rriba de Santiuste (municipalidad de' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Riba de Santiuste', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Rriba de Santiuste (municipalidad de' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Torija', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torija' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Funes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villel de Mesa' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Yélamos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Yélamos de Abajo (aribes de la' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Zorita de los Canes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Zorita de los Canes' AND provincia='Guadalajara';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almonacid', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Almonacid de Toledo' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Barcience', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Barcience' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Caudilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Caudilla (municipalidad de Santo' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Muela', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Consuegra' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Escalona', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Escalona' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Guadamur', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Guadamur' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Malamoneda', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Hontanar' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Vela (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Maqueda' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montalbán', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Montalbán (municipalidad de San' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Navalmoral', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Navalmoral de Pusa' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Orgaz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Orgaz' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Oropesa (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Oropesa' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Polán', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Polán' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillejo de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='San Pablo de los Montes' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Servando', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Toledo' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de Toledo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Toledo' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Homenaje de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Valmojado' AND provincia='Toledo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montjuïc', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Barcelona' AND provincia='Barcelona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cardona', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cardona' AND provincia='Barcelona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castellet', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castellet I la Gornal' AND provincia='Barcelona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Claramunt', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Claramunt' AND provincia='Barcelona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del Bages', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Claramunt' AND provincia='Barcelona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Brunyola', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Brunyola' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Calonge', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Calonge' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Fernando', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Figueres' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de Hostalric', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Hostalric' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San Sebastián (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palafrugell' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Palacio de Peralada', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Peralada' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Quermançó', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Peralada' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ribes (Castell de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ribes de Freser' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo y Recinto Amurallado', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Tossa de Mar' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Arenys', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Zorita de los Canes' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Albanyà', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Zorita de los Canes' AND provincia='Girona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Flix (Castell Nou)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Flix' AND provincia='Lleida';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Rey (La Suda) y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Lleida' AND provincia='Lleida';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montsonís', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Montsonís' AND provincia='Lleida';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mur', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Mur' AND provincia='Lleida';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Os de Balaguer', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Os de Balaguer' AND provincia='Lleida';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Falset' AND provincia='Tarragona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miravet', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Miravet' AND provincia='Tarragona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Montblanc y Puerta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Montblanc' AND provincia='Tarragona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Siurana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Siurana' AND provincia='Tarragona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Suda (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Tortosa' AND provincia='Tarragona';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Bárbara', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alicante' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Fernando', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alicante' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de las Rejas (Red de las', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alicante' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Banyeres', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Banyeres de Mariola' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Benidorm', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Benidorm' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Biar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Biar' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castalla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castalla' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Denia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Denia' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Palacio de Altamira (Alcázar de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Elche' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San José (Castell de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Guadalest' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Monóvar', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Monóvar' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Mola', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Novelda' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Petrer', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Petrer' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo-Fortaleza de Santa Pola', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Santa Pola' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sax', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sax' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Atalaya', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villena' AND provincia='Alicante';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Almenara (Torres de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Almenara' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Masía Fortificada de San Juan', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Altura' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ares', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ares Del Maestrat' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Benassal y la Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Benassal' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Mar (Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Burriana' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Fadrell (Castell Vell)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castellón de la Plana' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Culla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Culla' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Jérica (Torre de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Culla' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Morella', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Morella' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Peñíscola (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Onda' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo de Onda (La fortaleza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Onda' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Estrella (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Segorbe' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Palancia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Soneja' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Mauz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sueres' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Todolella', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Todolella' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Torrechiva', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Trigueros' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Vilafamés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vilafamés' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Xivert', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villanueva de los Infantes' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre Badum', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villanueva de los Infantes' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la Muela', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Viver' AND provincia='Castellón';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Ayora', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ayora' AND provincia='Valencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Benissanó', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Benissanó' AND provincia='Valencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Buñol', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Benissanó' AND provincia='Valencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Chulilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Chulilla' AND provincia='Valencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cofrentes', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cofrentes' AND provincia='Valencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cullera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cullera' AND provincia='Valencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Requena (Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Requena' AND provincia='Valencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sagunto', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sagunto' AND provincia='Valencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Xàtiva (Castell', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torrent' AND provincia='Valencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre del Castillo de Torrent', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Torrent' AND provincia='Valencia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Luna', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alburquerque' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Miraflores', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alconchel' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Azuaga', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Azuaga' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcazaba de Badajoz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Badajoz' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Burguillos del Cerro', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Burguillos Del Cerro' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Almorchón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cabeza Del Buey' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa esteparia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castuera (entorno Rural de la' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Feria', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Feria' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo Templario de Fregenal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Fregenal de la Sierra' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Herrera del Duque', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Herrera Del Duque' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza Templaria de Jerez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jerez de los Caballeros' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Recinto Amurallado y Torres de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Llerena' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Medellín', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Medellín' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Fortín de Tentudía', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Monesterio' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Olivenza y Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Olivenza' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio-Castillo de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Orellana la Vieja' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Puebla de Alcocer', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Puebla de Alcocer' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Salvatierra (Restos)', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Salvaleón' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Villalba de los Barros', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villalba de los Barros' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Alcázar de los Duques de Feria', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Zafra' AND provincia='Badajoz';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Albalá', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Albalá' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de las dehesas de San', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alburquerque Rural (área Limítrofe' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo de Alcántara (Fortaleza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcántara' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la dehesa de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Arroyomolinos' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cabañas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Brozas' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Encomiendas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Brozas' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Duques de Alba', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Coria' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Murallas de Cáceres y Torre de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cáceres' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Granadilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Granadilla (municipalidad de Zarza de' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Carlos V (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jarandilla de la Vera' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monfragüe', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Jarandilla de la Vera' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Montánchez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Montánchez' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas e Imperio de Plasencia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Plasencia' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Marmionda', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Portezuelo' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Segura', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Segura de Toro' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Trevejo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Trevejo' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'alcazaba', 'Castillo de Trujillo (Alcazaba de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Trujillo' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de las dehesas de Eljas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Valverde Del Fresno' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de la Vera Alta', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Villanueva de la Vera' AND provincia='Cáceres';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Castroverde (Torre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castroverde' AND provincia='Lugo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Arcos (Casa-Fuerte de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Chantada' AND provincia='Lugo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas de Lugo y Reducto de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Lugo' AND provincia='Lugo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monforte de Lemos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Monforte de Lemos' AND provincia='Lugo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pambre', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palas de Rei' AND provincia='Lugo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa del Miño', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palas de Rei' AND provincia='Lugo';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Allariz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Allariz' AND provincia='Ourense';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Castro Caldelas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castro Caldelas' AND provincia='Ourense';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Maceda', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Maceda' AND provincia='Ourense';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Condes de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ribadavia' AND provincia='Ourense';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Sandiás (Castillo de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sandiás' AND provincia='Ourense';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Monterrey (Acrópolis', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Verín' AND provincia='Ourense';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la dehesa de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vilamartín de Valdeorras Rural (o' AND provincia='Ourense';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Restos de la Torre señorial del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Agolada' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Aguas Mansas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Agoncillo' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Soto', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Aller' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Faro de Santa Ana', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Castro-urdiales' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torres del Oeste (Castellum', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Catoira' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Clavijo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Clavijo' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Tiebas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cortezubi (municipalidad de Pamplona' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cuzcurrita', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cuzcurrita de Río Tirón' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Javier', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Javier' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de Llanes y Murallas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Llanes' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Marcilla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Marcilla' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre vigía del litoral llanura', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Marín' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio Real de Olite (Castillo', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Olite' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Ciudadela de Pamplona', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pamplona' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Sajazarra', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Sajazarra' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Martín', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Soto Del Barco' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Soutomaior', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Soutomaior' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San Martín de Hoyos', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Valdeolea' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de la frontera navarro-', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Valdeolea' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Rey de San Vicente', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Valdáliga (san Vicente de la Barquera' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Sebastián y', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vigo' AND provincia='Pontevedra';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alaró', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alaró' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Murallas y Puertas de Alcúdia', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alcúdia' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de sa Mola', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Andratx' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Recinto Fortificado de Sant', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Arta' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Capdepera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Capdepera' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Carlos (Fuerte', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cee' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Nicolás (Castell', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ciutadella' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo del Cardenal', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Corcubión' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'muralla', 'Castillo y Recinto Amurallado', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Escorca' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castell del Rei', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Escorca' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santueri', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Felanitx' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Fortaleza de la Mola (Fortaleza', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Felanitx' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe (Castell', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Felanitx' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Ferrol' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moeche', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Moeche' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de la dehesa del río', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Neda' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Bellver', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Hércules (Estructura', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Antón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Butrón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Palacio de la Almudaina', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Santa Bárbara', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Mota (Monte', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Lantarón', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Luz', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Juan', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Carlos (Castell', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Carlos V', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Gabriel', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Felipe', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Muñatones', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre-Palacio de los', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de San Andrés', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Atalaya de Albercutx', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Palma' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torreón de los Andrade', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pontedeume' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Vimianzo (Torres de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Vimianzo' AND provincia='Baleares';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Castillo de Aledo (La Torre del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Aledo' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Alhama', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Alhama de Murcia' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Blanca', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Blanca' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Restos del Castillo de Bullas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Bullas' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Juan de', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Calasparra' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo-Santuario de la Vera', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Caravaca de la Cruz' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de la Concepción', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cartagena' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Galeras', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cartagena' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Julián', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cartagena' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'torre', 'Torre de Santa Elena', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cartagena' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Cieza (Senda de la', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Cieza' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'fortaleza', 'Castillo de Lorca (Fortaleza del', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Lorca' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Moratalla', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Moratalla' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de los Vélez', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Mula' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de Pliego (Las dehesas', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pliego' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de las Paleras', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Pliego' AND provincia='Murcia';
INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta)
SELECT codigo_ine, 'castillo', 'Castillo de San Juan de las', 'Castillo o torre defensiva', 'inventario_castillos_pdf', date('now')
FROM municipios WHERE nombre='Zafra' AND provincia='Murcia';
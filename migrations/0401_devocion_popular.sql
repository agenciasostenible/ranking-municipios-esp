-- 0401 devoción popular consolidada: Alpandeire (Fray Leopoldo, pueblo natal)
INSERT OR IGNORE INTO entidades(id,codigo_ine,nombre,tipo,fuente,descripcion)
VALUES (183500,'90443','Casa Natal de Fray Leopoldo y ruta devocional de Alpandeire','religioso','religioso_curado',
'Pueblo natal del beato Fray Leopoldo de Alpandeire (1864-1956), el capuchino limosnero más venerado de Andalucía. Su casa natal, la pila bautismal de la iglesia de San Antonio de Padua y la ruta de los apeaderos del beato atraen peregrinos todo el año.');
INSERT INTO puntuaciones(codigo_ine,categoria,puntuacion) VALUES ('90443','turismo_religioso',76)
ON CONFLICT(codigo_ine,categoria) DO UPDATE SET puntuacion=MAX(puntuacion,76);

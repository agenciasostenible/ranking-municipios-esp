-- 0355 Cosmetica: minuscula en el conector inicial de las etiquetas de Caminos Naturales.
UPDATE entidades SET nombre=REPLACE(nombre,'Camino Natural Del ','Camino Natural del ') WHERE fuente='caminos_naturales' AND nombre LIKE 'Camino Natural Del %';
UPDATE entidades SET nombre=REPLACE(nombre,'Camino Natural De ','Camino Natural de ') WHERE fuente='caminos_naturales' AND nombre LIKE 'Camino Natural De %';

-- Sincroniza entidades curadas de monumentos entre los dos codigos de cada par duplicado.
-- Las paginas de municipio pueden abrirse con cualquiera de los dos codigos; las entidades
-- deben existir en ambos para que se muestren las descripciones (igual que ya ocurria en Granada).
-- Solo afecta a entidades de tipos monumentales con fuente BIC/UNESCO/excel_curado.
-- El indice UNIQUE (codigo_ine,tipo,nombre) garantiza que INSERT OR IGNORE no duplica.

INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, sello_oficial, nivel_sello, fecha_ingesta)
SELECT mb.codigo_ine, e.tipo, e.nombre, e.descripcion, e.fuente, e.sello_oficial, e.nivel_sello, e.fecha_ingesta
FROM entidades e
JOIN municipios ma ON e.codigo_ine = ma.codigo_ine
JOIN municipios mb ON ma.nombre = mb.nombre AND ma.provincia = mb.provincia AND ma.codigo_ine <> mb.codigo_ine
WHERE e.tipo IN ('castillo','monumento','iglesia','catedral','yacimiento','palacio','ermita','conjunto_historico','fortaleza','torre')
  AND e.fuente IN ('BIC','UNESCO','excel_curado');

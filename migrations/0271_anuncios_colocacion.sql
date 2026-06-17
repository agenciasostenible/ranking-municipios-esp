-- 0271_anuncios_colocacion.sql
-- Control editorial de DÓNDE aparece cada anuncio (es publicidad).
-- en_ficha: ficha del municipio · en_ruta_mun: plan de un día del municipio
-- en_ruta_zona: rutas por zona/provincia (cuando su municipio sea una parada)
ALTER TABLE anuncios ADD COLUMN en_ficha     INTEGER NOT NULL DEFAULT 1;
ALTER TABLE anuncios ADD COLUMN en_ruta_mun  INTEGER NOT NULL DEFAULT 1;
ALTER TABLE anuncios ADD COLUMN en_ruta_zona INTEGER NOT NULL DEFAULT 0;

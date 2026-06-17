-- 0273_anuncios_ranking_prov.sql
-- Colocación extra: mostrar el anuncio ARRIBA del ranking provincial
-- (página /provincia/{nombre}), aunque el negocio sea de un pueblo de esa provincia.
ALTER TABLE anuncios ADD COLUMN en_ranking_prov INTEGER NOT NULL DEFAULT 0;

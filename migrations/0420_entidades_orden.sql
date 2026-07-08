-- Orden manual de las entidades dentro de la ficha de un municipio.
-- Menor número = más arriba. NULL = orden automático (por sello/tipo/nombre).
ALTER TABLE entidades ADD COLUMN orden INTEGER;

-- 0256 festivales desde PDF (inventario_festivales_pdf)
-- Recarga: borra puntuaciones festivales placeholder (backup en backups/festivales_*.json).
-- Conserva las 18 entidades oficiales tipo='festival' fuente IN ('turismo','turismo.gob.es').
DELETE FROM puntuaciones WHERE categoria='festivales';

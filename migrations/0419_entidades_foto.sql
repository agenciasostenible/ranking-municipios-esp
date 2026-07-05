-- 0419 foto propia por entidad (subida desde el panel admin)
ALTER TABLE entidades ADD COLUMN foto_data BLOB;
ALTER TABLE entidades ADD COLUMN foto_mime TEXT;

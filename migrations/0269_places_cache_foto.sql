-- ============================================================
-- 0269 — Añade foto a la caché de Google Places
-- ------------------------------------------------------------
-- foto_ref  = photo_reference de Google (se sirve vía /api/place-photo)
-- foto_attr = html_attributions exigidas por Google al mostrar la foto
-- Se vacía la caché previa para que las paradas se repueblen CON foto.
-- ============================================================

ALTER TABLE places_cache ADD COLUMN foto_ref  TEXT;
ALTER TABLE places_cache ADD COLUMN foto_attr TEXT;

DELETE FROM places_cache;

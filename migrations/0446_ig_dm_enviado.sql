-- 0446: seguimiento de DMs de Instagram a ayuntamientos (panel /admin/instagram)
ALTER TABLE ayuntamientos_contacto ADD COLUMN ig_dm_enviado_at TEXT;

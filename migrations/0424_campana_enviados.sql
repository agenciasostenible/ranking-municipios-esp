-- 0424 seguimiento de la campaña de aviso a ayuntamientos
ALTER TABLE ayuntamientos_contacto ADD COLUMN email_enviado_at TEXT;
ALTER TABLE ayuntamientos_contacto ADD COLUMN email_error TEXT;
CREATE INDEX IF NOT EXISTS idx_ayto_pendiente ON ayuntamientos_contacto(email_enviado_at);

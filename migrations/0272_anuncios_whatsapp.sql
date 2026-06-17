-- 0272_anuncios_whatsapp.sql
-- Marca si el teléfono del anuncio tiene WhatsApp (para mostrar botón "Escribir").
ALTER TABLE anuncios ADD COLUMN whatsapp INTEGER NOT NULL DEFAULT 0;

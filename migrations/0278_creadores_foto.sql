-- 0278 — foto de perfil del creador (data URL base64 en D1, como los anuncios)
ALTER TABLE creadores ADD COLUMN avatar_data TEXT;
ALTER TABLE creadores ADD COLUMN avatar_mime TEXT;

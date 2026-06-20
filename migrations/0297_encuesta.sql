-- 0297 — Encuesta a instagramers: "¿tu municipio favorito de España para pasar 2 días?"
-- Alta abierta desde /encuesta. En el panel /admin/encuesta se descarga la imagen
-- vertical (Stories) con el @usuario y su sitio favorito para publicarla en Instagram.
CREATE TABLE IF NOT EXISTS encuesta (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  handle      TEXT NOT NULL,            -- usuario de Instagram (sin @)
  sitio       TEXT NOT NULL,            -- nombre del municipio/ciudad tal cual lo escribió
  codigo_ine  TEXT,                     -- si casó con un municipio de la BD
  provincia   TEXT,                     -- provincia si casó con la BD
  frase       TEXT,                     -- "¿por qué ahí?" (opcional, sale como cita)
  avatar_data TEXT,                     -- foto de perfil base64 data URL (opcional)
  avatar_mime TEXT,
  publicado   INTEGER DEFAULT 0,        -- 1 = ya lo publiqué en Instagram
  creado_at   TEXT DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_encuesta_creado ON encuesta(publicado, creado_at);

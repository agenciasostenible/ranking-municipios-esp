-- Tabla de instagramers registrados
CREATE TABLE IF NOT EXISTS instagramers (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  handle      TEXT NOT NULL,
  nombre      TEXT,
  seguidores  INTEGER DEFAULT 0,
  avatar_url  TEXT,
  especialidad TEXT,  -- 'naturaleza','gastronomia','cultura','aventura','rural',etc.
  bio         TEXT,
  verificado  INTEGER DEFAULT 0,  -- 0=pendiente, 1=aprobado, 2=rechazado
  creado_at   TEXT DEFAULT (datetime('now'))
);

-- Municipios que recomienda cada instagramer
CREATE TABLE IF NOT EXISTS instagramer_municipios (
  id             INTEGER PRIMARY KEY AUTOINCREMENT,
  instagramer_id INTEGER NOT NULL REFERENCES instagramers(id) ON DELETE CASCADE,
  codigo_ine     TEXT,
  nombre_sitio   TEXT NOT NULL,
  provincia      TEXT,
  url_post       TEXT,
  destacado      INTEGER DEFAULT 0
);

CREATE INDEX IF NOT EXISTS idx_insta_munis ON instagramer_municipios(codigo_ine);
CREATE INDEX IF NOT EXISTS idx_insta_verificado ON instagramers(verificado);

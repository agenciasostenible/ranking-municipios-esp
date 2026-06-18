-- 0277 — Creadores de Instagram recomendados (expertos en turismo por zona/tema)
-- Se muestran en las páginas de ranking (categoría = tema). Editorial + alta abierta.
CREATE TABLE IF NOT EXISTS creadores (
  id             INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre         TEXT NOT NULL,
  handle         TEXT NOT NULL,            -- sin @
  avatar_url     TEXT,                     -- foto de perfil (opcional)
  bio            TEXT,                     -- una línea
  especialidades TEXT,                     -- csv de categorías: senderismo,gastronomia,general...
  ambito_tipo    TEXT DEFAULT 'nacional',  -- nacional | comunidad | provincia | municipio
  ambito_valor   TEXT DEFAULT '',          -- '' | comunidad | provincia | codigo_ine
  seguidores     INTEGER DEFAULT 0,        -- opcional, para ordenar
  destacado      INTEGER DEFAULT 0,        -- editorial (sale primero)
  aprobado       INTEGER DEFAULT 0,        -- 1 = visible
  email          TEXT,                     -- contacto del alta (no público)
  creado_at      TEXT DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_creadores_aprobado ON creadores(aprobado, destacado);

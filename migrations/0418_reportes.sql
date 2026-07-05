-- 0418 reportes de errores en fichas (colaboración vecinos/ayuntamientos)
CREATE TABLE IF NOT EXISTS reportes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  codigo_ine TEXT,
  municipio TEXT,
  entidad_id INTEGER,
  entidad_nombre TEXT,
  motivo TEXT,               -- no_existe | otro_municipio | nombre_mal | falta_info | otro
  comentario TEXT,
  email TEXT,
  origen TEXT DEFAULT 'ficha',   -- ficha | ayuntamiento
  estado TEXT DEFAULT 'pendiente', -- pendiente | resuelto | descartado
  token TEXT,
  creado_at TEXT DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_reportes_estado ON reportes(estado, creado_at);

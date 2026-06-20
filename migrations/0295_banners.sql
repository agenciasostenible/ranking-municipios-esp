CREATE TABLE IF NOT EXISTS banners (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  slot TEXT NOT NULL,
  enlace TEXT,
  alt TEXT,
  foto_data TEXT,
  foto_mime TEXT,
  activo INTEGER DEFAULT 1,
  creado_at TEXT DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_banners_slot ON banners(slot, activo);

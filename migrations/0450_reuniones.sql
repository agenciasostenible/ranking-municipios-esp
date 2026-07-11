-- 0450: reuniones por videollamada con ayuntamientos (huecos que abre el admin + reservas)
CREATE TABLE IF NOT EXISTS reuniones (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  fecha TEXT NOT NULL,           -- YYYY-MM-DD
  hora TEXT NOT NULL,            -- HH:MM (hora española)
  estado TEXT NOT NULL DEFAULT 'libre',  -- libre | reservada
  codigo_ine TEXT, municipio TEXT,
  nombre TEXT, cargo TEXT, email TEXT, telefono TEXT,
  enlace TEXT,
  creado_at TEXT DEFAULT (datetime('now')),
  reservado_at TEXT,
  UNIQUE(fecha, hora)
);
CREATE INDEX IF NOT EXISTS idx_reuniones_fecha ON reuniones(fecha, estado);

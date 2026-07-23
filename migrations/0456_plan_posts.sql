-- Post diario persistente del Plan de HOY: se asigna una vez y no cambia
-- hasta que el admin lo marca como publicado; si no, se arrastra al día siguiente.
CREATE TABLE IF NOT EXISTS plan_posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  fecha_asignado TEXT NOT NULL,
  dow INTEGER NOT NULL,
  seed INTEGER NOT NULL,
  publicado_at TEXT
);

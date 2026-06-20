-- 0298 — Voto del público: "el mejor municipio turístico de España".
-- Recuento agregado por municipio (no se guarda quién vota). Cada navegador
-- aporta 1 voto movible: al revotar, se descuenta su voto anterior.
CREATE TABLE IF NOT EXISTS votos (
  codigo_ine TEXT PRIMARY KEY,
  nombre     TEXT,
  provincia  TEXT,
  votos      INTEGER DEFAULT 0,
  updated_at TEXT DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_votos_count ON votos(votos DESC);

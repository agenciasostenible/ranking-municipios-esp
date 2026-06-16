-- ============================================================
-- 0268 — Caché de Google Places para el generador de rutas
-- ------------------------------------------------------------
-- Guarda el mejor "dónde comer" / "qué visitar" cerca de cada
-- municipio que sale en una ruta. Cumple los ToS de Google:
-- el contenido se refresca cada 30 días (ver fetched_at).
-- Solo se rellena bajo demanda (las paradas de rutas reales),
-- nunca se pre-puebla España entera.
-- ============================================================

CREATE TABLE IF NOT EXISTS places_cache (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo_ine  TEXT NOT NULL,
    kind        TEXT NOT NULL,          -- 'comer' | 'visitar'
    place_id    TEXT,                   -- '__none__' = sin resultado (caché negativa)
    nombre      TEXT,
    rating      REAL,
    reviews     INTEGER,
    lat         REAL,
    lng         REAL,
    direccion   TEXT,
    fetched_at  TEXT DEFAULT (datetime('now'))
);

CREATE INDEX IF NOT EXISTS idx_places_cache_lookup
    ON places_cache (codigo_ine, kind, fetched_at);

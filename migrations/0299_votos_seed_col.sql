-- 0299 — Columna para registrar cuántos votos de cada municipio son sembrados
-- (inventados). Permite quitar SOLO la parte inventada y conservar los reales.
ALTER TABLE votos ADD COLUMN seed_votos INTEGER DEFAULT 0;

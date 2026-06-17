-- 0270_anuncios.sql
-- Establecimientos enviados por sus dueños ("Anuncia tu negocio").
-- Flujo: envío (pendiente) → email con botones → aprobado/rechazado.
-- Al aprobar se muestra con sello "Recomendado" en la ficha del municipio y
-- en las rutas. Datos preparados ya para el futuro de pago (plan/vigencia).
CREATE TABLE IF NOT EXISTS anuncios (
  id             INTEGER PRIMARY KEY AUTOINCREMENT,
  codigo_ine     TEXT,                 -- municipio (puede ser NULL si no casó)
  municipio      TEXT,                 -- nombre tecleado por el usuario
  provincia      TEXT,
  tipo           TEXT NOT NULL,        -- gastronomia|rural|hotel|cafe|bar|activo|otro
  nombre         TEXT NOT NULL,        -- nombre del establecimiento
  descripcion    TEXT,
  direccion      TEXT,
  contacto       TEXT,                 -- persona de contacto
  email          TEXT,
  telefono       TEXT,
  web            TEXT,
  foto_data      TEXT,                 -- data URL base64 (v1, sin almacenamiento externo)
  foto_mime      TEXT,
  estado         TEXT NOT NULL DEFAULT 'pendiente',  -- pendiente|aprobado|rechazado
  plan           TEXT NOT NULL DEFAULT 'gratis',     -- gratis|destacado (futuro de pago)
  token          TEXT,                 -- para los enlaces de moderación del email
  vigencia_hasta TEXT,                 -- futuro: caducidad del anuncio de pago
  creado_at      TEXT DEFAULT (datetime('now')),
  moderado_at    TEXT
);
CREATE INDEX IF NOT EXISTS idx_anuncios_muni   ON anuncios(codigo_ine, estado);
CREATE INDEX IF NOT EXISTS idx_anuncios_estado ON anuncios(estado);

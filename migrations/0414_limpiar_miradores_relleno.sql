-- 0414 calidad: borrar miradores de relleno generados (descripciones inequívocas de vista mediocre:
-- "sencilla panorámica/visual", "periurbana", "urbana y llana", "extrarradio", "dormitorio").
-- Filtro ultra-conservador validado a muestra: solo mirador + inventario_miradores_pdf + SIN coordenadas.
DELETE FROM entidades WHERE id IN (
  SELECT e.id FROM entidades e WHERE e.tipo='mirador' AND e.fuente='inventario_miradores_pdf' AND e.latitud IS NULL AND (LOWER(e.descripcion) LIKE '%sencilla panor%' OR LOWER(e.descripcion) LIKE '%sencilla visual%' OR LOWER(e.descripcion) LIKE '%periurban%' OR LOWER(e.descripcion) LIKE '%extrarradio%' OR LOWER(e.descripcion) LIKE '%dormitorio%' OR LOWER(e.descripcion) LIKE '%urbana y llana%' OR LOWER(e.descripcion) LIKE '%urbana e industrial%')
);

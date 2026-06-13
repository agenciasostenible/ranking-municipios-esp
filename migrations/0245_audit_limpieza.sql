-- 0245 Auditoría: borra 8 monumentos basura (desc vacía/=nombre) + huérfanos
DELETE FROM entidades WHERE fuente='inventario_monumentos_pdf' AND (descripcion IS NULL OR LENGTH(TRIM(descripcion))<15);
DELETE FROM puntuaciones WHERE categoria='monumentos' AND codigo_ine IN (SELECT p.codigo_ine FROM puntuaciones p WHERE p.categoria='monumentos' AND NOT EXISTS(SELECT 1 FROM entidades e WHERE e.codigo_ine=p.codigo_ine AND e.fuente='inventario_monumentos_pdf'));

-- 0386 monumentos: borrar 1.647 entradas "Núcleos de población de X" (residuo del parseo del PDF, no son monumentos)
DELETE FROM entidades WHERE fuente='inventario_monumentos_pdf' AND (
  nombre LIKE 'Núcleos de población%' OR nombre LIKE 'Núcleo de población%' OR
  nombre LIKE 'Población de%' OR nombre LIKE 'Demografía%' OR
  nombre LIKE 'Entidades de población%' OR nombre LIKE 'Pedanías%');

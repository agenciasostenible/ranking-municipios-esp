-- 0274 — Limpieza: senderos mal clasificados
-- 18 entidades tipo='sendero' (fuente excel_curado, descripción vacía) cuyo nombre
-- coincide EXACTAMENTE con un castillo/fortaleza/monumento/torre/conjunto del mismo
-- municipio. Son importes erróneos (un castillo no es un sendero) y duplican el
-- monumento real. Se eliminan; el monumento correcto se conserva.
-- Caso que lo destapó: Alcalá la Real (Fortaleza de la Mota como sendero, id 72923).

DELETE FROM entidades WHERE id IN (
  77700,  -- Faro de Cabo Vilán (01005)
  76037,  -- Castillo de Almansa (02005)
  76038,  -- Castillo de Chinchilla (02010)
  76035,  -- Castillo de Montealegre (02017)
  77771,  -- Castillo de Morella (11010)
  76282,  -- Castillo de Alarcón (14001)
  75529,  -- Cueva de los Murciélagos (14075)
  76284,  -- Castillo de Belmonte (16033)
  73189,  -- Castillo de Moclín (18132)
  76391,  -- Castillo de Atienza (19044)
  72923,  -- Fortaleza de la Mota (24002)
  72919,  -- Castillo de Burgalimar (24012)
  72936,  -- Castillo de Giribaile (24089)
  73333,  -- Castillo del Águila (29056)
  73416,  -- Castillo de la Estrella (29089)
  76886,  -- Castillo de Turégano (39011)
  76935,  -- Castillo de Calatañazor (42046)
  76983   -- Villa amurallada de Urueña (47178)
) AND tipo='sendero';

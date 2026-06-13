-- 0226: Elimina entidades de fuentes AUTOMÁTICAS sin verificar (OSM, wikidata,
-- articulo_web, semrush, sin-fuente y misc), dejando solo datos verificados:
-- PDFs (castillos, playas), curados (excel_curado) y oficiales (BIC, UNESCO,
-- Michelin, Repsol, DO/DOP/IGP/DOCa, PORN, Parque Nacional, NYIOOC, turismo.gob.es...).
-- Backup restaurable en backups/entidades_no_verificadas_backup.sql
DELETE FROM entidades
WHERE fuente IN ('OSM','wikidata','articulo_web','semrush','NatGeo','geográfico','geografía','deporte')
   OR fuente IS NULL;

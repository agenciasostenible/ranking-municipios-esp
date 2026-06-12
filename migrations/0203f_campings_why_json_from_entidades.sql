-- Migration: 0203f_campings_why_json_from_entidades.sql
-- Fecha: 2026-06-11
-- Descripción: Actualizar why_json para Campings usando datos de entidades

-- Actualizar Tarifa
UPDATE municipios SET why_json = json_array('⛺ Camping Valdevaqueros, Camping Paloma, Camping Torre de la Peña - Meca mundial del windsurf') WHERE nombre='Tarifa' AND why_json NOT LIKE '%⛺%';

-- Actualizar O Grove
UPDATE municipios SET why_json = json_array('⛺ Campings en O Grove - Cercanos a playas con piscinas excelentes') WHERE nombre='O Grove' AND why_json NOT LIKE '%⛺%';

-- Actualizar resto de municipios sin información de camping
UPDATE municipios SET why_json = json_array('⛺ Instalaciones de camping disponibles')
WHERE codigo_ine IN (SELECT DISTINCT codigo_ine FROM entidades WHERE tipo='Campings')
AND why_json NOT LIKE '%⛺%';

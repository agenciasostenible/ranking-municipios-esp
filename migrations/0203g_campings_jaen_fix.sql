-- Migration: 0203g_campings_jaen_fix.sql
-- Fecha: 2026-06-11
-- Descripción: Corregir why_json para campings en municipios de Jaén

UPDATE municipios
SET why_json = json_array('⛺ Camping Agramón - Junto al embalse del Rumblar, ideal para combinar historia con el castillo califal')
WHERE nombre='Baños de la Encina' AND provincia='Jaén';

UPDATE municipios
SET why_json = json_array('⛺ Camping Despeñaperros - La puerta de entrada a Andalucía, piscina, restaurante de cocina local')
WHERE nombre='Santa Elena' AND provincia='Jaén';

UPDATE municipios
SET why_json = json_array('⛺ Camping Chopera Coto Ríos - Entorno rústico insuperable, aislamiento natural total')
WHERE nombre='Santiago-Pontones' AND provincia='Jaén';

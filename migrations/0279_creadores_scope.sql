-- 0279 — scope múltiple para creadores: varias provincias y/o municipios + nacional
ALTER TABLE creadores ADD COLUMN provincias TEXT DEFAULT '';   -- csv de nombres de provincia
ALTER TABLE creadores ADD COLUMN municipios TEXT DEFAULT '';   -- csv de codigo_ine
ALTER TABLE creadores ADD COLUMN nacional INTEGER DEFAULT 0;   -- 1 = toda España
-- Migrar el ámbito antiguo (ambito_tipo/ambito_valor) al nuevo modelo
UPDATE creadores SET nacional=1 WHERE ambito_tipo='nacional';
UPDATE creadores SET provincias=ambito_valor WHERE ambito_tipo='provincia' AND COALESCE(ambito_valor,'')!='';

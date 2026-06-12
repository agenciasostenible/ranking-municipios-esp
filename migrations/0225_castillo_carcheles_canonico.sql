-- 0225: Mueve la Torre de Carchelejo a la ficha canónica de Cárcheles (23901, es_duplicado=0)
-- en vez del duplicado oculto (24033). Mismo fix que el de playas.
UPDATE entidades SET codigo_ine='23901' WHERE codigo_ine='24033' AND fuente='inventario_castillos_pdf';

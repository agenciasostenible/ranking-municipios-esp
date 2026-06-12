-- 0218: Restaura guiones en palabras compuestas fusionadas al unir líneas del PDF
UPDATE entidades SET descripcion=REPLACE(descripcion,'góticoseñorial','gótico-señorial') WHERE fuente='inventario_castillos_pdf' AND descripcion LIKE '%góticoseñorial%';
UPDATE entidades SET descripcion=REPLACE(descripcion,'góticomudéjar','gótico-mudéjar') WHERE fuente='inventario_castillos_pdf' AND descripcion LIKE '%góticomudéjar%';
UPDATE entidades SET descripcion=REPLACE(descripcion,'góticocristiana','gótico-cristiana') WHERE fuente='inventario_castillos_pdf' AND descripcion LIKE '%góticocristiana%';
UPDATE entidades SET descripcion=REPLACE(descripcion,'torrepuerta','torre-puerta') WHERE fuente='inventario_castillos_pdf' AND descripcion LIKE '%torrepuerta%';
UPDATE entidades SET descripcion=REPLACE(descripcion,'torrefortaleza','torre-fortaleza') WHERE fuente='inventario_castillos_pdf' AND descripcion LIKE '%torrefortaleza%';
UPDATE entidades SET descripcion=REPLACE(descripcion,'castillosconvento','castillos-convento') WHERE fuente='inventario_castillos_pdf' AND descripcion LIKE '%castillosconvento%';

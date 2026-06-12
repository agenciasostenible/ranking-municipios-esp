-- Add es_duplicado column to municipios
ALTER TABLE municipios ADD COLUMN es_duplicado INTEGER DEFAULT 0;

-- Mark as duplicate those whose codigo_ine prefix does NOT match their province number
UPDATE municipios SET es_duplicado = 1
WHERE codigo_ine IN (
  SELECT m.codigo_ine FROM municipios m
  WHERE EXISTS (
    SELECT 1 FROM municipios m2
    WHERE m2.nombre = m.nombre AND m2.provincia = m.provincia
    AND m2.codigo_ine != m.codigo_ine
  )
  AND SUBSTR(m.codigo_ine, 1, 2) != CASE m.provincia
    WHEN 'Álava'                  THEN '01'
    WHEN 'Albacete'               THEN '02'
    WHEN 'Alicante'               THEN '03'
    WHEN 'Almería'                THEN '04'
    WHEN 'Ávila'                  THEN '05'
    WHEN 'Badajoz'                THEN '06'
    WHEN 'Baleares'               THEN '07'
    WHEN 'Islas Baleares'         THEN '07'
    WHEN 'Barcelona'              THEN '08'
    WHEN 'Burgos'                 THEN '09'
    WHEN 'Cáceres'                THEN '10'
    WHEN 'Cádiz'                  THEN '11'
    WHEN 'Castellón'              THEN '12'
    WHEN 'Ciudad Real'            THEN '13'
    WHEN 'Córdoba'                THEN '14'
    WHEN 'A Coruña'               THEN '15'
    WHEN 'Cuenca'                 THEN '16'
    WHEN 'Girona'                 THEN '17'
    WHEN 'Granada'                THEN '18'
    WHEN 'Guadalajara'            THEN '19'
    WHEN 'Guipúzcoa'              THEN '20'
    WHEN 'Huelva'                 THEN '21'
    WHEN 'Huesca'                 THEN '22'
    WHEN 'Jaén'                   THEN '23'
    WHEN 'León'                   THEN '24'
    WHEN 'Lleida'                 THEN '25'
    WHEN 'La Rioja'               THEN '26'
    WHEN 'Lugo'                   THEN '27'
    WHEN 'Madrid'                 THEN '28'
    WHEN 'Málaga'                 THEN '29'
    WHEN 'Murcia'                 THEN '30'
    WHEN 'Navarra'                THEN '31'
    WHEN 'Ourense'                THEN '32'
    WHEN 'Asturias'               THEN '33'
    WHEN 'Palencia'               THEN '34'
    WHEN 'Las Palmas'             THEN '35'
    WHEN 'Pontevedra'             THEN '36'
    WHEN 'Salamanca'              THEN '37'
    WHEN 'Santa Cruz de Tenerife' THEN '38'
    WHEN 'Cantabria'              THEN '39'
    WHEN 'Segovia'                THEN '40'
    WHEN 'Sevilla'                THEN '41'
    WHEN 'Soria'                  THEN '42'
    WHEN 'Tarragona'              THEN '43'
    WHEN 'Teruel'                 THEN '44'
    WHEN 'Toledo'                 THEN '45'
    WHEN 'Valencia'               THEN '46'
    WHEN 'Valladolid'             THEN '47'
    WHEN 'Vizcaya'                THEN '48'
    WHEN 'Zamora'                 THEN '49'
    WHEN 'Zaragoza'               THEN '50'
    WHEN 'Ceuta'                  THEN '51'
    WHEN 'Melilla'                THEN '52'
    ELSE '00'
  END
);

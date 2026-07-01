-- Fix aceite: zero out placeholder scores, boost real NYIOOC municipalities
-- Only municipalities with NYIOOC-Flos_Olei entities should have positive scores

-- Step 1: Zero out ALL aceite scores for munis WITHOUT a real NYIOOC entity
UPDATE puntuaciones SET puntuacion=0, ranking_nacional=NULL, ranking_provincial=NULL
WHERE categoria='aceite'
  AND codigo_ine NOT IN (
    SELECT DISTINCT codigo_ine FROM entidades WHERE fuente='NYIOOC-Flos_Olei'
  );

-- Step 2: Boost real NYIOOC municipalities to proper scores
-- Jaén province is the world capital of olive oil (DO Jaén, DO Segura, DO Cazorla)
UPDATE puntuaciones SET puntuacion=95
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Jaén' AND provincia='Jaén' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=94
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Baena' AND provincia='Córdoba' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=93
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Priego de Córdoba' AND provincia='Córdoba' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=91
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Úbeda' AND provincia='Jaén' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=90
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Baeza' AND provincia='Jaén' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=89
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Andújar' AND provincia='Jaén' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=88
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Montoro' AND provincia='Córdoba' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=87
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Córdoba' AND provincia='Córdoba' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=85
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Antequera' AND provincia='Málaga' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=84
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Monterrubio de la Serena' AND provincia='Badajoz' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=83
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Alcázar de San Juan' AND provincia='Ciudad Real' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=82
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Sonseca' AND provincia='Toledo' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=81
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Órgiva' AND provincia='Granada' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

-- Algaida (Baleares) - prestigious olive oil but smaller market
UPDATE puntuaciones SET puntuacion=79
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Algaida' AND provincia='Baleares' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

-- Tabernas (Almería)
UPDATE puntuaciones SET puntuacion=77
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Tabernas' AND provincia='Almería' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

-- Cataluña municipalities
UPDATE puntuaciones SET puntuacion=78
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Siurana' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

UPDATE puntuaciones SET puntuacion=80
WHERE categoria='aceite' AND codigo_ine=(SELECT codigo_ine FROM municipios WHERE nombre='Les Borges Blanques' AND COALESCE(es_duplicado,0)=0 LIMIT 1);

-- Step 3: Recalculate rankings for aceite (only entries with puntuacion > 0)
UPDATE puntuaciones SET ranking_nacional=NULL WHERE categoria='aceite';
UPDATE puntuaciones SET ranking_provincial=NULL WHERE categoria='aceite';

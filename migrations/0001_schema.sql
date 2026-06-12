-- ============================================================
-- RANKING MUNICIPIOS ESPAÑA — Esquema de Base de Datos v1.0
-- Piloto: Provincia de Jaén
-- ============================================================

-- D1 manages journal mode; foreign keys enabled by default

-- ------------------------------------------------------------
-- 1. MUNICIPIOS — tabla maestra
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS municipios (
    codigo_ine      TEXT PRIMARY KEY,  -- 5 dígitos: 2 provincia + 3 municipio
    nombre          TEXT NOT NULL,
    provincia       TEXT NOT NULL,
    comunidad       TEXT NOT NULL,
    comarca         TEXT,
    poblacion       INTEGER,
    superficie_km2  REAL,
    latitud         REAL,
    longitud        REAL,
    altitud_m       INTEGER,
    capital_prov    INTEGER DEFAULT 0  -- 1 si es capital de provincia
);

-- ------------------------------------------------------------
-- 2. ENTIDADES — recursos turísticos con nombre y ubicación
-- Tipos: monumento, iglesia, castillo, yacimiento, playa,
--        mirador, fuente, parque, espacio_natural, fiesta
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS entidades (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo_ine      TEXT NOT NULL REFERENCES municipios(codigo_ine),
    tipo            TEXT NOT NULL,
    nombre          TEXT NOT NULL,
    descripcion     TEXT,
    latitud         REAL,
    longitud        REAL,
    foto_url        TEXT,
    fuente          TEXT,  -- INE, OSM, BIC, Wikidata...
    sello_oficial   TEXT,  -- BIC, UNESCO, Bandera_Azul, Interes_Turistico_Int/Nac/Auton...
    nivel_sello     TEXT,  -- Internacional, Nacional, Autonómico, Local
    wiki_url        TEXT,
    osm_id          TEXT,
    fecha_ingesta   TEXT DEFAULT (date('now'))
);

-- ------------------------------------------------------------
-- 3. INDICADORES — valores agregados (solo número, sin nombres)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS indicadores (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo_ine      TEXT NOT NULL REFERENCES municipios(codigo_ine),
    tipo            TEXT NOT NULL,  -- restaurantes, alojamientos, eventos_anuales, etc.
    valor           REAL,
    valor_por_1000hab REAL,
    unidad          TEXT,
    fuente          TEXT,
    fecha_actualizacion TEXT DEFAULT (date('now'))
);

-- ------------------------------------------------------------
-- 4. SEÑALES — las 4 familias de señal por entidad o municipio
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS senales (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    ref_tipo        TEXT NOT NULL,   -- 'municipio' o 'entidad'
    ref_id          TEXT NOT NULL,   -- codigo_ine o id de entidad
    tipo_senal      TEXT NOT NULL,   -- inventario | sello | wiki_idiomas | wiki_visitas | gdelt | trends
    valor_bruto     REAL,
    valor_normalizado REAL,          -- 0-100 escala logarítmica
    metadatos       TEXT,            -- JSON con detalles adicionales
    fecha           TEXT DEFAULT (date('now'))
);

-- ------------------------------------------------------------
-- 5. PUNTUACIONES — resultado final por municipio y categoría
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS puntuaciones (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo_ine          TEXT NOT NULL REFERENCES municipios(codigo_ine),
    categoria           TEXT NOT NULL,  -- ver lista de categorías abajo
    puntuacion          REAL,           -- 0-100
    ranking_provincial  INTEGER,
    ranking_nacional    INTEGER,
    ranking_comarcal    INTEGER,
    ranking_por_hab_prov INTEGER,
    desglose_json       TEXT,           -- JSON con detalle de cada señal
    fecha               TEXT DEFAULT (date('now')),
    UNIQUE(codigo_ine, categoria)
);

-- ------------------------------------------------------------
-- 6. RANKINGS COMBINADOS — "mejor pueblo para X"
-- Categorías compuestas orientadas a intención de viaje
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS rankings_combinados (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo_ine          TEXT NOT NULL REFERENCES municipios(codigo_ine),
    tipo_ranking        TEXT NOT NULL,  -- ver lista abajo
    puntuacion          REAL,
    ranking_provincial  INTEGER,
    ranking_nacional    INTEGER,
    ranking_comarcal    INTEGER,
    formula_json        TEXT,           -- qué categorías y pesos se usaron
    fecha               TEXT DEFAULT (date('now')),
    UNIQUE(codigo_ine, tipo_ranking)
);

-- ------------------------------------------------------------
-- 7. VOTOS USUARIOS (fase posterior)
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS votos_usuarios (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    codigo_ine  TEXT NOT NULL REFERENCES municipios(codigo_ine),
    criterio    TEXT NOT NULL,  -- belleza, encanto, acogida, gastronomia_subj...
    valor       INTEGER CHECK(valor BETWEEN 1 AND 5),
    hash_usuario TEXT,          -- hash anónimo del usuario, no dato personal
    fecha       TEXT DEFAULT (date('now'))
);

-- ------------------------------------------------------------
-- ÍNDICES
-- ------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_entidades_municipio ON entidades(codigo_ine);
CREATE INDEX IF NOT EXISTS idx_entidades_tipo ON entidades(tipo);
CREATE INDEX IF NOT EXISTS idx_puntuaciones_categoria ON puntuaciones(categoria, ranking_provincial);
CREATE INDEX IF NOT EXISTS idx_puntuaciones_nacional ON puntuaciones(categoria, ranking_nacional);
CREATE INDEX IF NOT EXISTS idx_rankings_combinados_tipo ON rankings_combinados(tipo_ranking, ranking_provincial);
CREATE INDEX IF NOT EXISTS idx_indicadores_municipio ON indicadores(codigo_ine);

-- ============================================================
-- CATÁLOGO DE CATEGORÍAS SIMPLES (puntuaciones)
-- ============================================================
-- patrimonio: monumentos_bic, patrimonio_religioso, castillos_fortalezas,
--             yacimientos_arqueologicos, conjuntos_historicos
-- naturaleza: playas, espacios_naturales, miradores, fuentes_manantiales,
--             parques_recreo, senderos_rutas
-- vida:       fiestas_festivales, gastronomia_indicador
-- sintesis:   ranking_global

-- ============================================================
-- CATÁLOGO DE RANKINGS COMBINADOS (rankings_combinados)
-- ============================================================
-- mejor_para_historia          — monumentos + castillos + yacimientos + conjuntos
-- mejor_para_naturaleza        — espacios_naturales + playas + senderos + miradores
-- mejor_para_fiestas           — fiestas_festivales + wiki + trends
-- mejor_para_gastronomia       — gastronomia_indicador + notoriedad
-- mejor_para_familia           — playas + parques + fiestas + seguridad (poblacion)
-- mejor_para_senderismo        — senderos + espacios_naturales + miradores
-- mejor_para_escapada_rural    — global bajo - poblacion alta → pueblos pequeños ricos
-- mejor_para_playa             — playas + bandera_azul + servicios
-- pueblos_con_mas_castillos    — inventario puro de castillos
-- pueblos_con_mas_patrimonio   — BIC + UNESCO + conjuntos históricos
-- pueblos_con_mas_fiestas_oficiales — sellos Interés Turístico
-- ranking_global_turistico     — combinación ponderada de todo

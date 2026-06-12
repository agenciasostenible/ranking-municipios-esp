# Deploy en Cloudflare Pages + D1

## 1. Crear la base de datos D1 en Cloudflare

```bash
npx wrangler d1 create ranking-municipios
```

Copia el `database_id` que te devuelve y pégalo en `wrangler.toml`:
```toml
[[d1_databases]]
binding = "DB"
database_name = "ranking-municipios"
database_id = "TU_DATABASE_ID_AQUI"
```

## 2. Subir el schema y los datos

```bash
# Schema
npx wrangler d1 execute ranking-municipios --file=migrations/0001_schema.sql

# Datos de Jaén (97 municipios)
npx wrangler d1 execute ranking-municipios --file=migrations/0002_seed_jaen.sql

# Columna de búsqueda sin acentos
npx wrangler d1 execute ranking-municipios --file=migrations/0003_search_column.sql
npx wrangler d1 execute ranking-municipios --file=migrations/0004_nombre_search_data.sql
```

## 3. Build y deploy

```bash
npm run build
npx wrangler pages deploy ./dist --project-name=ranking-municipios-esp
```

O conecta el repo a Cloudflare Pages en el dashboard y configura:
- **Build command**: `npm run build`
- **Build output**: `dist`
- **Variable de entorno**: vincula el binding `DB` a tu D1

## Desarrollo local

```bash
# Instalar dependencias
npm install

# Crear BD local y cargar datos
npm run db:migrate:local

# Servidor de desarrollo
npm run dev
```

## Añadir más provincias

1. Crea un script de seed similar a `engine_full.py` para la nueva provincia
2. Exporta con `sqlite3 tu_bd.db ".mode insert municipios" ".output seed.sql" "SELECT * FROM municipios;"`
3. Repite para `entidades`, `indicadores` y `puntuaciones`
4. Ejecuta el SQL en D1 local y remota
5. Actualiza `migrations/0004_nombre_search_data.sql` con los nuevos municipios

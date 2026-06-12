# 📋 PROMPT PARA NUEVAS CATEGORÍAS DE CAMPINGS/RANKINGS

## ✅ CHECKLIST PRE-ENVÍO

Antes de enviar cualquier Excel, asegúrate que cumpla esto:

### Estructura del Excel REQUERIDA:
- **Columna A**: Comunidad Autónoma (ej: "Andalucía")
- **Columna B**: Provincia (ej: "Jaén")
- **Columna C**: Municipio (ej: "La Iruela / Cazorla")
- **Columna D**: Puntos (número entero, ej: 75)
- **Columna E**: Campings Destacados (nombres separados por coma, ej: "Camping A, Camping B")
- **Columna F**: Por Qué Destaca (descripción clara, ej: "Ubicado en pleno parque natural...")

### Validación de datos:
- ❌ NO espacios extra en nombres
- ❌ NO caracteres especiales rotos
- ✅ Nombres de municipios exactamente como están en la BD
- ✅ Puntos entre 0 y 100
- ✅ TODA la información importante en las columnas

---

## 🔄 PROCESO A SEGUIR (Usuario + Claude)

### PASO 1: Usuario envía el Excel
**Usuario dice:** "Aquí está el Excel de [CATEGORÍA] con estos datos:" + [adjunta archivo]

### PASO 2: Claude REVISA EL EXCEL COMPLETO
**Claude hace:**
```python
import pandas as pd
df = pd.read_excel('[archivo]')

# 1. Verificar estructura
print(f"Columnas: {df.columns.tolist()}")
print(f"Total de municipios: {len(df)}")

# 2. Mostrar muestra de datos
print(df.head(10))
print(df.tail(10))

# 3. Verificar municipios problemáticos
print(f"Municipios únicos: {df['Municipio'].nunique()}")
print(f"Provincias: {df['Provincia'].value_counts()}")
```

**Claude VERIFICA:**
- ✅ Que las 6 columnas existan
- ✅ Que NO hay municipios vacíos
- ✅ Que NO hay puntos = 0 (excepto si es intencional)
- ✅ Que TODO tiene contenido

### PASO 3: Claude REVISA EN LA BD
**Claude busca CADA municipio en la BD:**
```bash
# Para municipios problemáticos (con barra, caracteres especiales, etc.)
npx wrangler d1 execute ranking-municipios --remote --command="SELECT nombre FROM municipios WHERE nombre LIKE '%[PARTE DEL NOMBRE]%' AND provincia='[PROVINCIA]'"
```

**Si NO existe el municipio:**
- ✅ Buscar variantes (sin espacios, con/sin acentos, etc.)
- ✅ Si no hay variante, INFORMAR AL USUARIO

### PASO 4: Claude CARGA LOS DATOS CON ESTRUCTURA CORRECTA
**Estructura del why_json para CAMPINGS:**
```
🏕️ CAMPINGS: [Nombres de campings separados por coma] | [Descripción clara]
```

**Ejemplo:**
```
🏕️ CAMPINGS: Camping Llanos de Arance, Camping San Isicio | Llanos de Arance está junto al río Guadalquivir en pleno Parque Natural, con cabañas de madera excelentes
```

**Para OTRAS categorías (Vinos, Gastronomía, etc.):**
```
[Emoji] [NOMBRE DESTACADO]: [Descripción completa]
```

### PASO 5: Crear MIGRACIÓN SQL
**Archivo:** `migrations/0XXX_[CATEGORIA]_datos_excel.sql`

```sql
-- Migration: 0XXX_[CATEGORIA]_datos_excel.sql
-- Fecha: [HOY]
-- Descripción: Cargar [N] municipios con [CATEGORÍA]

UPDATE puntuaciones SET puntuacion=0 WHERE categoria='[CATEGORÍA]';

-- Para CADA municipio del Excel:
UPDATE puntuaciones SET puntuacion=[PUNTOS] WHERE categoria='[CATEGORÍA]' AND codigo_ine IN (SELECT codigo_ine FROM municipios WHERE nombre='[MUNICIPIO]' AND provincia='[PROVINCIA]' AND es_duplicado=0);
UPDATE municipios SET why_json = json_array('[🏕️ CAMPINGS: ... | ...]') WHERE nombre='[MUNICIPIO]' AND provincia='[PROVINCIA]';
```

### PASO 6: Ejecutar MIGRACIÓN
```bash
cd /Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp
npx wrangler d1 execute ranking-municipios --remote --file=migrations/0XXX_[CATEGORIA]_datos_excel.sql
```

**Verificar:** "changes": debe ser > 0

### PASO 7: Build + Deploy
```bash
npm run build && npx vercel deploy --prod
```

### PASO 8: VERIFICAR en la web
1. Abrir `https://rankingspain.com/ranking/[categoria]`
2. Filtrar por provincia problemática
3. **Revisar que muestre:**
   - ✅ Nombres de campings/destacados
   - ✅ Descripción completa
   - ✅ Puntuación correcta
   - ✅ NO hay municipios con puntos erróneos

---

## 🚨 ERRORES COMUNES A EVITAR

| Error | Causa | Solución |
|-------|-------|----------|
| "Municipio no encontrado" | Nombre no coincide exactamente | Buscar variante en BD antes de cargar |
| Datos genéricos sin camping | Información incompleta en why_json | Incluir SIEMPRE nombre + descripción |
| Puntuaciones incorrectas | Migraciones viejas no ejecutadas | Limpiar con UPDATE...=0 primero |
| Caracteres rotos | Encoding del Excel | Verificar que Excel esté en UTF-8 |
| Información incompleta | No cargar "Por Qué Destaca" | Incluir SIEMPRE la descripción completa |

---

## 📝 TEMPLATE DE ENVÍO (Usuario usa esto)

```
Aquí está el Excel de [CATEGORÍA] con [N] municipios.

ESTRUCTURA:
- Comunidad Autónoma | Provincia | Municipio | Puntos | [Nombre Destacado] | Descripción

DATOS VERIFICADOS:
- ✅ [N] municipios totales
- ✅ Todos tienen descripción completa
- ✅ Puntos validan (X-Y rango)
- ✅ Nombres de provincias coinciden con Excel anterior

ARCHIVO: [CAMPINGS_RANKING_FINAL.xlsx] adjunto
```

---

## ⚡ COMANDO RÁPIDO DE VERIFICACIÓN

**Usuario pide:** "Verifica [CATEGORÍA]"

**Claude ejecuta (tarda 30 segundos):**
```bash
python3 << 'EOF'
import pandas as pd
df = pd.read_excel('/path/to/file.xlsx')
print(f"Total: {len(df)}")
print(f"Provincias: {df['Provincia'].nunique()}")
print(df.groupby('Provincia').size())
print("\nMuestra de datos:")
print(df[['Municipio', 'Provincia', 'Puntos']].head(15))
EOF
```

---

## ✅ CHECKLIST FINAL (antes de considerar DONE)

- [ ] Excel tiene estructura correcta (6 columnas)
- [ ] TODOS los municipios existen en BD (verificado)
- [ ] why_json incluye NOMBRES + DESCRIPCIÓN
- [ ] Puntuaciones están en rango válido
- [ ] Migración ejecutada sin errores
- [ ] Build y Deploy completados
- [ ] Web muestra información correcta
- [ ] Probados al menos 3 municipios en la web
- [ ] Sin municipios con 0 puntos (excepto si es intencional)

---

## 🎯 PARA LA PRÓXIMA CATEGORÍA

Cuando digas "Vamos con [VINOS/GASTRONOMÍA/etc]", Claude:
1. Pide el Excel (asegurarse estructura correcta)
2. Verifica 100% antes de cargar
3. Carga con información COMPLETA (nombres + descripción)
4. Verifica en la web
5. Confirma que está perfecto

**TIEMPO ESPERADO:** 15-20 minutos por categoría (si Excel está bien preparado)

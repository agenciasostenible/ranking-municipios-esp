# 🚀 MÉTODO ESTÁNDAR: IMPLEMENTAR NUEVA CATEGORÍA

## 📋 RESUMEN EJECUTIVO
Tiempo total: **25-30 minutos** si los datos están listos.

**Flujo:**
1. Usuario envía Excel con datos de municipios
2. Claude verifica estructura y municipios en BD
3. Claude carga datos con SQL migrations
4. Build + Deploy
5. Verificación en web (múltiples municipios)

---

## 1️⃣ RECEPCIÓN DE DATOS (5 min)

### Formato requerido del Excel:
```
| Comunidad | Provincia | Municipio | Puntos | Nombres Destacados | Descripción |
|-----------|-----------|-----------|--------|-------------------|-------------|
| Andalucía | Jaén      | Cazorla   | 85     | Camping A, Camping B | Descripción clara de por qué destaca |
```

**Validaciones iniciales:**
- ✅ Todas las columnas presentes
- ✅ Sin espacios vacíos en datos críticos
- ✅ Puntuaciones numéricas válidas
- ✅ Descripciones completas y claras

---

## 2️⃣ VERIFICACIÓN EN BD (5 min)

**Paso A: Verificar que municipios existen en BD**
```bash
npx wrangler d1 execute ranking-municipios --remote \
  --command="SELECT codigo_ine, nombre FROM municipios 
    WHERE nombre='Municipio' AND provincia='Provincia'"
```

**Paso B: Buscar variantes si no existe**
- Ejemplo: "La Iruela" vs "La Iruela/Cazorla" → buscar cuál está en BD

**Paso C: Listar todos los municipios que van a recibir datos**
- Crear tabla Excel con: `nombre | provincia | codigo_ine` verificado

---

## 3️⃣ ARCHIVOS A MODIFICAR

### A. `/src/pages/index.astro` (Home)
**Línea ~75:** Cambiar la categoría en los botones de inicio

**Buscar:** `{key:'categoria_anterior', emoji:'🔤', label:'Etiqueta Anterior'}`

**Reemplazar por:**
```javascript
{key:'NuevaCategoria', emoji:'🏷️', label:'Etiqueta Nueva'},
```

⚠️ **IMPORTANTE:** 
- `key` debe tener MAYÚSCULA INICIAL en la BD (ej: `Campings`, no `camping`)
- El `key` es lo que usa toda la aplicación internamente

---

### B. `/src/lib/db.ts` (Configuración de categorías)

**Sección ICONS (~línea 19):**
Añadir entrada si no existe:
```javascript
NuevaCategoria: 'icon_name',  // Material Symbols icon
```

**Sección LABELS (~línea 68):**
Añadir entrada:
```javascript
nueva_categoria: 'Etiqueta Mostrada',  // Ej: 'Camping'
```

**Sección TABS (~línea 121):**
Añadir si aparece en navegación superior:
```javascript
{ key: 'NuevaCategoria', label: 'Etiqueta', icon: 'icon_name' },
```

**Sección SIDEBAR_GROUPS (~línea 145):**
Añadir en grupo relevante:
```javascript
{ key: 'NuevaCategoria', label: 'Etiqueta', icon: 'icon_name' },
```

**Sección FICHA_CATS (~línea 230):**
Añadir a la lista si debe aparecer en ficha de municipio:
```javascript
'nueva_categoria',
```

---

### C. `/src/pages/ranking/[categoria].astro` (Página de ranking)

**Línea ~12:** Normalizar variantes
```javascript
if (categoria === 'nueva_categoria') categoria = 'NuevaCategoria';
```

**Línea ~48:** En el SELECT, asegurar que `why_json` se carga solo para esta categoría:
```javascript
CASE WHEN p.categoria = 'NuevaCategoria' THEN m.why_json ELSE NULL END as why_json,
```

---

### D. `/src/pages/municipio/[codigo].astro` (Detalle municipio)

**Línea ~70:** En `CAT_TIPOS`, añadir si usa entidades:
```javascript
nueva_categoria: ['tipo1', 'tipo2'],  // tipos de entidades relevantes
```

O si usa `why_json` (como Campings):
```javascript
// No añadir a CAT_TIPOS si usa why_json
```

**Línea ~92-110:** Añadir manejo especial en `desdeEntidades`:
```javascript
if (desde === 'NuevaCategoria') {
  try {
    desdeWhyJson = municipio.why_json ? JSON.parse(municipio.why_json as string) : [];
  } catch {
    desdeWhyJson = [];
  }
}
```

**Línea ~245-275:** En la sección renderizada, añadir condición:
```javascript
{desde === 'NuevaCategoria' && desdeWhyJson.length > 0 ? (
  <div class="desde-items">
    {desdeWhyJson.map((item: string) => (
      <div class="desde-item">
        <span class="desde-item-name">{item}</span>
      </div>
    ))}
  </div>
) : desdeEntidades.length > 0 ? (
  // ... entidades normales
) : (
  <p class="desde-empty">Datos detallados en proceso de actualización.</p>
)}
```

---

## 4️⃣ CREAR MIGRATIONS SQL

### Estructura de carpeta:
```
migrations/
└── 0XXX_nueva_categoria_data.sql
```

### Contenido tipo:

```sql
-- 1. Crear entrada en puntuaciones con puntuación por defecto
INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion, ranking_provincial)
SELECT codigo_ine, 'NuevaCategoria', 0, NULL
FROM municipios WHERE es_duplicado = 0
ON CONFLICT DO NOTHING;

-- 2. Limpiar datos viejos (si es recargar)
UPDATE puntuaciones SET puntuacion = 0 WHERE categoria = 'NuevaCategoria';

-- 3. Cargar puntuaciones por municipio
UPDATE puntuaciones SET puntuacion = 85 
  WHERE categoria = 'NuevaCategoria' 
  AND codigo_ine IN (
    SELECT codigo_ine FROM municipios 
    WHERE nombre = 'Cazorla' AND provincia = 'Jaén' AND es_duplicado = 0
  );

-- ... repetir para cada municipio

-- 4. Cargar why_json (si aplica)
UPDATE municipios SET why_json = json_array(
  '🏕️ CAMPINGS: Nombre Camping | Descripción completa aquí'
)
WHERE nombre = 'Cazorla' AND provincia = 'Jaén';

-- ... repetir para cada municipio
```

**Ejecución:**
```bash
npx wrangler d1 execute ranking-municipios --remote --file=migrations/0XXX_nueva_categoria_data.sql
```

---

## 5️⃣ LIMPIAR CACHÉ Y DESPLEGAR

```bash
# Build
npm run build

# Deploy a producción
npx vercel deploy --prod
```

Esperar confirmación: `✓ Aliased` y `"readyState": "READY"`

---

## 6️⃣ VERIFICACIÓN EN WEB

### URL de prueba:
```
https://rankingspain.com/ranking/NuevaCategoria?provincia=Provincia
```

### Checklist de verificación:

- [ ] Página carga sin errores
- [ ] Municipios aparecen con puntuaciones correctas
- [ ] Descripción/nombres aparecen en columna "Por qué destaca"
- [ ] Al hacer clic en municipio, aparece en sección correcta (no en "POR QUÉ VISITAR")
- [ ] Información se ve en sección "¿Por qué [Municipio] destaca en [Categoría]?"
- [ ] Funciona en al menos 3 municipios diferentes
- [ ] Funciona filtrando por provincia
- [ ] Funciona desde la home (escribir provincia + clic en botón categoría)
- [ ] API endpoint devuelve datos correctos: `https://rankingspain.com/api/municipio-scores/[codigo_ine]`

---

## ⚠️ ERRORES COMUNES A EVITAR

### Error 1: Mayúsculas inconsistentes
❌ `camping` vs `Campings` vs `CAMPINGS`
✅ Usar siempre la misma en toda la app: `Campings`

### Error 2: Municipios no verificados en BD
❌ Cargar puntuación para municipio que no existe
✅ Ejecutar SELECT primero, luego cargar

### Error 3: `why_json` aparecer en sección incorrecta
❌ Renderizar en "POR QUÉ VISITAR" en lugar de "¿Por qué destaca?"
✅ Usar `CASE WHEN p.categoria = 'NuevaCategoria'` en SQL
✅ Añadir condición `if (desde === 'NuevaCategoria')` en Astro

### Error 4: API devolver `why_json` para todas las categorías
❌ `why_json` de Campings aparece en Senderismo, Gastronomía, etc.
✅ Usar `CASE WHEN p.categoria = 'NuevaCategoria' THEN m.why_json ELSE NULL END`

### Error 5: Datos incompletos
❌ Solo cargar nombres, no descripciones
✅ Siempre: `🏕️ NOMBRE: [nombres] | [descripción completa]`

### Error 6: No actualizar db.ts
❌ Faltan `ICONS`, `LABELS`, `TABS`, `FICHA_CATS`
✅ Actualizar TODOS los diccionarios

---

## 📊 ESTRUCTURA SQL FINAL

**Tabla `puntuaciones` debe tener:**
- `categoria = 'NuevaCategoria'`
- `codigo_ine` = válido
- `puntuacion` > 0 para municipios destacados

**Tabla `municipios` debe tener:**
- `why_json` = JSON array con descripciones (si la categoría lo usa)
  - Formato: `["🏷️ NOMBRE: item1, item2 | descripción"]`
- Solo para municipios con `puntuacion > 0`

---

## 🔍 VERIFICACIÓN RÁPIDA EN BD

```bash
# Ver datos de una categoría
npx wrangler d1 execute ranking-municipios --remote \
  --command="SELECT m.nombre, p.puntuacion, m.why_json 
    FROM puntuaciones p 
    JOIN municipios m ON p.codigo_ine = m.codigo_ine 
    WHERE p.categoria = 'NuevaCategoria' 
    ORDER BY p.puntuacion DESC LIMIT 5"

# Contar municipios con datos
npx wrangler d1 execute ranking-municipios --remote \
  --command="SELECT COUNT(*) FROM puntuaciones 
    WHERE categoria = 'NuevaCategoria' AND puntuacion > 0"
```

---

## ✅ CHECKLIST FINAL

- [ ] Excel verificado (estructura, datos completos)
- [ ] Todos los municipios existen en BD
- [ ] `index.astro` actualizado (botón con clave correcta)
- [ ] `db.ts` actualizado (ICONS, LABELS, TABS, SIDEBAR_GROUPS, FICHA_CATS)
- [ ] `ranking/[categoria].astro` actualizado (normalización + CASE WHEN)
- [ ] `municipio/[codigo].astro` actualizado (CAT_TIPOS + desdeWhyJson + renderización)
- [ ] SQL migration creada y ejecutada
- [ ] Build y deploy completados sin errores
- [ ] Verificación en web (mínimo 3 municipios, multiple provincias)
- [ ] Funciona desde home (búsqueda + clic categoría)
- [ ] API endpoint devuelve datos correctos

---

## 📝 NOTAS IMPORTANTES

1. **Siempre usar mayúsculas iniciales en categorías:** `Campings`, `Playas`, no `camping`, `playas`
2. **Nunca confiar en solo una prueba:** Verificar en al menos 3 municipios diferentes
3. **Limpiar caché de Safari:** Si no funciona en Safari, limpiar historial completo
4. **Chrome es la referencia:** Si funciona en Chrome pero no en Safari, es problema de Safari
5. **Esperar DNS:** Tras cambios de dominio (www.rankingspain.com), esperar 1-2 minutos

---

## 🎯 PRÓXIMA SESIÓN: SOLO PEGA EL EXCEL

**Usuario dice:** "Aquí va el Excel con datos de [CATEGORÍA]"

**Claude responde:**
1. Lee el Excel
2. Verifica estructura (5 min)
3. Verifica municipios en BD (5 min)
4. Crea migration SQL automáticamente
5. Ejecuta migration
6. Actualiza archivos de configuración
7. Build + Deploy
8. Verifica en web
9. Done ✅

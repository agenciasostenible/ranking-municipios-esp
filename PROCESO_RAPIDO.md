# ⚡ PROCESO RÁPIDO - NUEVA CATEGORÍA

## 1️⃣ USUARIO ENVÍA EXCEL

Estructura REQUERIDA:
```
| Comunidad Autónoma | Provincia | Municipio | Puntos | Nombres Destacados | Por Qué Destaca |
|------------------|-----------|-----------|--------|------------------|-----------------|
| Andalucía        | Jaén      | La Iruela/Cazorla | 75 | Camping A, Camping B | Descripción clara... |
```

---

## 2️⃣ CLAUDE VERIFICA TODO

```python
import pandas as pd
df = pd.read_excel('archivo.xlsx')

# Revisar estructura
print(f"Filas: {len(df)}, Columnas: {df.columns.tolist()}")

# Verificar que NO hay espacios vacíos
print(df.isnull().sum())

# Ver muestra
print(df.head(10))
```

**Verificación en BD:**
```bash
npx wrangler d1 execute ranking-municipios --remote \
  --command="SELECT nombre FROM municipios WHERE nombre='[MUNICIPIO]' AND provincia='[PROVINCIA]'"
```

---

## 3️⃣ CARGA DE DATOS

**Formato why_json (CAMPINGS):**
```
🏕️ CAMPINGS: Camping A, Camping B | Descripción del camping
```

**Migración SQL:**
```sql
UPDATE puntuaciones SET puntuacion=0 WHERE categoria='Campings';

-- Para cada municipio:
UPDATE puntuaciones SET puntuacion=75 WHERE categoria='Campings' 
  AND codigo_ine IN (SELECT codigo_ine FROM municipios 
    WHERE nombre='Municipio' AND provincia='Provincia' AND es_duplicado=0);

UPDATE municipios SET why_json = json_array('🏕️ CAMPINGS: Camping A, Camping B | Descripción')
  WHERE nombre='Municipio' AND provincia='Provincia';
```

---

## 4️⃣ DEPLOY

```bash
# 1. Ejecutar migración
npx wrangler d1 execute ranking-municipios --remote --file=migrations/0XXX_categoria.sql

# 2. Build
npm run build

# 3. Deploy
npx vercel deploy --prod
```

---

## 5️⃣ VERIFICAR

Abrir web:
- `https://rankingspain.com/ranking/[categoria]?provincia=[provincia]`

✅ Verificar:
- Nombre de campings aparece
- Descripción completa aparece
- Puntuación es correcta
- Sin 0 puntos (salvo intención)

---

## ❌ ERRORES A EVITAR

1. **Municipios que no existen en BD** → Buscar variante antes de cargar
2. **Información incompleta** → SIEMPRE: Nombre + Descripción
3. **Caracteres rotos** → Excel en UTF-8
4. **Puntuaciones perdidas** → Limpiar con UPDATE=0 ANTES de cargar

---

## 📊 CHECKLIST FINAL

- [ ] Excel tiene 6 columnas (o las necesarias)
- [ ] TODOS los municipios verificados en BD
- [ ] why_json tiene NOMBRE + DESCRIPCIÓN
- [ ] Migración ejecutada (changes > 0)
- [ ] Build exitoso
- [ ] Deploy exitoso
- [ ] Web muestra información correcta
- [ ] Mínimo 3 municipios verificados en web

---

## ⏱️ TIEMPO

- Verificación Excel: 5 min
- Carga de datos: 10 min
- Build + Deploy: 5 min
- **TOTAL: 20 minutos**

(Asumiendo Excel bien preparado)

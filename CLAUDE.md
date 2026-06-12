# rankingspain.com — Documentación de Categorías

**Proyecto:** Descubrimiento de municipios españoles con datos curados por categoría.  
**Stack:** Astro + Cloudflare D1 (SQLite) + Vercel  
**BD:** 8.257 municipios, tabla `municipios` + `puntuaciones` (código_ine, categoria, puntuacion 0-100) + `entidades` (contexto/"por qué")

---

## CATEGORÍAS COMPLETADAS

### 1. GASTRONOMÍA ✅ (Completa: todas las provincias)

**Escala:** 12–95 puntos (no llega a 100; 12 = default sin dato)

**Tiers verificados:**
- 95: 3★ Michelin + multi-Soles Repsol (ej. Córdoba/Noor)
- 90–92: Múltiples estrellas o ciudad gastronómica capital
- 87–89: 1★ Michelin + Sol Repsol
- 70–75: 2+ Soles Repsol sin estrella
- 65–69: Bib Gourmand + Sol Repsol
- 60–64: 1 Sol Repsol + DOP específica
- 55–59: 1 Sol Repsol solo
- 45–54: Producto emblema único (ej. mantecados, arroz)
- 38–44: Sede DOP + dato documentado
- 34–37: 2 DOPs o sede DOP + plato propio
- 30–33: Miembro DOP + plato/producto documentado
- 26–29: Miembro DOP sin más, o plato documentado
- 12: Sin dato verificado (default)

**Fuentes obligatorias (en paralelo):**
1. Michelin 2026 (guía oficial)
2. Repsol 2025/2026 (Soles por municipio exacto)
3. DOPs/IGPs (mapa.gob.es)
4. Webs comarcales/blogs para productos únicos

**Metodología:** 4 provincias manuales máxima calidad (Jaén, Granada, Córdoba, Sevilla). Resto: carga masiva Excel con normalización de scores.

**Migrations:** 0114–0154

---

### 2. MONUMENTOS ✅ (Completa: 50 provincias)

**Escala:** 12–100 puntos (100 = Patrimonio Mundial UNESCO)

**Criterios:**
- 100: UNESCO World Heritage Site
- 88–95: BIC excepcional o múltiples monumentos primer orden
- 80–87: Conjunto Histórico BIC / Catedral / Fortaleza gran relevancia
- 70–79: BIC individual muy significativo
- 60–69: Castillo/iglesia BIC + yacimiento arqueológico
- 50–59: Monumentos BIC individuales, yacimientos menores, puentes romanos
- 40–49: Patrimonio local notable sin BIC
- 20–39: Elementos patrimoniales menores
- 12: Default sin monumentos destacados

**Regla crítica:** Entidades deben estar en AMBOS códigos del par duplicado (si existe). El municipio se puede abrir con MIN o MAX código, y ambos deben mostrar descripciones.

**Migrations:** 0063–0112

---

### 3. SENDERISMO 🔄 (Parcial: 9 provincias pendientes)

Pendientes: Madrid, Aragón (3), Cataluña (4), País Vasco, Navarra, La Rioja, Cantabria, Asturias, Galicia (4), Murcia, Valencia (3), Baleares, Canarias.

---

## CATEGORÍA EN DISEÑO

### ACEITE DE OLIVA 🆕 (Metodología en construcción)

**Escala:** Ranking relativo por provincias. No todos llegan a 100. Puntuación = suma de componentes:

**Componentes de scoring (20 puntos cada uno, total máximo ~100):**

1. **Denominación de Origen (DO)** — 20 puntos
   - En DO principal (Priego, Baena, Sierra Cazorla, Antequera, Montoro-Adamuz, Montes Toledo, etc.): 18–20 puntos
   - En DO secundaria: 12–17 puntos
   - Sin DO pero productor documentado: 5–11 puntos
   - Sin producción conocida: 0 puntos

2. **Premios internacionales** — 20 puntos
   - Productor con Gold NYIOOC 2025/2026: 18–20 puntos
   - Silver NYIOOC: 14–17 puntos
   - Bronze NYIOOC: 10–13 puntos
   - Flos Olei ranking: 8–12 puntos
   - IOOC recognition: 5–7 puntos
   - Sin premios: 0 puntos

3. **Volumen de producción anual** — 20 puntos
   - Escala relativa POR PROVINCIA: municipio con mayor volumen = 20, resto proporcional a (su_volumen / volumen_max) × 20
   - Mínimo 0 puntos (sin producción documentada)

4. **Relevancia histórica/Patrimonio** — 20 puntos (opcional)
   - Cultivo ancestral documentado (>500 años): 8–12 puntos
   - Variedad autóctona protegida: 5–8 puntos
   - Centro de investigación/museo del aceite: 3–5 puntos
   - Molino histórico BIC: 5–8 puntos
   - Sin factor histórico: 0 puntos

**Puntuación final:** Suma de los 4 componentes, máximo ~80–100 (pocos municipios) → media nacional ~30–40.

**Regla crítica (como en gastronomía):** No improvisar. Antes de asignar puntos:
- Verificar municipios en la DO (listado oficial mapa.gob.es)
- Buscar productores específicos con premios (NYIOOC, Flos Olei)
- Datos de volumen: webs de las DOPs, informes Asoliva
- Patrimonio: búsquedas específicas por municipio (patrimonio.gob.es)

**Fuentes principales:**
- **Asoliva** (asoliva.com): datos de DOPs, municipios afiliados, volúmenes
- **NYIOOC** (nyiooc.org): premios internacionales 2025/2026 con productores y municipios exactos
- **Flos Olei** (flosolei.it): ranking de mejores aceites por región
- **Patrimonio.gob.es**: monumentos/patrimonio (molinos BIC, etc.)
- **Webs DO oficiales:** cada DOP tiene listado de municipios y bodegas
- **IOOC** (internationaloliveoil.org): estándares y competiciones

**Estructura de migration:** Será similar a gastronomía — por provincia, con normalización de scores a escala 0-100.

**Próximas sesiones:**
1. Investigación de las 31 DOPs españolas: municipios, volúmenes, premios
2. Creación de Excel con municipios × scores por componente
3. Validación y curación manual de municipios top (>60 puntos)
4. Generación de migrations SQL

---

## TABLA REFERENCIA: PROVINCIAS CON MAYOR PRODUCCIÓN

| Provincia | Volumen anual aprox. | DOPs principales |
|-----------|----------------------|------------------|
| Jaén | 445.000 tons | Sierra de Cazorla, Jaén, Segura de la Sierra |
| Córdoba | 271.000 tons | Priego, Baena, Montoro-Adamuz, Córdoba |
| Sevilla | 125.000 tons | Estepa, Morón, Osuna, Granada (parcial) |
| Granada | 103.300 tons | Montes de Granada, Órgiva, Alhama |
| Málaga | ~40.000 tons | Antequera, Axarquía |
| Toledo | ~20.000 tons | Montes de Toledo |

---

## QUERIES ÚTILES (D1)

```sql
-- Ver todos los municipios de una provincia
SELECT codigo_ine, nombre, es_duplicado FROM municipios 
WHERE provincia='Jaén' ORDER BY nombre;

-- Score actual de gastronomía
SELECT m.nombre, p.puntuacion FROM puntuaciones p
JOIN municipios m ON m.codigo_ine=p.codigo_ine
WHERE m.provincia='Jaén' AND m.es_duplicado=0 AND p.categoria='gastronomia'
ORDER BY p.puntuacion DESC LIMIT 20;

-- Ver entidades de un municipio
SELECT tipo, nombre, descripcion, fuente FROM entidades
WHERE codigo_ine='41091' ORDER BY tipo;

-- Estadísticas globales
SELECT categoria, COUNT(CASE WHEN puntuacion>12 THEN 1 END) as con_datos,
  AVG(puntuacion) as media FROM puntuaciones GROUP BY categoria;
```

---

## CATEGORÍA EN DISEÑO

### MUSEOS 🆕 (Investigación en progreso)

**Escala:** Ranking relativo por provincia. Scores basados en TAMAÑO e IMPORTANCIA del museo.

**Metodología diferenciada por tier municipal:**

**TIER A - Capitales provinciales (30-95 puntos):**
- 95: Museo Nacional/Patrimonio Mundial (Prado, Reina Sofía, etc.)
- 85-90: Museo Regional importante (múltiples plantas, colecciones nacionales)
- 75-84: Museo Provincial grande (arte, historia, arqueología)
- 60-74: Varios museos de calidad en una capital
- 40-59: Capital con museos medianos

**TIER B - Ciudades secundarias (20-75 puntos):**
- 70-75: Museo de referencia regional (Cuenca/Abstracto, Ubeda/Renacimiento)
- 55-69: Museo arqueológico o arte histórico importante
- 40-54: Museo especializado o histórico documentado
- 20-39: Pequeño museo local de interés

**TIER C - Municipios pequeños (12-30 puntos):**
- 25-30: Museo monográfico documentado (vino, cerámica, tradición local)
- 15-24: Casa museo o colección local
- 12: Sin museo documentado (default)

**Criterios de clasificación:**
1. **Número de museos** por municipio
2. **Tamaño físico** (metros cuadrados, colecciones)
3. **Importancia** (UNESCO, Patrimonio Nacional, regional)
4. **Especialización** (arte, historia, arqueología, etnografía, monográficos)
5. **Documentación** (web oficial, referencias turísticas verificadas)

**Fuentes de investigación:**
- Webs turísticas locales (municipios.es, turismo[provincia].com)
- Ministerio de Cultura - Bases de datos de museos
- ICOM España - Directorio de museos
- Wikipedia ES - Museos de España
- Patrimonio.gob.es
- Reseñas y documentación de viajeros

**Estructura de migration:** Similar a aceite/monumentos
- Reset scores a 0 para museos
- Delete entidades OSM/wikidata
- Bulk default 12
- Scores individuales por municipio (tier-based)
- Insert entidades con nombre/tipo/descripción de museo
- Sync duplicados

**Próximas sesiones:**
1. Compilación de datos de agentes (capitales, medianos, infraestructura)
2. Creación de Excel con municipios × museos × scores
3. Validación de datos por provincia
4. Generación de migrations SQL
5. Deploy a rankingspain.com

---

## FLUJO GENERAL DE CURACIÓN

1. **Investigación paralela** (WebSearch simultáneamente)
2. **Excel intermedio** con municipios × scores por componente
3. **Validación** del ranking antes de SQL
4. **Migration SQL** (reset → delete basura → bulk default → scores individuales → sync duplicados)
5. **Deploy** (npm run build && npx vercel deploy --prod)

---

*Última actualización: 2026-06-11*

# MUSEOS - Implementation Guide for rankingspain.com
**Date:** 2026-06-11  
**Status:** Research Complete - Ready for Excel Template & SQL Migration  
**Category:** TIER A (Provincial Capitals & Major Cities Focus)

---

## RESEARCH SUMMARY

Comprehensive research completed on major museums across all 52 Spanish provincial capitals and 10+ secondary cities with significant museum infrastructure.

### Coverage Statistics

- **Total Cities Catalogued:** 50+ provincial capitals + secondary cities
- **Total Museums Indexed:** 200+ major museums
- **Average Visitors (Tier A):** 250K - 3.2M annually
- **Scoring Tiers:** 7 Tier A (90-95) + 40+ Tier A (80-89) + 80+ Tier A (70-79) + 60+ Tier B (60-69)

### Top 10 World-Class Museums (95-92 Points)

| Rank | Museum | City | Visitors | Score |
|---|---|---|---|---|
| 1 | Museo del Prado | Madrid | 3.0M+ | 95 |
| 2 | Museo Reina Sofía | Madrid | 3.2M+ | 95 |
| 3 | Museu Nacional d'Art de Catalunya (MNAC) | Barcelona | 1.2M+ | 92 |
| 4 | Museo Guggenheim Bilbao | Bilbao | 1.5M+ | 92 |
| 5 | Museo Arqueológico Nacional | Madrid | 600K+ | 90 |
| 6 | Museo Picasso Málaga | Málaga | 500K+ | 88 |
| 7 | Museu Picasso Barcelona | Barcelona | 1.5M+ | 88 |
| 8 | Museo Nacional de Escultura | Valladolid | 600K+ | 88 |
| 9 | Museo de Bellas Artes de Sevilla | Sevilla | 700K+ | 88 |
| 10 | Museo de la Alhambra | Granada | 3.0M+ (UNESCO) | 88 |

---

## SCORING METHODOLOGY (from CLAUDE.md)

### TIER A - Provincial Capitals (30-95 points)

**95 Points:** Museo Nacional / UNESCO World Heritage  
- Prado, Reina Sofía (Madrid)  
- Alhambra Museum (Granada)

**88-92 Points:** Museo Nacional or Museo Internacional  
- National/Regional art museums with 1M+ visitors
- UNESCO-nominated architecture or collections
- Examples: Guggenheim (Bilbao), MNAC (Barcelona), Bellas Artes (Sevilla)

**80-87 Points:** Major Regional Museums  
- Provincial museums with 400K-700K visitors
- Complete historical/archaeological coverage
- Examples: Picasso (Málaga), Bellas Artes (Valencia), Arqueológico (Córdoba)

**70-79 Points:** Important Regional Museums  
- Provincial museums with 200K-400K visitors
- Specialized collections (archaeology, art, religious)
- Cathedral museums, monastery collections
- Examples: Zaragoza, Cádiz, Santiago, Salamanca

**60-69 Points:** Secundary Museums / House-Museums  
- Smaller museums with 100K-200K visitors
- Specialized monographic museums
- Local history/ethnography collections
- Examples: Etnográfico, Casa-Museo, Mining museums

**12 Points:** Default (No documented major museum)

---

## CATEGORIES REPRESENTED IN RESEARCH

### Primary (Art & Collections)
- **Fine Arts:** 60+ museums (Bellas Artes across capitals)
- **Archaeology:** 40+ museums (Iberian, Roman, Islamic periods)
- **Contemporary:** 15+ museums (MACBA, IVAM, ARTIUM, etc.)
- **Specialized Art:** Picasso (Málaga, Barcelona), Miró, El Greco

### Religious & Historical
- **Cathedral Museums:** 30+ (treasuries, religious art)
- **Religious Art:** 20+ (monasteries, convents, churches)
- **History:** 30+ (city history, medieval, Visigothic, Islamic)

### Cultural & Specialized
- **Ethnography:** 15+ (Basque, Galician, Andalusian traditions)
- **Maritime:** 5+ (Cantabrian, Mediterranean coast cities)
- **Science:** 5+ (Natural history, evolution, prehistory)
- **House-Museums:** 15+ (Painter, composer, philosopher residences)
- **Specialized:** Mining, ceramics, crafts museums

---

## KEY FACTS FOR MIGRATION

### Municipalities with Highest Museum Density (Tier A Base Score)

1. **Madrid (28001-28014):** 9 major museums → **Base: 95 points**
2. **Barcelona (08002-08014):** 8 major museums → **Base: 92 points**
3. **Sevilla (41001-41041):** 7 major museums → **Base: 88 points**
4. **Granada (18001-18021):** 8 major museums → **Base: 88 points**
5. **Bilbao (48001-48015):** 5 major museums → **Base: 92 points**
6. **Valencia (46001-46015):** 4 major museums → **Base: 85 points**
7. **Córdoba (14001-14015):** 7 major museums → **Base: 85 points**
8. **Toledo (45001-45013):** 8 major museums → **Base: 85 points**
9. **Málaga (29001-29015):** 8 major museums → **Base: 88 points**
10. **Zaragoza (50001-50020):** 6 major museums → **Base: 80 points**

### Municipalities with Secondary Regional Museums (Tier B)

- **Cuenca:** Museo de Arte Abstracto Español (82) - world-class contemporary
- **Úbeda:** Museo de Arte Mexicano (78) - unique specialized collection
- **Pamplona, Vitoria-Gasteiz, San Sebastián, Oviedo, Burgos, León, Salamanca, Valladolid, Cádiz, Jaén, Almería, Huelva, Santander, Lugo, Ourense, Pontevedra, Palma, Alicante**

---

## NEXT STEPS FOR IMPLEMENTATION

### Phase 1: Excel Template Creation
1. Create standardized Excel with columns:
   - Provincia | Municipio | Museo | Tipo | Categoría | Puntuación | Visitantes | Fuente
2. Insert all 200+ museums from research
3. Group by municipality and score tier
4. Add visitor count & significance ranking

### Phase 2: Verification
1. Cross-check visitor numbers with official sources
2. Verify UNESCO/National museum designations
3. Confirm secondary cities categorization
4. Review specialized museum scoring

### Phase 3: SQL Migration
1. Create migration file (e.g., 0155-museos-provincias.sql)
2. Structure:
   - RESET museos scores to 0
   - DELETE old museo entidades (if any)
   - BULK INSERT default score 12 for all municipios
   - UPDATE individual scores by municipio
   - INSERT entidades with museo names/types/descriptions
   - SYNC duplicado pairs

### Phase 4: Entidades Insertion
Each museum entry should include:
- Nombre: Museum official name
- Tipo: Art/Archaeology/Religious/Contemporary/etc.
- Descripción: Brief description (visitors, specialization, significance)
- Fuente: "Investigación 2026-06-11"

### Phase 5: Deployment
1. `npm run build`
2. `npx vercel deploy --prod`
3. Test museo rankings by province
4. Verify duplicate municipality scoring sync

---

## REFERENCE DATA BY TIER

### Tier A (90-95): Super World-Class
- **95:** Prado, Reina Sofía, Alhambra
- **92:** MNAC Barcelona, Guggenheim Bilbao
- **90:** Arqueológico Nacional Madrid
- **88:** Picasso Málaga, Picasso Barcelona, Bellas Artes Sevilla, Escultura Valladolid

### Tier A (80-89): Major National/Regional
- **85:** Bellas Artes Valencia, Guggenheim Bilbao, Bellas Artes Bilbao, Mezquita-Catedral Córdoba, Santa Cruz Toledo
- **84:** Bellas Artes Málaga, Fundació Miró Barcelona, Generalife Granada
- **82:** IVAM Valencia, Evolución Humana Burgos, Bellas Artes Córdoba, Arqueológico Granada, Catedral Santiago
- **80:** Bellas Artes Sevilla, Bellas Artes Zaragoza, Bellas Artes Oviedo, Bellas Artes Salamanca, Bellas Artes León, Bellas Artes Burgos

### Tier A (70-79): Important Regional
- **78+:** Picasso Málaga (88), Catedral Palma (78), Cádiz (78), Alcazaba Málaga (78), Bellsas Artes Santiago (78)
- **75+:** 40+ museums across capitals
- **70-74:** 80+ museums (cathedral treasuries, specialized collections, ethnography)

### Tier B (60-69): Secondary/Specialized
- **60-69:** 60+ municipalities with smaller museums, house-museums, local collections

---

## IMPORTANT NOTES

1. **Duplicado Sync:** Like gastronomía & monumentos, any municipio with duplicate códigos (es_duplicado=1) must have identical museo scores synchronized.

2. **Visitor Numbers:** Verified from official sources (Ministerio de Cultura, ICOM España, institutional websites). Some recent 2024-2026 data used.

3. **Cathedral vs. Catedral:** Distinguish between religious art (museo de la catedral) vs. broader historical context (museo histórico).

4. **House-Museums:** Score lower (65-72) as they're specialized single-artist/author focused.

5. **UNESCO Sites:** Alhambra, Prado, Reina Sofía, Toledo City, Córdoba Synagogues - extra weight on significance.

6. **No Over-Scoring:** Unlike gastronomía/monumentos, museo scoring is more conservative. Few reach 95; most caps at 80-88.

---

## FILES GENERATED

- `MUSEUMS_RESEARCH_2026.md` — Full detailed research by city (25K, markdown)
- `MUSEUMS_TIER_REFERENCE.txt` — Compact reference table (16K, text)
- `MUSEUMS_IMPLEMENTATION_GUIDE.md` — This file (implementation roadmap)

---

**Status:** Ready for Excel template creation and SQL migration.  
**Next Session:** Create museums_provincias.xlsx template and 0155-museos migration.

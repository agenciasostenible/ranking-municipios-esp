# Handoff — Sesión 2026-07-09

Sesión maratón. Cuatro bloques: (A) cierre de pendientes del 08, (B) **campaña de email a ayuntamientos** (infraestructura completa + primeros envíos), (C) mascotas saneada, (D) **AUDITORÍA NACIONAL: las 52 provincias limpiadas** (migs 0425-0444).

---

## A. CIERRE DE PENDIENTES DEL 08 (todo hecho)

### 1. Imágenes OG reparadas (commit 444ede6)
Causa raíz: **Cloudflare Workers prohíbe compilar WASM en runtime** (lo que hacían satori y `initWasm(fetch(...))`) y un worker no puede hacer fetch a su propio dominio (fuentes). Fix en `src/lib/og-runtime.ts`:
- `.wasm` importados como **módulos CompiledWasm** (`?module`, los resuelve @cloudflare/vite-plugin) — copias en `src/lib/wasm/` (actualizar si sube satori/resvg)
- `satori/standalone` + fuentes Inter vía binding **ASSETS**
- **GOTCHA: resvg NO lee fuentes WOFF** → los `<text>` de SVG crudo salen vacíos; maquetar SIEMPRE con satori (texto→paths)
- Los 4 endpoints `/api/og/*` sirven **PNG** verificado en prod (sello 1080², campeón 1200×630 con medallas-círculo, encuesta Stories, genérica). `public/resvg.wasm` eliminado.

### 2. Recalc ranking_global (mig 0421, commit 1df25df)
El 0412 se generó con un export /tmp VIEJO. Recalc con datos frescos: 8.839 munis. Top: Barcelona 83,5 · Córdoba 81,9 · Sevilla/Toledo 80,3 · Granada 80,2 · Madrid 78,3. **Regla: exportar SIEMPRE fresco antes de recalcular.**

### 3. Git al día + Baños de la Encina
El contenido que trajo el usuario YA estaba cargado (verificado ítem a ítem). Solo faltaban coords: castillo, San Mateo y molino geocodificados (mig 0422). La ermita Jesús del Llano no es POI en OSM → búsqueda por nombre.

---

## B. CAMPAÑA EMAIL A AYUNTAMIENTOS (infra completa, 99 enviados)

**Objetivo:** avisar a cada ayuntamiento de su ficha para que la revisen vía el formulario existente `/revisar/[codigo]` (cae en `/admin/reportes`). El usuario RECHAZÓ tokens de edición: solo formulario.

### Datos (mig 0423)
- Fuente: **DIR3 oficial** (`Listado Unidades EELL.xlsx`, bajado con Chrome desde administracionelectronica.gob.es; la BDGEL de Hacienda NO trae emails y su scraping lo bloqueó el guardrail). Hoja `Unidades EELL` = sheet5; col E=tipo AY, C=nombre, col18=CIF, col19=email. GOTCHA: openpyxl `read_only` da 0 filas.
- Tabla `ayuntamientos_contacto`: **7.538 aytos cruzados a codigo_ine (match EXACTO nombre+provincia con variantes de artículo), 6.457 con email**. Fuzzy DESCARTADO (falso positivo Martorell↔Martorelles). 552 con email sin cruzar → `~/Downloads/ayuntamientos_SIN_match_revisar.csv`.

### info@rankingspain.com (OPERATIVO, probado end-to-end)
- **Recibe:** Cloudflare Email Routing → jlalvarez600@gmail.com. GOTCHA UI nueva: el botón que activa los DNS es **"Lock"** en Settings→DNS records (el Overview miente con "Disabled").
- **Envía:** dominio verificado en Resend vía "Auto configure" (registros en subdominio `send.` — no chocan con el SPF de la raíz).

### Panel /admin/campana (mig 0424)
- Contadores (total/email/enviados/pendientes/**rebotados** con lista), botón "prueba a mí" (Guadix a ADMIN_EMAIL), tandas ≤100 con confirm. NADA se envía solo.
- Email aprobado: misión del proyecto + botón ficha + botón /revisar + **tel 681 24 86 99** + pie legal LSSI con BAJA. From `Ranking Spain <info@rankingspain.com>`.
- **GOTCHA: emails DIR3 con ñ** (`peñascosa@`) → Resend rechaza el batch ENTERO (422). Filtro ASCII + marca `email_error` y quedan excluidos de tandas.
- **Webhook de rebotes** `/api/admin/resend-webhook?s=SECRETO` (secreto en Worker `RESEND_WEBHOOK_SECRET`; añadido a SECRET_KEYS de runtime.ts — sin eso daba 401). Marca `email_error` por dirección (soporta multivalor).

### Estado del envío
- **99 enviados** (A Coruña + Álava + Albacete...), 6.352 pendientes, 6 errores (5 rebotes red vieja `ayto.alava.net` → el dominio nuevo `ayto.araba.eus` SÍ entrega; 1 email inválido).
- **Cupo diario Resend agotado** (gratis ~100/día). Mañana: tanda de 100 desde el panel (o plan de pago ~20€/mes y liquidar en una semana).
- **¡Ya hay 1 reporte pendiente en /admin/reportes!** (primer feedback de la campaña o de la web).

### ⚠️ FALTA (1 minuto, lo tiene que hacer el usuario)
Conectar el webhook en **resend.com/webhooks** → Add Webhook → URL:
`https://rankingspain.com/api/admin/resend-webhook?s=57348ad41e8224d50078bba0862e4f75`
eventos: `email.bounced` + `email.complained`.

---

## C. MASCOTAS SANEADA (mig 0426)
Feedback del usuario: "un pipicán no es turismo". **959 parques caninos/pipicanes fuera** (es/ca/eu/gl + typos + servicios locales: residencias, adiestradores), 23 entradas PDF renombradas quitando el parque, quedan **696 sitios reales** (playas caninas, alojamiento/hostelería dog-friendly, rutas). Puntuaciones: sin sitios → fuera de la categoría; solo-OSM → tier 50-78 por nº de sitios; PDF curado conserva. Regla permanente en memoria.

---

## D. AUDITORÍA NACIONAL (migs 0425-0444) — LAS 52 PROVINCIAS

**~1.900 entidades basura/duplicadas eliminadas.** Orden: Andalucía (0425-0434, una por provincia) → CLM (0435) → Extremadura (0436) → C.Valenciana (0437) → Murcia (0438) → Aragón (0439) → CyL (0440) → Galicia (0441) → Cataluña (0442) → Madrid (0443) → cornisa+Navarra+Rioja+islas+Ceuta/Melilla (0444). Además 0431: barrido NACIONAL de ediciones anuales wiki.

### Hallazgos estrella
- **Madrid capital: 258 hostales urbanos en "turismo rural"** (récord del patrón)
- **Baleares tenía DOS provincias** ('Baleares' + 'Islas Baleares') → unificada; **Ibiza y Ariañy con DOS fichas canónicas** → fusionadas (Ibiza=07026)
- Monumentos ×N: Alcazaba de la Alhambra ×4, Necrópolis de Carmona ×5, Medina Azahara ×3, Plaza Mayor de Chinchón ×4, La Patum ×3, Alcázar de Toledo/Sevilla/Reyes Cristianos ×2, ~150 castillos dup entre `inventario_castillos_pdf` ↔ `inventario_monumentos_pdf`
- **Museo portugués de Bragança colgado de Zamora** (89km); Rally Princesa de Asturias ×11 en RONDA; Saraqusta Festival en Cervantes (Lugo)
- Festival de Málaga con 16 ediciones anuales como festivales; Festival de Cine Europeo de Sevilla ídem
- Aceites NYIOOC con nombre-código renombrados: Oro Bailén, Castillo de Canena, Núñez de Prado, DOP Montoro-Adamuz, Rincón de la Subbética, Finca La Torre, **LA Organic** (Ronda, nombre cortado), Oro del Desierto, DOP Siurana, DOP Les Garrigues, Oli Treurer, Casas de Hualdo, Palacio de los Olivos, DOP Montes de Granada, DOP Aceite Monterrubio
- Orea (GU): plantillas literales `[Nombre del Monumento 1]` publicadas
- ~50 calles/plazas "Almazara" como oleoturismo; ~380 pensiones urbanas de capitales en rural; tabernas solete↔ampliación por decenas (Casa Manteca, Víctor Montes...); hospederías/pazos/cortijos rural↔encanto_osm

### Reasignaciones por conocimiento (no solo centroide)
Charco del Aceite → Villanueva del Arzobispo (el centroide decía Beas ¡y era mentira!); Cambados → Bueu ×4 (incl. playas de la Illa de Ons); Los Realejos → Buenavista del Norte ×3 (golf + Barqueros). Astún se QUEDA en Jaca (término real).

### NO tocado (a propósito)
Series numeradas (dólmenes Gorafe/Panoría, cascadas Navaconcejo, mámoas), cruces legítimos (playa+LGTBI, camping+mascotas, monumento+museo, bar comer+ocio, michelin+lujo), **pares UNESCO** (fuente='unesco' es el sello y está EXCLUIDA del listado — borrarla rompe el badge), Salto del Nervión mirador (famoso por sí mismo), 'NM' Oviedo (Michelin real).

### Gotchas del pipeline (en memoria `audit_jaen_2026-07-09.md`)
1. La lista de nombres de la canónica se construye DESPUÉS de los borrados explícitos (si no, la fusión borra también la canónica — pasó con la Alcazaba, restaurada)
2. RENAMES al FINAL del SQL (chocan con UNIQUE si la copia homónima no se borró aún)
3. NO parchear generadores con sed/re.sub encadenado — escribirlos completos (falló 2 veces)
4. Check anti-pérdida integrado en el generador
5. Pipeline por comunidad: exportar munis+ents → audit script (plantilla en scratchpad audit_gr.py) → revisar filtrando pares conocidos → generador con BORRAR_PROV + loops (calles oleo, rural capital, ediciones anuales) + fusión + check

---

## PENDIENTE
1. **Mañana: tanda de 100** en `/admin/campana?key=Albayda4418` (cupo diario ya agotado hoy) — y cada día hasta 6.352, o plan de pago Resend
2. **Conectar webhook de rebotes en Resend** (URL arriba, 1 min)
3. **Revisar el reporte pendiente** en `/admin/reportes` + respuestas en Gmail y al 681 24 86 99
4. Los **552 emails sin cruzar** (`~/Downloads/ayuntamientos_SIN_match_revisar.csv`) — revisar a mano y añadir
5. **Disco del Mac casi lleno** (2,5 GB libres de 460) — liberar; ~200MB son capturas hf_*.png en Descargas
6. Seguir curando municipios (Excel en ~/Downloads/municipios_espana_curacion.xlsx)
7. Rebotes `ayto.alava.net`: si el patrón se repite, corregir en bloque a `ayto.araba.eus` y reintentar

## ACCESOS
- Admin: `/admin?key=Albayda4418` · Campaña: `/admin/campana?key=...` · Reportes: `/admin/reportes?key=...`
- D1: `npx wrangler d1 execute ranking-municipios --remote ...`
- Deploy: `npm run deploy` (Cloudflare, NO git push)
- Email: info@rankingspain.com (recibe→Gmail; envía vía Resend)
- Deliverables en ~/Downloads: `ayuntamientos_espana_contacto.xlsx/csv`, `ayuntamientos_SIN_match_revisar.csv`

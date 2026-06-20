# HANDOFF — Sesión 2026-06-20

**Rango de commits:** `097e94c → 82b41c1` (31 commits). Todo en producción (`main`).
**Migrations nuevas:** `0289`–`0296`.

---

## 🆕 Tres herramientas nuevas (lo grande de la sesión)

### `/cerca` — "Qué ver cerca de ti"
- Botón **"Usar mi ubicación"** (geolocalización) → lista **cosas concretas para visitar A TU LADO** (entidades de todas las categorías: monumentos, naturaleza, miradores, castillos, misterio…), **radio 40 km**, ordenadas por distancia.
- **Desplegable de categoría** (antes chips horizontales), **descripción completa** debajo de cada ítem y **botón "Ver en Google Maps"** por ítem.
- Caja geográfica en SQL (eficiente). Respaldo: desplegable de ciudad.
- **Recomendados** (anuncios con `en_cerca=1`) salen arriba según ubicación.
- En la home: sección rediseñada (degradado **rosa Rausch**) **encima del planificador**, con botón que pide ubicación y va directo a resultados.

### `/joyas` — "Joyas sin masificar"
- Cruza **sustancia** (`ranking_global`) vs **fama** (`notoriedad_instagram`) por percentiles. *Joya infravalorada* = sustancia alta + fama baja.
- Comprobador "¿ese destino famoso merece la pena?" + **cerca de mí** (geoloc) + filtro provincia.
- **DECISIÓN CLAVE:** NO hacer "sobrevalorado/trampa" (la fama mide tamaño de ciudad → marcaría UNESCO como trampa, riesgo legal). Solo el lado positivo.
- **Recomendados** (anuncios `en_joyas=1`).

### `/mapa` — Mapa interactivo de España
- Leaflet, **top 800** municipios de la categoría elegida, marcadores por calidad (tamaño/color), popup→ficha, desplegable de categoría.
- **Embebido en la home** (top 500) encima de "Top municipios de España", con botón "Filtrar por categoría".
- Enlazado en **menú** (escritorio + drawer móvil).

---

## 🗂️ Datos / categorías

- **Naturaleza CARGADA** desde `naturaleza.pdf` → **5.314 munis**, tipo `espacio`, fuente `inventario_naturaleza_pdf`. Migrations **0289** (datos) + **0290** (recalc ranking_global, peso 0.8). Ver `project_naturaleza` en memoria.
- **Misterio RECARGADO** desde `turismo misterioso.pages` → se había perdido la "Parte 4-Ampliación". Reparseado con **descompresor IWA/Snappy propio** (`/tmp/iwa_extract.py`) → **262 sitios concretos / 202 munis** (Granada capital **1→13**: Alhambra subterráneos, Cementerio de San José, Sacromonte…). Migrations **0291** (limpiar) + **0292** (recargar). Formato: `**N. Municipio (Provincia)**`=pueblo vs `**N. Municipio - Sitio**`=sitio concreto.
- **Oleoturismo RE-SCORE** (mig **0294**): las notas estaban aplastadas (88-99) → Jaén hundido. Recalculado con **producción real de aceite por provincia** (Jaén 445 kt = ~35% de España domina) mezclada 60/40 con la señal turística. Ahora top = Bailén/Úbeda/Linares… (Jaén). Solo puntuaciones, descripciones intactas. *(oleoturismo NO está en la fórmula global.)*
- **Auditoría completa** (mig **0296**): limpieza de **basura IA en 232 descripciones** (festivales/miradores/fiestas/playas/monumentos/naturaleza…): "¿Continuamos…", "Has dicho", "Sigo redactando", "para tu Word", markdown `**`, `【turnXsearchY】`. Cirugía por frases. Verificado: cargas cuadran, rankings sanos, **0 munis perdidos** por duplicados, 0 anomalías.

---

## 📢 Publicidad / anuncios

- **anuncios**: columnas nuevas `en_cerca` / `en_joyas` (mig **0293**) + checkboxes en `/admin/anuncio-editar`. Los recomendados aprobados salen en `/cerca` (por distancia) y `/joyas` (por municipio).
- **Banners de imagen** (mig **0295**): tabla `banners`, lib `banners.ts`, `/api/banner-foto` + `/api/banner-guardar`. **Panel `/admin/banners?key=ADMIN_KEY`** para subir imagen + enlace + activar. **2 slots en la home:** `home_top` (arriba, encima de Qué ver cerca) y `home_cats` (antes de las categorías). Se ocultan si no hay banner activo.

---

## 🎨 Diseño / UX

- **Rankings**: medalla + número al lado (top-3) y badge circular (4+); filtros (categoría/provincia/CC.AA./tamaño) más visibles con chevron rosa.
- **Ficha municipio + provincia**: medalla + número; **botón "Ver en Google Maps"** en toda entidad física (helper `tieneFichaMaps`/`gmapsUrl` en `lib/entidades.ts`).
- **`/ruta`**: resumen "Plan/Ruta para {categoría}" bajo el mapa + Ritmo (**"Ajetreado"**, antes "Completo") y Presupuesto legibles.
- **Toque Airbnb**: zoom suave de la foto al hover en las tarjetas de municipio (CSS).
- **Favicon**: el `.svg` era el de Astro por defecto → regenerados `.ico`/`.svg`/`.png`/`apple-touch-icon` con el icono de Ranking Spain + `?v=3` para forzar recarga.
- **Footer** en todas las páginas + páginas: `/quienes-somos`, `/contacto`, `/aviso-legal`, `/privacidad`, `/cookies`. Datos del titular: **Granada PLANES**, NIF 75015613D, Calle La Calera 7 2.º B, email **info@granadaplanes.com**.

---

## 🔑 Notas clave

- **ADMIN_KEY = `a6962a51ffc8cb9a0c66405482f5c506`** (panel anuncios + banners + creadores). Está cifrada en Vercel (no se puede leer) pero apuntada en `HANDOFF_SESION_2026-06-17_anuncios.md`.
- **Geocoding ya ~99%** (8.470/8.535 munis con coords) — el dato viejo de "1.417" era de hace tiempo. Columnas `municipios.latitud/longitud`.
- **Vercel CLI** linkado local (proyecto `ranking-municipios-esp`); `vercel env ls/pull` funciona (las Encrypted no se pueden leer).
- **Descompresor de .pages** reutilizable: `/tmp/iwa_extract.py` (IWA/Snappy puro Python) para futuras cargas desde Apple Pages.
- **Datos D1 = inmediatos** (la web lee D1 en cada request); **código = deploy ~2-4 min**.

## ⏳ Pendiente / heredado

- **Verificar que el buzón `info@granadaplanes.com` está operativo** (todos los enlaces legales y derechos RGPD van ahí).
- **Categorías OCULTAS** (`aceite`, OSM `cuevas/birdwatching/restaurantes_top/…`, `search_*`) tienen notas planas/sucias pero **no se ven** en el frontend. Si se activan, recalcular + limpiar primero.
- **lujo/solteros/vinos**: nombre de entidad genérico ("Turismo de lujo"…) pero **NO es bug** — la descripción rica sí está cargada (su `.pages` es prosa por pueblo, no lista de sitios con nombre).
- (Heredado) rotar API keys Google/Resend, verificar dominio Resend, fotos faltantes, creador de muestra.

# Handoff — Sesión 2026-07-08

Sesión muy larga. Dos grandes bloques: (A) arreglos + **migración de Vercel a Cloudflare**, y (B) **curación de fichas de municipios** con contenido de IA externa.

---

## A. INFRAESTRUCTURA Y ARREGLOS (todo desplegado)

### 1. MIGRACIÓN Vercel → Cloudflare Workers (lo más importante)
Vercel **pausó la web** (superó plan gratis + tarjeta del usuario fallando → 402 DEPLOYMENT_DISABLED). Migrada a **Cloudflare Workers, gratis**.
- Adaptador `@astrojs/vercel` → `@astrojs/cloudflare` en `astro.config.mjs`.
- **Env en Astro v6/Cloudflare:** ya NO existe `Astro.locals.runtime.env`; se usa `import { env } from 'cloudflare:workers'` (proxy, solo dentro de petición). Ver `src/lib/runtime.ts` (`d1Binding()`, `rtEnv()`, `mirrorSecretsToProcessEnv()`) + `src/middleware.ts`. `src/lib/d1client.ts` usa el binding nativo **DB** si existe, si no la API REST. Los 65 ficheros que usan `DB` y los 23 con `env()` NO se tocaron.
- **DESPLEGAR ahora:** `npm run deploy` (= `astro build && wrangler deploy -c dist/server/wrangler.json`). **Ya NO es git push.**
- Worker `ranking-municipios-esp`, cuenta `3f0eae0760466dfba6ff2ffca5dd3e2b`, zona `c06c6639a734eec31f5266f4cbe440da`. Bindings: DB (D1), SESSION (KV `fbff1b0954ca4b29905b0309273216a5`), ASSETS.
- **GOTCHA:** `wrangler deploy` BORRA los custom domains que no estén en `routes` de wrangler.toml. Ya listados los 3 (rankingspain.com, www, nuevo). Re-enganchar por API: `PUT /accounts/{acc}/workers/domains`. Cert SSL de un dominio recreado tarda 15min-2h.
- DNS ya estaba en Cloudflare. Se borraron los registros CNAME de Vercel (a mano en el panel) y se engancharon los dominios por API (token OAuth de wrangler NO tiene permiso DNS, sí workers_routes:write).
- Secretos puestos en el Worker: ADMIN_KEY, ADMIN_EMAIL, PLACES_PAUSED, **RESEND_API_KEY** (emails de aviso reactivados y verificados).

### 2. FOTOS: bug raíz `[object Object]`
El cliente D1 REST no puede enviar binario (`bind(Uint8Array)` se guardaba como `"[object Object]"`, 15 bytes). **Ninguna foto se guardaba.** Fix: guardar imágenes como **data URL base64 en TEXT** — `src/lib/imgblob.ts` (`toStorableImage` + `decodeStoredImage`), aplicado a escrituras (`instagramers.ts`, `instagramers-moderar.ts`, `entidad-admin.ts`) y lecturas (`instagramer-foto.ts`, `entidad-foto.ts`). Comprimir siempre en navegador.

### 3. FORMULARIO INSTAGRAMERS (se perdían registros)
`unirme.astro` llamaba a `$('u-nombre')` (campo inexistente) → crash antes de enviar. Arreglado. También el editor de admin (`admin/instagramers.astro`): (a) foto sin comprimir → añadida compresión; (b) **botones no funcionaban** porque Astro envuelve el `<script define:vars>` en un IIFE → las funciones no eran globales. Fix: `window.guardarEdicion = ...`.

### 4. Otros frontend
- **Editor total** `/admin/municipio?key=Albayda4418`: editar/añadir/borrar sitios, subir foto, **posición manual (columna `orden`, mig 0420)**, y **puntuaciones** de cualquier categoría (acción `score`). Iconito de categoría junto al nombre en tarjetas con foto.
- **Fotos en la ficha pública**: `<img>` en tarjetas vía mapa nombre→foto.
- **Sección instagramers** movida ENCIMA de "Qué tiene este municipio" + panel destacado (degradado Instagram, título magenta). Enlace de la tarjeta va a `/instagramers#ig-ID` (nuestra web), no a Instagram.
- **Instagramers por comunidad**: la ficha ahora cruza `im.provincia = municipio.provincia OR municipio.comunidad` (los que registran "Cataluña"/"Aragón" salen en todas sus provincias).
- **Modal de reporte** ya no salta al cargar (`.rep-modal[hidden]{display:none}` anulaba el flex).
- **Comparador** (`comparar.astro`): columnas descuadradas por regla global `.score-cell{display:flex}` de Base.astro → `display:table-cell`.
- **Buscador** (`api/search.ts`): "Onda" no salía (los sitios que contienen "onda" copaban el límite). Añadida prioridad por nombre (exacto→empieza→contiene) + modo `?muni=1` para el editor.

---

## B. CURACIÓN DE FICHAS (todo en BD, en vivo, sin desplegar)

**Método:** el usuario trae contenido de una IA potente → yo cruzo con la BD → **enriquezco** descripciones flojas, **añado** lo que falta (fuente=`curado_manual`), **NO piso** lo que ya está mejor, meto **comida típica** (tipo gastronomia), y hago **limpieza SIEMPRE incluida** (sin preguntar): borrar duplicados y **reasignar mal-asignados por coordenadas** (municipio más cercano; el texto "en X" no es fiable). Ver memoria `feedback-curacion-limpieza`.

**Municipios curados a fondo (11):**
Alcalá la Real (24002), Abla (04001), Monachil (18134), Güéjar Sierra (18094), Montefrío (18135), Guadix (18089), Pinos Genil (18157), Úbeda (23092), Baeza (24010), Baños de la Encina (24012).

**Limpieza cruzada aplicada:** reasignados por coords 11 sitios OSM mal ubicados (miradores/restaurantes/hoteles de sierra → Pinos Genil, Güéjar, Cájar, Huétor Vega, Benalúa, Gor, Lugros); borradas entradas basura con nombre = código INE ("23092", "24010"); dedup de castillos/catedrales/alcazabas/barrio cuevas repetidos.

**Patrón de datos:** ids de sitios curados a mano van en rango 215xxx-216xxx, `fuente='curado_manual'`. Script tipo: escribir un `.sql` en scratchpad y `wrangler d1 execute --file=`. Sin apóstrofos en el SQL inline.

---

## PENDIENTE
- **Verificar/commitear a git** los cambios de código posteriores a la migración (comunidad-match, search fix, iconito, orden) — están desplegados vía `npm run deploy` pero conviene confirmar que están en GitHub.
- **Imágenes OG de compartir** caen a genérica (satori/resvg no arranca en Workers).
- Seguir curando municipios (el usuario tiene un Excel `~/Downloads/municipios_espana_curacion.xlsx` con los 8.427 para ir marcando).
- Municipios donde el texto no traía platos (Abla, Alcalá): meter comida típica si el usuario la aporta.

## ACCESOS
- Admin: `/admin?key=Albayda4418`
- D1: `npx wrangler d1 execute ranking-municipios --remote ...`
- Deploy: `npm run deploy` (Cloudflare, no Vercel)

# Handoff — Sesión 2026-06-18 (rankingspain.com)

Todo desplegado en `main` (Vercel) y verificado en producción. Migraciones aplicadas a D1 remoto.

## 1. Rutas (/ruta) — mejoras
- **Titulares de tramo** (🌅 mañana / ☀️ tarde) más grandes para dar jerarquía.
- **Modo "un día en un pueblo"**: botón **"Generar plan"** (+ Enter) para relanzar tras cambiar experiencias; admite **varias experiencias** a la vez (tope **3** por coste Google); combina visitas de cada una deduplicadas por place_id.
- **"↻ otra opción"** ahora también en *qué ver*, *café* y *copa* (antes solo comer/cenar/dormir). Al cambiar una visita se recalcula el tramo a la siguiente (haversine, igual que el servidor).
- **Dedup de casi-duplicados** en el "qué ver": el mismo conjunto que Google devuelve dos veces (caso Alcalá la Real: Iglesia Mayor Abacial está DENTRO de la Fortaleza de la Mota, 89 m) → se colapsa por nombre contenido o < 120 m.
- **Compartir por WhatsApp** (cabecera del resultado) con enlace a la propia ruta.
- **Open Graph dinámico** + robots.txt deja leer /ruta a bots de previsualización (WhatsApp/FB/Twitter).
- **"🔎 Ver en Google"** en cada sitio (visitar/comer/café/copa/cenar/dormir) → ficha del sitio en Google Maps vía place_id; se actualiza al cambiar de opción.
- **Panel inferior con la ficha de Google** (Maps Embed API) sin salir de la web. Clave **PUBLIC_GOOGLE_MAPS_EMBED_KEY** puesta por defecto en el código (restringida a dominio rankingspain.com + solo Maps Embed API; gratis). Sin clave hace fallback a mapa incrustado keyless.

## 2. Home / fichas / anuncios — textos y accesos
- Home: titular CTA **"Elige una experiencia para ver el ranking"**.
- CTA anunciarse: quitado **"gratis"** de todo (ficha, ruta, /anunciate, meta). Texto final: **"¿Tienes un negocio o servicio? Date de alta para que valoremos tu solicitud"**.
- Menú hamburguesa: enlaces **"Soy un establecimiento"** (→ /anunciate) y **"Soy creador de Instagram"** (→ /colabora).

## 3. Ranking — compartir
- Botón **"📲 Compartir ranking"** (1ª página) → genera imagen **vertical 1080×1920 del Top 10** (Stories/Instagram vía navigator.share) + WhatsApp + copiar enlace.

## 4. Auditoría de datos (migraciones)
- **0274**: borrados 18 senderos mal clasificados (castillos/faros/cuevas con desc vacía que duplicaban el monumento real).
- **0275**: insertado `ranking_global` en **959 municipios** que salían "#—" pese a tener datos (Calvià, Badalona, Maó, Alquézar, Chipiona…). Sin tocar puntuaciones existentes.
- **Ficha**: dedup de entidades por nombre (una misma entidad en varios tipos —p.ej. Fortaleza de la Mota como fortaleza y monumento— salía 2 veces). Colapsa por nombre exacto o contención (Etnosur ⊂ Festival Etnosur).
- Integridad verificada: puntuaciones 0-100 sin nulos ni pares (codigo,categoria) duplicados; sin huérfanos; sin nombre/provincia nulos.
- **GOTCHA recálculo global**: producción usa boosts SEMrush + MAX() acumulativo → NO re-ejecutar el recalc completo a ciegas (bajaría/inflaría todo). Self-joins sobre `entidades` (33k) revientan el límite de CPU de D1.

## 5. Fotos de municipios (migración 0276)
- **4.937 fotos reales** desde **Wikidata P18** (foto representativa, nunca el mapa). Cobertura `foto_url`: **3.210 → 8.053** (94%). Mapas de localización (LocationXxx.png) reemplazados o limpiados a NONE.
- Quedan **482 munis sin foto** (sin P18 en Wikidata) → muestran el degradado de marca.
- Script reutilizable: `scripts/pipeline/fotos_municipios.py` (lotes Wikipedia QID + Wikidata P18, URL vía Special:FilePath).

## 6. Creadores de Instagram (NUEVO sistema) — migraciones 0277/0278/0279
Recomendar cuentas de Instagram expertas en turismo, segmentadas por **tema** y **zona**.
- **Dónde se muestran**: ficha del municipio, ruta del pueblo y páginas de ranking. Titular adaptativo "Sigue en Instagram **esta cuenta / estas cuentas** para descubrir {provincia}".
- **Alcance combinable**: 🌍 Toda España, y/o varias **provincias**, y/o varios **municipios** concretos (buscador con autocompletado → chips). Coincide por provincia o por municipio.
- **Temas múltiples** (senderismo, gastronomía, monumentos, turismo rural…) + opción **"Otra categoría"** de texto libre. "general" = sale en todo.
- **Foto de perfil**: el creador la sube en el alta (resize en navegador, guardada en D1 `avatar_data`, servida por `/api/creador-foto`). Si no, círculo con inicial.
- **Alta pública**: `/colabora` (con foto, multi-provincia, multi-municipio, "otra categoría"). El influencer solo pone su **usuario** de Instagram → enlace `instagram.com/<handle>`.
- **Panel admin**: `/admin/creadores?key=ADMIN_KEY` → **añadir** (editorial), **editar** (todo, incl. foto), aprobar, destacar ★, despublicar, borrar.
- **Email de aviso** (Resend) al admin cuando alguien se da de alta, con foto + botón Aprobar + enlace al panel.
- Ejemplo configurado: **"Granada Planes"** (@granada_planes) → provincia Granada + senderismo + municipios Monachil/Güéjar Sierra + foto placeholder. **Sustituir por cuentas reales.**

## Accesos / claves
- **Panel anuncios**: `rankingspain.com/admin/anuncios?key=a6962a51ffc8cb9a0c66405482f5c506`
- **Panel creadores**: `rankingspain.com/admin/creadores?key=a6962a51ffc8cb9a0c66405482f5c506`
- **Alta establecimientos**: `/anunciate` · **Alta creadores**: `/colabora`
- Migraciones hasta: **0279**.

## Pendientes (de antes y de ahora)
1. **Rotar API keys** Google Places + Resend (pasaron por chat en sesiones previas).
2. **Verificar dominio en Resend** → enviar avisos desde `avisos@rankingspain.com` (ahora `onboarding@resend.dev`), en anuncios Y creadores.
3. Maps Embed key está en el código (restringida por dominio); si se quiere, moverla a env `PUBLIC_GOOGLE_MAPS_EMBED_KEY` en Vercel.
4. 482 municipios sin foto: dejar degradado o intentar vía artículo de Wikipedia (sin P18).
5. Sustituir el creador de muestra "Granada Planes" por influencers reales.
6. (Opcional) Stripe / destacados de pago para anuncios y/o creadores.

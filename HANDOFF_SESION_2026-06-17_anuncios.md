# 📋 Handoff — Sesión 2026-06-17 (anuncios + costes + home)

Todo **desplegado y verificado en producción** (rankingspain.com). Deploy = push a `main` → Vercel auto-deploy.

---

## 1. Ruta "Un día en un pueblo" (`/ruta?pueblo=<ine>`)
Itinerario de un día DENTRO de un municipio: 🌅 mañana + ☀️ tarde (visitas a pie, con 🚶/🚗 entre cada una), ⭐ monumento estrella verificado, ☕ café · 🍽️ comer · 🍷 copa · 🌆 cenar · 🛏️ dormir + mapa.
- **Realista**: separa lo CAMINABLE (≤1,6 km del centro) de las joyas lejanas → tope de visitas a pie por día (Relajado 4 / Completo 6, `?ritmo=`); lo que no entra va a "✨ Si te queda tiempo · más que ver" (🚶/🚗 según distancia). Cabecera con "⏱️ ~Xh de plan".
- Entradas: modo en `/ruta`, botón en la ficha, conmutador en la home.

## 2. Costes Google (IMPORTANTE)
- **Fotos de Google DESACTIVADAS**: Google retiró la API legacy de Place Photo (302→403) y la "Places API (New)" no está habilitada → salían rotas y costaban dinero. `PHOTOS_ENABLED=false` en `places.ts`. Rutas siguen con ★+nombres. **Las fotos de los ANUNCIOS (propias) NO se ven afectadas.** Para recuperarlas: habilitar Places API (New) + migrar (ver memoria).
- **Bots**: rastreadores entraban en `/ruta` (de pago). FIX: `robots.txt` Disallow `/ruta` `/api/` `/admin/` + `noindex` en /ruta + `rel=nofollow` en CTAs de ruta.
- **Frenos**: cuota dura Places API ya puesta (2.000/día, 100/min). Botón de pánico `PLACES_PAUSED=1` (env Vercel) corta todo Google al instante.
- Pendiente opcional del usuario: bajar cuota a 300/día; rotar las API keys (Google y Resend pasaron por chat).

## 3. Sistema de ANUNCIOS (monetización v1) — lo grande de la sesión
Negocios se dan de alta gratis → los aprobáis a mano (por calidad) → salen con sello **⭐ Recomendado**.

- **Tablas/migraciones**: 0270 (`anuncios`), 0271 (colocación `en_ficha`/`en_ruta_mun`/`en_ruta_zona`), 0272 (`whatsapp`), 0273 (`en_ranking_prov`).
- **Alta** `/anunciate`: selector en cascada **provincia → municipio** (nombres exactos de BD, codigo_ine correcto), foto redimensionada en el navegador (base64, sin servicio externo), casilla **WhatsApp**. CTA: *"¿Tienes un negocio o servicio y quieres que salga en Ranking Spain? Date de alta gratis"* (NO promete "recomendado" → protege la credibilidad del ranking).
- **Aviso por email** (Resend): llega a **jlalvarez600@gmail.com** con botones ✅ Aprobar / ❌ Rechazar (tokenizados, desde el móvil). Remitente `onboarding@resend.dev` (solo entrega a ese correo hasta verificar dominio).
- **Panel** `rankingspain.com/admin/anuncios?key=a6962a51ffc8cb9a0c66405482f5c506`: Pendientes (Aprobar/Rechazar/Editar) y Publicados (Ver/**Editar**/Quitar). Editor `/admin/anuncio-editar`: corrige todos los datos + foto + **4 interruptores de colocación**.
- **Dónde puede salir cada anuncio** (tú eliges a mano): ① Ficha del municipio · ② Ruta del municipio (plan de un día) · ③ Rutas de la provincia (rutas por zona) · ④ **Ranking provincial** (arriba de /provincia/X, aunque el negocio sea de un pueblo). Cada uno muestra 📞 Llamar · 💬 WhatsApp · 🔗 Web.
- **Futuro de pago**: columnas `plan`/`vigencia_hasta` ya listas (Stripe + caducidad). Pendiente v2: límite/prioridad cuando haya muchos por pueblo (los "Destacados" de pago primero).

## 4. Home / fichas (menos scroll, más sentido)
- **Titular**: "El ranking de los municipios de España" + subtítulo en 2 líneas ("Elige una experiencia:" en negrita).
- **Ficha municipio**: "📊 Rankings por categoría" subido **arriba del todo**.
- **Categorías del hero**: se ven 5 (Senderismo, Monumentos, Castillos, Gastronomía, Turismo Rural) + "Ver más".
- **"Monta tu viaje"**: experiencias en desplegable (compacto) con contador.
- **Buscador por categoría inline** + botón **"Ver toda España"** bajo las categorías (el de la cabecera = sin categoría; este = por categoría). Sustituye al "Paso 2" y a la hoja móvil.

---

## Env vars (Vercel, 3 ramas)
`GOOGLE_PLACES_API_KEY` · `RESEND_API_KEY` · `ADMIN_EMAIL=jlalvarez600@gmail.com` · `ADMIN_KEY=a6962a51ffc8cb9a0c66405482f5c506` · (`PLACES_PAUSED` solo en emergencia). Vercel CLI linkado local.

## Pendientes
1. (Seguridad) Rotar API keys de Google y Resend (pasaron por chat).
2. (Opcional) Bajar cuota Places a 300/día.
3. (Anuncios) Verificar dominio en Resend → emails desde `avisos@rankingspain.com`.
4. (Fotos) Si se quieren las fotos de sitios: habilitar Places API (New) + migrar.
5. (Monetización) Stripe + prioridad de "Destacados".

Migraciones hasta **0273**. Memoria actualizada: `project_anuncios.md`, `project_ruta_un_dia_pueblo.md`, `project_rutas_google_places.md`.

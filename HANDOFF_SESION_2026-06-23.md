# Handoff — Sesión 2026-06-21 → 06-23

Commits `f0ff92b` → `a8ffd84` (39). Todo en producción (rankingspain.com). Datos D1 = inmediatos · código = deploy Vercel 2-4 min.

---

## 🆕 Features nuevas

### 1. Encuesta a instagramers — `/encuesta`
UGC para crecer en Instagram. Pides @usuario + su municipio favorito para pasar 2 días (autocompletado + texto libre) + frase opcional. Guarda en D1 (tabla `encuesta`, mig 0297) y te avisa por email (Resend). Panel **`/admin/encuesta`**: descargas una **imagen vertical 1080×1920** (Stories) con su @usuario y el sitio, lista para publicar. Sin foto de perfil (se quitó). Copy firme ("lo subiremos a nuestro Instagram").

### 2. Voto del público — `/votar`
"Vota el mejor municipio turístico de España". Selects en cascada provincia→municipio, 1 voto/navegador movible, **compartir** (WhatsApp/nativo). Tabla `votos` (mig 0298). 
- **Sembrado**: 50 destinos reales con votos inventados realistas (mig 0299-0300, +ronda 1 mig 0302). Columna `seed_votos` distingue inventados vs reales.
- **Segmentos por población** (mig solo lógica): **Pueblos** (<10.000) · **Medianos** (10.000–100.000) · **Ciudades** (>100.000). Pestañas en `/votar` y en el panel.
- **Panel `/admin/votos`**: ranking completo + pestañas + **editar votos** de cualquier municipio (lo que excede a los reales se marca inventado) + añadir municipio + "quitar inventados".
- En la home: bloque CTA grande (bajo el hero) con Top 3 en directo + botón "Ver ranking".

### 3. Soletes Guía Repsol → categoría "Dónde comer" (LO GRANDE)
Cargados **5.127 establecimientos** (de un PDF de 5.488) en **1.266 municipios**: restaurantes, bares, cafeterías, chiringuitos, vinotecas, heladerías, fast good.
- **Datos**: entidades `fuente='guia_repsol_solete'`, `sello_oficial='Solete'`, con **enlace EXACTO a Google Maps** (place_id) + descripción propia. Mig 0303 (col `enlace`) + 0304_data_01/02.
- **Legal**: NO se dice que sean nuestros; se citan como distinción "Solete · Guía Repsol" (como Michelin), descripciones propias.
- **Frontend**: sección **"Dónde comer"** en la ficha (agrupada, con enlace Maps), categoría **"Dónde comer"** en chips + "Explora por categoría" + desplegable hero + `/ranking/soletes`. Matiz: **Gastronomía** = prestigio general; **Dónde comer** = sitios concretos.
- **Extracción** (parseo no trivial, `/tmp/extract_soletes.py`): categoría por **EMOJI** (100% fiable), municipio del enlace de Maps + match sufijo contra INE (98,7%), match a BD 97,7%.

### 4. Panel de control central — `/admin`
Hub con accesos a todos los paneles (encuestas, voto, publicidad, instagramers, banners) con contadores de pendientes + **enlaces para compartir** (encuesta/votar/anunciate/colabora) con botones Compartir nativo / WhatsApp / Email / Copiar.

---

## 🎨 Diseño / web
- **Hero de la home simplificado**: botón grande "Ver el ranking de España" + "Elige una experiencia ▾" (categorías en desplegable, enlaces directos a su ranking). Quitada la 2ª búsqueda redundante.
- **Toda la web a iconos de línea Lucide** (en vez de emojis): tipos de entidad, títulos de sección, botones (Ver en Google Maps), cabeceras de la home (voto del público, A tu lado, Joyas, Mapa…), menú de navegación, botón hero (trofeo), Solete (sol). **Se mantienen**: medallas 🥇🥈🥉, bandera 🇪🇸, estrellas ⭐ de valoración. (Iconos en `src/components/Icon.astro`, función `getTipoIconName` en `lib/entidades.ts`.)
- **Bloque "Qué ver cerca de ti"**: foto de fondo (la del usuario, hora azul) + botón rosa, bordes redondeados.
- **Bloque del voto**: foto de fondo `sunnyday`, capa ligera, botones translúcidos, "Votar ahora" blanco sólido + Top 3 cristal.
- **"Síguenos en Instagram"** (@ranking_spain) en la home.
- **Imagen de enlace (OG)**: era el logo deformado → ahora la foto del hero (1200×630, `/og-portada.jpg`), en URL absoluta. Afecta a /encuesta, /votar, home…
- **Ranking por categoría**: quitada la "Vista rápida" (fila clicable → ficha); botón **"Ver por qué destaca →"** (antes "Ver ficha completa").
- **`/cerca`**: "elige tu ciudad" pasó de desplegable limitado a **autocompletado de todos los municipios** con estilo del buscador de la home (pin + nombre + provincia). Endpoint `/api/municipios-buscar`.

---

## 🗂️ Datos / auditoría
- **Castillos**: tenían un **30 de relleno** en 7.673 municipios SIN castillo. Borradas 7.655 (mig 0301); quedan 602 reales. (museos/TurismoRural ya usan 0; senderismo/gastronomía base 12.)
- **Anuncios**: foto **obligatoria** en el alta (`/anunciate` + servidor) + botón **descargar foto** en el panel.
- Borrado "Alhambra Palace" (mal cargado como chiringuito).

---

## 🔑 Claves / notas
- **ADMIN_KEY**: `a6962a51ffc8cb9a0c66405482f5c506` (paneles).
- Instagram: **@ranking_spain**.
- Email: Resend (RESEND_API_KEY) → `info@granadaplanes.com` (verificar que recibe).
- D1 id: `d664746a-8439-488d-a42c-73aaf17b2140`. Migrations hasta **0304**.
- Caché: WhatsApp/Instagram cachean la previsualización; forzar con `?v=2`. Safari iPhone cachea páginas → recargar sin caché.

## ⏳ Pendiente
1. **Restaurantes** de la BD propia del usuario (los pasará) → cargar con el mismo método (extract_soletes.py sirve si traen enlace Maps).
2. **124 soletes sin emparejar** (2,3%, grafías valencianas/gallegas/vascas) → afinar matcher.
3. (Heredado) verificar email info@granadaplanes.com operativo, rotar API keys, fotos faltantes.

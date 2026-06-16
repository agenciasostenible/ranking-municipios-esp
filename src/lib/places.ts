/**
 * places.ts
 * ---------
 * Enriquecimiento de rutas con Google Places (API legacy "Nearby Search").
 *
 * Reglas de uso (importante, cumple los Términos de Servicio de Google):
 *  - Solo se consulta bajo demanda: las pocas paradas de una ruta real,
 *    nunca se pre-puebla España entera.
 *  - El resultado se cachea en D1 (tabla places_cache) y se REFRESCA cada
 *    30 días. Google permite cachear place_id indefinidamente y el resto
 *    del contenido un máximo de 30 días.
 *
 * Variable de entorno necesaria:
 *   GOOGLE_PLACES_API_KEY — clave restringida solo a "Places API".
 */
import { DB } from './d1client';

const KEY =
  (import.meta as any).env?.GOOGLE_PLACES_API_KEY ??
  (typeof process !== 'undefined' ? process.env.GOOGLE_PLACES_API_KEY : undefined);

/** true si hay clave configurada; si es false, las rutas funcionan igual sin Google. */
export const PLACES_ENABLED = !!KEY;

export type PlaceHit = {
  place_id: string;
  nombre: string;
  rating: number | null;
  reviews: number | null;
  lat: number | null;
  lng: number | null;
  direccion: string | null;
  foto_ref: string | null;
  foto_attr: string | null;
};

/**
 * Especificación de búsqueda. Permite adaptar la consulta a la categoría:
 *  - keyword:      sesga la búsqueda (p.ej. "pet friendly", "lgtbi friendly").
 *  - excludeTypes: descarta resultados de esos tipos de Google (p.ej. iglesias
 *                  para rutas con mascotas, donde no entra el perro).
 *  - softKeyword:  si con keyword no hay resultado, reintenta sin él (red de
 *                  seguridad para "comer": nunca dejamos sin restaurante).
 */
export type SearchSpec = {
  type: string;
  radius?: number;
  minReviews?: number;
  keyword?: string;
  excludeTypes?: string[];
  softKeyword?: boolean;
};

// Puntuación: valoración ponderada por nº de reseñas (evita 5,0 con 3 reseñas).
function score(r: any): number {
  const rating = r.rating ?? 0;
  const n = r.user_ratings_total ?? 0;
  return rating * Math.log10(n + 1);
}

/**
 * Trae los bytes de una foto de Google Places (server-side, con la clave secreta).
 * La usa el endpoint /api/place-photo para que la clave nunca llegue al navegador.
 */
export async function fetchPlacePhoto(ref: string, maxwidth = 600): Promise<Response | null> {
  if (!KEY) return null;
  const u = new URL('https://maps.googleapis.com/maps/api/place/photo');
  u.searchParams.set('maxwidth', String(maxwidth));
  u.searchParams.set('photo_reference', ref);
  u.searchParams.set('key', KEY as string);
  const res = await fetch(u.toString(), { redirect: 'follow' });
  if (!res.ok || !res.body) return null;
  return res;
}

function toHit(r: any): PlaceHit {
  const photo = r.photos?.[0];
  return {
    place_id: r.place_id,
    nombre: r.name,
    rating: r.rating ?? null,
    reviews: r.user_ratings_total ?? null,
    lat: r.geometry?.location?.lat ?? null,
    lng: r.geometry?.location?.lng ?? null,
    direccion: r.vicinity ?? null,
    foto_ref: photo?.photo_reference ?? null,
    foto_attr: photo?.html_attributions?.length ? photo.html_attributions.join(' ') : null,
  };
}

// Lista de candidatos ordenados por valoración ponderada (mejor primero)
async function nearbyListOnce(lat: number, lng: number, spec: SearchSpec, useKeyword: boolean): Promise<PlaceHit[]> {
  const u = new URL('https://maps.googleapis.com/maps/api/place/nearbysearch/json');
  u.searchParams.set('location', `${lat},${lng}`);
  u.searchParams.set('radius', String(spec.radius ?? 9000));
  u.searchParams.set('type', spec.type);
  if (useKeyword && spec.keyword) u.searchParams.set('keyword', spec.keyword);
  u.searchParams.set('language', 'es');
  u.searchParams.set('key', KEY as string);

  const res = await fetch(u.toString());
  if (!res.ok) return [];
  const data: any = await res.json();
  if (data.status && data.status !== 'OK' && data.status !== 'ZERO_RESULTS') {
    // p.ej. REQUEST_DENIED / OVER_QUERY_LIMIT → no rompemos la ruta
    return [];
  }
  let arr: any[] = (data.results ?? []).filter(
    (r: any) => r.business_status !== 'CLOSED_PERMANENTLY' && r.rating,
  );
  // Descartar tipos no aptos para la categoría (p.ej. iglesias en rutas con perro)
  if (spec.excludeTypes?.length) {
    arr = arr.filter((r: any) => !(r.types ?? []).some((t: string) => spec.excludeTypes!.includes(t)));
  }
  if (!arr.length) return [];

  // Preferimos sitios con un mínimo de reseñas; si ninguno llega, usamos todos.
  const min = spec.minReviews ?? 20;
  const conReseñas = arr.filter((r) => (r.user_ratings_total ?? 0) >= min);
  const pool = conReseñas.length ? conReseñas : arr;
  pool.sort((a, b) => score(b) - score(a));
  return pool.map(toHit);
}

async function nearbyList(lat: number, lng: number, spec: SearchSpec): Promise<PlaceHit[]> {
  let list = await nearbyListOnce(lat, lng, spec, true);
  // Red de seguridad: si con keyword no hubo resultado, reintentar sin él
  if (!list.length && spec.keyword && spec.softKeyword) list = await nearbyListOnce(lat, lng, spec, false);
  return list;
}

async function nearbySearch(lat: number, lng: number, spec: SearchSpec): Promise<PlaceHit | null> {
  return (await nearbyList(lat, lng, spec))[0] ?? null;
}

/**
 * Mejor sitio (comer / visitar / …) cerca de un municipio según `spec`.
 * `kind` es la clave de caché (puede llevar sufijo de categoría, p.ej.
 * "visitar_turismo_mascotas") para no mezclar resultados entre experiencias.
 * Cachea en D1 (incluida la "ausencia de resultado") y refresca a los 30 días.
 */
// Lee caché viva (<30d). undefined = no hay fila; null = cacheado "sin resultado".
async function cacheRead(codigo_ine: string, kind: string): Promise<PlaceHit | null | undefined> {
  try {
    const c = await DB.prepare(
      `SELECT place_id, nombre, rating, reviews, lat, lng, direccion, foto_ref, foto_attr
         FROM places_cache
        WHERE codigo_ine = ? AND kind = ?
          AND fetched_at > datetime('now', '-30 days')
        ORDER BY fetched_at DESC LIMIT 1`,
    ).bind(codigo_ine, kind).first();
    if (!c) return undefined;
    return c.place_id === '__none__' ? null : (c as PlaceHit);
  } catch {
    return undefined;
  }
}

async function cacheWrite(codigo_ine: string, kind: string, hit: PlaceHit | null): Promise<void> {
  try {
    await DB.prepare(`DELETE FROM places_cache WHERE codigo_ine = ? AND kind = ?`)
      .bind(codigo_ine, kind).run();
    await DB.prepare(
      `INSERT INTO places_cache
         (codigo_ine, kind, place_id, nombre, rating, reviews, lat, lng, direccion, foto_ref, foto_attr)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
    ).bind(
      codigo_ine, kind,
      hit ? hit.place_id : '__none__',
      hit?.nombre ?? null, hit?.rating ?? null, hit?.reviews ?? null,
      hit?.lat ?? null, hit?.lng ?? null, hit?.direccion ?? null,
      hit?.foto_ref ?? null, hit?.foto_attr ?? null,
    ).run();
  } catch { /* si falla la escritura, devolvemos igual el resultado */ }
}

export async function getPlace(
  codigo_ine: string,
  kind: string,
  lat: number,
  lng: number,
  spec: SearchSpec,
): Promise<PlaceHit | null> {
  if (!KEY || lat == null || lng == null) return null;
  const cached = await cacheRead(codigo_ine, kind);
  if (cached !== undefined) return cached;
  let hit: PlaceHit | null = null;
  try { hit = await nearbySearch(lat, lng, spec); } catch { return null; }
  await cacheWrite(codigo_ine, kind, hit);
  return hit;
}

// Alternativa "más modesta": mejor valorada entre las que NO son la primera y
// tienen menos reseñas que ella (los sitios pequeños suelen ser más asequibles).
function pickAlt(list: PlaceHit[], best: PlaceHit | null): PlaceHit | null {
  if (!best || list.length < 2) return null;
  const rest = list.filter(h => h.place_id !== best.place_id && (h.rating ?? 0) >= 4.0 && (h.reviews ?? 0) >= 30);
  const modest = rest.filter(h => (h.reviews ?? 0) < (best.reviews ?? 0));
  const pool = modest.length ? modest : rest;
  pool.sort((a, b) => (b.rating ?? 0) - (a.rating ?? 0) || (a.reviews ?? 0) - (b.reviews ?? 0));
  return pool[0] ?? list.find(h => h.place_id !== best.place_id) ?? null;
}

/**
 * Mejor alojamiento + una alternativa más modesta, de una sola consulta.
 * Cachea ambas filas (kind y kind#alt) y refresca a los 30 días.
 */
export async function getLodgingPair(
  codigo_ine: string, kind: string, lat: number, lng: number, spec: SearchSpec,
): Promise<{ best: PlaceHit | null; alt: PlaceHit | null }> {
  if (!KEY || lat == null || lng == null) return { best: null, alt: null };
  const cb = await cacheRead(codigo_ine, kind);
  if (cb !== undefined) {
    const ca = await cacheRead(codigo_ine, kind + '#alt');
    // Si hay mejor cacheado y alternativa (o no hay alojamiento), servimos caché.
    // Si el mejor existe pero falta la fila de alternativa, recalculamos.
    if (ca !== undefined || cb === null) return { best: cb, alt: ca === undefined ? null : ca };
  }
  let list: PlaceHit[] = [];
  try { list = await nearbyList(lat, lng, spec); } catch { /* ignore */ }
  const best = list[0] ?? null;
  const alt = pickAlt(list, best);
  await cacheWrite(codigo_ine, kind, best);
  await cacheWrite(codigo_ine, kind + '#alt', alt);
  return { best, alt };
}

// Caché de una LISTA de opciones (para poder cambiar de sitio): se guarda como
// filas kind#0, kind#1, … reutilizando la tabla columnar (sin migración).
async function listCacheRead(codigo_ine: string, baseKind: string): Promise<PlaceHit[] | undefined> {
  try {
    const { results } = await DB.prepare(
      `SELECT place_id, nombre, rating, reviews, lat, lng, direccion, foto_ref, foto_attr
         FROM places_cache
        WHERE codigo_ine = ? AND kind LIKE ? AND fetched_at > datetime('now', '-30 days')
        ORDER BY kind`,
    ).bind(codigo_ine, baseKind + '#%').all();
    if (!results.length) return undefined;
    return (results as any[]).filter(r => r.place_id !== '__none__') as PlaceHit[];
  } catch {
    return undefined;
  }
}

async function listCacheWrite(codigo_ine: string, baseKind: string, list: PlaceHit[]): Promise<void> {
  try {
    await DB.prepare(`DELETE FROM places_cache WHERE codigo_ine = ? AND kind LIKE ?`)
      .bind(codigo_ine, baseKind + '#%').run();
    if (!list.length) { await cacheWrite(codigo_ine, baseKind + '#0', null); return; }
    for (let i = 0; i < list.length; i++) await cacheWrite(codigo_ine, baseKind + '#' + i, list[i]);
  } catch { /* ignore */ }
}

/** Top N opciones (comer / dormir) cerca de un municipio, cacheadas 30 días. */
export async function getPlaceOptions(
  codigo_ine: string, kind: string, lat: number, lng: number, spec: SearchSpec, n = 4,
): Promise<PlaceHit[]> {
  if (!KEY || lat == null || lng == null) return [];
  const cached = await listCacheRead(codigo_ine, kind);
  if (cached !== undefined) return cached;
  let list: PlaceHit[] = [];
  try { list = await nearbyList(lat, lng, spec); } catch { /* ignore */ }
  list = list.slice(0, n);
  await listCacheWrite(codigo_ine, kind, list);
  return list;
}

/** Índice de la opción más "modesta" (proxy de más barata) dentro de la lista. */
export function modestIndex(list: PlaceHit[]): number {
  if (list.length < 2) return 0;
  const best = list[0];
  const cands = list
    .map((h, i) => ({ h, i }))
    .filter(x => x.i > 0 && (x.h.rating ?? 0) >= 4.0 && (x.h.reviews ?? 0) >= 30 && (x.h.reviews ?? 0) < (best.reviews ?? 0));
  if (!cands.length) return Math.min(1, list.length - 1);
  cands.sort((a, b) => (a.h.reviews ?? 0) - (b.h.reviews ?? 0));
  return cands[0].i;
}

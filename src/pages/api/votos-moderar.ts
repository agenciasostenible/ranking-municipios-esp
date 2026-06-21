/**
 * Moderación del voto del público (protegido por ?key=ADMIN_KEY).
 *  GET  ?key=&accion=quitar-seed          → resta los votos inventados (conserva reales)
 *  GET  ?key=&accion=borrar&codigo=NNNNN  → borra del ranking un municipio concreto
 *  POST (form) accion=set, codigo, votos  → fija el total de votos de un municipio.
 *      La parte por encima de los votos reales se registra como inventada (seed_votos),
 *      para que siempre sepamos cuántos son falsos.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

const back = (key: string, seg?: string) =>
  new Response(null, { status: 302, headers: { Location: `/admin/votos?key=${encodeURIComponent(key)}${seg ? `&seg=${encodeURIComponent(seg)}` : ''}` } });
const deny = () => new Response('No autorizado', { status: 401 });

export const GET: APIRoute = async ({ url }) => {
  const key = url.searchParams.get('key') ?? '';
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return deny();
  const accion = url.searchParams.get('accion');
  const seg = url.searchParams.get('seg') ?? '';

  if (accion === 'quitar-seed') {
    await DB.prepare(`UPDATE votos SET votos = MAX(votos - COALESCE(seed_votos,0), 0), seed_votos = 0, updated_at = datetime('now') WHERE COALESCE(seed_votos,0) > 0`).run();
    await DB.prepare(`DELETE FROM votos WHERE votos <= 0`).run();
  } else if (accion === 'borrar') {
    const codigo = url.searchParams.get('codigo');
    if (codigo) await DB.prepare(`DELETE FROM votos WHERE codigo_ine = ?`).bind(codigo).run();
  }
  return back(key, seg);
};

export const POST: APIRoute = async ({ request }) => {
  const form = await request.formData();
  const key = String(form.get('key') ?? '');
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return deny();
  const seg = String(form.get('seg') ?? '');
  const accion = String(form.get('accion') ?? '');

  if (accion === 'set') {
    const codigo = String(form.get('codigo') ?? '').trim().slice(0, 10);
    let n = parseInt(String(form.get('votos') ?? ''), 10);
    if (!codigo || !Number.isFinite(n)) return back(key, seg);
    if (n < 0) n = 0;

    const cur = await DB.prepare(`SELECT votos, COALESCE(seed_votos,0) AS seed_votos FROM votos WHERE codigo_ine=?`).bind(codigo).first() as any;
    const real = cur ? Math.max(Number(cur.votos) - Number(cur.seed_votos), 0) : 0;

    if (n <= 0 && real === 0) {
      // Sin votos reales y lo dejamos a 0 → fuera del ranking.
      await DB.prepare(`DELETE FROM votos WHERE codigo_ine=?`).bind(codigo).run();
      return back(key, seg);
    }

    const total = Math.max(n, real);            // nunca por debajo de los reales
    const newSeed = Math.max(total - real, 0);  // lo que excede a los reales = inventado

    // nombre/provincia canónicos (para altas nuevas o para refrescar)
    const muni = await DB.prepare(`SELECT nombre, provincia FROM municipios WHERE codigo_ine=? AND COALESCE(es_duplicado,0)=0`).bind(codigo).first() as any;
    const nombre = (cur && !muni) ? null : (muni?.nombre ?? null);
    if (!cur && !muni) return back(key, seg); // código inválido y no existía

    await DB.prepare(
      `INSERT INTO votos (codigo_ine, nombre, provincia, votos, seed_votos)
       VALUES (?, ?, ?, ?, ?)
       ON CONFLICT(codigo_ine) DO UPDATE SET votos = ?, seed_votos = ?, updated_at = datetime('now')`
    ).bind(codigo, nombre ?? muni?.nombre ?? '', muni?.provincia ?? '', total, newSeed, total, newSeed).run();
  }
  return back(key, seg);
};

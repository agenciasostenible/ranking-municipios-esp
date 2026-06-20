/**
 * Moderación del voto del público (protegido por ?key=ADMIN_KEY).
 *  GET ?key=&accion=quitar-seed          → resta los votos inventados (conserva reales)
 *  GET ?key=&accion=borrar&codigo=NNNNN  → borra del ranking un municipio concreto
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

const back = (key: string) => new Response(null, { status: 302, headers: { Location: `/admin/votos?key=${encodeURIComponent(key)}` } });
const deny = () => new Response('No autorizado', { status: 401 });

export const GET: APIRoute = async ({ url }) => {
  const key = url.searchParams.get('key') ?? '';
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return deny();
  const accion = url.searchParams.get('accion');

  if (accion === 'quitar-seed') {
    // Resta solo la parte inventada; conserva los votos reales.
    await DB.prepare(`UPDATE votos SET votos = MAX(votos - COALESCE(seed_votos,0), 0), seed_votos = 0, updated_at = datetime('now') WHERE COALESCE(seed_votos,0) > 0`).run();
    // Limpia los que se quedan sin ningún voto.
    await DB.prepare(`DELETE FROM votos WHERE votos <= 0`).run();
  } else if (accion === 'borrar') {
    const codigo = url.searchParams.get('codigo');
    if (codigo) await DB.prepare(`DELETE FROM votos WHERE codigo_ine = ?`).bind(codigo).run();
  }
  return back(key);
};

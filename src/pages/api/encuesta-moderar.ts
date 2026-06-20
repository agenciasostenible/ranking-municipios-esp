/**
 * Moderación de la encuesta (protegido por ?key=ADMIN_KEY).
 *  GET ?key=&id=&accion=publicado|nopublicado|borrar  → acción + redirect al panel
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

const back = (key: string) => new Response(null, { status: 302, headers: { Location: `/admin/encuesta?key=${encodeURIComponent(key)}` } });
const deny = () => new Response('No autorizado', { status: 401 });

export const GET: APIRoute = async ({ url }) => {
  const key = url.searchParams.get('key') ?? '';
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return deny();
  const id = url.searchParams.get('id');
  const accion = url.searchParams.get('accion');
  if (!id) return back(key);
  if (accion === 'publicado') await DB.prepare(`UPDATE encuesta SET publicado=1 WHERE id=?`).bind(id).run();
  else if (accion === 'nopublicado') await DB.prepare(`UPDATE encuesta SET publicado=0 WHERE id=?`).bind(id).run();
  else if (accion === 'borrar') await DB.prepare(`DELETE FROM encuesta WHERE id=?`).bind(id).run();
  return back(key);
};

/**
 * GET /api/instagramers-moderar?key=X&id=Y&accion=aprobar|desaprobar|eliminar
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

export const GET: APIRoute = async ({ url, redirect }) => {
  const key    = url.searchParams.get('key') ?? '';
  const id     = parseInt(url.searchParams.get('id') ?? '0', 10);
  const accion = url.searchParams.get('accion') ?? '';
  const adminKey = env('ADMIN_KEY');

  if (!adminKey || key !== adminKey || !id) {
    return new Response('Acceso denegado', { status: 403 });
  }

  const panel = `/admin/instagramers?key=${encodeURIComponent(key)}`;

  if (accion === 'aprobar') {
    await DB.prepare(`UPDATE instagramers SET verificado=1 WHERE id=?`).bind(id).run();
  } else if (accion === 'desaprobar') {
    await DB.prepare(`UPDATE instagramers SET verificado=0 WHERE id=?`).bind(id).run();
  } else if (accion === 'eliminar') {
    await DB.prepare(`DELETE FROM instagramers WHERE id=?`).bind(id).run();
  } else {
    return new Response('Acción desconocida', { status: 400 });
  }

  return redirect(panel);
};

/**
 * Moderación de creadores (protegido por ?key=ADMIN_KEY).
 *  GET  ?key=&id=&accion=aprobar|quitar|destacar|undestacar|borrar  → acción + redirect
 *  POST (form) accion=add  → alta editorial (queda aprobado=1)
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

const back = (key: string) => new Response(null, { status: 302, headers: { Location: `/admin/creadores?key=${encodeURIComponent(key)}` } });
const deny = () => new Response('No autorizado', { status: 401 });

export const GET: APIRoute = async ({ url }) => {
  const key = url.searchParams.get('key') ?? '';
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return deny();
  const id = url.searchParams.get('id');
  const accion = url.searchParams.get('accion');
  if (!id) return back(key);
  if (accion === 'aprobar') await DB.prepare(`UPDATE creadores SET aprobado=1 WHERE id=?`).bind(id).run();
  else if (accion === 'quitar') await DB.prepare(`UPDATE creadores SET aprobado=0 WHERE id=?`).bind(id).run();
  else if (accion === 'destacar') await DB.prepare(`UPDATE creadores SET destacado=1 WHERE id=?`).bind(id).run();
  else if (accion === 'undestacar') await DB.prepare(`UPDATE creadores SET destacado=0 WHERE id=?`).bind(id).run();
  else if (accion === 'borrar') await DB.prepare(`DELETE FROM creadores WHERE id=?`).bind(id).run();
  return back(key);
};

export const POST: APIRoute = async ({ request }) => {
  const form = await request.formData();
  const key = String(form.get('key') ?? '');
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return deny();
  const g = (k: string) => String(form.get(k) ?? '').trim();
  const nombre = g('nombre').slice(0, 80);
  const handle = g('handle').replace(/^@/, '').slice(0, 60);
  if (!nombre || !handle) return back(key);
  const ambito_tipo = ['nacional', 'provincia', 'comunidad', 'municipio'].includes(g('ambito_tipo')) ? g('ambito_tipo') : 'nacional';
  await DB.prepare(
    `INSERT INTO creadores (nombre, handle, avatar_url, bio, especialidades, ambito_tipo, ambito_valor, seguidores, destacado, aprobado)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 1)`
  ).bind(
    nombre, handle, g('avatar_url').slice(0, 300) || null, g('bio').slice(0, 120) || null,
    g('especialidades').slice(0, 200), ambito_tipo, g('ambito_valor').slice(0, 80),
    parseInt(g('seguidores')) || 0, form.get('destacado') ? 1 : 0,
  ).run();
  return back(key);
};

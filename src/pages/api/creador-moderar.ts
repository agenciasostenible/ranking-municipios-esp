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
  const id = g('id');
  const nombre = g('nombre').slice(0, 80);
  const handle = g('handle').replace(/^@/, '').slice(0, 60);
  if (!nombre || !handle) return back(key);
  const provincias = g('provincias').slice(0, 600);
  const municipios = g('municipios').slice(0, 600);
  const nacional = (form.get('nacional') || (!provincias && !municipios)) ? 1 : 0;
  const bio = g('bio').slice(0, 120) || null;
  const especialidades = g('especialidades').slice(0, 200);
  const seguidores = parseInt(g('seguidores')) || 0;
  const destacado = form.get('destacado') ? 1 : 0;
  const avatar_url = g('avatar_url').slice(0, 300) || null;

  // Foto subida (data URL). Solo se guarda si es válida; en edición, si no mandan
  // foto nueva, se conserva la actual.
  const foto = g('avatar');
  const m = /^data:(image\/(?:jpeg|png|webp));base64,/.exec(foto);
  const newAvatar = (m && foto.length <= 900_000) ? { data: foto, mime: m[1] } : null;

  if (id) {
    if (newAvatar) {
      await DB.prepare(
        `UPDATE creadores SET nombre=?, handle=?, avatar_url=?, bio=?, especialidades=?, provincias=?, municipios=?, nacional=?, seguidores=?, destacado=?, avatar_data=?, avatar_mime=? WHERE id=?`
      ).bind(nombre, handle, avatar_url, bio, especialidades, provincias, municipios, nacional, seguidores, destacado, newAvatar.data, newAvatar.mime, id).run();
    } else {
      await DB.prepare(
        `UPDATE creadores SET nombre=?, handle=?, avatar_url=?, bio=?, especialidades=?, provincias=?, municipios=?, nacional=?, seguidores=?, destacado=? WHERE id=?`
      ).bind(nombre, handle, avatar_url, bio, especialidades, provincias, municipios, nacional, seguidores, destacado, id).run();
    }
  } else {
    await DB.prepare(
      `INSERT INTO creadores (nombre, handle, avatar_url, bio, especialidades, provincias, municipios, nacional, seguidores, destacado, avatar_data, avatar_mime, aprobado)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1)`
    ).bind(nombre, handle, avatar_url, bio, especialidades, provincias, municipios, nacional, seguidores, destacado, newAvatar?.data ?? null, newAvatar?.mime ?? null).run();
  }
  return back(key);
};

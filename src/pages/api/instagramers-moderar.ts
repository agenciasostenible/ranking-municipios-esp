/**
 * GET /api/instagramers-moderar?key=X&id=Y&accion=aprobar|desaprobar|eliminar
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';
import { toStorableImage } from '../../lib/imgblob';

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
  } else if (accion === 'orden') {
    const valor = parseInt(url.searchParams.get('valor') ?? '99', 10);
    await DB.prepare(`UPDATE instagramers SET orden=? WHERE id=?`).bind(valor, id).run();
    return new Response('ok', { status: 200 });
  } else {
    return new Response('Acción desconocida', { status: 400 });
  }

  return redirect(panel);
};

export const POST: APIRoute = async ({ url, request }) => {
  const key    = url.searchParams.get('key') ?? '';
  const id     = parseInt(url.searchParams.get('id') ?? '0', 10);
  const accion = url.searchParams.get('accion') ?? '';
  const adminKey = env('ADMIN_KEY');

  if (!adminKey || key !== adminKey || !id) {
    return new Response('Acceso denegado', { status: 403 });
  }

  if (accion === 'editar') {
    let b: any;
    try { b = await request.json(); } catch { return new Response('bad json', { status: 400 }); }

    // Foto: se guarda como data URL base64 (TEXT). El binario no viaja por la API REST de D1.
    const avatarBuf = toStorableImage(b.avatar);

    if (avatarBuf) {
      await DB.prepare(
        `UPDATE instagramers SET handle=?, nombre=?, bio=?, especialidad=?, seguidores=?, orden=?, avatar_url=?, avatar_data=? WHERE id=?`
      ).bind(
        String(b.handle || '').trim(),
        String(b.nombre || '').trim() || null,
        String(b.bio || '').trim() || null,
        String(b.especialidad || '').trim() || null,
        parseInt(b.seguidores) || 0,
        parseInt(b.orden) || 99,
        String(b.avatar_url || '').trim() || null,
        avatarBuf, id
      ).run();
    } else {
      await DB.prepare(
        `UPDATE instagramers SET handle=?, nombre=?, bio=?, especialidad=?, seguidores=?, orden=?, avatar_url=? WHERE id=?`
      ).bind(
        String(b.handle || '').trim(),
        String(b.nombre || '').trim() || null,
        String(b.bio || '').trim() || null,
        String(b.especialidad || '').trim() || null,
        parseInt(b.seguidores) || 0,
        parseInt(b.orden) || 99,
        String(b.avatar_url || '').trim() || null,
        id
      ).run();
    }
    return new Response(JSON.stringify({ ok: true }), { status: 200, headers: { 'Content-Type': 'application/json' } });
  }

  return new Response('Acción desconocida', { status: 400 });
};

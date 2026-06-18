/**
 * POST /api/colabora
 * Alta de un creador de Instagram (queda pendiente de aprobación).
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

export const POST: APIRoute = async ({ request }) => {
  let b: any;
  try { b = await request.json(); } catch { return new Response('bad', { status: 400 }); }

  // Honeypot anti-spam
  if (b.website) return new Response(JSON.stringify({ ok: true }), { status: 200 });

  const nombre = String(b.nombre || '').trim().slice(0, 80);
  const handle = String(b.handle || '').trim().replace(/^@/, '').slice(0, 60);
  const especialidades = String(b.especialidades || '').trim().slice(0, 200);
  const email = String(b.email || '').trim().slice(0, 160);
  const ambito_tipo = ['nacional', 'provincia', 'comunidad', 'municipio'].includes(b.ambito_tipo) ? b.ambito_tipo : 'nacional';
  const ambito_valor = String(b.ambito_valor || '').trim().slice(0, 80);
  const bio = String(b.bio || '').trim().slice(0, 120);

  if (!nombre || !handle || !email || !especialidades) {
    return new Response('faltan campos', { status: 400 });
  }

  // Foto de perfil: data URL base64 (resize en el navegador), máx ~900 KB.
  let avatarData: string | null = null, avatarMime: string | null = null;
  const foto = typeof b.avatar === 'string' ? b.avatar : '';
  const m = /^data:(image\/(?:jpeg|png|webp));base64,/.exec(foto);
  if (m && foto.length <= 900_000) { avatarData = foto; avatarMime = m[1]; }

  try {
    await DB.prepare(
      `INSERT INTO creadores (nombre, handle, especialidades, ambito_tipo, ambito_valor, bio, email, avatar_data, avatar_mime, aprobado)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 0)`
    ).bind(nombre, handle, especialidades, ambito_tipo, ambito_valor, bio, email, avatarData, avatarMime).run();
  } catch {
    return new Response('error', { status: 500 });
  }
  return new Response(JSON.stringify({ ok: true }), { status: 200, headers: { 'Content-Type': 'application/json' } });
};

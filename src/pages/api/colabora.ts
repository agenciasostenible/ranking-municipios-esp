/**
 * POST /api/colabora
 * Alta de un creador de Instagram (queda pendiente de aprobación).
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);
const esc = (s: string) => String(s).replace(/[&<>"]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c] as string));

export const POST: APIRoute = async ({ request }) => {
  let b: any;
  try { b = await request.json(); } catch { return new Response('bad', { status: 400 }); }

  // Honeypot anti-spam
  if (b.website) return new Response(JSON.stringify({ ok: true }), { status: 200 });

  const nombre = String(b.nombre || '').trim().slice(0, 80);
  const handle = String(b.handle || '').trim().replace(/^@/, '').slice(0, 60);
  const especialidades = String(b.especialidades || '').trim().slice(0, 200);
  const email = String(b.email || '').trim().slice(0, 160);
  const provincias = String(b.provincias || '').trim().slice(0, 600);
  const municipios = String(b.municipios || '').trim().slice(0, 600);
  // Nacional si lo marca, o si no concretó ni provincias ni municipios.
  const nacional = (b.nacional || (!provincias && !municipios)) ? 1 : 0;
  const bio = String(b.bio || '').trim().slice(0, 120);

  if (!nombre || !handle || !email || !especialidades) {
    return new Response('faltan campos', { status: 400 });
  }

  // Foto de perfil: data URL base64 (resize en el navegador), máx ~900 KB.
  let avatarData: string | null = null, avatarMime: string | null = null;
  const foto = typeof b.avatar === 'string' ? b.avatar : '';
  const m = /^data:(image\/(?:jpeg|png|webp));base64,/.exec(foto);
  if (m && foto.length <= 900_000) { avatarData = foto; avatarMime = m[1]; }

  let id: any;
  try {
    const row = await DB.prepare(
      `INSERT INTO creadores (nombre, handle, especialidades, provincias, municipios, nacional, bio, email, avatar_data, avatar_mime, aprobado)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0) RETURNING id`
    ).bind(nombre, handle, especialidades, provincias, municipios, nacional, bio, email, avatarData, avatarMime).first();
    id = row?.id;
  } catch {
    return new Response('error', { status: 500 });
  }

  // Aviso por email (no bloquea la respuesta si falla)
  try {
    const KEY = env('RESEND_API_KEY');
    const ADMIN_KEY = env('ADMIN_KEY');
    const to = env('ADMIN_EMAIL') || 'jlalvarez600@gmail.com';
    if (KEY && id) {
      const origin = new URL(request.url).origin;
      const zona = nacional ? '🌍 Toda España' : [provincias && `📍 ${provincias}`, municipios && `🏘️ ${municipios.split(',').length} municipio(s)`].filter(Boolean).join(' · ');
      const fotoTag = avatarData ? `<p><img src="${origin}/api/creador-foto?id=${id}" alt="" style="width:90px;height:90px;border-radius:50%;object-fit:cover"></p>` : '';
      const aprobar = ADMIN_KEY ? `${origin}/api/creador-moderar?key=${encodeURIComponent(ADMIN_KEY)}&id=${id}&accion=aprobar` : '';
      const panel = ADMIN_KEY ? `${origin}/admin/creadores?key=${encodeURIComponent(ADMIN_KEY)}` : '';
      const html = `
        <h2>Nuevo creador de Instagram para revisar</h2>
        ${fotoTag}
        <p><b>${esc(nombre)}</b> · <a href="https://instagram.com/${esc(handle)}">@${esc(handle)}</a></p>
        <p>🏷️ ${esc(especialidades)}<br>${esc(zona)}</p>
        ${bio ? `<p>${esc(bio)}</p>` : ''}
        <p>✉️ ${esc(email)}</p>
        <p style="margin-top:18px">
          ${aprobar ? `<a href="${aprobar}" style="background:#16a34a;color:#fff;padding:11px 20px;border-radius:8px;text-decoration:none;font-weight:700;margin-right:10px">✅ Aprobar</a>` : ''}
          ${panel ? `<a href="${panel}" style="background:#d63384;color:#fff;padding:11px 20px;border-radius:8px;text-decoration:none;font-weight:700">✏️ Ver / editar en el panel</a>` : ''}
        </p>`;
      await fetch('https://api.resend.com/emails', {
        method: 'POST',
        headers: { Authorization: `Bearer ${KEY}`, 'Content-Type': 'application/json' },
        body: JSON.stringify({
          from: 'Ranking Spain <onboarding@resend.dev>',
          to: [to], subject: `📸 Nuevo creador: ${nombre} (@${handle})`, html,
        }),
      });
    }
  } catch { /* el alta ya está guardada; el panel admin es el respaldo */ }

  return new Response(JSON.stringify({ ok: true }), { status: 200, headers: { 'Content-Type': 'application/json' } });
};

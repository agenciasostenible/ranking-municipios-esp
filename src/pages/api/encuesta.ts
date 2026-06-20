/**
 * POST /api/encuesta
 * Una persona (instagramer) manda su municipio favorito para pasar 2 días.
 * Queda guardado y se avisa por email con enlace para descargar la imagen.
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

  const handle = String(b.handle || '').trim().replace(/^@/, '').slice(0, 60);
  const sitio = String(b.sitio || '').trim().slice(0, 80);
  const codigo = String(b.codigo || '').trim().slice(0, 10) || null;
  const provincia = String(b.provincia || '').trim().slice(0, 60) || null;
  const frase = String(b.frase || '').trim().slice(0, 140) || null;

  if (!handle || !sitio) return new Response('faltan campos', { status: 400 });

  // Foto de perfil opcional (data URL base64, ya redimensionada en el navegador).
  let avatarData: string | null = null, avatarMime: string | null = null;
  const foto = typeof b.avatar === 'string' ? b.avatar : '';
  const m = /^data:(image\/(?:jpeg|png|webp));base64,/.exec(foto);
  if (m && foto.length <= 900_000) { avatarData = foto; avatarMime = m[1]; }

  let id: any;
  try {
    const row = await DB.prepare(
      `INSERT INTO encuesta (handle, sitio, codigo_ine, provincia, frase, avatar_data, avatar_mime, publicado)
       VALUES (?, ?, ?, ?, ?, ?, ?, 0) RETURNING id`
    ).bind(handle, sitio, codigo, provincia, frase, avatarData, avatarMime).first();
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
      const lugar = sitio + (provincia ? ` (${provincia})` : '');
      const imgUrl = `${origin}/api/og/encuesta/${id}`;
      const panel = ADMIN_KEY ? `${origin}/admin/encuesta?key=${encodeURIComponent(ADMIN_KEY)}` : '';
      const html = `
        <h2>Nueva recomendación de un instagramer</h2>
        <p><a href="https://instagram.com/${esc(handle)}"><b>@${esc(handle)}</b></a> recomienda pasar 2 días en:</p>
        <p style="font-size:22px;font-weight:800;color:#d63384;margin:6px 0">${esc(lugar)}</p>
        ${frase ? `<p style="color:#555">“${esc(frase)}”</p>` : ''}
        <p style="margin:18px 0">
          <img src="${imgUrl}" alt="" style="width:230px;border-radius:12px;border:1px solid #eee">
        </p>
        <p>
          <a href="${imgUrl}?dl=1" style="background:#16a34a;color:#fff;padding:11px 20px;border-radius:8px;text-decoration:none;font-weight:700;margin-right:10px">⬇️ Descargar imagen</a>
          ${panel ? `<a href="${panel}" style="background:#d63384;color:#fff;padding:11px 20px;border-radius:8px;text-decoration:none;font-weight:700">🗂️ Abrir panel</a>` : ''}
        </p>`;
      await fetch('https://api.resend.com/emails', {
        method: 'POST',
        headers: { Authorization: `Bearer ${KEY}`, 'Content-Type': 'application/json' },
        body: JSON.stringify({
          from: 'Ranking Spain <onboarding@resend.dev>',
          to: [to], subject: `📸 @${handle} → ${lugar}`, html,
        }),
      });
    }
  } catch { /* el alta ya está guardada; el panel admin es el respaldo */ }

  return new Response(JSON.stringify({ ok: true }), { status: 200, headers: { 'Content-Type': 'application/json' } });
};

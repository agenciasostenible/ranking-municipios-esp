/**
 * POST /api/instagramers
 * Registro de un instagramer: handle + municipios recomendados.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const esc = (s: string) => String(s).replace(/[&<>"]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c] as string));
const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

export const POST: APIRoute = async ({ request }) => {
  let b: any;
  try { b = await request.json(); } catch { return new Response('bad', { status: 400 }); }

  // Honeypot
  if (b.website) return new Response(JSON.stringify({ ok: true }), { status: 200 });

  const handle = String(b.handle || '').trim().replace(/^@/, '').slice(0, 60);
  const nombre = String(b.nombre || '').trim().slice(0, 80) || null;
  const especialidad = String(b.especialidad || '').trim().slice(0, 40) || null;
  const bio = String(b.bio || '').trim().slice(0, 200) || null;
  // municipios: array of {nombre_sitio, codigo_ine?, provincia?}
  const munis: any[] = Array.isArray(b.municipios) ? b.municipios.slice(0, 5) : [];

  if (!handle || munis.length === 0) return new Response('faltan campos', { status: 400 });

  let id: any;
  try {
    const row = await DB.prepare(
      `INSERT INTO instagramers (handle, nombre, especialidad, bio, verificado)
       VALUES (?, ?, ?, ?, 0) RETURNING id`
    ).bind(handle, nombre, especialidad, bio).first();
    id = row?.id;
    if (!id) throw new Error('no id');

    for (const m of munis) {
      const sitio = String(m.nombre_sitio || '').trim().slice(0, 80);
      if (!sitio) continue;
      const codigo = String(m.codigo_ine || '').trim().slice(0, 10) || null;
      const prov = String(m.provincia || '').trim().slice(0, 60) || null;
      await DB.prepare(
        `INSERT INTO instagramer_municipios (instagramer_id, codigo_ine, nombre_sitio, provincia)
         VALUES (?, ?, ?, ?)`
      ).bind(id, codigo, sitio, prov).run();
    }
  } catch {
    return new Response('error', { status: 500 });
  }

  // Email aviso admin
  try {
    const KEY = env('RESEND_API_KEY');
    const ADMIN_KEY = env('ADMIN_KEY');
    const to = env('ADMIN_EMAIL') || 'jlalvarez600@gmail.com';
    if (KEY && id) {
      const origin = new URL(request.url).origin;
      const panel = ADMIN_KEY ? `${origin}/admin/instagramers?key=${encodeURIComponent(ADMIN_KEY)}` : '';
      const lista = munis.map((m) => `<li>${esc(m.nombre_sitio || '')}${m.provincia ? ` (${esc(m.provincia)})` : ''}</li>`).join('');
      const html = `
        <h2>Nuevo instagramer registrado</h2>
        <p><a href="https://instagram.com/${esc(handle)}"><b>@${esc(handle)}</b></a>${nombre ? ` — ${esc(nombre)}` : ''}</p>
        ${especialidad ? `<p>Especialidad: <b>${esc(especialidad)}</b></p>` : ''}
        ${bio ? `<p style="color:#555">"${esc(bio)}"</p>` : ''}
        <p>Municipios recomendados:</p>
        <ul>${lista}</ul>
        ${panel ? `<p><a href="${panel}" style="background:#7c3aed;color:#fff;padding:11px 20px;border-radius:8px;text-decoration:none;font-weight:700">🗂️ Aprobar/rechazar</a></p>` : ''}`;
      await fetch('https://api.resend.com/emails', {
        method: 'POST',
        headers: { Authorization: `Bearer ${KEY}`, 'Content-Type': 'application/json' },
        body: JSON.stringify({
          from: 'Ranking Spain <onboarding@resend.dev>',
          to: [to], subject: `📸 Nuevo instagramer: @${handle}`, html,
        }),
      });
    }
  } catch { /* non-blocking */ }

  return new Response(JSON.stringify({ ok: true }), { status: 200, headers: { 'Content-Type': 'application/json' } });
};

/**
 * POST /api/anuncios
 * ------------------
 * Recibe el formulario de "Anuncia tu negocio", lo guarda como PENDIENTE en D1
 * y avisa al equipo por email (Resend) con botones Aprobar / Rechazar.
 *
 * Variables de entorno (todas opcionales; el envío se guarda igual):
 *   RESEND_API_KEY  — para enviar el email de aviso (si falta, se omite el email)
 *   ADMIN_EMAIL     — destinatario del aviso (por defecto jlalvarez600@gmail.com)
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? process.env[k] : undefined);

const TIPOS_OK = ['gastronomia', 'rural', 'hotel', 'cafe', 'bar', 'activo', 'otro'];
const MAX_FOTO = 900_000;  // ~900 KB de data URL (la foto se redimensiona en el navegador)

const okJson = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

export const POST: APIRoute = async ({ request }) => {
  let body: any;
  try { body = await request.json(); } catch { return okJson({ ok: false, error: 'bad_json' }, 400); }

  // Honeypot anti-spam: si viene relleno, fingimos éxito y descartamos.
  if (body.website) return okJson({ ok: true });

  const tipo = String(body.tipo || '').trim();
  const nombre = String(body.nombre || '').trim().slice(0, 120);
  const email = String(body.email || '').trim().slice(0, 160);
  const municipio = String(body.municipio || '').trim().slice(0, 120);
  if (!nombre || !TIPOS_OK.includes(tipo) || !email || !municipio) {
    return okJson({ ok: false, error: 'faltan_datos' }, 400);
  }
  if (!/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(email)) return okJson({ ok: false, error: 'email' }, 400);

  // Foto opcional (data URL base64 generada en el cliente)
  let fotoData: string | null = null, fotoMime: string | null = null;
  const foto = typeof body.foto === 'string' ? body.foto : '';
  const m = /^data:(image\/(?:jpeg|png|webp));base64,/.exec(foto);
  if (m && foto.length <= MAX_FOTO) { fotoData = foto; fotoMime = m[1]; }

  const token = (globalThis.crypto?.randomUUID?.() ?? String(Math.random()).slice(2)) + String(Date.now());

  const row = await DB.prepare(
    `INSERT INTO anuncios
       (codigo_ine, municipio, provincia, tipo, nombre, descripcion, direccion,
        contacto, email, telefono, web, foto_data, foto_mime, token)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
     RETURNING id`
  ).bind(
    body.codigo_ine || null, municipio, body.provincia || null, tipo, nombre,
    String(body.descripcion || '').slice(0, 600) || null,
    String(body.direccion || '').slice(0, 200) || null,
    String(body.contacto || '').slice(0, 120) || null,
    email,
    String(body.telefono || '').slice(0, 40) || null,
    String(body.web || '').slice(0, 200) || null,
    fotoData, fotoMime, token,
  ).first();

  const id = row?.id;

  // Aviso por email con enlaces de moderación (no bloquea la respuesta si falla)
  try {
    const KEY = env('RESEND_API_KEY');
    const to = env('ADMIN_EMAIL') || 'jlalvarez600@gmail.com';
    if (KEY && id) {
      const origin = new URL(request.url).origin;
      const link = (accion: string) => `${origin}/api/anuncio-moderar?id=${id}&token=${encodeURIComponent(token)}&accion=${accion}`;
      const fotoTag = fotoData ? `<p><img src="${origin}/api/anuncio-foto?id=${id}" alt="" style="max-width:320px;border-radius:8px"></p>` : '';
      const html = `
        <h2>Nuevo establecimiento para revisar</h2>
        <p><b>${esc(nombre)}</b> · ${esc(tipo)}<br>${esc(municipio)}${body.provincia ? ' (' + esc(body.provincia) + ')' : ''}</p>
        ${body.descripcion ? `<p>${esc(String(body.descripcion))}</p>` : ''}
        <p>📍 ${esc(String(body.direccion || '—'))}<br>
           ✉️ ${esc(email)} · 📞 ${esc(String(body.telefono || '—'))}${body.web ? ` · 🔗 ${esc(String(body.web))}` : ''}<br>
           👤 ${esc(String(body.contacto || '—'))}</p>
        ${fotoTag}
        <p style="margin-top:18px">
          <a href="${link('aprobar')}" style="background:#16a34a;color:#fff;padding:11px 20px;border-radius:8px;text-decoration:none;font-weight:700;margin-right:10px">✅ Aprobar</a>
          <a href="${link('rechazar')}" style="background:#dc2626;color:#fff;padding:11px 20px;border-radius:8px;text-decoration:none;font-weight:700">❌ Rechazar</a>
        </p>`;
      await fetch('https://api.resend.com/emails', {
        method: 'POST',
        headers: { Authorization: `Bearer ${KEY}`, 'Content-Type': 'application/json' },
        body: JSON.stringify({
          from: 'Ranking Spain <onboarding@resend.dev>',
          to: [to], subject: `📢 Nuevo anuncio: ${nombre} (${municipio})`, html,
        }),
      });
    }
  } catch { /* el envío ya está guardado; el panel admin es el respaldo */ }

  return okJson({ ok: true });
};

function esc(s: string): string {
  return String(s).replace(/[&<>"]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c] as string));
}

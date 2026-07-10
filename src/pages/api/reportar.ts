/**
 * POST /api/reportar
 * Recibe reportes de errores en fichas (uno o varios sitios). Los guarda como
 * PENDIENTE y avisa por email. No borra nada: la moderación es manual.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? process.env[k] : undefined);

const okJson = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

const MOTIVOS = ['no_existe', 'otro_municipio', 'nombre_mal', 'falta_info', 'otro'];
const MOTIVO_TXT: Record<string, string> = {
  no_existe: 'No existe', otro_municipio: 'Está en otro municipio',
  nombre_mal: 'Nombre incorrecto', falta_info: 'Falta información / desactualizado', otro: 'Otro',
};

export const POST: APIRoute = async ({ request }) => {
  let b: any;
  try { b = await request.json(); } catch { return okJson({ ok: false }, 400); }
  if (b.website) return okJson({ ok: true }); // honeypot

  const codigo = String(b.codigo_ine || '').trim().slice(0, 12);
  const municipio = String(b.municipio || '').trim().slice(0, 120);
  const origen = b.origen === 'ayuntamiento' ? 'ayuntamiento' : 'ficha';
  const email = String(b.email || '').trim().slice(0, 160) || null;
  const comentario = String(b.comentario || '').trim().slice(0, 800) || null;
  // items: [{ entidad_id, entidad_nombre, motivo }]
  const items: any[] = Array.isArray(b.items) ? b.items.slice(0, 60) : [];
  if (!codigo || (items.length === 0 && !comentario)) return okJson({ ok: false, error: 'vacio' }, 400);

  const token = (globalThis.crypto?.randomUUID?.() ?? String(Math.random()).slice(2)) + String(Date.now());
  const filas = items.length ? items : [{ entidad_id: null, entidad_nombre: null, motivo: 'otro' }];
  const ids: number[] = [];
  for (const it of filas) {
    const motivo = MOTIVOS.includes(it.motivo) ? it.motivo : 'otro';
    const row = await DB.prepare(
      `INSERT INTO reportes (codigo_ine, municipio, entidad_id, entidad_nombre, motivo, comentario, email, origen, token)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?) RETURNING id`
    ).bind(
      codigo, municipio,
      it.entidad_id ? parseInt(it.entidad_id) : null,
      String(it.entidad_nombre || '').slice(0, 160) || null,
      motivo, comentario, email, origen, token,
    ).first();
    if (row?.id) ids.push(row.id as number);
  }

  // aviso por email (no bloquea)
  try {
    const KEY = env('RESEND_API_KEY');
    const to = env('ADMIN_EMAIL') || 'jlalvarez600@gmail.com';
    if (KEY && ids.length) {
      const origin = new URL(request.url).origin;
      const esc = (s: string) => String(s).replace(/[&<>]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;' }[c] as string));
      const lista = filas.map((it) => `<li><b>${esc(it.entidad_nombre || '(general)')}</b> — ${MOTIVO_TXT[MOTIVOS.includes(it.motivo) ? it.motivo : 'otro']}</li>`).join('');
      const html = `
        <h2>Nuevo reporte de error · ${esc(municipio)}</h2>
        <p>Origen: <b>${origen === 'ayuntamiento' ? 'Ayuntamiento (revisión completa)' : 'Ficha pública'}</b></p>
        <ul>${lista}</ul>
        ${comentario ? `<p><i>"${esc(comentario)}"</i></p>` : ''}
        ${email ? `<p>Contacto: ${esc(email)}</p>` : ''}
        <p style="margin-top:16px"><a href="${origin}/admin/reportes?key=${encodeURIComponent(env('ADMIN_KEY') || '')}" style="background:#FF385C;color:#fff;padding:11px 20px;border-radius:8px;text-decoration:none;font-weight:700">Revisar en el panel</a></p>`;
      await fetch('https://api.resend.com/emails', {
        method: 'POST',
        headers: { Authorization: `Bearer ${KEY}`, 'Content-Type': 'application/json' },
        body: JSON.stringify({ from: 'Ranking Spain <onboarding@resend.dev>', to: [to], subject: `🔧 Reporte: ${municipio} (${filas.length})`, html }),
      });
    }
  } catch { /* guardado ya, el panel es el respaldo */ }

  return okJson({ ok: true });
};

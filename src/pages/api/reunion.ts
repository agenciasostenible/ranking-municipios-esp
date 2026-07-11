/**
 * API pública de reservas de videollamada con ayuntamientos.
 *   GET  /api/reunion            → huecos libres de los próximos 21 días
 *   POST /api/reunion            → reservar { id, codigo_ine, nombre, cargo, email, telefono }
 * Al reservar: marca el hueco, genera enlace Jitsi y envía confirmación
 * al ayuntamiento + aviso al admin (Resend, desde info@).
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

const okJson = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

const esc = (s: string) =>
  String(s ?? '').replace(/[&<>"]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c] as string));

const DIAS = ['domingo', 'lunes', 'martes', 'miércoles', 'jueves', 'viernes', 'sábado'];
const MESES = ['enero','febrero','marzo','abril','mayo','junio','julio','agosto','septiembre','octubre','noviembre','diciembre'];
export function fechaBonita(fecha: string): string {
  const d = new Date(fecha + 'T12:00:00');
  return `${DIAS[d.getDay()]} ${d.getDate()} de ${MESES[d.getMonth()]}`;
}

export const GET: APIRoute = async () => {
  const { results } = await DB.prepare(
    `SELECT id, fecha, hora FROM reuniones
      WHERE estado='libre' AND fecha >= date('now') AND fecha <= date('now','+21 days')
      ORDER BY fecha, hora`
  ).all();
  return okJson({ ok: true, huecos: results || [] });
};

export const POST: APIRoute = async ({ request }) => {
  let b: any = {};
  try { b = await request.json(); } catch { return okJson({ ok: false }, 400); }
  if (b.website) return okJson({ ok: true }); // honeypot

  const id = parseInt(b.id);
  const nombre = String(b.nombre || '').trim().slice(0, 120);
  const cargo = String(b.cargo || '').trim().slice(0, 120);
  const email = String(b.email || '').trim().toLowerCase().slice(0, 160);
  const telefono = String(b.telefono || '').trim().slice(0, 40);
  const codigo = String(b.codigo_ine || '').trim().slice(0, 12);
  if (!id || !nombre || !/^[^@\s]+@[^@\s]+\.[a-z]{2,}$/i.test(email)) return okJson({ ok: false, error: 'faltan_datos' }, 400);

  const muni = codigo
    ? await DB.prepare(`SELECT codigo_ine, nombre, provincia FROM municipios WHERE codigo_ine = ?`).bind(codigo).first() as any
    : null;
  const muniNombre = muni?.nombre || 'vuestro municipio';

  const hueco = await DB.prepare(`SELECT id, fecha, hora, estado FROM reuniones WHERE id = ?`).bind(id).first() as any;
  if (!hueco || hueco.estado !== 'libre') return okJson({ ok: false, error: 'hueco_ocupado' }, 409);

  const enlace = `https://meet.jit.si/RankingSpain-${(codigo || 'muni')}-${hueco.fecha.replace(/-/g, '')}-${hueco.hora.replace(':', '')}`;
  const upd = await DB.prepare(
    `UPDATE reuniones SET estado='reservada', codigo_ine=?, municipio=?, nombre=?, cargo=?, email=?, telefono=?, enlace=?, reservado_at=datetime('now')
      WHERE id = ? AND estado='libre'`
  ).bind(codigo || null, muni?.nombre || null, nombre, cargo || null, email, telefono || null, enlace, id).run();
  if (!(upd as any)?.meta?.changes) return okJson({ ok: false, error: 'hueco_ocupado' }, 409);

  const cuando = `${fechaBonita(hueco.fecha)} a las ${hueco.hora}`;
  // enlace "añadir a Google Calendar" (30 min, hora española)
  const ini = `${hueco.fecha.replace(/-/g, '')}T${hueco.hora.replace(':', '')}00`;
  const finH = String(parseInt(hueco.hora.slice(0, 2)) + (hueco.hora.slice(3) === '30' ? 1 : 0)).padStart(2, '0');
  const finM = hueco.hora.slice(3) === '30' ? '00' : '30';
  const fin = `${hueco.fecha.replace(/-/g, '')}T${finH}${finM}00`;
  const gcal = `https://calendar.google.com/calendar/render?action=TEMPLATE&text=${encodeURIComponent(`Videollamada Ranking Spain · ${muniNombre}`)}&dates=${ini}/${fin}&ctz=Europe/Madrid&details=${encodeURIComponent(`Enlace de la videollamada: ${enlace}`)}`;

  try {
    const KEY = env('RESEND_API_KEY');
    const adminEmail = env('ADMIN_EMAIL') || 'jlalvarez600@gmail.com';
    if (KEY) {
      const conf = `<!doctype html><html><body style="margin:0;background:#f6f6f7;font-family:-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif;color:#222;line-height:1.6">
      <div style="max-width:560px;margin:0 auto;padding:28px 22px">
        <div style="font-size:20px;font-weight:800;margin-bottom:20px"><span style="color:#FF385C">Ranking</span> Spain</div>
        <p>Hola, ${esc(nombre)}:</p>
        <p>Confirmada la videollamada para repasar la ficha de <b>${esc(muniNombre)}</b>:</p>
        <div style="background:#fff;border:2px solid #FF385C;border-radius:14px;padding:18px;text-align:center;margin:20px 0">
          <p style="margin:0 0 6px;font-size:18px;font-weight:800">📅 ${esc(cuando)}</p>
          <p style="margin:0 0 14px;color:#666;font-size:14px">Duración aproximada: 30 minutos</p>
          <a href="${enlace}" style="display:inline-block;background:#FF385C;color:#fff;padding:14px 26px;border-radius:12px;text-decoration:none;font-weight:800;font-size:16px">🎥 Entrar a la videollamada</a>
          <p style="margin:12px 0 0;font-size:12.5px;color:#999">Se abre en el navegador, sin instalar nada. Guardad este correo.</p>
        </div>
        <p style="text-align:center"><a href="${gcal}" style="color:#FF385C;font-weight:700;text-decoration:none">➕ Añadir a Google Calendar</a></p>
        <p>Si os surge un imprevisto, respondednos a este correo y buscamos otro momento sin problema.</p>
        <p>Un saludo,<br><b>El equipo de Ranking Spain</b><br>📞 681 24 86 99 · info@rankingspain.com</p>
      </div></body></html>`;
      await fetch('https://api.resend.com/emails', {
        method: 'POST',
        headers: { Authorization: `Bearer ${KEY}`, 'Content-Type': 'application/json' },
        body: JSON.stringify({
          from: 'Ranking Spain <info@rankingspain.com>', to: [email], reply_to: 'info@rankingspain.com',
          subject: `✅ Videollamada confirmada: ${cuando} · Ranking Spain`, html: conf,
        }),
      });
      await fetch('https://api.resend.com/emails', {
        method: 'POST',
        headers: { Authorization: `Bearer ${KEY}`, 'Content-Type': 'application/json' },
        body: JSON.stringify({
          from: 'Ranking Spain <info@rankingspain.com>', to: [adminEmail],
          subject: `📅 Nueva reunión: ${esc(muniNombre)} · ${cuando}`,
          html: `<p><b>${esc(muniNombre)}</b> ha reservado videollamada.</p>
                 <p>📅 <b>${esc(cuando)}</b><br>👤 ${esc(nombre)}${cargo ? ` (${esc(cargo)})` : ''}<br>✉️ ${esc(email)}${telefono ? `<br>📞 ${esc(telefono)}` : ''}</p>
                 <p>🎥 <a href="${enlace}">${enlace}</a></p>
                 <p><a href="${gcal}">➕ Añadir a Google Calendar</a></p>`,
        }),
      });
    }
  } catch { /* la reserva ya está guardada; el panel es el respaldo */ }

  return okJson({ ok: true, fecha: hueco.fecha, hora: hueco.hora, cuando, enlace, gcal });
};

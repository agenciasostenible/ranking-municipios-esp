/**
 * POST /api/admin/campana?key=ADMIN_KEY
 * Envía la campaña de aviso a los ayuntamientos desde info@rankingspain.com (Resend).
 *
 *   body { modo: 'test' | 'real', limite?: number }
 *     - test: envía UN correo de muestra (datos de Guadix) a ADMIN_EMAIL. No marca nada.
 *     - real: coge los próximos `limite` ayuntamientos con email y sin enviar,
 *             manda en un batch de Resend (máx 100) y los marca como enviados.
 *
 * NADA se envía solo: este endpoint solo actúa cuando el panel /admin/campana lo llama.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

const okJson = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

const FROM = 'Ranking Spain <info@rankingspain.com>';
const REPLY_TO = 'info@rankingspain.com';
const BASE = 'https://rankingspain.com';
const MAX_BATCH = 100; // límite del endpoint batch de Resend

const esc = (s: string) =>
  String(s ?? '').replace(/[&<>"]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c] as string));

// Un ayuntamiento puede traer varios emails separados por coma/;. Los normaliza.
function parseEmails(raw: string): string[] {
  return String(raw || '')
    .split(/[;,]/).map((e) => e.trim().toLowerCase())
    .filter((e) => /^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(e))
    .filter((e, i, a) => a.indexOf(e) === i)
    .slice(0, 3);
}

function asunto(nombre: string) {
  return `El Ayuntamiento de ${nombre} ya tiene ficha en Ranking Spain — ¿nos ayudáis a dejarla perfecta?`;
}

function html(nombre: string, codigo: string) {
  const ficha = `${BASE}/municipio/${codigo}`;
  const revisar = `${BASE}/revisar/${codigo}`;
  const n = esc(nombre);
  return `<!doctype html><html><body style="margin:0;background:#f6f6f7;font-family:-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif;color:#222;line-height:1.6">
  <div style="max-width:560px;margin:0 auto;padding:28px 22px">
    <div style="font-size:20px;font-weight:800;letter-spacing:-.01em;margin-bottom:20px">
      <span style="color:#FF385C">Ranking</span> <span style="color:#222">Spain</span>
    </div>
    <p>Buenos días:</p>
    <p>Somos <b>Ranking Spain</b> (<a href="${BASE}" style="color:#FF385C;text-decoration:none">rankingspain.com</a>), un proyecto que ordena los más de 8.000 municipios de España con <b>datos verificados, no opiniones</b>. Nació de una idea sencilla: cuando alguien busca dónde viajar, siempre acaba en los diez sitios de siempre —masificados y caros—, mientras miles de pueblos con muchísimo que ofrecer quedan invisibles solo porque nadie habla de ellos. Nosotros queremos darle la vuelta a eso: que la gente descubra cada lugar <b>por sus méritos, no por su fama</b>.</p>
    <p>Analizamos cada municipio en decenas de categorías —monumentos, naturaleza, gastronomía, castillos, fiestas, senderos, miradores, pueblos bonitos y muchas más— y lo mostramos en una ficha pública, con su ranking por provincia y por categoría.</p>
    <p style="font-weight:700">Y aquí viene el motivo de este correo: ${n} ya tiene la suya.</p>
    <p style="text-align:center;margin:22px 0">
      <a href="${ficha}" style="display:inline-block;background:#222;color:#fff;padding:12px 22px;border-radius:10px;text-decoration:none;font-weight:700">Ver la ficha de ${n}</a>
    </p>
    <p>Como nadie conoce ${n} mejor que vosotros, nos encantaría que le echarais un vistazo: comprobar que <b>todo está correcto</b>, que no falta ningún sitio importante, que los nombres y datos son los buenos… para dejarla <b>redonda</b>. Si veis algo que corregir o que añadir, es tan fácil como decírnoslo aquí (2 minutos, sin registrarse):</p>
    <p style="text-align:center;margin:22px 0">
      <a href="${revisar}" style="display:inline-block;background:#FF385C;color:#fff;padding:12px 22px;border-radius:10px;text-decoration:none;font-weight:700">✍️ Corregir o completar la ficha</a>
    </p>
    <p>Lo revisamos y lo actualizamos nosotros. Es un servicio <b>gratuito</b> y sin ninguna contrapartida: solo queremos que vuestro municipio esté lo mejor representado posible y que más gente lo descubra.</p>
    <p>Mil gracias por vuestro tiempo,<br><b>El equipo de Ranking Spain</b><br><a href="${BASE}" style="color:#FF385C;text-decoration:none">rankingspain.com</a> · 📞 <a href="tel:+34681248699" style="color:#222;text-decoration:none">681 24 86 99</a> · <a href="mailto:info@rankingspain.com" style="color:#222;text-decoration:none">info@rankingspain.com</a></p>
    <hr style="border:none;border-top:1px solid #e5e5e5;margin:24px 0 12px">
    <p style="font-size:12px;color:#999;line-height:1.5">
      Recibes este correo porque ${n} figura en el directorio público de municipios de España. Ranking Spain es un proyecto informativo independiente, sin ánimo comercial en esta comunicación. Si no deseáis recibir más correos nuestros, respondednos con <b>BAJA</b> y os retiraremos de inmediato.
    </p>
  </div></body></html>`;
}

export const POST: APIRoute = async ({ request }) => {
  const url = new URL(request.url);
  const key = url.searchParams.get('key') ?? '';
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return okJson({ ok: false, error: 'no_auth' }, 401);

  const KEY = env('RESEND_API_KEY');
  if (!KEY) return okJson({ ok: false, error: 'sin_resend_key' }, 500);

  let body: any = {};
  try { body = await request.json(); } catch { /* vacío */ }
  const modo = body.modo === 'real' ? 'real' : 'test';
  const limite = Math.max(1, Math.min(MAX_BATCH, parseInt(body.limite) || 25));
  const adminEmail = env('ADMIN_EMAIL') || 'jlalvarez600@gmail.com';

  // ---- MODO PRUEBA: un correo de muestra (Guadix) a tu propio buzón ----
  if (modo === 'test') {
    const muni = await DB.prepare(
      `SELECT codigo_ine, nombre FROM municipios WHERE codigo_ine = '18089'`
    ).first() as any;
    const nombre = muni?.nombre || 'Guadix';
    const codigo = muni?.codigo_ine || '18089';
    const res = await fetch('https://api.resend.com/emails', {
      method: 'POST',
      headers: { Authorization: `Bearer ${KEY}`, 'Content-Type': 'application/json' },
      body: JSON.stringify({
        from: FROM, to: [adminEmail], reply_to: REPLY_TO,
        subject: '[PRUEBA] ' + asunto(nombre), html: html(nombre, codigo),
      }),
    });
    const j = await res.json().catch(() => ({}));
    return okJson({ ok: res.ok, modo: 'test', destino: adminEmail, resend: j });
  }

  // ---- MODO REAL: próximos `limite` ayuntamientos con email, sin enviar ----
  const { results } = await DB.prepare(
    `SELECT c.codigo_ine, COALESCE(m.nombre, c.nombre_bdgel) AS nombre, c.email
       FROM ayuntamientos_contacto c
       LEFT JOIN municipios m ON m.codigo_ine = c.codigo_ine
      WHERE c.email LIKE '%@%' AND c.email_enviado_at IS NULL
      ORDER BY c.codigo_ine
      LIMIT ?`
  ).bind(limite).all();
  const filas = (results as any[]) || [];
  if (!filas.length) return okJson({ ok: true, modo: 'real', enviados: 0, nota: 'no quedan pendientes' });

  // Construir el batch de Resend (cada item con sus destinatarios)
  const batch = filas.map((f) => {
    const dest = parseEmails(f.email);
    const nombre = String(f.nombre || '').replace(/^Ayuntamiento de(l| la| los| las)? /i, '') || 'vuestro municipio';
    return {
      _codigo: f.codigo_ine, _dest: dest, nombre,
      email: { from: FROM, to: dest, reply_to: REPLY_TO, subject: asunto(nombre), html: html(nombre, f.codigo_ine) },
    };
  }).filter((x) => x._dest.length > 0);

  if (!batch.length) return okJson({ ok: true, modo: 'real', enviados: 0, nota: 'sin destinatarios válidos' });

  const res = await fetch('https://api.resend.com/emails/batch', {
    method: 'POST',
    headers: { Authorization: `Bearer ${KEY}`, 'Content-Type': 'application/json' },
    body: JSON.stringify(batch.map((b) => b.email)),
  });
  const j = await res.json().catch(() => ({}));
  if (!res.ok) return okJson({ ok: false, modo: 'real', error: 'resend', detalle: j }, 502);

  // Marcar como enviados (batch ok). Resend devuelve {data:[{id},...]} en el mismo orden.
  const now = new Date().toISOString();
  const ids: string[] = Array.isArray(j?.data) ? j.data.map((d: any) => d?.id || '') : [];
  for (let i = 0; i < batch.length; i++) {
    await DB.prepare(
      `UPDATE ayuntamientos_contacto SET email_enviado_at = ?, email_error = NULL WHERE codigo_ine = ?`
    ).bind(now, batch[i]._codigo).run();
  }

  return okJson({ ok: true, modo: 'real', enviados: batch.length, ids: ids.slice(0, 3) });
};

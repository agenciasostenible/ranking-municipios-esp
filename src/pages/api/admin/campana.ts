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
// Solo ASCII: Resend rechaza el batch ENTERO si un email trae ñ/tildes (422).
function parseEmails(raw: string): string[] {
  return String(raw || '')
    .split(/[;,]/).map((e) => e.trim().toLowerCase())
    .filter((e) => /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$/.test(e))
    .filter((e, i, a) => a.indexOf(e) === i)
    .slice(0, 3);
}

function asunto(nombre: string) {
  return `El Ayuntamiento de ${nombre} ya tiene ficha en Ranking Spain. ¿Nos ayudáis a dejarla perfecta?`;
}

// ---- Personalización: primer párrafo con datos reales del municipio ----
// Sin puestos de ranking (los almacenados están obsoletos): sellos, joyas con
// nombre propio y categorías con nota alta. 3 redacciones que rotan por código.
const SELLOS_FUENTE = ['unesco', 'pueblos_mas_bonitos', 'guia_michelin', 'bandera_azul', 'starlight'];
const JOYA_TIPOS = ['castillo','alcazaba','fortaleza','monasterio','catedral','conjunto','conjunto_historico','monumento','museo','cueva','palacio','muralla','torre'];
const JOYA_FUENTES = ['unesco','BIC','excel_curado','inventario_castillos_pdf','inventario_monumentos_pdf'];
const CAT_LABEL: Record<string, string> = {
  fiestas: 'sus fiestas', monumentos: 'patrimonio monumental', castillos: 'sus castillos',
  gastronomia: 'gastronomía', playas: 'sus playas', senderismo: 'senderismo',
  miradores: 'sus miradores', museos: 'sus museos', TurismoRural: 'turismo rural',
  estrellas: 'su cielo nocturno', pozas: 'turismo de agua dulce', vinos: 'enoturismo',
  ciclismo: 'cicloturismo', cuevas: 'sus cuevas', balnearios: 'termalismo',
  festivales: 'sus festivales', oleoturismo: 'oleoturismo', turismo_religioso: 'turismo religioso',
  naturaleza: 'naturaleza', misterio: 'turismo misterioso',
};

type Datos = { sellos: Map<string, { n: number; ej: string }>; joyas: string[]; cats: string[] };

async function cargarDatos(codes: string[]): Promise<Map<string, Datos>> {
  const out = new Map<string, Datos>();
  if (!codes.length) return out;
  for (const c of codes) out.set(c, { sellos: new Map(), joyas: [], cats: [] });
  const ph = codes.map(() => '?').join(',');
  const fu = SELLOS_FUENTE.map((s) => `'${s}'`).join(',');
  const jf = JOYA_FUENTES.map((s) => `'${s}'`).join(',');
  const jt = JOYA_TIPOS.map((s) => `'${s}'`).join(',');
  const ents = await DB.prepare(
    `SELECT codigo_ine, nombre, fuente FROM entidades
      WHERE codigo_ine IN (${ph}) AND (fuente IN (${fu}) OR (tipo IN (${jt}) AND fuente IN (${jf})))
      ORDER BY CASE fuente WHEN 'unesco' THEN 0 WHEN 'BIC' THEN 1 WHEN 'inventario_castillos_pdf' THEN 2 ELSE 3 END`
  ).bind(...codes).all();
  const cl = Object.keys(CAT_LABEL).map((c) => `'${c}'`).join(',');
  const punts = await DB.prepare(
    `SELECT codigo_ine, categoria, puntuacion FROM puntuaciones
      WHERE codigo_ine IN (${ph}) AND puntuacion >= 82 AND categoria IN (${cl})
      ORDER BY puntuacion DESC`
  ).bind(...codes).all();
  for (const e of (ents.results as any[]) || []) {
    const d = out.get(e.codigo_ine); if (!d) continue;
    if (SELLOS_FUENTE.includes(e.fuente)) {
      const s = d.sellos.get(e.fuente) || { n: 0, ej: e.nombre };
      s.n++; d.sellos.set(e.fuente, s);
    } else if (d.joyas.length < 2 && e.nombre && e.nombre.length <= 60 && !/[\[\]{}]/.test(e.nombre) && !/\b(\S+)\s+\1\b/i.test(e.nombre) && !d.joyas.includes(e.nombre)) {
      d.joyas.push(e.nombre);
    }
  }
  for (const p of (punts.results as any[]) || []) {
    const d = out.get(p.codigo_ine); if (!d) continue;
    const l = CAT_LABEL[p.categoria];
    if (l && d.cats.length < 2 && !d.cats.includes(l)) d.cats.push(l);
  }
  return out;
}

// Frases nominales para poder decir "presumir de X" o "sin olvidar X"
function fraseSellos(sellos: Map<string, { n: number; ej: string }>): string[] {
  const out: string[] = [];
  if (sellos.has('unesco')) out.push('el sello de la UNESCO como Patrimonio Mundial');
  if (sellos.has('pueblos_mas_bonitos')) out.push('el sello de Los Pueblos Más Bonitos de España');
  const mi = sellos.get('guia_michelin');
  if (mi) out.push(mi.n === 1 ? `la estrella Michelin de ${esc(mi.ej)}` : `sus ${mi.n} restaurantes con estrella Michelin`);
  if (sellos.has('bandera_azul')) out.push('la Bandera Azul de sus playas');
  if (sellos.has('starlight')) out.push('la certificación Starlight de su cielo nocturno');
  return out;
}

function intro(nombre: string, codigo: string, d?: Datos): string {
  if (!d) return '';
  const n = esc(nombre);
  const lista = (a: string[]) => (a.length >= 2 ? `${a[0]} y ${a[1]}` : a[0]);
  const joyas = d.joyas.slice(0, 2).map((j) => `<b>${esc(j)}</b>`);
  const sellos = fraseSellos(d.sellos).slice(0, 2);
  const cats = d.cats.slice(0, 2).map((c) => `<b>${c}</b>`);
  if (!joyas.length && !sellos.length && !cats.length) return '';
  const v = (parseInt(codigo.replace(/\D/g, '') || '0', 10)) % 3;

  // Frase 1: el gancho
  const gancho = [
    `Antes de nada, os lo decimos tal cual: en ${n} hay mucho que enseñar.`,
    `Os lo decimos con franqueza: ${n} nos parece una auténtica joya.`,
    `Lo primero: no os escribimos por escribir, sabemos muy bien a qué puerta llamamos.`,
  ][v];

  // Frase 2: el motivo (joyas y sellos)
  let motivo = '';
  if (joyas.length && sellos.length) motivo = ` Ahí están ${lista(joyas)}, sin olvidar ${lista(sellos)}.`;
  else if (joyas.length) motivo = ` Ahí están ${lista(joyas)}, que no es poca cosa.`;
  else if (sellos.length) motivo = ` Pocos municipios pueden presumir de ${lista(sellos)}.`;

  // Frase 3: las categorías donde puntúa alto
  const remate = cats.length ? [
    ` Y los números lo confirman: en nuestros análisis sobresale en ${lista(cats)}.`,
    ` Así que no nos extraña que en nuestros análisis puntúe tan alto en ${lista(cats)}.`,
    ` En nuestros análisis, ${n} saca muy buena nota en ${lista(cats)}.`,
  ][v] : '';

  return `${gancho}${motivo}${remate}`;
}

function html(nombre: string, codigo: string, extra = '') {
  const ficha = `${BASE}/municipio/${codigo}`;
  const revisar = `${BASE}/revisar/${codigo}`;
  const n = esc(nombre);
  return `<!doctype html><html><body style="margin:0;background:#f6f6f7;font-family:-apple-system,Segoe UI,Roboto,Helvetica,Arial,sans-serif;color:#222;line-height:1.6">
  <div style="max-width:560px;margin:0 auto;padding:28px 22px">
    <div style="font-size:20px;font-weight:800;letter-spacing:-.01em;margin-bottom:20px">
      <span style="color:#FF385C">Ranking</span> <span style="color:#222">Spain</span>
    </div>
    <p>Buenos días:</p>
    ${extra ? `<p>${extra}</p>` : ''}
    <p>Somos <b>Ranking Spain</b> (<a href="${BASE}" style="color:#FF385C;text-decoration:none">rankingspain.com</a>), un proyecto que ordena los más de 8.000 municipios de España con <b>datos verificados, no opiniones</b>. Nació de una idea sencilla: cuando alguien busca dónde viajar, siempre acaba en los diez sitios de siempre, masificados y caros, mientras miles de pueblos con muchísimo que ofrecer se quedan sin visitas solo porque nadie habla de ellos. Nosotros queremos darle la vuelta a eso: que la gente descubra cada lugar <b>por sus méritos, no por su fama</b>.</p>
    <p>Analizamos cada municipio en decenas de categorías (monumentos, naturaleza, gastronomía, castillos, fiestas, senderos, miradores, pueblos bonitos y muchas más) y lo mostramos en una ficha pública, con su ranking por provincia y por categoría.</p>
    <p style="font-weight:700">Y aquí viene el motivo de este correo: ${n} ya tiene la suya.</p>
    <p style="text-align:center;margin:26px 0 6px">
      <a href="${ficha}" style="display:inline-block;background:#222;color:#fff;padding:15px 30px;border-radius:12px;text-decoration:none;font-weight:800;font-size:17px;box-shadow:0 4px 14px rgba(0,0,0,.18)">👉 Ver la ficha de ${n}</a>
    </p>
    <p style="text-align:center;margin:0 0 22px;font-size:12.5px;color:#999">Se abre en el navegador, sin registros ni descargas.</p>
    <p>Como nadie conoce ${n} mejor que vosotros, nos encantaría que le echarais un vistazo: que <b>todo esté correcto</b>, que no falte ningún sitio importante, que los nombres y datos sean los buenos… vamos, dejarla <b>redonda</b>.</p>
    <div style="background:#fff;border:2px solid #FF385C;border-radius:14px;padding:18px 16px;margin:24px 0;text-align:center">
      <p style="margin:0 0 12px;font-weight:700;font-size:15.5px">¿Veis algo que falta o que no está bien?</p>
      <a href="${revisar}" style="display:inline-block;background:#FF385C;color:#fff;padding:15px 30px;border-radius:12px;text-decoration:none;font-weight:800;font-size:17px;box-shadow:0 4px 14px rgba(255,56,92,.35)">✍️ Corregir o completar la ficha</a>
      <p style="margin:12px 0 0;font-size:12.5px;color:#999">2 minutos, sin registrarse. Lo cambiamos nosotros.</p>
    </div>
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
    const datosTest = await cargarDatos([codigo]);
    const res = await fetch('https://api.resend.com/emails', {
      method: 'POST',
      headers: { Authorization: `Bearer ${KEY}`, 'Content-Type': 'application/json' },
      body: JSON.stringify({
        from: FROM, to: [adminEmail], reply_to: REPLY_TO,
        subject: '[PRUEBA] ' + asunto(nombre), html: html(nombre, codigo, intro(nombre, codigo, datosTest.get(codigo))),
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
      WHERE c.email LIKE '%@%' AND c.email_enviado_at IS NULL AND c.email_error IS NULL
      ORDER BY c.codigo_ine
      LIMIT ?`
  ).bind(limite).all();
  const filas = (results as any[]) || [];
  if (!filas.length) return okJson({ ok: true, modo: 'real', enviados: 0, nota: 'no quedan pendientes' });

  // Construir el batch de Resend (cada item con sus destinatarios).
  // Los que no tengan ningún email válido tras sanear → se marcan como error
  // (y al tener email_error dejan de entrar en próximas tandas).
  const invalidos: string[] = [];
  const datos = await cargarDatos(filas.map((f) => f.codigo_ine));
  const batch = filas.map((f) => {
    const dest = parseEmails(f.email);
    if (!dest.length) { invalidos.push(f.codigo_ine); return null; }
    const nombre = String(f.nombre || '').replace(/^Ayuntamiento de(l| la| los| las)? /i, '') || 'vuestro municipio';
    const extra = intro(nombre, f.codigo_ine, datos.get(f.codigo_ine));
    return {
      _codigo: f.codigo_ine, _dest: dest, nombre,
      email: { from: FROM, to: dest, reply_to: REPLY_TO, subject: asunto(nombre), html: html(nombre, f.codigo_ine, extra) },
    };
  }).filter(Boolean) as any[];

  for (const cod of invalidos) {
    await DB.prepare(
      `UPDATE ayuntamientos_contacto SET email_error = 'email inválido (caracteres raros o formato)' WHERE codigo_ine = ?`
    ).bind(cod).run();
  }

  if (!batch.length) return okJson({ ok: true, modo: 'real', enviados: 0, invalidos: invalidos.length, nota: 'sin destinatarios válidos en esta tanda' });

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

  return okJson({ ok: true, modo: 'real', enviados: batch.length, invalidos: invalidos.length, ids: ids.slice(0, 3) });
};

/**
 * POST /api/admin/instagram-editar?key=ADMIN_KEY
 * Guarda a mano el instagram de un municipio en ayuntamientos_contacto.
 * body { codigo_ine: string, instagram: string }  (vacío = borrar)
 * Si el municipio aún no tiene fila de contacto, la crea.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

const okJson = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

// Acepta "@usuario", "usuario" o la URL del perfil; varios separados por ; o ,
function limpiar(raw: string): string {
  const out: string[] = [];
  for (let p of String(raw || '').split(/[;,\s]+/)) {
    p = p.trim().replace(/^@/, '');
    const m = p.match(/instagram\.com\/([A-Za-z0-9._]{2,40})/i);
    if (m) p = m[1];
    p = p.toLowerCase().replace(/\/+$/, '');
    if (/^[a-z0-9._]{2,40}$/.test(p) && !out.includes(p)) out.push(p);
  }
  return out.slice(0, 3).join(';');
}

export const POST: APIRoute = async ({ request }) => {
  const url = new URL(request.url);
  const key = url.searchParams.get('key') ?? '';
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return okJson({ ok: false, error: 'no_auth' }, 401);

  let b: any = {};
  try { b = await request.json(); } catch { return okJson({ ok: false }, 400); }
  const codigo = String(b.codigo_ine || '').trim().slice(0, 12);
  if (!codigo) return okJson({ ok: false, error: 'sin_codigo' }, 400);
  const ig = limpiar(b.instagram);

  await DB.prepare(
    `INSERT OR IGNORE INTO ayuntamientos_contacto (codigo_ine, nombre_bdgel, fuente)
     SELECT codigo_ine, nombre, 'manual' FROM municipios WHERE codigo_ine = ?`
  ).bind(codigo).run();
  await DB.prepare(`UPDATE ayuntamientos_contacto SET instagram = ? WHERE codigo_ine = ?`)
    .bind(ig || null, codigo).run();
  return okJson({ ok: true, codigo_ine: codigo, instagram: ig });
};

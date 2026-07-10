/**
 * POST /api/admin/instagram-editar?key=ADMIN_KEY
 * Guarda a mano el instagram y/o las notas de un municipio en ayuntamientos_contacto.
 * body { codigo_ine: string, instagram?: string, notas?: string }  (vacío = borrar)
 * Solo actualiza los campos presentes en el body. Si el municipio aún no tiene
 * fila de contacto, la crea.
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
  if (!('instagram' in b) && !('notas' in b)) return okJson({ ok: false, error: 'sin_campos' }, 400);

  await DB.prepare(
    `INSERT OR IGNORE INTO ayuntamientos_contacto (codigo_ine, nombre_bdgel, fuente)
     SELECT codigo_ine, nombre, 'manual' FROM municipios WHERE codigo_ine = ?`
  ).bind(codigo).run();

  const res: any = { ok: true, codigo_ine: codigo };
  if ('instagram' in b) {
    const ig = limpiar(b.instagram);
    await DB.prepare(`UPDATE ayuntamientos_contacto SET instagram = ? WHERE codigo_ine = ?`)
      .bind(ig || null, codigo).run();
    res.instagram = ig;
  }
  if ('notas' in b) {
    const notas = String(b.notas || '').trim().slice(0, 1000);
    await DB.prepare(`UPDATE ayuntamientos_contacto SET notas = ? WHERE codigo_ine = ?`)
      .bind(notas || null, codigo).run();
    res.notas = notas;
  }
  return okJson(res);
};

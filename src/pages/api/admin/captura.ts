/**
 * POST /api/admin/captura?key=ADMIN_KEY
 * Guarda una descripción capturada de Instagram como entidad del municipio.
 *   body { municipio, nombre?, descripcion }
 * fuente='captura_instagram' para poder revisar/borrar estas capturas.
 * NADA se guarda solo: solo actúa cuando el panel /admin/captura lo llama.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);
const j = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

const norm = (s: string) =>
  (s || '').toLowerCase().normalize('NFD').replace(/[̀-ͯ]/g, '').replace(/[^a-z0-9ñ ]/g, ' ').replace(/\s+/g, ' ').trim();

export const POST: APIRoute = async ({ request, url }) => {
  const key = url.searchParams.get('key') ?? '';
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return j({ ok: false, error: 'no-auth' }, 401);

  let body: any;
  try { body = await request.json(); } catch { return j({ ok: false, error: 'bad-json' }, 400); }
  const municipio = String(body.municipio || '').trim();
  const descripcion = String(body.descripcion || '').trim();
  const nombre = String(body.nombre || '').trim() || municipio;
  if (!municipio) return j({ ok: false, error: 'Falta el municipio.' }, 400);
  if (descripcion.length < 20) return j({ ok: false, error: 'La descripción es demasiado corta.' }, 400);

  // resolver municipio -> codigo_ine canónico
  const { results } = await DB.prepare(
    `SELECT codigo_ine, nombre, provincia FROM municipios
     WHERE COALESCE(es_duplicado,0)=0 AND nombre LIKE ? LIMIT 40`
  ).bind('%' + municipio.split(/[ ,(]/)[0] + '%').all();
  const cand = (results as any[]) || [];
  const nq = norm(municipio);
  let sel = cand.find(r => norm(r.nombre) === nq)
        || cand.find(r => norm(r.nombre).startsWith(nq) || nq.startsWith(norm(r.nombre)))
        || cand[0];
  if (!sel) return j({ ok: false, error: `No encuentro el municipio “${municipio}”. Revisa el nombre.` }, 404);

  const res = await DB.prepare(
    `INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente)
     VALUES (?, 'espacio', ?, ?, 'captura_instagram')`
  ).bind(sel.codigo_ine, nombre.slice(0, 120), descripcion.slice(0, 1500)).run();
  const creado = (res as any)?.meta?.changes > 0;

  return j({ ok: true, creado, codigo: sel.codigo_ine, municipio: sel.nombre, provincia: sel.provincia, nombre });
};

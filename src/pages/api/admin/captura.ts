/**
 * POST /api/admin/captura?key=ADMIN_KEY
 * Guarda una descripción capturada de Instagram como entidad del municipio,
 * y le da PUNTOS en la categoría elegida (MAX, nunca baja) para que ranquee.
 *   body { municipio, nombre?, descripcion, categoria?, puntuacion? }
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

// tipo de entidad por categoría (para que salga en la sección correcta de la ficha)
const TIPO_BY_CAT: Record<string, string> = {
  naturaleza: 'espacio', Playas: 'playa', cuevas: 'cueva', miradores: 'mirador', pozas: 'poza',
  monumentos: 'monumento', castillos: 'castillo', museos: 'museo', gastronomia: 'gastronomia',
  senderismo: 'sendero', ciclismo: 'ciclismo', turismo_activo: 'activo', estrellas: 'astro',
  turismo_religioso: 'religioso', fiestas: 'fiesta', pueblo_bonito: 'pueblo_bonito',
};

export const POST: APIRoute = async ({ request, url }) => {
  const key = url.searchParams.get('key') ?? '';
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return j({ ok: false, error: 'no-auth' }, 401);

  let body: any;
  try { body = await request.json(); } catch { return j({ ok: false, error: 'bad-json' }, 400); }
  const municipio = String(body.municipio || '').trim();
  const descripcion = String(body.descripcion || '').trim();
  const nombre = String(body.nombre || '').trim() || municipio;
  const categoria = String(body.categoria || 'naturaleza').trim();
  const puntuacion = Math.max(0, Math.min(100, Number(body.puntuacion) || 0));
  if (!municipio) return j({ ok: false, error: 'Falta el municipio.' }, 400);
  if (descripcion.length < 20) return j({ ok: false, error: 'La descripción es demasiado corta.' }, 400);
  const tipo = TIPO_BY_CAT[categoria] || 'espacio';

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

  // 1) la entidad (ficha del sitio) con la puntuación por sitio
  const res = await DB.prepare(
    `INSERT INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, puntuacion)
     VALUES (?, ?, ?, ?, 'captura_instagram', ?)
     ON CONFLICT(codigo_ine, tipo, nombre) DO UPDATE SET
       descripcion = excluded.descripcion,
       fuente      = 'captura_instagram',
       puntuacion  = MAX(COALESCE(entidades.puntuacion,0), excluded.puntuacion)`
  ).bind(sel.codigo_ine, tipo, nombre.slice(0, 120), descripcion.slice(0, 1500), puntuacion || null).run();
  const creado = (res as any)?.meta?.changes > 0;

  // 2) puntos en la categoría (MAX, nunca baja) para que el municipio RANQUEE
  let rankea = false;
  if (puntuacion > 0) {
    await DB.prepare(
      `INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion)
       VALUES (?, ?, ?)
       ON CONFLICT(codigo_ine, categoria) DO UPDATE SET
         puntuacion = MAX(puntuaciones.puntuacion, excluded.puntuacion)`
    ).bind(sel.codigo_ine, categoria, puntuacion).run();
    // casi todo es naturaleza: que también aparezca ahí (salvo que ya sea esa la categoría)
    if (categoria !== 'naturaleza') {
      await DB.prepare(
        `INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion)
         VALUES (?, 'naturaleza', ?)
         ON CONFLICT(codigo_ine, categoria) DO UPDATE SET
           puntuacion = MAX(puntuaciones.puntuacion, excluded.puntuacion)`
      ).bind(sel.codigo_ine, puntuacion).run();
    }
    rankea = true;
  }

  return j({ ok: true, creado, rankea, categoria, puntuacion, codigo: sel.codigo_ine, municipio: sel.nombre, provincia: sel.provincia, nombre });
};

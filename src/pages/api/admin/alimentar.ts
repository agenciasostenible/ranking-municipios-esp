/**
 * POST /api/admin/alimentar?key=ADMIN_KEY
 * Añade un SITIO a la ficha de su municipio (herramienta /admin/alimentar).
 *   body { municipio, nombre, descripcion, categoria, puntuacion, foto?, enlace? }
 * - Crea/actualiza la entidad con el tipo que corresponde a la sección de la ficha.
 * - Guarda la foto original (opcional) y el enlace.
 * - Sube la puntuación del municipio en esa categoría con criterio MAX (nunca baja).
 * fuente='curado_admin' para poder revisarlo o revertirlo.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../../lib/d1client';
import { rtEnv } from '../../../lib/runtime';
import { toStorableImage } from '../../../lib/imgblob';

const j = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

const norm = (s: string) =>
  (s || '').toLowerCase().normalize('NFD').replace(/[̀-ͯ]/g, '').replace(/[^a-z0-9ñ ]/g, ' ').replace(/\s+/g, ' ').trim();

// categoría → tipo de entidad que la FICHA muestra en esa sección (CAT_TIPOS de municipio/[codigo])
export const TIPO_POR_CAT: Record<string, string> = {
  naturaleza: 'espacio', senderismo: 'sendero', ciclismo: 'ciclismo',
  Playas: 'playa', cuevas: 'cueva', pozas: 'poza', miradores: 'mirador',
  monumentos: 'monumento', castillos: 'castillo', museos: 'Museo',
  gastronomia: 'restaurante', hoteles_encanto: 'alojamiento', TurismoRural: 'rural',
  festivales: 'festival', fiestas: 'fiesta', turismo_activo: 'activo',
  vinos: 'bodega', oleoturismo: 'oleoturismo', balnearios: 'balneario',
  turismo_religioso: 'religioso', estrellas: 'starlight', Campings: 'camping',
};

export const POST: APIRoute = async ({ request, url }) => {
  const key = url.searchParams.get('key') ?? '';
  if (!rtEnv('ADMIN_KEY') || key !== rtEnv('ADMIN_KEY')) return j({ ok: false, error: 'no-auth' }, 401);

  let b: any;
  try { b = await request.json(); } catch { return j({ ok: false, error: 'bad-json' }, 400); }

  const municipio = String(b.municipio || '').trim();
  const nombre = String(b.nombre || '').trim();
  const descripcion = String(b.descripcion || '').trim();
  const categoria = String(b.categoria || '').trim();
  const puntuacion = Math.max(0, Math.min(100, Number(b.puntuacion) || 0));
  const foto = toStorableImage(b.foto);
  const enlace = String(b.enlace || '').trim().slice(0, 300) || null;
  const tipo = TIPO_POR_CAT[categoria];

  if (!municipio) return j({ ok: false, error: 'Falta el municipio.' }, 400);
  if (!nombre) return j({ ok: false, error: 'Falta el nombre del sitio.' }, 400);
  if (descripcion.length < 40) return j({ ok: false, error: 'La descripción es demasiado corta.' }, 400);
  if (!tipo) return j({ ok: false, error: `Categoría no válida: ${categoria}` }, 400);

  // municipio → código canónico (evita las fichas duplicadas ocultas).
  // Busca por nombre y por nombre_search (sin acentos), y si no acierta devuelve
  // sugerencias: muchas capturas traen pedanías o concejos que no son municipio.
  const nq = norm(municipio);
  const raiz = nq.split(' ')[0];
  const { results } = await DB.prepare(
    `SELECT codigo_ine, nombre, provincia, comunidad FROM municipios
     WHERE COALESCE(es_duplicado,0)=0 AND (nombre LIKE ? OR nombre_search LIKE ?) LIMIT 60`
  ).bind('%' + municipio.split(/[ ,(]/)[0] + '%', '%' + raiz + '%').all();
  const cand = (results as any[]) || [];
  const sel = cand.find(r => norm(r.nombre) === nq)
    || cand.find(r => norm(r.nombre).startsWith(nq) || nq.startsWith(norm(r.nombre)))
    || (cand.length === 1 ? cand[0] : null);
  if (!sel) {
    const { results: sug } = await DB.prepare(
      `SELECT nombre, provincia FROM municipios
       WHERE COALESCE(es_duplicado,0)=0 AND (nombre_search LIKE ? OR nombre LIKE ?)
       ORDER BY LENGTH(nombre) LIMIT 6`
    ).bind(raiz.slice(0, 4) + '%', raiz.slice(0, 4) + '%').all();
    const lista = ((sug as any[]) || []).map(r => `${r.nombre} (${r.provincia})`);
    return j({
      ok: false,
      error: `No encuentro el municipio “${municipio}”.` +
        (lista.length ? ` ¿Quizá es uno de estos?: ${lista.join(' · ')}` : ' Puede que sea una pedanía: escribe el municipio al que pertenece.'),
      sugerencias: lista,
    }, 404);
  }

  // 1) la entidad (la tarjeta que se ve en la ficha)
  const res = await DB.prepare(
    `INSERT INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, puntuacion, enlace, foto_data, foto_mime)
     VALUES (?, ?, ?, ?, 'curado_admin', ?, ?, ?, NULL)
     ON CONFLICT(codigo_ine, tipo, nombre) DO UPDATE SET
       descripcion = excluded.descripcion,
       fuente      = 'curado_admin',
       puntuacion  = MAX(COALESCE(entidades.puntuacion,0), excluded.puntuacion),
       enlace      = COALESCE(excluded.enlace, entidades.enlace),
       foto_data   = COALESCE(excluded.foto_data, entidades.foto_data),
       foto_mime   = CASE WHEN excluded.foto_data IS NOT NULL THEN NULL ELSE entidades.foto_mime END`
  ).bind(sel.codigo_ine, tipo, nombre.slice(0, 160), descripcion.slice(0, 2000), puntuacion || null, enlace, foto).run();
  const creado = ((res as any)?.meta?.changes || 0) > 0;

  // 2) puntuación del municipio en su categoría (MAX: nunca baja lo que ya tenía)
  let rankea = false;
  if (puntuacion > 0) {
    await DB.prepare(
      `INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES (?, ?, ?)
       ON CONFLICT(codigo_ine, categoria) DO UPDATE SET
         puntuacion = MAX(puntuaciones.puntuacion, excluded.puntuacion)`
    ).bind(sel.codigo_ine, categoria, puntuacion).run();
    // los sitios de aire libre suman también en naturaleza (criterio del proyecto)
    if (['senderismo', 'Playas', 'cuevas', 'pozas', 'miradores', 'turismo_activo', 'estrellas'].includes(categoria)) {
      await DB.prepare(
        `INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES (?, 'naturaleza', ?)
         ON CONFLICT(codigo_ine, categoria) DO UPDATE SET
           puntuacion = MAX(puntuaciones.puntuacion, excluded.puntuacion)`
      ).bind(sel.codigo_ine, puntuacion).run();
    }
    rankea = true;
  }

  return j({
    ok: true, creado, rankea, conFoto: !!foto, categoria, tipo, puntuacion,
    codigo: sel.codigo_ine, municipio: sel.nombre, provincia: sel.provincia, comunidad: sel.comunidad,
    nombre, ficha: `/municipio/${sel.codigo_ine}?desde=${encodeURIComponent(categoria)}#desde-block`,
  });
};

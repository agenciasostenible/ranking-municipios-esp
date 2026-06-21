/**
 * GET /api/municipios-buscar?q=trev
 * Autocompletado de municipios para /cerca: busca por nombre entre TODOS los
 * municipios (con coordenadas), priorizando los que EMPIEZAN por lo escrito y
 * luego por orden alfabético. Devuelve hasta 15.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

export const GET: APIRoute = async ({ url }) => {
  const q = (url.searchParams.get('q') ?? '').trim();
  if (q.length < 2) return new Response('[]', { headers: { 'Content-Type': 'application/json' } });

  const qNorm = q.normalize('NFD').replace(/[̀-ͯ]/g, '').toLowerCase();

  const { results } = await DB.prepare(
    `SELECT codigo_ine, nombre, provincia
       FROM municipios
      WHERE COALESCE(es_duplicado,0)=0 AND latitud IS NOT NULL
        AND (nombre_search LIKE ? OR LOWER(nombre) LIKE ?)
      ORDER BY CASE WHEN nombre_search LIKE ? THEN 0 ELSE 1 END, nombre
      LIMIT 15`
  ).bind(`%${qNorm}%`, `%${q.toLowerCase()}%`, `${qNorm}%`).all();

  return new Response(JSON.stringify(results ?? []), {
    headers: { 'Content-Type': 'application/json', 'Cache-Control': 'public, max-age=3600' },
  });
};

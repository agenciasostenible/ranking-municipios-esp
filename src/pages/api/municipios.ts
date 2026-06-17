/**
 * GET /api/municipios?prov=Granada
 * Devuelve TODOS los municipios canónicos de una provincia (codigo_ine + nombre),
 * para el selector en cascada "provincia → municipio" del formulario de anuncios.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

export const GET: APIRoute = async ({ url }) => {
  const prov = (url.searchParams.get('prov') ?? '').trim();
  if (!prov) return new Response('[]', { headers: { 'Content-Type': 'application/json' } });

  const { results } = await DB.prepare(
    `SELECT codigo_ine, nombre FROM municipios
      WHERE provincia = ? AND COALESCE(es_duplicado,0)=0
      ORDER BY nombre`
  ).bind(prov).all();

  return new Response(JSON.stringify(results ?? []), {
    headers: { 'Content-Type': 'application/json', 'Cache-Control': 'public, max-age=86400' },
  });
};

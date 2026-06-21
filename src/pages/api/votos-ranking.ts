/**
 * GET /api/votos-ranking?limit=50&seg=general|pueblos|medianos|ciudades
 * Ranking público del voto popular, opcionalmente segmentado por población.
 *  pueblos   < 10.000 hab.
 *  medianos  10.000–100.000 hab.
 *  ciudades  > 100.000 hab.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

function segCond(seg: string): string {
  if (seg === 'pueblos')  return 'AND m.poblacion < 10000';
  if (seg === 'medianos') return 'AND m.poblacion >= 10000 AND m.poblacion < 100000';
  if (seg === 'ciudades') return 'AND m.poblacion >= 100000';
  return '';
}

export const GET: APIRoute = async ({ url }) => {
  let limit = parseInt(url.searchParams.get('limit') || '50', 10);
  if (!Number.isFinite(limit) || limit < 1) limit = 50;
  if (limit > 200) limit = 200;

  const seg = url.searchParams.get('seg') || 'general';
  const cond = segCond(seg);
  const join = seg === 'general' ? 'LEFT JOIN' : 'JOIN';

  const { results } = await DB.prepare(
    `SELECT v.codigo_ine, v.nombre, v.provincia, v.votos
       FROM votos v ${join} municipios m ON m.codigo_ine = v.codigo_ine
      WHERE v.votos > 0 ${cond}
      ORDER BY v.votos DESC, v.nombre ASC
      LIMIT ?`
  ).bind(limit).all();

  const totalRow = await DB.prepare(
    `SELECT COUNT(*) AS municipios, COALESCE(SUM(v.votos),0) AS votos
       FROM votos v ${join} municipios m ON m.codigo_ine = v.codigo_ine
      WHERE v.votos > 0 ${cond}`
  ).first();

  return new Response(JSON.stringify({
    seg,
    ranking: results ?? [],
    municipios: Number(totalRow?.municipios || 0),
    totalVotos: Number(totalRow?.votos || 0),
  }), { headers: { 'Content-Type': 'application/json', 'Cache-Control': 'no-store' } });
};

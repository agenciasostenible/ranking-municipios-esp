/**
 * GET /api/votos-ranking?limit=50
 * Ranking público del voto popular: municipios con más votos (votos > 0).
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

export const GET: APIRoute = async ({ url }) => {
  let limit = parseInt(url.searchParams.get('limit') || '50', 10);
  if (!Number.isFinite(limit) || limit < 1) limit = 50;
  if (limit > 200) limit = 200;

  const { results } = await DB.prepare(
    `SELECT codigo_ine, nombre, provincia, votos
       FROM votos WHERE votos > 0
       ORDER BY votos DESC, nombre ASC
       LIMIT ?`
  ).bind(limit).all();

  const totalRow = await DB.prepare(`SELECT COUNT(*) AS municipios, COALESCE(SUM(votos),0) AS votos FROM votos WHERE votos > 0`).first();

  return new Response(JSON.stringify({
    ranking: results ?? [],
    municipios: Number(totalRow?.municipios || 0),
    totalVotos: Number(totalRow?.votos || 0),
  }), { headers: { 'Content-Type': 'application/json', 'Cache-Control': 'no-store' } });
};

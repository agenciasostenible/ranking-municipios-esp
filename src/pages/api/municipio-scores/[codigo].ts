import { DB } from '../../../lib/d1client';
import type { APIRoute } from 'astro';
// @ts-ignore

export const GET: APIRoute = async ({ params }) => {
  const { codigo } = params;

  const { results } = await DB.prepare(
    `SELECT p.categoria, p.puntuacion, p.ranking_provincial,
            CASE WHEN p.categoria IN ('Campings', 'TurismoRural') THEN m.why_json ELSE NULL END as why_json
     FROM puntuaciones p
     JOIN municipios m ON p.codigo_ine = m.codigo_ine
     WHERE p.codigo_ine = ?
     ORDER BY p.puntuacion DESC`
  ).bind(codigo).all();

  return new Response(JSON.stringify(results), {
    headers: { 'Content-Type': 'application/json', 'Cache-Control': 'public, max-age=3600' },
  });
};

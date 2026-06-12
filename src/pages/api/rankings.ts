import { DB } from '../../lib/d1client';
import type { APIRoute } from 'astro';
// @ts-ignore
import { LABELS } from '../../lib/db';

const VALID_CATS = new Set(Object.keys(LABELS));

export const GET: APIRoute = async ({ request }) => {
  const url = new URL(request.url);
  const catParam = url.searchParams.get('cat') ?? 'ranking_global';
  const cat = VALID_CATS.has(catParam) ? catParam : 'ranking_global';
  const prov   = url.searchParams.get('prov') ?? '';
  const ccaa   = url.searchParams.get('ccaa') ?? '';
  const comarca= url.searchParams.get('comarca') ?? '';
  const tam    = url.searchParams.get('tam') ?? '';
  const page   = Math.max(1, parseInt(url.searchParams.get('page') ?? '1') || 1);
  const per    = Math.min(100, Math.max(1, parseInt(url.searchParams.get('per') ?? '50') || 50));
  const offset = (page - 1) * per;

  const where: string[] = ['p.categoria = ?'];
  const params: any[] = [cat];

  if (prov)   { where.push('m.provincia = ?');  params.push(prov); }
  if (ccaa && !prov) { where.push('m.comunidad = ?'); params.push(ccaa); }
  if (comarca){ where.push('m.comarca = ?');    params.push(comarca); }
  if (tam === 'micro') where.push('m.poblacion < 500');
  else if (tam === 'peq') where.push('m.poblacion >= 500 AND m.poblacion < 5000');
  else if (tam === 'med') where.push('m.poblacion >= 5000 AND m.poblacion < 20000');
  else if (tam === 'grd') where.push('m.poblacion >= 20000');

  const w = where.join(' AND ');

  const countRow = await DB.prepare(
    `SELECT COUNT(*) as n FROM puntuaciones p JOIN municipios m ON p.codigo_ine=m.codigo_ine WHERE ${w}`
  ).bind(...params).first();

  const { results } = await DB.prepare(`
    SELECT m.codigo_ine, m.nombre, m.provincia, m.comunidad, m.comarca, m.poblacion,
           m.why_json, m.foto_url, p.puntuacion, p.ranking_provincial, p.ranking_nacional
    FROM puntuaciones p JOIN municipios m ON p.codigo_ine = m.codigo_ine
    WHERE ${w} ORDER BY p.puntuacion DESC LIMIT ${per} OFFSET ${offset}
  `).bind(...params).all();

  // Parse why_json
  const data = results.map((r: any) => ({
    ...r,
    why: r.why_json ? JSON.parse(r.why_json) : [],
  }));

  return new Response(JSON.stringify({ total: countRow?.n ?? 0, page, per, data }), {
    headers: { 'Content-Type': 'application/json' },
  });
};

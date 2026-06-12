import { DB } from '../../lib/d1client';
import type { APIRoute } from 'astro';
// @ts-ignore

export const GET: APIRoute = async ({ request }) => {
  const url = new URL(request.url);
  const prov = url.searchParams.get('provincia') ?? '';
  const ccaa = url.searchParams.get('ccaa') ?? '';

  let sql = `SELECT DISTINCT comarca FROM municipios WHERE comarca IS NOT NULL AND comarca != ''`;
  const params: string[] = [];
  if (prov) { sql += ` AND provincia = ?`; params.push(prov); }
  if (ccaa) { sql += ` AND comunidad = ?`; params.push(ccaa); }
  sql += ` ORDER BY comarca`;

  const { results } = await DB.prepare(sql).bind(...params).all();
  const comarcas = results.map((r: any) => r.comarca);
  return new Response(JSON.stringify(comarcas), {
    headers: { 'Content-Type': 'application/json' },
  });
};

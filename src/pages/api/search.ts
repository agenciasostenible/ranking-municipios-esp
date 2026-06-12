import { DB } from '../../lib/d1client';
import type { APIRoute } from 'astro';
// @ts-ignore

export const GET: APIRoute = async ({ request }) => {
  const url = new URL(request.url);
  const q = (url.searchParams.get('q') ?? '').trim();
  const prov = url.searchParams.get('provincia') ?? '';
  const ccaa = url.searchParams.get('ccaa') ?? '';
  const comarca = url.searchParams.get('comarca') ?? '';
  const tam = url.searchParams.get('tamano') ?? '';

  if (!q && !prov && !ccaa && !comarca) {
    return new Response(JSON.stringify([]), { headers: { 'Content-Type': 'application/json' } });
  }

  let sql = `
    SELECT m.codigo_ine, m.nombre, m.provincia, m.comunidad, m.comarca, m.poblacion,
           p.puntuacion, p.ranking_provincial
    FROM municipios m
    LEFT JOIN (SELECT codigo_ine, MAX(puntuacion) as puntuacion, MAX(ranking_provincial) as ranking_provincial FROM puntuaciones WHERE categoria='ranking_global' GROUP BY codigo_ine) p
      ON m.codigo_ine = p.codigo_ine
    WHERE 1=1
  `;
  const params: string[] = [];

  const qNorm = q ? q.normalize('NFD').replace(/[̀-ͯ]/g, '').toLowerCase() : '';

  // Buscar provincias y comunidades que coincidan
  let geoResults: any[] = [];
  if (q && !prov && !ccaa && !comarca) {
    const normProv = (col: string) =>
      `REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(${col}),'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u')`;
    const { results: provs } = await DB.prepare(
      `SELECT DISTINCT provincia FROM municipios WHERE LOWER(provincia) LIKE LOWER(?) OR ${normProv('provincia')} LIKE ? ORDER BY provincia LIMIT 3`
    ).bind(`%${q}%`, `%${qNorm}%`).all();
    const { results: ccaas } = await DB.prepare(
      `SELECT DISTINCT comunidad FROM municipios WHERE LOWER(comunidad) LIKE LOWER(?) OR ${normProv('comunidad')} LIKE ? ORDER BY comunidad LIMIT 2`
    ).bind(`%${q}%`, `%${qNorm}%`).all();

    geoResults = [
      ...(provs as any[]).map((r: any) => ({ tipo: 'provincia', nombre: r.provincia, url: `/provincia/${encodeURIComponent(r.provincia)}` })),
      ...(ccaas as any[]).map((r: any) => ({ tipo: 'comunidad', nombre: r.comunidad, url: `/ranking/ranking_global?ccaa=${encodeURIComponent(r.comunidad)}` })),
    ];
  }

  if (q) {
    sql += ` AND (m.nombre_search LIKE ? OR LOWER(m.nombre) LIKE LOWER(?))`;
    params.push(`%${qNorm}%`, `%${q}%`);
  }
  if (prov)   { sql += ` AND m.provincia = ?`;  params.push(prov); }
  if (ccaa)   { sql += ` AND m.comunidad = ?`;  params.push(ccaa); }
  if (comarca){ sql += ` AND m.comarca = ?`;    params.push(comarca); }
  if (tam === 'micro') sql += ` AND m.poblacion < 500`;
  else if (tam === 'peq') sql += ` AND m.poblacion >= 500 AND m.poblacion < 5000`;
  else if (tam === 'med') sql += ` AND m.poblacion >= 5000 AND m.poblacion < 20000`;
  else if (tam === 'grd') sql += ` AND m.poblacion >= 20000`;

  const limit = Math.max(1, 8 - geoResults.length);
  sql += ` GROUP BY m.codigo_ine ORDER BY p.ranking_provincial ASC NULLS LAST LIMIT ${limit}`;

  const { results } = await DB.prepare(sql).bind(...params).all();
  const municipios = (results as any[]).map((r: any) => ({ ...r, tipo: 'municipio', url: `/municipio/${r.codigo_ine}` }));

  return new Response(JSON.stringify([...geoResults, ...municipios]), {
    headers: { 'Content-Type': 'application/json' },
  });
};

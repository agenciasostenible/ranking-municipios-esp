import { DB } from '../../../lib/d1client';
import type { APIRoute } from 'astro';
// @ts-ignore

export const GET: APIRoute = async ({ params }) => {
  const { codigo } = params;

  const { results } = await DB.prepare(
    `SELECT tipo, nombre, nivel_sello, descripcion
     FROM entidades WHERE codigo_ine = ?
       AND tipo != 'mencion'
       AND nombre NOT LIKE 'Río Río%'
     GROUP BY nombre
     ORDER BY
       CASE nivel_sello
         WHEN 'UNESCO' THEN 1
         WHEN 'IT Internacional' THEN 2
         WHEN 'Parque Nacional' THEN 3
         WHEN 'BIC Nacional' THEN 4
         WHEN 'IT Nacional' THEN 5
         ELSE 6
       END, tipo, nombre`
  ).bind(codigo).all();

  return new Response(JSON.stringify(results), {
    headers: { 'Content-Type': 'application/json', 'Cache-Control': 'public, max-age=3600' },
  });
};

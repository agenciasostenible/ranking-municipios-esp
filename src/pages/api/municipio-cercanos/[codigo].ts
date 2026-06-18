import { DB } from '../../../lib/d1client';
import type { APIRoute } from 'astro';
// @ts-ignore

// Municipios cercanos a uno dado: por distancia geográfica (lat/lon) y, si no hay
// coordenadas, por misma provincia (ordenados por ranking global). Para el botón
// "Sugerir cercanos" del comparador.
export const GET: APIRoute = async ({ params }) => {
  const { codigo } = params;

  const m = await DB.prepare(
    `SELECT codigo_ine, nombre, provincia, latitud, longitud FROM municipios WHERE codigo_ine = ?`
  ).bind(codigo).first();
  if (!m) return new Response('[]', { headers: { 'Content-Type': 'application/json' } });

  const lat = m.latitud as number | null;
  const lon = m.longitud as number | null;

  let rows: any[] = [];
  if (lat && lon) {
    const { results } = await DB.prepare(`
      SELECT m.codigo_ine, m.nombre, m.provincia, p.puntuacion,
             ABS(m.latitud - ?) + ABS(m.longitud - ?) AS dist_aprox
      FROM municipios m
      JOIN puntuaciones p ON p.codigo_ine = m.codigo_ine
      WHERE m.latitud BETWEEN ? AND ?
        AND m.longitud BETWEEN ? AND ?
        AND m.codigo_ine != ?
        AND p.categoria = 'ranking_global'
        AND p.puntuacion > 0
        AND COALESCE(m.es_duplicado, 0) = 0
      ORDER BY dist_aprox ASC
      LIMIT 8
    `).bind(lat, lon, lat - 0.5, lat + 0.5, lon - 0.65, lon + 0.65, codigo).all();
    rows = results as any[];
  }

  if (!rows.length) {
    const { results } = await DB.prepare(`
      SELECT m.codigo_ine, m.nombre, m.provincia, p.puntuacion
      FROM municipios m
      JOIN puntuaciones p ON p.codigo_ine = m.codigo_ine
      WHERE m.provincia = ? AND m.codigo_ine != ?
        AND p.categoria = 'ranking_global' AND COALESCE(m.es_duplicado, 0) = 0
      ORDER BY p.puntuacion DESC
      LIMIT 8
    `).bind(m.provincia, codigo).all();
    rows = results as any[];
  }

  const out = rows.map(r => ({ codigo_ine: r.codigo_ine, nombre: r.nombre, provincia: r.provincia }));
  return new Response(JSON.stringify(out), {
    headers: { 'Content-Type': 'application/json', 'Cache-Control': 'public, max-age=3600' },
  });
};

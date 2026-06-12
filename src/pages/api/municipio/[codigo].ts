import { DB } from '../../../lib/d1client';
import type { APIRoute } from 'astro';
// @ts-ignore

export const GET: APIRoute = async ({ params }) => {
  const { codigo } = params;

  const row = await DB.prepare(
    `SELECT codigo_ine, nombre, provincia FROM municipios WHERE codigo_ine = ?`
  ).bind(codigo).first();

  if (!row) return new Response('Not found', { status: 404 });

  return new Response(JSON.stringify(row), {
    headers: { 'Content-Type': 'application/json', 'Cache-Control': 'public, max-age=3600' },
  });
};

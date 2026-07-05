/** GET /api/entidad-foto?id=NN — sirve la foto subida de una entidad (foto_data BLOB). */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

export const GET: APIRoute = async ({ url }) => {
  const id = parseInt(url.searchParams.get('id') ?? '0', 10);
  if (!id) return new Response('Not found', { status: 404 });
  const row = await DB.prepare(`SELECT foto_data, foto_mime FROM entidades WHERE id=?`).bind(id).first() as any;
  if (!row?.foto_data) return new Response('Not found', { status: 404 });
  let bytes: Uint8Array;
  const d = row.foto_data;
  if (d instanceof ArrayBuffer) bytes = new Uint8Array(d);
  else if (d instanceof Uint8Array) bytes = d;
  else if (Array.isArray(d)) bytes = new Uint8Array(d);
  else bytes = new Uint8Array(d);
  return new Response(bytes, {
    headers: { 'Content-Type': row.foto_mime || 'image/jpeg', 'Cache-Control': 'public, max-age=3600' },
  });
};

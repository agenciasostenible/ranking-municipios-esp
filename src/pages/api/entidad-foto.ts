/** GET /api/entidad-foto?id=NN — sirve la foto subida de una entidad (foto_data, base64 TEXT). */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';
import { decodeStoredImage } from '../../lib/imgblob';

export const GET: APIRoute = async ({ url }) => {
  const id = parseInt(url.searchParams.get('id') ?? '0', 10);
  if (!id) return new Response('Not found', { status: 404 });
  const row = await DB.prepare(`SELECT foto_data FROM entidades WHERE id=?`).bind(id).first() as any;
  const img = decodeStoredImage(row?.foto_data);
  if (!img) return new Response('Not found', { status: 404 });
  return new Response(img.bytes, {
    headers: { 'Content-Type': img.mime, 'Cache-Control': 'public, max-age=3600' },
  });
};

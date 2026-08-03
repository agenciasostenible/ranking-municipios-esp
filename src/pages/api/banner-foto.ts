/**
 * GET /api/banner-foto?id=NN — sirve la imagen de un banner (base64 en D1).
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

export const GET: APIRoute = async ({ url }) => {
  const id = url.searchParams.get('id');
  if (!id) return new Response('Falta id', { status: 400 });

  const row = await DB.prepare(
    `SELECT foto_data, foto_mime FROM banners WHERE id = ? LIMIT 1`
  ).bind(id).first() as any;

  const data: string | undefined = row?.foto_data;
  if (!data) return new Response('Sin foto', { status: 404 });

  const base64 = data.includes(',') ? data.slice(data.indexOf(',') + 1) : data;
  const mime = row?.foto_mime || 'image/jpeg';
  const bytes = Uint8Array.from(atob(base64), (c) => c.charCodeAt(0));

  return new Response(bytes, {
    headers: { 'Content-Type': mime, 'Cache-Control': 'public, max-age=2592000, s-maxage=2592000, immutable' },
  });
};

import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';
import { decodeStoredImage } from '../../lib/imgblob';

export const GET: APIRoute = async ({ url }) => {
  const id = parseInt(url.searchParams.get('id') ?? '0', 10);
  if (!id) return new Response('Not found', { status: 404 });
  const row = await DB.prepare(`SELECT avatar_data FROM instagramers WHERE id=?`).bind(id).first() as any;
  const img = decodeStoredImage(row?.avatar_data);
  if (!img) return new Response('Not found', { status: 404 });
  return new Response(img.bytes, { headers: { 'Content-Type': img.mime, 'Cache-Control': 'public, max-age=2592000, s-maxage=2592000, immutable' } });
};

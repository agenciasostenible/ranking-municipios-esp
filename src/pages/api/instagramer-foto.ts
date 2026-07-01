import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

export const GET: APIRoute = async ({ url }) => {
  const id = parseInt(url.searchParams.get('id') ?? '0', 10);
  if (!id) return new Response('Not found', { status: 404 });
  const row = await DB.prepare(`SELECT avatar_data FROM instagramers WHERE id=?`).bind(id).first() as any;
  if (!row?.avatar_data) return new Response('Not found', { status: 404 });
  const buf = row.avatar_data instanceof Uint8Array ? row.avatar_data : new Uint8Array(row.avatar_data);
  return new Response(buf, { headers: { 'Content-Type': 'image/jpeg', 'Cache-Control': 'public,max-age=86400' } });
};

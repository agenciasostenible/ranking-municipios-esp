/**
 * GET /api/anuncio-foto?id=NN
 * Sirve la foto de un anuncio (guardada como data URL base64 en D1).
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

export const GET: APIRoute = async ({ url }) => {
  const id = url.searchParams.get('id');
  if (!id) return new Response('Falta id', { status: 400 });

  const row = await DB.prepare(
    `SELECT foto_data, foto_mime FROM anuncios WHERE id = ? LIMIT 1`
  ).bind(id).first();

  const data: string | undefined = row?.foto_data;
  if (!data) return new Response('Sin foto', { status: 404 });

  const base64 = data.includes(',') ? data.slice(data.indexOf(',') + 1) : data;
  const mime = row?.foto_mime || 'image/jpeg';
  const bytes = Uint8Array.from(atob(base64), (c) => c.charCodeAt(0));

  const headers: Record<string, string> = {
    'Content-Type': mime,
    'Cache-Control': 'public, max-age=2592000, s-maxage=2592000, immutable',
  };
  // ?dl=1 → fuerza la descarga del archivo (para retocar la foto en el panel)
  if (url.searchParams.get('dl')) {
    const ext = mime === 'image/png' ? 'png' : mime === 'image/webp' ? 'webp' : 'jpg';
    headers['Content-Disposition'] = `attachment; filename="anuncio-${id}.${ext}"`;
  }

  return new Response(bytes, { headers });
};

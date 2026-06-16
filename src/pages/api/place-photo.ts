import type { APIRoute } from 'astro';
import { fetchPlacePhoto } from '../../lib/places';

export const prerender = false;

// Proxy de fotos de Google Places: el navegador pide la foto a NUESTRO
// servidor (?ref=photo_reference&w=600) y aquí se la pedimos a Google con la
// clave secreta, que nunca sale al cliente. Cacheamos en CDN 30 días (ToS).
export const GET: APIRoute = async ({ url }) => {
  const ref = url.searchParams.get('ref');
  const w = Math.min(1200, Math.max(120, parseInt(url.searchParams.get('w') ?? '600')));
  if (!ref) return new Response('missing ref', { status: 400 });

  const res = await fetchPlacePhoto(ref, w);
  if (!res) return new Response('not found', { status: 404 });

  const buf = await res.arrayBuffer();
  return new Response(buf, {
    status: 200,
    headers: {
      'Content-Type': res.headers.get('Content-Type') ?? 'image/jpeg',
      // 30 días en CDN + navegador, cumple el límite de caché de Google
      'Cache-Control': 'public, max-age=2592000, s-maxage=2592000, stale-while-revalidate=86400',
    },
  });
};

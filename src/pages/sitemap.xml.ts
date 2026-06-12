import { DB } from '../lib/d1client';
import type { APIRoute } from 'astro';
// @ts-ignore

const BASE = 'https://rankingspain.com';

export const GET: APIRoute = async () => {

  const { results: municipios } = await DB.prepare(
    `SELECT codigo_ine FROM municipios ORDER BY codigo_ine`
  ).all();

  const { results: provincias } = await DB.prepare(
    `SELECT DISTINCT provincia FROM municipios ORDER BY provincia`
  ).all();

  const cats = [
    'ranking_global','historia','fiestas','naturaleza','senderismo','gastronomia',
    'camping','agua','ninos','aventura','escapada_rural','estrellas','castillos',
    'yacimientos','birdwatching','pareja','retiros','ciclismo','aceite','vinos',
  ];

  const today = new Date().toISOString().split('T')[0];

  const u = (loc: string, freq: string, pri: string, mod = today) =>
    `<url><loc>${loc}</loc><lastmod>${mod}</lastmod><changefreq>${freq}</changefreq><priority>${pri}</priority></url>`;

  const urls: string[] = [
    u(`${BASE}/`, 'daily', '1.0'),
    ...cats.map(c => u(`${BASE}/ranking/${c}`, 'weekly', '0.8')),
    ...(provincias as any[]).map(p => u(`${BASE}/provincia/${encodeURIComponent(p.provincia)}`, 'weekly', '0.7')),
    ...(municipios as any[]).map(m => u(`${BASE}/municipio/${m.codigo_ine}`, 'monthly', '0.6')),
  ];

  const xml = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${urls.join('\n')}
</urlset>`;

  return new Response(xml, {
    headers: { 'Content-Type': 'application/xml', 'Cache-Control': 'public, max-age=86400' },
  });
};

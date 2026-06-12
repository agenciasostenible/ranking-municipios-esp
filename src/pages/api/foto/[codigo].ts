import { DB } from '../../../lib/d1client';
// GET /api/foto/[codigo]
// Estrategia fiable para fotos icónicas:
// 1. Wikipedia ES → Wikidata ID → Wikipedia EN → foto principal (elegida por editores)
// 2. Fallback: Wikipedia ES foto principal si no hay artículo EN
// La Wikipedia inglesa usa fotos de monumentos; la española usa banderas/escudos.

import type { APIRoute } from 'astro';
// @ts-ignore

const HEADERS = { 'User-Agent': 'RankingMunicipiosEspana/1.0 (jlalvarez600@gmail.com)' };

const SKIP_URL = ['flag','bandera','escudo','coat_of_arms','shield','.svg','locator_map','location_map','blank'];

function isBadUrl(url: string): boolean {
  const u = decodeURIComponent(url).toLowerCase();
  return SKIP_URL.some(w => u.includes(w));
}

export const GET: APIRoute = async ({ params }) => {
  const { codigo } = params;

  const mun = await DB.prepare(
    'SELECT nombre, provincia, foto_url FROM municipios WHERE codigo_ine = ?'
  ).bind(codigo).first();

  if (!mun) return new Response(JSON.stringify({ error: 'not found' }), { status: 404 });

  if (mun.foto_url && mun.foto_url !== 'NONE') {
    return new Response(JSON.stringify({ url: mun.foto_url }), {
      headers: { 'Content-Type': 'application/json', 'Cache-Control': 'public, max-age=86400' }
    });
  }
  if (mun.foto_url === 'NONE') {
    return new Response(JSON.stringify({ url: null }), { headers: { 'Content-Type': 'application/json' } });
  }

  const url = await fetchIconicPhoto(mun.nombre as string, mun.provincia as string);
  await DB.prepare('UPDATE municipios SET foto_url = ? WHERE codigo_ine = ?')
    .bind(url || 'NONE', codigo).run();

  return new Response(JSON.stringify({ url: url || null }), {
    headers: { 'Content-Type': 'application/json', 'Cache-Control': 'public, max-age=86400' }
  });
};

async function fetchIconicPhoto(nombre: string, provincia: string): Promise<string | null> {
  // Candidatos de artículos Wikipedia ES a probar
  const esTitles = [
    `${nombre} (España)`,
    `${nombre} (${provincia})`,
    nombre,
  ];

  for (const esTitle of esTitles) {
    // 1. Buscar Wikidata ID del artículo español
    const wdId = await getWikidataId(esTitle);
    if (!wdId) continue;

    // 2. Obtener título Wikipedia EN desde Wikidata
    const enTitle = await getEnWikiTitle(wdId);

    // 3. Foto principal de Wikipedia EN (la mejor opción)
    if (enTitle) {
      const url = await getWikiSummaryPhoto(enTitle, 'en');
      if (url && !isBadUrl(url)) return url;
    }

    // 4. Fallback: foto principal de Wikipedia ES
    const urlEs = await getWikiSummaryPhoto(esTitle, 'es');
    if (urlEs && !isBadUrl(urlEs)) return urlEs;
  }

  // 5. Último recurso: buscar en Wikipedia ES y coger el artículo más relevante
  const searchTitle = await searchWikiES(`${nombre} ${provincia}`);
  if (searchTitle) {
    const wdId = await getWikidataId(searchTitle);
    if (wdId) {
      const enTitle = await getEnWikiTitle(wdId);
      if (enTitle) {
        const url = await getWikiSummaryPhoto(enTitle, 'en');
        if (url && !isBadUrl(url)) return url;
      }
    }
    const url = await getWikiSummaryPhoto(searchTitle, 'es');
    if (url && !isBadUrl(url)) return url;
  }

  return null;
}

// Obtiene el Wikidata ID de un artículo de Wikipedia ES
async function getWikidataId(esTitle: string): Promise<string | null> {
  try {
    const res = await fetch(
      `https://es.wikipedia.org/w/api.php?action=query` +
      `&titles=${encodeURIComponent(esTitle)}&prop=pageprops&format=json&origin=*`,
      { headers: HEADERS }
    ).then(r => r.json()) as any;
    const page = Object.values(res?.query?.pages ?? {})[0] as any;
    if (page?.missing !== undefined) return null;
    return page?.pageprops?.wikibase_item ?? null;
  } catch { return null; }
}

// Obtiene el título del artículo de Wikipedia EN desde un ID Wikidata
async function getEnWikiTitle(wdId: string): Promise<string | null> {
  try {
    const res = await fetch(
      `https://www.wikidata.org/w/api.php?action=wbgetentities&ids=${wdId}` +
      `&props=sitelinks&sitefilter=enwiki&format=json&origin=*`,
      { headers: HEADERS }
    ).then(r => r.json()) as any;
    return res?.entities?.[wdId]?.sitelinks?.enwiki?.title ?? null;
  } catch { return null; }
}

// Obtiene la foto principal de un artículo usando la REST API de Wikipedia
async function getWikiSummaryPhoto(title: string, lang: 'en' | 'es'): Promise<string | null> {
  try {
    const res = await fetch(
      `https://${lang}.wikipedia.org/api/rest_v1/page/summary/${encodeURIComponent(title)}`,
      { headers: HEADERS }
    ).then(r => r.json()) as any;
    // Usar thumbnail (ya optimizado por Wikipedia, ~320px) en lugar del original (puede ser +5MB)
    return res?.thumbnail?.source ?? res?.originalimage?.source ?? null;
  } catch { return null; }
}

// Búsqueda en Wikipedia ES, devuelve el título más relevante (no desambiguaciones ni provincias)
async function searchWikiES(query: string): Promise<string | null> {
  try {
    const res = await fetch(
      `https://es.wikipedia.org/w/api.php?action=query&list=search` +
      `&srsearch=${encodeURIComponent(query)}&srlimit=5&format=json&origin=*`,
      { headers: HEADERS }
    ).then(r => r.json()) as any;
    const results = res?.query?.search ?? [];
    for (const r of results) {
      const t = r.title.toLowerCase();
      if (t.includes('provincia') || t.includes('desambiguación') || t.includes('comarca')) continue;
      return r.title;
    }
    return null;
  } catch { return null; }
}

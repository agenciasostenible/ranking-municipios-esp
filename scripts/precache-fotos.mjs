#!/usr/bin/env node
// Precachea fotos para los N municipios más importantes
// Uso: node scripts/precache-fotos.mjs [--limit 200]

import { execSync } from 'child_process';

const HEADERS = { 'User-Agent': 'RankingMunicipiosEspana/1.0 (jlalvarez600@gmail.com)' };
const SKIP_URL = ['flag','bandera','escudo','coat_of_arms','shield','.svg','locator_map','location_map','blank'];

const args = process.argv.slice(2);
const limitIdx = args.indexOf('--limit');
const LIMIT = limitIdx >= 0 ? parseInt(args[limitIdx + 1]) : 200;

function isBadUrl(url) {
  const u = decodeURIComponent(url).toLowerCase();
  return SKIP_URL.some(w => u.includes(w));
}

function d1(sql) {
  const result = execSync(
    `npx wrangler d1 execute ranking-municipios --remote --command="${sql.replace(/"/g, '\\"')}" --json`,
    { encoding: 'utf8', stdio: ['pipe','pipe','pipe'] }
  );
  return JSON.parse(result)[0]?.results ?? [];
}

async function getWikidataId(esTitle) {
  try {
    const res = await fetch(
      `https://es.wikipedia.org/w/api.php?action=query&titles=${encodeURIComponent(esTitle)}&prop=pageprops&format=json&origin=*`,
      { headers: HEADERS }
    ).then(r => r.json());
    const page = Object.values(res?.query?.pages ?? {})[0];
    if (page?.missing !== undefined) return null;
    return page?.pageprops?.wikibase_item ?? null;
  } catch { return null; }
}

async function getEnWikiTitle(wdId) {
  try {
    const res = await fetch(
      `https://www.wikidata.org/w/api.php?action=wbgetentities&ids=${wdId}&props=sitelinks&sitefilter=enwiki&format=json&origin=*`,
      { headers: HEADERS }
    ).then(r => r.json());
    return res?.entities?.[wdId]?.sitelinks?.enwiki?.title ?? null;
  } catch { return null; }
}

function toThumb(url, width = 800) {
  if (!url) return null;
  const thumbMatch = url.match(/^(https:\/\/upload\.wikimedia\.org\/wikipedia\/[^/]+\/thumb\/[a-f0-9]+\/[a-f0-9]+\/.+?\/)(\d+)px-(.+)$/);
  if (thumbMatch) return `${thumbMatch[1]}${width}px-${thumbMatch[3]}`;
  const origMatch = url.match(/^(https:\/\/upload\.wikimedia\.org\/wikipedia\/)([^/]+)\/([a-f0-9]+\/[a-f0-9]+\/)(.+)$/);
  if (origMatch) {
    const [, base, wiki, hash, filename] = origMatch;
    return `${base}${wiki}/thumb/${hash}${filename}/${width}px-${filename}`;
  }
  return url;
}

async function getWikiPhoto(title, lang) {
  try {
    const res = await fetch(
      `https://${lang}.wikipedia.org/api/rest_v1/page/summary/${encodeURIComponent(title)}`,
      { headers: HEADERS }
    ).then(r => r.json());
    // Usar la URL exacta del thumbnail que devuelve la API (tamaños permitidos por Wikimedia)
    // NO usar originalimage (puede ser +5MB) ni construir URLs con toThumb (tamaños no permitidos)
    const url = res?.thumbnail?.source ?? null;
    return url ?? null;
  } catch { return null; }
}

async function searchWikiES(query) {
  try {
    const res = await fetch(
      `https://es.wikipedia.org/w/api.php?action=query&list=search&srsearch=${encodeURIComponent(query)}&srlimit=3&format=json&origin=*`,
      { headers: HEADERS }
    ).then(r => r.json());
    const results = res?.query?.search ?? [];
    for (const r of results) {
      const t = r.title.toLowerCase();
      if (t.includes('provincia') || t.includes('desambiguación') || t.includes('comarca')) continue;
      return r.title;
    }
    return null;
  } catch { return null; }
}

async function fetchPhoto(nombre, provincia) {
  // Para nombres con barra (Pamplona/Iruña, San Sebastián/Donostia) probar ambas partes
  const partes = nombre.includes('/') ? nombre.split('/').map(s => s.trim()) : [];
  const candidates = [
    `${nombre} (España)`, `${nombre} (${provincia})`, nombre,
    ...partes.flatMap(p => [`${p} (España)`, `${p} (${provincia})`, p]),
  ];
  for (const esTitle of candidates) {
    const wdId = await getWikidataId(esTitle);
    if (!wdId) continue;
    const enTitle = await getEnWikiTitle(wdId);
    if (enTitle) {
      const url = await getWikiPhoto(enTitle, 'en');
      if (url && !isBadUrl(url)) return url;
    }
    const url = await getWikiPhoto(esTitle, 'es');
    if (url && !isBadUrl(url)) return url;
  }
  // Fallback: búsqueda en Wikipedia ES
  const searchTitle = await searchWikiES(`${nombre} ${provincia} municipio`);
  if (searchTitle) {
    const wdId = await getWikidataId(searchTitle);
    if (wdId) {
      const enTitle = await getEnWikiTitle(wdId);
      if (enTitle) {
        const url = await getWikiPhoto(enTitle, 'en');
        if (url && !isBadUrl(url)) return url;
      }
    }
    const url = await getWikiPhoto(searchTitle, 'es');
    if (url && !isBadUrl(url)) return url;
  }
  return null;
}

function sleep(ms) { return new Promise(r => setTimeout(r, ms)); }

async function main() {
  console.log(`\n🏙️  Precacheando fotos para top ${LIMIT} municipios...\n`);

  // Obtener municipios sin foto, ordenados por ranking
  const rows = d1(
    `SELECT m.codigo_ine, m.nombre, m.provincia FROM municipios m ` +
    `JOIN puntuaciones p ON m.codigo_ine = p.codigo_ine ` +
    `WHERE p.categoria = 'ranking_global' AND (m.foto_url IS NULL OR m.foto_url = 'NONE') ` +
    `ORDER BY p.puntuacion DESC LIMIT ${LIMIT}`
  );

  console.log(`📋 ${rows.length} municipios pendientes\n`);

  let ok = 0, fail = 0;

  for (let i = 0; i < rows.length; i++) {
    const { codigo_ine, nombre, provincia } = rows[i];
    process.stdout.write(`[${i+1}/${rows.length}] ${nombre} (${provincia})... `);

    const url = await fetchPhoto(nombre, provincia);

    // Guardar en D1
    const safeUrl = (url || 'NONE').replace(/'/g, "''");
    execSync(
      `npx wrangler d1 execute ranking-municipios --remote --command="UPDATE municipios SET foto_url='${safeUrl}' WHERE codigo_ine='${codigo_ine}'"`,
      { stdio: 'pipe' }
    );

    if (url) {
      console.log(`✓ ${url.split('/').pop()?.slice(0,50)}`);
      ok++;
    } else {
      console.log('✗ sin foto');
      fail++;
    }

    // Respetar rate limits: 1 petición/seg aprox
    await sleep(1200);
  }

  console.log(`\n✅ Completado: ${ok} fotos | ${fail} sin foto`);
}

main().catch(console.error);

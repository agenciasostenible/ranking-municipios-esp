#!/usr/bin/env node
// Convierte todas las URLs de fotos cacheadas a thumbnails de 800px
// para que carguen rápido en móvil

import { execSync } from 'child_process';

function toThumb(url, width = 800) {
  if (!url || url === 'NONE') return url;
  // Ya es thumb con ese ancho → no tocar
  if (url.includes(`/${width}px-`)) return url;

  // Si ya es thumb pero con otro tamaño → cambiar el tamaño
  const thumbMatch = url.match(/^(https:\/\/upload\.wikimedia\.org\/wikipedia\/[^/]+\/thumb\/[a-f0-9]+\/[a-f0-9]+\/.+?\/)(\d+)px-(.+)$/);
  if (thumbMatch) {
    return `${thumbMatch[1]}${width}px-${thumbMatch[3]}`;
  }

  // URL original → convertir a thumb
  const origMatch = url.match(/^(https:\/\/upload\.wikimedia\.org\/wikipedia\/)([^/]+)\/([a-f0-9]+\/[a-f0-9]+\/)(.+)$/);
  if (origMatch) {
    const [, base, wiki, hash, filename] = origMatch;
    return `${base}${wiki}/thumb/${hash}${filename}/${width}px-${filename}`;
  }

  return url; // no es wikimedia, dejar como está
}

function d1query(sql) {
  try {
    const result = execSync(
      `npx wrangler d1 execute ranking-municipios --remote --json --command="${sql.replace(/"/g, '\\"')}"`,
      { encoding: 'utf8', stdio: ['pipe','pipe','pipe'] }
    );
    return JSON.parse(result)[0]?.results ?? [];
  } catch (e) {
    console.error('D1 error:', e.message.slice(0, 200));
    return [];
  }
}

const rows = d1query("SELECT codigo_ine, foto_url FROM municipios WHERE foto_url IS NOT NULL AND foto_url != 'NONE'");
console.log(`\n🔧 Convirtiendo ${rows.length} URLs a thumbnail 800px...\n`);

let converted = 0, skipped = 0;
for (const { codigo_ine, foto_url } of rows) {
  const thumb = toThumb(foto_url, 800);
  if (thumb !== foto_url) {
    const safe = thumb.replace(/'/g, "''");
    execSync(
      `npx wrangler d1 execute ranking-municipios --remote --command="UPDATE municipios SET foto_url='${safe}' WHERE codigo_ine='${codigo_ine}'"`,
      { stdio: 'pipe' }
    );
    converted++;
    process.stdout.write(`✓ ${converted}\r`);
  } else {
    skipped++;
  }
}

console.log(`\n✅ Convertidas: ${converted} | Sin cambio: ${skipped}`);

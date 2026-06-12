import { execSync } from 'child_process';
import { writeFileSync, unlinkSync } from 'fs';

const cwd = '/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp';

function thumbToOriginal(url) {
  // https://upload.wikimedia.org/wikipedia/commons/thumb/a/b/file.jpg/800px-file.jpg
  // →  https://upload.wikimedia.org/wikipedia/commons/a/b/file.jpg
  const match = url.match(/^(https:\/\/upload\.wikimedia\.org\/wikipedia\/commons\/)thumb\/(.*\/[^/]+\.\w+)\/\d+px-[^/]+$/i);
  return match ? match[1] + match[2] : url;
}

const raw = execSync(
  `cd "${cwd}" && npx wrangler d1 execute DB --remote --json --command "SELECT codigo_ine, foto_url FROM municipios WHERE foto_url LIKE '%/commons/thumb/%'"`,
  { encoding: 'utf8' }
);

const rows = JSON.parse(raw)[0]?.results ?? [];
console.log(`URLs con /thumb/ a convertir: ${rows.length}`);
if (rows.length === 0) { console.log('Nada que hacer.'); process.exit(0); }

// Generar SQL con todos los UPDATEs
const lines = rows.map(r => {
  const newUrl = thumbToOriginal(r.foto_url);
  const esc = newUrl.replace(/'/g, "''");
  return `UPDATE municipios SET foto_url = '${esc}' WHERE codigo_ine = '${r.codigo_ine}';`;
});

const tmpFile = `${cwd}/scripts/_tmp_fix.sql`;
writeFileSync(tmpFile, lines.join('\n'));
console.log(`Fichero SQL generado: ${lines.length} UPDATEs`);

execSync(`cd "${cwd}" && npx wrangler d1 execute DB --remote --file "${tmpFile}"`, { encoding: 'utf8', stdio: 'inherit' });
unlinkSync(tmpFile);

// Verificar
const check = JSON.parse(
  execSync(`cd "${cwd}" && npx wrangler d1 execute DB --remote --json --command "SELECT COUNT(*) as n FROM municipios WHERE foto_url LIKE '%/thumb/%'"`, { encoding: 'utf8' })
);
console.log(`URLs con /thumb/ restantes: ${check[0]?.results?.[0]?.n} (debe ser 0)`);

// Mostrar ejemplo
const ex = JSON.parse(
  execSync(`cd "${cwd}" && npx wrangler d1 execute DB --remote --json --command "SELECT nombre, foto_url FROM municipios WHERE foto_url IS NOT NULL AND foto_url != 'NONE' LIMIT 3"`, { encoding: 'utf8' })
);
console.log('\nEjemplos de URLs actualizadas:');
ex[0]?.results?.forEach(r => console.log(` ${r.nombre}: ${r.foto_url}`));

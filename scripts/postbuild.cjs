const fs = require('fs');
const path = require('path');

// Copy server files into client dir so _worker.js can reference them
const serverDir = path.join(__dirname, '../dist/server');
const clientDir = path.join(__dirname, '../dist/client');
const workerDir = path.join(clientDir, '_worker');

// Clean and recreate _worker dir
fs.rmSync(workerDir, { recursive: true, force: true });
fs.cpSync(serverDir, workerDir, { recursive: true, filter: (src) => !src.endsWith('wrangler.json') });

// Create _worker.js that re-exports the handler
const workerEntry = fs.readdirSync(path.join(workerDir, 'chunks'))
  .find(f => f.startsWith('worker-entry'));

// Read original entry.mjs to find the export name
const entryContent = fs.readFileSync(path.join(serverDir, 'entry.mjs'), 'utf8');
const importMatch = entryContent.match(/import \{ (\w+) \} from/);
const exportName = importMatch ? importMatch[1] : 'x';

const workerJs = `import { ${exportName} } from './_worker/chunks/${workerEntry}';
export default ${exportName};
`;
fs.writeFileSync(path.join(clientDir, '_worker.js'), workerJs);

// Remove deploy config so wrangler uses root wrangler.toml
const deployConfig = path.join(__dirname, '../.wrangler/deploy/config.json');
if (fs.existsSync(deployConfig)) {
  fs.rmSync(deployConfig);
}

console.log('✓ _worker.js created');

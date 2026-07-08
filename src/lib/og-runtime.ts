/**
 * og-runtime.ts — Satori + Resvg funcionando en Cloudflare Workers.
 *
 * Workers PROHÍBE compilar WASM en runtime (WebAssembly.instantiate con bytes,
 * que es lo que hacen `satori` normal y `initWasm(fetch(...))` → por eso las
 * imágenes OG caían siempre a la genérica). Lo permitido es instanciar un
 * WebAssembly.Module ya compilado, así que:
 *   - los .wasm se importan como módulos CompiledWasm (los resuelve
 *     @cloudflare/vite-plugin, que trae el adaptador de Astro),
 *   - se usa `satori/standalone` (sin yoga embebido) + init(módulo).
 *
 * Las copias en ./wasm/ vienen de node_modules/satori/yoga.wasm y
 * node_modules/@resvg/resvg-wasm/index_bg.wasm — actualizarlas si se sube
 * de versión cualquiera de los dos paquetes.
 *
 * Las fuentes se leen por el binding ASSETS: un Worker NO puede hacer fetch
 * a su propio dominio (se bloquea la subpetición a sí mismo).
 */
// @ts-ignore — sin tipos
import satori, { init as initSatori } from 'satori/standalone';
import { Resvg, initWasm as initResvg } from '@resvg/resvg-wasm';
// @ts-ignore — resuelto como WebAssembly.Module por @cloudflare/vite-plugin
import yogaWasm from './wasm/yoga.wasm?module';
// @ts-ignore — ídem
import resvgWasm from './wasm/resvg.wasm?module';
import { env as cfEnv } from 'cloudflare:workers';

let ready: Promise<void> | null = null;

/** Inicializa yoga (satori) y resvg una sola vez por isolate. */
export function ensureOgWasm(): Promise<void> {
  if (!ready) {
    ready = (async () => {
      initSatori(yogaWasm as any); // síncrono: satori espera internamente a que yoga esté listo
      await initResvg(resvgWasm as any);
    })().catch((e) => { ready = null; throw e; });
  }
  return ready;
}

/** Fuentes Inter (400/600/800) para satori, cacheadas por isolate. */
let fontCache: any[] | null = null;
export async function loadInterFonts(origin: string) {
  if (fontCache) return fontCache;
  const grab = async (weight: number, file: string) => {
    const url = `${origin}/fonts/${file}`;
    let res: Response | null = null;
    try { res = await (cfEnv as any)?.ASSETS?.fetch(url); } catch { /* fuera de Workers (dev node) */ }
    if (!res || !res.ok) res = await fetch(url);
    if (!res.ok) throw new Error(`fuente ${file}: HTTP ${res.status}`);
    return { name: 'Inter', weight, style: 'normal' as const, data: await res.arrayBuffer() };
  };
  fontCache = await Promise.all([
    grab(400, 'inter-400.woff'),
    grab(600, 'inter-600.woff'),
    grab(800, 'inter-800.woff'),
  ]);
  return fontCache;
}

/** SVG (de satori: texto ya convertido a paths) → PNG con resvg. Llama antes a ensureOgWasm. */
export function svgToPng(svg: string, width: number): Uint8Array {
  return new Resvg(svg, { fitTo: { mode: 'width', value: width }, background: '#ffffff' }).render().asPng();
}

export { satori, Resvg };

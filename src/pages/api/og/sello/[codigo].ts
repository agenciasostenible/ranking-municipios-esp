import type { APIRoute } from 'astro';
import { DB } from '../../../../lib/d1client';
import { LABELS } from '../../../../lib/db';
// @ts-ignore
import satori from 'satori';
import { Resvg, initWasm } from '@resvg/resvg-wasm';

export const prerender = false;

const SHARE_CATS = [
  'monumentos','castillos','fiestas','festivales','gastronomia','senderismo',
  'Playas','TurismoRural','Campings','vinos','pueblo_bonito',
];

let wasmReady: Promise<void> | null = null;
function ensureWasm(origin: string) {
  if (!wasmReady) {
    wasmReady = initWasm(fetch(`${origin}/resvg.wasm`)).catch((e) => { wasmReady = null; throw e; });
  }
  return wasmReady;
}

let fontCache: any[] | null = null;
async function loadFonts(origin: string) {
  if (fontCache) return fontCache;
  const grab = async (w: number, file: string) =>
    ({ name: 'Inter', weight: w, style: 'normal', data: await fetch(`${origin}/fonts/${file}`).then(r => r.arrayBuffer()) });
  fontCache = await Promise.all([
    grab(400, 'inter-400.woff'),
    grab(600, 'inter-600.woff'),
    grab(800, 'inter-800.woff'),
  ]);
  return fontCache;
}

function tier(rank: number) {
  if (rank === 1)  return 'EL MEJOR EN';
  if (rank <= 3)   return 'TOP 3 EN';
  if (rank <= 5)   return 'TOP 5 EN';
  if (rank <= 10)  return 'TOP 10 EN';
  if (rank <= 25)  return 'TOP 25 EN';
  if (rank <= 50)  return 'TOP 50 EN';
  if (rank <= 100) return 'TOP 100 EN';
  return 'DESTACA EN';
}

const T = (children: any, style: any) => ({ type: 'div', props: { style: { display: 'flex', ...style }, children } });

export const GET: APIRoute = async ({ params, request, redirect }) => {
  const origin = new URL(request.url).origin;
  const fallback = () => redirect('/og-default.png', 302);
  try {
    const { codigo } = params;
    const muni = await DB.prepare(
      `SELECT nombre, provincia, comunidad FROM municipios WHERE codigo_ine = ?`
    ).bind(codigo).first();
    if (!muni) return fallback();

    const url = new URL(request.url);
    const wantCat = url.searchParams.get('cat');
    const rows = (await DB.prepare(
      `SELECT categoria, puntuacion, ranking_provincial, ranking_nacional
       FROM puntuaciones WHERE codigo_ine = ? AND puntuacion > 0`
    ).bind(codigo).all()).results as any[];

    const byCat: Record<string, any> = {};
    rows.forEach(r => { byCat[r.categoria] = r; });

    // elegir logro: categoria pedida, o el mejor puesto disponible
    let chosen: any = null;
    if (wantCat && byCat[wantCat]) {
      chosen = pick(byCat[wantCat], wantCat, muni.provincia as string);
    } else {
      const cands = SHARE_CATS.filter(c => byCat[c]).map(c => pick(byCat[c], c, muni.provincia as string)).filter(Boolean) as any[];
      cands.sort((a, b) => (a.scope === 'es' ? 0 : 1) - (b.scope === 'es' ? 0 : 1) || a.rank - b.rank);
      chosen = cands[0];
    }
    if (!chosen) return fallback();

    const nombre = muni.nombre as string;
    const zona = muni.comunidad ? `${muni.provincia} · ${muni.comunidad}` : (muni.provincia as string);
    const nombreSize = nombre.length > 16 ? 56 : nombre.length > 11 ? 70 : 82;
    const catSize = chosen.catLabel.length > 16 ? 42 : chosen.catLabel.length > 11 ? 50 : 58;

    await ensureWasm(origin);
    const fonts = await loadFonts(origin);

    const node = T([
      T([], { position: 'absolute', top: 0, left: 0, width: 1080, height: 22, background: '#FF385C' }),
      T([
        T('Ranking ', { color: '#FF385C' }),
        T('Spain', { color: '#222222' }),
      ], { fontSize: 32, fontWeight: 800, letterSpacing: 1, marginBottom: 30 }),
      T(`Nº${chosen.rank}`, {
        width: 150, height: 150, borderRadius: 75, border: '5px solid #FF385C', background: '#FFF1F3',
        alignItems: 'center', justifyContent: 'center', color: '#E31C5F', fontSize: 58, fontWeight: 800, marginBottom: 24,
      }),
      T(chosen.scopeLabel.toUpperCase(), {
        background: '#FF385C', color: '#fff', borderRadius: 30, padding: '10px 30px',
        fontSize: 24, fontWeight: 800, letterSpacing: 2, marginBottom: 34,
      }),
      T(tier(chosen.rank), { color: '#717171', fontSize: 22, fontWeight: 600, letterSpacing: 4, marginBottom: 12 }),
      T(chosen.catLabel, { color: '#FF385C', fontSize: catSize, fontWeight: 800, marginBottom: 28 }),
      T([], { width: 260, height: 2, background: '#EBEBEB', marginBottom: 28 }),
      T(nombre, { color: '#222222', fontSize: nombreSize, fontWeight: 800, marginBottom: 10, textAlign: 'center' }),
      T(zona, { color: '#717171', fontSize: 30, fontWeight: 600, marginBottom: 34 }),
      T([
        T(`${chosen.pts}`, { color: '#fff', fontSize: 34, fontWeight: 800 }),
        T(' / 100', { color: '#FFD6DE', fontSize: 22, fontWeight: 600 }),
      ], { background: '#FF385C', borderRadius: 36, padding: '14px 34px', alignItems: 'baseline' }),
      T('rankingspain.com', { color: '#717171', fontSize: 24, fontWeight: 600, letterSpacing: 1, marginTop: 50 }),
    ], {
      width: 1080, height: 1080, flexDirection: 'column', alignItems: 'center', justifyContent: 'flex-start',
      background: '#ffffff', fontFamily: 'Inter', paddingTop: 70, position: 'relative',
    });

    const svg: string = await satori(node, { width: 1080, height: 1080, fonts });
    const png = new Resvg(svg, { fitTo: { mode: 'width', value: 1080 }, background: '#ffffff' }).render().asPng();

    return new Response(png as any, {
      headers: { 'Content-Type': 'image/png', 'Cache-Control': 'public, max-age=86400, s-maxage=86400' },
    });
  } catch (e) {
    return fallback();
  }
};

function pick(row: any, cat: string, provincia: string) {
  const nac = row.ranking_nacional ? Number(row.ranking_nacional) : null;
  const prov = row.ranking_provincial ? Number(row.ranking_provincial) : null;
  let rank: number, scope: 'es' | 'prov', scopeLabel: string;
  if (nac && nac <= 100) { rank = nac; scope = 'es'; scopeLabel = 'de España'; }
  else if (prov) { rank = prov; scope = 'prov'; scopeLabel = 'de ' + provincia; }
  else if (nac) { rank = nac; scope = 'es'; scopeLabel = 'de España'; }
  else return null;
  const raw = LABELS[cat] ?? cat;
  return {
    rank, scope, scopeLabel,
    catLabel: raw.charAt(0).toUpperCase() + raw.slice(1).toLowerCase(),
    pts: Number(row.puntuacion).toFixed(0),
  };
}

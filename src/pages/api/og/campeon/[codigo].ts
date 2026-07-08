/**
 * GET /api/og/campeon/<codigo> — imagen para compartir el palmarés de un municipio.
 * PNG 1200×630 (las redes NO renderizan SVG como og:image). Se maqueta con satori
 * (texto → paths; resvg no sabe leer las fuentes WOFF) y las medallas son
 * círculos de color (no hay fuente emoji).
 */
import type { APIRoute } from 'astro';
import { DB } from '../../../../lib/d1client';
import { LABELS, DETAIL_CATS } from '../../../../lib/db';
import { satori, svgToPng, ensureOgWasm, loadInterFonts } from '../../../../lib/og-runtime';

export const prerender = false;

const T = (children: any, style: any) => ({ type: 'div', props: { style: { display: 'flex', ...style }, children } });

export const GET: APIRoute = async ({ params, request, redirect }) => {
  const origin = new URL(request.url).origin;
  const fallback = () => redirect('/og-default.png', 302);
  try {
    const { codigo } = params;

    const muni = await DB.prepare(
      `SELECT nombre, provincia FROM municipios WHERE codigo_ine = ?`
    ).bind(codigo).first() as any;
    if (!muni) return fallback();

    const { results: rows } = await DB.prepare(`
      SELECT p.categoria, p.puntuacion,
       (SELECT COUNT(*)+1 FROM puntuaciones q JOIN municipios mq ON mq.codigo_ine=q.codigo_ine
         WHERE q.categoria=p.categoria AND q.puntuacion>p.puntuacion AND COALESCE(mq.es_duplicado,0)=0) rk_nac,
       (SELECT COUNT(*)+1 FROM puntuaciones q JOIN municipios mq ON mq.codigo_ine=q.codigo_ine
         WHERE q.categoria=p.categoria AND q.puntuacion>p.puntuacion AND COALESCE(mq.es_duplicado,0)=0 AND mq.provincia=?) rk_prov,
       (SELECT COUNT(*) FROM puntuaciones q JOIN municipios mq ON mq.codigo_ine=q.codigo_ine
         WHERE q.categoria=p.categoria AND q.puntuacion>0 AND COALESCE(mq.es_duplicado,0)=0) tot_nac
      FROM puntuaciones p WHERE p.codigo_ine = ? AND p.puntuacion > 0
    `).bind(muni.provincia, codigo).all();

    const PUBLIC = new Set([...DETAIL_CATS, 'ranking_global']);
    const logros = (rows as any[])
      .filter(r => PUBLIC.has(r.categoria))
      .map(r => ({ ...r, pct: r.tot_nac > 0 ? r.rk_nac / r.tot_nac : 1 }))
      .sort((a, b) => {
        const aTop = a.rk_prov === 1 ? 0 : 1, bTop = b.rk_prov === 1 ? 0 : 1;
        if (aTop !== bTop) return aTop - bTop;
        return a.pct - b.pct;
      })
      .slice(0, 4);

    const frase = (l: any) => {
      if (l.rk_prov === 1) return `#1 de ${muni.provincia}`;
      if (l.rk_nac <= 10) return `Top ${l.rk_nac} de España`;
      if (l.rk_prov <= 10) return `#${l.rk_prov} de ${muni.provincia}`;
      const pct = Math.max(1, Math.round(l.pct * 100));
      return pct <= 25 ? `Top ${pct}% de España` : `#${l.rk_nac} de España`;
    };
    // Medallas: oro, plata, bronce, resto
    const medColor = ['#FFD166', '#C0C7D1', '#D9935B', '#9AA7B5'];

    await ensureOgWasm();
    const fonts = await loadInterFonts(origin);

    const filas = logros.map((l, i) => {
      const label = l.categoria === 'ranking_global' ? 'Ranking global' : (LABELS[l.categoria] ?? l.categoria);
      return T([
        T(String(i + 1), {
          width: 34, height: 34, borderRadius: 17, background: medColor[i],
          alignItems: 'center', justifyContent: 'center',
          color: '#5c3a00', fontSize: 20, fontWeight: 800, marginRight: 18,
        }),
        T(label, { color: '#ffffff', fontSize: 28, fontWeight: 700 }),
        T(frase(l), { color: '#ffd166', fontSize: 28, fontWeight: 700, marginLeft: 'auto' }),
      ], {
        alignItems: 'center', background: 'rgba(255,255,255,0.10)', borderRadius: 16,
        padding: '12px 24px', marginBottom: 14, width: 1060,
      });
    });

    const node = T([
      T('¿EN QUÉ ES CAMPEÓN…?', { color: 'rgba(255,255,255,0.85)', fontSize: 30, fontWeight: 700, marginBottom: 26 }),
      T(muni.nombre, { color: '#ffffff', fontSize: 64, fontWeight: 800, marginBottom: 4 }),
      T(muni.provincia, { color: 'rgba(255,255,255,0.8)', fontSize: 30, fontWeight: 400, marginBottom: 34 }),
      ...filas,
      T('rankingspain.com/campeon — descubre el palmarés de tu municipio', {
        color: 'rgba(255,255,255,0.85)', fontSize: 26, fontWeight: 700, marginTop: 'auto',
      }),
    ], {
      width: 1200, height: 630, flexDirection: 'column', alignItems: 'flex-start',
      background: 'linear-gradient(135deg, #E61E4D 0%, #D70466 55%, #8B1E5C 100%)',
      padding: '56px 70px 40px', fontFamily: 'Inter',
    });

    const svg: string = await satori(node, { width: 1200, height: 630, fonts });
    const png = svgToPng(svg, 1200);

    return new Response(png as any, {
      headers: { 'Content-Type': 'image/png', 'Cache-Control': 'public, max-age=86400' },
    });
  } catch {
    return fallback();
  }
};

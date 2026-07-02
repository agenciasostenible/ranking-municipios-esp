/**
 * GET /api/og/campeon/<codigo> — imagen para compartir el palmarés de un municipio
 */
import type { APIRoute } from 'astro';
import { DB } from '../../../../lib/d1client';
import { LABELS, DETAIL_CATS } from '../../../../lib/db';

const esc = (s: string) => String(s).replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');

export const GET: APIRoute = async ({ params }) => {
  const { codigo } = params;

  const muni = await DB.prepare(
    `SELECT nombre, provincia FROM municipios WHERE codigo_ine = ?`
  ).bind(codigo).first() as any;
  if (!muni) return new Response('Not found', { status: 404 });

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
  const medallas = ['🥇', '🥈', '🥉', '🏅'];

  const filas = logros.map((l, i) => {
    const y = 300 + i * 74;
    const label = l.categoria === 'ranking_global' ? 'Ranking global' : (LABELS[l.categoria] ?? l.categoria);
    return `
    <rect x="70" y="${y - 44}" width="1060" height="60" rx="16" fill="rgba(255,255,255,.10)"/>
    <text x="96" y="${y}" font-size="32">${medallas[i]}</text>
    <text x="150" y="${y - 2}" font-size="28" font-weight="700" fill="#fff" font-family="Arial, sans-serif">${esc(label)}</text>
    <text x="1104" y="${y - 2}" font-size="28" font-weight="700" fill="#ffd166" text-anchor="end" font-family="Arial, sans-serif">${esc(frase(l))}</text>`;
  }).join('');

  const svg = `<svg width="1200" height="630" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="bg" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0" stop-color="#E61E4D"/><stop offset=".55" stop-color="#D70466"/><stop offset="1" stop-color="#8B1E5C"/>
    </linearGradient>
  </defs>
  <rect width="1200" height="630" fill="url(#bg)"/>
  <text x="70" y="96" font-size="30" fill="rgba(255,255,255,.85)" font-weight="700" font-family="Arial, sans-serif">🏆 ¿EN QUÉ ES CAMPEÓN…?</text>
  <text x="70" y="178" font-size="64" fill="#fff" font-weight="800" font-family="Arial, sans-serif">${esc(muni.nombre)}</text>
  <text x="70" y="222" font-size="30" fill="rgba(255,255,255,.8)" font-family="Arial, sans-serif">${esc(muni.provincia)}</text>
  ${filas}
  <text x="70" y="592" font-size="26" fill="rgba(255,255,255,.85)" font-weight="700" font-family="Arial, sans-serif">rankingspain.com/campeon — descubre el palmarés de tu municipio</text>
</svg>`;

  return new Response(svg, {
    headers: { 'Content-Type': 'image/svg+xml', 'Cache-Control': 'public, max-age=86400' },
  });
};

import { DB } from '../../../lib/d1client';
import type { APIRoute } from 'astro';
// @ts-ignore
import satori from 'satori';

export const GET: APIRoute = async ({ params, request }) => {
  const { codigo } = params;

  const municipio = await DB.prepare(
    `SELECT m.nombre, m.provincia, m.comarca, m.comunidad, m.poblacion, m.why_json,
            p.puntuacion, p.ranking_provincial
     FROM municipios m
     LEFT JOIN puntuaciones p ON m.codigo_ine = p.codigo_ine AND p.categoria = 'ranking_global'
     WHERE m.codigo_ine = ?`
  ).bind(codigo).first();

  if (!municipio) return new Response('Not found', { status: 404 });

  const totalRow = await DB.prepare(
    `SELECT COUNT(*) as n FROM municipios WHERE provincia = ?`
  ).bind(municipio.provincia).first();
  const total = totalRow?.n ?? 0;

  const nombre = municipio.nombre as string;
  const provincia = municipio.provincia as string;
  const comarca = (municipio.comarca as string) ?? '';
  const pos = municipio.ranking_provincial as number | null;
  const pts = municipio.puntuacion != null ? Number(municipio.puntuacion).toFixed(1) : '—';
  const pob = municipio.poblacion ? Number(municipio.poblacion).toLocaleString('es-ES') : '—';
  const why: string[] = municipio.why_json
    ? (() => { try { return JSON.parse(municipio.why_json as string); } catch { return []; } })()
    : [];

  // Fuente embebida en base64 (Inter Bold) — requerida por Satori
  // Usamos una fuente del sistema via fetch para Cloudflare Workers
  const baseUrl = new URL(request.url).origin;
  let fontData: ArrayBuffer;
  try {
    const fontRes = await fetch(`${baseUrl}/fonts/Inter-Bold.woff`);
    if (!fontRes.ok) throw new Error('font not found');
    fontData = await fontRes.arrayBuffer();
  } catch {
    // Fallback: SVG si no hay fuente
    return svgFallback(nombre, provincia, comarca, pos, total, pts, pob, why);
  }

  try {
    const svg = await satori(
      {
        type: 'div',
        props: {
          style: {
            width: '1200px',
            height: '630px',
            display: 'flex',
            flexDirection: 'column',
            background: 'linear-gradient(135deg, #1a3a5c 0%, #2563a8 55%, #1a7a5a 100%)',
            padding: '48px 64px',
            fontFamily: 'Inter',
            color: '#fff',
          },
          children: [
            // Header
            {
              type: 'div',
              props: {
                style: { fontSize: '22px', opacity: '0.6', marginBottom: '24px' },
                children: '🗺️ Ranking Municipios España',
              },
            },
            // Nombre
            {
              type: 'div',
              props: {
                style: {
                  fontSize: nombre.length > 20 ? '64px' : '80px',
                  fontWeight: 'bold',
                  lineHeight: '1.1',
                  marginBottom: '12px',
                },
                children: nombre,
              },
            },
            // Comarca · Provincia
            {
              type: 'div',
              props: {
                style: { fontSize: '28px', opacity: '0.75', marginBottom: '32px' },
                children: comarca ? `${comarca} · ${provincia}` : provincia,
              },
            },
            // Stats row
            {
              type: 'div',
              props: {
                style: { display: 'flex', gap: '16px', flexWrap: 'wrap' },
                children: [
                  statBox(pos ? `#${pos}` : '—', `de ${total} en ${provincia}`),
                  statBox(`${pts} pts`, 'puntuación global'),
                  statBox(pob, 'habitantes'),
                ],
              },
            },
            // Why chips
            why.length > 0
              ? {
                  type: 'div',
                  props: {
                    style: { display: 'flex', gap: '10px', flexWrap: 'wrap', marginTop: '28px' },
                    children: why.slice(0, 3).map(chip => ({
                      type: 'div',
                      props: {
                        style: {
                          background: 'rgba(255,255,255,0.15)',
                          border: '1px solid rgba(255,255,255,0.3)',
                          borderRadius: '20px',
                          padding: '6px 16px',
                          fontSize: '20px',
                        },
                        children: chip,
                      },
                    })),
                  },
                }
              : null,
            // Footer
            {
              type: 'div',
              props: {
                style: {
                  marginTop: 'auto',
                  fontSize: '18px',
                  opacity: '0.4',
                },
                children: 'ranking-municipios-esp.pages.dev',
              },
            },
          ].filter(Boolean),
        },
      },
      {
        width: 1200,
        height: 630,
        fonts: [{ name: 'Inter', data: fontData, weight: 700, style: 'normal' }],
      }
    );

    return new Response(svg, {
      headers: {
        'Content-Type': 'image/svg+xml',
        'Cache-Control': 'public, max-age=86400',
      },
    });
  } catch {
    return svgFallback(nombre, provincia, comarca, pos, total, pts, pob, why);
  }
};

function statBox(value: string, label: string) {
  return {
    type: 'div',
    props: {
      style: {
        background: 'rgba(255,255,255,0.15)',
        borderRadius: '14px',
        padding: '16px 24px',
        minWidth: '160px',
      },
      children: [
        {
          type: 'div',
          props: { style: { fontSize: '40px', fontWeight: 'bold', lineHeight: '1' }, children: value },
        },
        {
          type: 'div',
          props: { style: { fontSize: '16px', opacity: '0.7', marginTop: '6px' }, children: label },
        },
      ],
    },
  };
}

function escSvg(s: string): string {
  return String(s).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;').replace(/"/g,'&quot;');
}

function svgFallback(nombre: string, provincia: string, comarca: string, pos: number|null, total: number, pts: string, pob: string, why: string[]) {
  const chips = why.slice(0,3).map(c =>
    `<rect rx="10" fill="rgba(255,255,255,0.15)"/><text fill="#fff" font-size="18">${escSvg(c)}</text>`
  ).join('');

  const svg = `<svg width="1200" height="630" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="bg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#1a3a5c"/>
      <stop offset="55%" style="stop-color:#2563a8"/>
      <stop offset="100%" style="stop-color:#1a7a5a"/>
    </linearGradient>
  </defs>
  <rect width="1200" height="630" fill="url(#bg)"/>
  <text x="64" y="100" font-family="Arial,sans-serif" font-size="22" fill="rgba(255,255,255,0.6)">&#x1F5FA;&#xFE0F; Ranking Municipios Espa&#xF1;a</text>
  <text x="64" y="${nombre.length > 20 ? 195 : 215}" font-family="Arial,sans-serif" font-size="${nombre.length > 20 ? 68 : 82}" font-weight="800" fill="#fff">${escSvg(nombre)}</text>
  <text x="64" y="270" font-family="Arial,sans-serif" font-size="28" fill="rgba(255,255,255,0.75)">${escSvg(comarca ? comarca + ' · ' + provincia : provincia)}</text>
  <rect x="64" y="310" width="200" height="110" rx="14" fill="rgba(255,255,255,0.15)"/>
  <text x="164" y="365" text-anchor="middle" font-family="Arial,sans-serif" font-size="40" font-weight="800" fill="#fff">${pos ? '#' + pos : '&#8212;'}</text>
  <text x="164" y="398" text-anchor="middle" font-family="Arial,sans-serif" font-size="17" fill="rgba(255,255,255,0.65)">de ${total} en ${escSvg(provincia)}</text>
  <rect x="284" y="310" width="180" height="110" rx="14" fill="rgba(255,255,255,0.15)"/>
  <text x="374" y="365" text-anchor="middle" font-family="Arial,sans-serif" font-size="40" font-weight="800" fill="#fff">${escSvg(pts)}</text>
  <text x="374" y="398" text-anchor="middle" font-family="Arial,sans-serif" font-size="17" fill="rgba(255,255,255,0.65)">puntos global</text>
  <rect x="484" y="310" width="180" height="110" rx="14" fill="rgba(255,255,255,0.15)"/>
  <text x="574" y="365" text-anchor="middle" font-family="Arial,sans-serif" font-size="36" font-weight="800" fill="#fff">${escSvg(pob)}</text>
  <text x="574" y="398" text-anchor="middle" font-family="Arial,sans-serif" font-size="17" fill="rgba(255,255,255,0.65)">habitantes</text>
  ${why.slice(0,3).map((chip, i) => `
    <rect x="${64 + i*220}" y="450" width="200" height="44" rx="22" fill="rgba(255,255,255,0.15)"/>
    <text x="${164 + i*220}" y="477" text-anchor="middle" font-family="Arial,sans-serif" font-size="19" fill="#fff">${escSvg(chip)}</text>
  `).join('')}
  <text x="600" y="600" text-anchor="middle" font-family="Arial,sans-serif" font-size="18" fill="rgba(255,255,255,0.35)">ranking-municipios-esp.pages.dev</text>
</svg>`;

  return new Response(svg, {
    headers: { 'Content-Type': 'image/svg+xml', 'Cache-Control': 'public, max-age=86400' },
  });
}

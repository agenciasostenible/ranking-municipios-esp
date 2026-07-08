/**
 * GET /api/og/<codigo> — tarjeta OG genérica del municipio (1200×630, PNG).
 * PNG porque las redes (WhatsApp/Twitter/Facebook) no renderizan SVG como og:image.
 */
import { DB } from '../../../lib/d1client';
import type { APIRoute } from 'astro';
import { satori, svgToPng, ensureOgWasm, loadInterFonts } from '../../../lib/og-runtime';

export const prerender = false;

export const GET: APIRoute = async ({ params, request, redirect }) => {
  const origin = new URL(request.url).origin;
  const fallback = () => redirect('/og-default.png', 302);
  try {
    const { codigo } = params;

    const municipio = await DB.prepare(
      `SELECT m.nombre, m.provincia, m.comarca, m.comunidad, m.poblacion, m.why_json,
              p.puntuacion, p.ranking_provincial
       FROM municipios m
       LEFT JOIN puntuaciones p ON m.codigo_ine = p.codigo_ine AND p.categoria = 'ranking_global'
       WHERE m.codigo_ine = ?`
    ).bind(codigo).first();

    if (!municipio) return fallback();

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

    await ensureOgWasm();
    const fonts = await loadInterFonts(origin);

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
                children: 'Ranking Municipios España',
              },
            },
            // Nombre
            {
              type: 'div',
              props: {
                style: {
                  fontSize: nombre.length > 20 ? '64px' : '80px',
                  fontWeight: 800,
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
                children: 'rankingspain.com',
              },
            },
          ].filter(Boolean),
        },
      },
      { width: 1200, height: 630, fonts }
    );

    const png = svgToPng(svg, 1200);

    return new Response(png as any, {
      headers: {
        'Content-Type': 'image/png',
        'Cache-Control': 'public, max-age=86400',
      },
    });
  } catch {
    return fallback();
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
        display: 'flex',
        flexDirection: 'column',
      },
      children: [
        {
          type: 'div',
          props: { style: { fontSize: '40px', fontWeight: 800, lineHeight: '1' }, children: value },
        },
        {
          type: 'div',
          props: { style: { fontSize: '16px', opacity: '0.7', marginTop: '6px' }, children: label },
        },
      ],
    },
  };
}

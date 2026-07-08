/**
 * GET /api/og/encuesta/:id        → PNG vertical 1080×1920 (formato Stories)
 * GET /api/og/encuesta/:id?dl=1    → igual, pero fuerza la descarga del archivo
 *
 * Imagen lista para publicar en Instagram: @usuario + su municipio favorito
 * para pasar 2 días (+ provincia y cita, si los dio). Estilo limpio "Airbnb".
 */
import type { APIRoute } from 'astro';
import { DB } from '../../../../lib/d1client';
import { satori, svgToPng, ensureOgWasm, loadInterFonts } from '../../../../lib/og-runtime';

export const prerender = false;

const T = (children: any, style: any) => ({ type: 'div', props: { style: { display: 'flex', ...style }, children } });

export const GET: APIRoute = async ({ params, request, redirect }) => {
  const origin = new URL(request.url).origin;
  const fallback = () => redirect('/og-default.png', 302);
  try {
    const { id } = params;
    const row = await DB.prepare(
      `SELECT handle, sitio, provincia, frase, avatar_data FROM encuesta WHERE id = ?`
    ).bind(id).first();
    if (!row) return fallback();

    const handle = String(row.handle || '');
    const sitio = String(row.sitio || '');
    const provincia = row.provincia ? String(row.provincia) : '';
    const frase = row.frase ? String(row.frase) : '';
    const sitioSize = sitio.length > 18 ? 76 : sitio.length > 12 ? 96 : 120;

    await ensureOgWasm();
    const fonts = await loadInterFonts(origin);

    // Avatar: solo si hay foto subida (incrustada como data URL). Si no hay, no se pinta nada.
    const avatarSrc = typeof row.avatar_data === 'string' && row.avatar_data.startsWith('data:') ? row.avatar_data : '';
    const avatar = avatarSrc
      ? { type: 'img', props: { src: avatarSrc, width: 180, height: 180, style: { width: 180, height: 180, borderRadius: 90, objectFit: 'cover', border: '6px solid #FF385C', marginBottom: 28 } } }
      : null;

    const node = T([
      T([], { position: 'absolute', top: 0, left: 0, width: 1080, height: 26, background: '#FF385C' }),
      T([], { position: 'absolute', bottom: 0, left: 0, width: 1080, height: 26, background: '#FF385C' }),
      // Cabecera marca
      T([
        T('Ranking ', { color: '#FF385C' }),
        T('Spain', { color: '#222222' }),
      ], { fontSize: 40, fontWeight: 800, letterSpacing: 1, marginBottom: 70 }),
      // Etiqueta
      T('LA ESCAPADA DE 2 DÍAS DE', {
        background: '#FF385C', color: '#fff', borderRadius: 34, padding: '14px 38px',
        fontSize: 28, fontWeight: 800, letterSpacing: 3, marginBottom: 46,
      }),
      ...(avatar ? [avatar] : []),
      // @usuario
      T(`@${handle}`, { color: '#222222', fontSize: 56, fontWeight: 800, marginBottom: 54 }),
      T('recomienda pasar 2 días en', { color: '#717171', fontSize: 30, fontWeight: 600, marginBottom: 18 }),
      // Municipio (protagonista)
      T(sitio, { color: '#FF385C', fontSize: sitioSize, fontWeight: 800, marginBottom: provincia ? 12 : 0, textAlign: 'center', maxWidth: 940 }),
      ...(provincia ? [T(provincia, { color: '#717171', fontSize: 36, fontWeight: 600 })] : []),
      // Cita (opcional)
      ...(frase ? [
        T([], { width: 280, height: 2, background: '#EBEBEB', marginTop: 50, marginBottom: 40 }),
        T(`“${frase}”`, { color: '#444444', fontSize: 38, fontWeight: 600, fontStyle: 'italic', textAlign: 'center', maxWidth: 880, lineHeight: 1.35 }),
      ] : []),
      // Pie
      T('rankingspain.com', { color: '#717171', fontSize: 30, fontWeight: 600, letterSpacing: 1, position: 'absolute', bottom: 90 }),
    ], {
      width: 1080, height: 1920, flexDirection: 'column', alignItems: 'center', justifyContent: 'center',
      background: '#ffffff', fontFamily: 'Inter', padding: '120px 70px', position: 'relative',
    });

    const svg: string = await satori(node, { width: 1080, height: 1920, fonts });
    const png = svgToPng(svg, 1080);

    const dl = new URL(request.url).searchParams.get('dl');
    const headers: Record<string, string> = {
      'Content-Type': 'image/png',
      'Cache-Control': 'public, max-age=3600, s-maxage=3600',
    };
    if (dl) headers['Content-Disposition'] = `attachment; filename="recomendacion-${handle}.png"`;
    return new Response(png as any, { headers });
  } catch (e) {
    return fallback();
  }
};

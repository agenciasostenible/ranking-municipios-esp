/**
 * GET /api/anuncio-moderar?id=NN&token=...&accion=aprobar|rechazar
 * Aprobar o rechazar un anuncio desde los botones del email (token de un solo uso
 * lógico: debe coincidir con el guardado). Devuelve una página de confirmación.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const page = (titulo: string, cuerpo: string) => new Response(
  `<!doctype html><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
   <title>${titulo} — Ranking Spain</title>
   <div style="font-family:system-ui,sans-serif;max-width:480px;margin:60px auto;padding:0 20px;text-align:center">
     <div style="font-size:3rem">${titulo.startsWith('✅') ? '✅' : titulo.startsWith('❌') ? '❌' : 'ℹ️'}</div>
     <h1 style="font-size:1.3rem">${titulo.replace(/^[^ ]+ /, '')}</h1>
     <p style="color:#666">${cuerpo}</p>
     <a href="/" style="color:#FF385C;font-weight:700;text-decoration:none">Volver a Ranking Spain</a>
   </div>`,
  { headers: { 'Content-Type': 'text/html; charset=utf-8' } },
);

export const GET: APIRoute = async ({ url }) => {
  const id = url.searchParams.get('id');
  const token = url.searchParams.get('token') ?? '';
  const accion = url.searchParams.get('accion');
  if (!id || !token || !['aprobar', 'rechazar', 'quitar'].includes(accion ?? '')) {
    return page('ℹ️ Enlace no válido', 'Faltan datos en el enlace.');
  }

  const row = await DB.prepare(
    `SELECT id, nombre, estado, token FROM anuncios WHERE id = ? LIMIT 1`
  ).bind(id).first();

  if (!row || row.token !== token) return page('ℹ️ Enlace no válido', 'El enlace ha caducado o no es correcto.');

  // Quitar / despublicar un anuncio ya aprobado (o cualquiera): deja de mostrarse.
  if (accion === 'quitar') {
    if (row.estado === 'rechazado') return page('ℹ️ Ya retirado', `<b>${esc(row.nombre)}</b> ya no se mostraba.`);
    await DB.prepare(`UPDATE anuncios SET estado = 'rechazado', moderado_at = datetime('now') WHERE id = ?`).bind(id).run();
    return page('✅ Retirado', `<b>${esc(row.nombre)}</b> ya no aparece publicado.`);
  }

  // Aprobar / rechazar: solo desde "pendiente"
  if (row.estado !== 'pendiente') {
    return page('ℹ️ Ya gestionado', `Este anuncio ya estaba <b>${row.estado}</b>.`);
  }
  const nuevo = accion === 'aprobar' ? 'aprobado' : 'rechazado';
  await DB.prepare(
    `UPDATE anuncios SET estado = ?, moderado_at = datetime('now') WHERE id = ?`
  ).bind(nuevo, id).run();

  return accion === 'aprobar'
    ? page('✅ Aprobado', `<b>${esc(row.nombre)}</b> ya aparece como recomendado en su municipio y en las rutas.`)
    : page('❌ Rechazado', `<b>${esc(row.nombre)}</b> no se publicará.`);
};

function esc(s: string): string {
  return String(s).replace(/[&<>]/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;' }[c] as string));
}

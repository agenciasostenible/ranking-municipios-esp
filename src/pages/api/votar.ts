/**
 * POST /api/votar  { codigo, previo? }
 * Suma un voto al municipio elegido. Si "previo" viene y es distinto, descuenta
 * el voto anterior de ese navegador (cada navegador mantiene 1 voto movible).
 * No se guarda ningún dato de quién vota.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

export const POST: APIRoute = async ({ request }) => {
  let b: any;
  try { b = await request.json(); } catch { return new Response('bad', { status: 400 }); }

  const codigo = String(b.codigo || '').trim().slice(0, 10);
  const previo = String(b.previo || '').trim().slice(0, 10);
  if (!codigo) return new Response('falta municipio', { status: 400 });
  if (previo === codigo) {
    // Revoto al mismo: no cambia el recuento; devolvemos el total actual.
    const r = await DB.prepare(`SELECT votos FROM votos WHERE codigo_ine=?`).bind(codigo).first();
    return new Response(JSON.stringify({ ok: true, votos: Number(r?.votos || 0) }), { headers: { 'Content-Type': 'application/json' } });
  }

  // Nombre/provincia canónicos desde la BD (no nos fiamos del cliente).
  const muni = await DB.prepare(
    `SELECT nombre, provincia FROM municipios WHERE codigo_ine=? AND COALESCE(es_duplicado,0)=0`
  ).bind(codigo).first();
  if (!muni) return new Response('municipio no válido', { status: 400 });

  try {
    await DB.prepare(
      `INSERT INTO votos (codigo_ine, nombre, provincia, votos)
       VALUES (?, ?, ?, 1)
       ON CONFLICT(codigo_ine) DO UPDATE SET votos = votos + 1, updated_at = datetime('now')`
    ).bind(codigo, muni.nombre, muni.provincia).run();

    // Descontar el voto anterior de este navegador, si lo había.
    if (previo) {
      await DB.prepare(
        `UPDATE votos SET votos = MAX(votos - 1, 0), updated_at = datetime('now') WHERE codigo_ine = ?`
      ).bind(previo).run();
    }
  } catch {
    return new Response('error', { status: 500 });
  }

  const r = await DB.prepare(`SELECT votos FROM votos WHERE codigo_ine=?`).bind(codigo).first();
  return new Response(JSON.stringify({ ok: true, votos: Number(r?.votos || 0) }), { headers: { 'Content-Type': 'application/json' } });
};

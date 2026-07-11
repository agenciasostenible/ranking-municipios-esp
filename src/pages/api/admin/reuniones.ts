/**
 * POST /api/admin/reuniones?key=ADMIN_KEY — gestión de huecos de videollamada.
 *   { accion:'crear', fecha:'YYYY-MM-DD', horas:['10:00','10:30'] }  → abre huecos
 *   { accion:'borrar', id }                                          → quita un hueco libre
 *   { accion:'cancelar', id }                                        → libera una reserva (avisar tú al contacto)
 */
import type { APIRoute } from 'astro';
import { DB } from '../../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

const okJson = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

export const POST: APIRoute = async ({ request }) => {
  const url = new URL(request.url);
  const key = url.searchParams.get('key') ?? '';
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return okJson({ ok: false, error: 'no_auth' }, 401);

  let b: any = {};
  try { b = await request.json(); } catch { return okJson({ ok: false }, 400); }

  if (b.accion === 'crear') {
    const fecha = String(b.fecha || '').trim();
    if (!/^\d{4}-\d{2}-\d{2}$/.test(fecha)) return okJson({ ok: false, error: 'fecha_mal' }, 400);
    const horas = (Array.isArray(b.horas) ? b.horas : []).filter((h: any) => /^\d{2}:\d{2}$/.test(String(h)));
    if (!horas.length) return okJson({ ok: false, error: 'sin_horas' }, 400);
    let creados = 0;
    for (const h of horas) {
      const r = await DB.prepare(`INSERT OR IGNORE INTO reuniones (fecha, hora) VALUES (?, ?)`).bind(fecha, h).run();
      creados += (r as any)?.meta?.changes || 0;
    }
    return okJson({ ok: true, creados });
  }

  const id = parseInt(b.id);
  if (!id) return okJson({ ok: false, error: 'sin_id' }, 400);

  if (b.accion === 'borrar') {
    const r = await DB.prepare(`DELETE FROM reuniones WHERE id = ? AND estado='libre'`).bind(id).run();
    return okJson({ ok: true, borrados: (r as any)?.meta?.changes || 0 });
  }
  if (b.accion === 'cancelar') {
    const r = await DB.prepare(
      `UPDATE reuniones SET estado='libre', codigo_ine=NULL, municipio=NULL, nombre=NULL, cargo=NULL, email=NULL, telefono=NULL, enlace=NULL, reservado_at=NULL WHERE id = ? AND estado='reservada'`
    ).bind(id).run();
    return okJson({ ok: true, canceladas: (r as any)?.meta?.changes || 0 });
  }
  return okJson({ ok: false, error: 'accion_desconocida' }, 400);
};

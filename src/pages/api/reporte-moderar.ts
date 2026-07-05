/**
 * GET /api/reporte-moderar?key=CLAVE&id=NN&accion=borrar_sitio|resuelto|descartar
 * Modera un reporte. "borrar_sitio" elimina la entidad reportada de la BD.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? process.env[k] : undefined);

export const GET: APIRoute = async ({ url, redirect }) => {
  const key = url.searchParams.get('key') ?? '';
  const id = parseInt(url.searchParams.get('id') ?? '0', 10);
  const accion = url.searchParams.get('accion') ?? '';
  const adminKey = env('ADMIN_KEY');
  if (!adminKey || key !== adminKey || !id) return new Response('Acceso denegado', { status: 403 });

  const rep = await DB.prepare(`SELECT entidad_id FROM reportes WHERE id = ?`).bind(id).first() as any;
  if (!rep) return new Response('No existe', { status: 404 });

  if (accion === 'borrar_sitio') {
    if (rep.entidad_id) await DB.prepare(`DELETE FROM entidades WHERE id = ?`).bind(rep.entidad_id).run();
    await DB.prepare(`UPDATE reportes SET estado = 'resuelto' WHERE id = ?`).bind(id).run();
  } else if (accion === 'resuelto') {
    await DB.prepare(`UPDATE reportes SET estado = 'resuelto' WHERE id = ?`).bind(id).run();
  } else if (accion === 'descartar') {
    await DB.prepare(`UPDATE reportes SET estado = 'descartado' WHERE id = ?`).bind(id).run();
  } else {
    return new Response('Acción desconocida', { status: 400 });
  }
  return redirect(`/admin/reportes?key=${encodeURIComponent(key)}`);
};

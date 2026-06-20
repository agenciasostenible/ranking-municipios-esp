/**
 * banners.ts — banners publicitarios por "slot" (zonas fijas de la web).
 * Independiente del inventario y de los anuncios de establecimientos.
 */
import { DB } from './d1client';

export type Banner = { id: number; slot: string; enlace: string | null; alt: string | null; foto: string | null };

/** Banner activo de un slot (el más reciente). Null si no hay. */
export async function getBanner(slot: string): Promise<Banner | null> {
  try {
    const r = await DB.prepare(
      `SELECT id, slot, enlace, alt, (foto_data IS NOT NULL) AS hasfoto
         FROM banners WHERE slot = ? AND activo = 1
        ORDER BY creado_at DESC LIMIT 1`
    ).bind(slot).first() as any;
    if (!r || !r.hasfoto) return null;
    return { id: r.id, slot: r.slot, enlace: r.enlace, alt: r.alt, foto: `/api/banner-foto?id=${r.id}` };
  } catch {
    return null;   // si la tabla aún no existe en este entorno, no rompemos la página
  }
}

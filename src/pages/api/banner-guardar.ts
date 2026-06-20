/**
 * POST /api/banner-guardar — crea/edita/borra un banner. Protegido por ADMIN_KEY.
 * Body JSON: { key, id?, slot, enlace?, alt?, activo?, foto?(dataURL), eliminar? }
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);

const SLOTS_OK = ['home_top', 'home_cats'];
const MAX_FOTO = 1_400_000;
const j = (o: any, s = 200) => new Response(JSON.stringify(o), { status: s, headers: { 'Content-Type': 'application/json' } });

export const POST: APIRoute = async ({ request }) => {
  let b: any;
  try { b = await request.json(); } catch { return j({ ok: false, error: 'bad_json' }, 400); }
  if (!env('ADMIN_KEY') || b.key !== env('ADMIN_KEY')) return j({ ok: false, error: 'no_autorizado' }, 403);

  const bit = (v: any) => (v ? 1 : 0);

  // Borrar
  if (b.eliminar && b.id) {
    await DB.prepare(`DELETE FROM banners WHERE id = ?`).bind(b.id).run();
    return j({ ok: true });
  }

  const slot = String(b.slot || '');
  if (!SLOTS_OK.includes(slot)) return j({ ok: false, error: 'slot_invalido' }, 400);

  // Imagen (solo si llega una nueva)
  let foto: string | null = null, mime: string | null = null;
  if (typeof b.foto === 'string' && b.foto.startsWith('data:image/')) {
    const m = /^data:(image\/(?:jpeg|png|webp|gif));base64,/.exec(b.foto);
    if (!m || b.foto.length > MAX_FOTO) return j({ ok: false, error: 'foto_invalida' }, 400);
    foto = b.foto; mime = m[1];
  }

  const enlace = String(b.enlace || '').slice(0, 400) || null;
  const alt = String(b.alt || '').slice(0, 160) || null;
  const activo = bit(b.activo);

  if (b.id) {
    if (foto) {
      await DB.prepare(`UPDATE banners SET slot=?, enlace=?, alt=?, activo=?, foto_data=?, foto_mime=? WHERE id=?`)
        .bind(slot, enlace, alt, activo, foto, mime, b.id).run();
    } else {
      await DB.prepare(`UPDATE banners SET slot=?, enlace=?, alt=?, activo=? WHERE id=?`)
        .bind(slot, enlace, alt, activo, b.id).run();
    }
    return j({ ok: true, id: b.id });
  }

  if (!foto) return j({ ok: false, error: 'falta_foto' }, 400);
  await DB.prepare(`INSERT INTO banners (slot, enlace, alt, activo, foto_data, foto_mime) VALUES (?,?,?,?,?,?)`)
    .bind(slot, enlace, alt, activo, foto, mime).run();
  return j({ ok: true });
};

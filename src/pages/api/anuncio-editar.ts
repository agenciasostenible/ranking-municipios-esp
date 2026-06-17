/**
 * POST /api/anuncio-editar
 * Edita un anuncio (datos + colocación + foto). Protegido por ADMIN_KEY.
 * Body JSON: { key, id, tipo, nombre, descripcion, direccion, contacto, email,
 *   telefono, web, en_ficha, en_ruta_mun, en_ruta_zona, foto?, quitar_foto? }
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? process.env[k] : undefined);

const TIPOS_OK = ['gastronomia', 'rural', 'hotel', 'cafe', 'bar', 'activo', 'otro'];
const MAX_FOTO = 900_000;
const j = (o: any, s = 200) => new Response(JSON.stringify(o), { status: s, headers: { 'Content-Type': 'application/json' } });

export const POST: APIRoute = async ({ request }) => {
  let b: any;
  try { b = await request.json(); } catch { return j({ ok: false, error: 'bad_json' }, 400); }

  if (!env('ADMIN_KEY') || b.key !== env('ADMIN_KEY')) return j({ ok: false, error: 'no_autorizado' }, 403);
  const id = b.id;
  if (!id) return j({ ok: false, error: 'sin_id' }, 400);

  const nombre = String(b.nombre || '').trim().slice(0, 120);
  const tipo = String(b.tipo || '').trim();
  if (!nombre || !TIPOS_OK.includes(tipo)) return j({ ok: false, error: 'faltan_datos' }, 400);

  const bit = (v: any) => (v ? 1 : 0);

  // Construimos el UPDATE; la foto solo se toca si llega una nueva o se pide quitar.
  const sets: string[] = [
    'tipo = ?', 'nombre = ?', 'descripcion = ?', 'direccion = ?', 'contacto = ?',
    'email = ?', 'telefono = ?', 'whatsapp = ?', 'web = ?', 'en_ficha = ?', 'en_ruta_mun = ?', 'en_ruta_zona = ?',
  ];
  const vals: any[] = [
    tipo, nombre,
    String(b.descripcion || '').slice(0, 600) || null,
    String(b.direccion || '').slice(0, 200) || null,
    String(b.contacto || '').slice(0, 120) || null,
    String(b.email || '').slice(0, 160) || null,
    String(b.telefono || '').slice(0, 40) || null,
    bit(b.whatsapp),
    String(b.web || '').slice(0, 200) || null,
    bit(b.en_ficha), bit(b.en_ruta_mun), bit(b.en_ruta_zona),
  ];

  if (b.quitar_foto) {
    sets.push('foto_data = NULL', 'foto_mime = NULL');
  } else if (typeof b.foto === 'string' && b.foto.startsWith('data:image/')) {
    const m = /^data:(image\/(?:jpeg|png|webp));base64,/.exec(b.foto);
    if (m && b.foto.length <= MAX_FOTO) { sets.push('foto_data = ?', 'foto_mime = ?'); vals.push(b.foto, m[1]); }
  }

  vals.push(id);
  await DB.prepare(`UPDATE anuncios SET ${sets.join(', ')} WHERE id = ?`).bind(...vals).run();
  return j({ ok: true });
};

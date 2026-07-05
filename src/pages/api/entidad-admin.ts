/**
 * Edición total de entidades desde el panel admin.
 *   POST ?key=..&accion=editar   body: { id, nombre, descripcion, tipo, enlace, latitud, longitud, foto? }
 *   POST ?key=..&accion=crear    body: { codigo_ine, nombre, tipo, descripcion, enlace, latitud, longitud, foto? }
 *   GET  ?key=..&accion=eliminar&id=NN
 * La foto es un data URL base64 (se guarda en foto_data BLOB).
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);
const okJson = (o: any, s = 200) => new Response(JSON.stringify(o), { status: s, headers: { 'Content-Type': 'application/json' } });

function decodeFoto(foto: any): { buf: Uint8Array; mime: string } | null {
  if (typeof foto !== 'string') return null;
  const m = /^data:(image\/(?:jpeg|png|webp));base64,/.exec(foto);
  if (!m || foto.length > 1_600_000) return null;
  try {
    const bin = atob(foto.split(',')[1]);
    const buf = new Uint8Array(bin.length);
    for (let i = 0; i < bin.length; i++) buf[i] = bin.charCodeAt(i);
    return { buf, mime: m[1] };
  } catch { return null; }
}

export const GET: APIRoute = async ({ url, redirect }) => {
  const key = url.searchParams.get('key') ?? '';
  const adminKey = env('ADMIN_KEY');
  if (!adminKey || key !== adminKey) return new Response('Acceso denegado', { status: 403 });
  const accion = url.searchParams.get('accion') ?? '';
  const id = parseInt(url.searchParams.get('id') ?? '0', 10);
  if (accion === 'eliminar' && id) {
    const row = await DB.prepare(`SELECT codigo_ine FROM entidades WHERE id=?`).bind(id).first() as any;
    await DB.prepare(`DELETE FROM entidades WHERE id=?`).bind(id).run();
    return redirect(`/admin/municipio?key=${encodeURIComponent(key)}&codigo=${row?.codigo_ine ?? ''}`);
  }
  return new Response('Acción desconocida', { status: 400 });
};

export const POST: APIRoute = async ({ url, request }) => {
  const key = url.searchParams.get('key') ?? '';
  const adminKey = env('ADMIN_KEY');
  if (!adminKey || key !== adminKey) return okJson({ ok: false, error: 'denegado' }, 403);
  const accion = url.searchParams.get('accion') ?? '';
  let b: any;
  try { b = await request.json(); } catch { return okJson({ ok: false, error: 'json' }, 400); }

  const nombre = String(b.nombre || '').trim().slice(0, 160);
  const tipo = String(b.tipo || 'monumento').trim().slice(0, 40);
  const descripcion = String(b.descripcion || '').trim().slice(0, 800) || null;
  const enlace = String(b.enlace || '').trim().slice(0, 400) || null;
  const lat = b.latitud !== '' && b.latitud != null ? Number(b.latitud) : null;
  const lon = b.longitud !== '' && b.longitud != null ? Number(b.longitud) : null;
  const foto = decodeFoto(b.foto);

  if (accion === 'editar') {
    const id = parseInt(b.id, 10);
    if (!id || !nombre) return okJson({ ok: false, error: 'faltan' }, 400);
    if (foto) {
      await DB.prepare(`UPDATE entidades SET nombre=?, tipo=?, descripcion=?, enlace=?, latitud=?, longitud=?, foto_data=?, foto_mime=? WHERE id=?`)
        .bind(nombre, tipo, descripcion, enlace, lat, lon, foto.buf, foto.mime, id).run();
    } else {
      await DB.prepare(`UPDATE entidades SET nombre=?, tipo=?, descripcion=?, enlace=?, latitud=?, longitud=? WHERE id=?`)
        .bind(nombre, tipo, descripcion, enlace, lat, lon, id).run();
    }
    return okJson({ ok: true, id });
  }

  if (accion === 'crear') {
    const codigo = String(b.codigo_ine || '').trim();
    if (!codigo || !nombre) return okJson({ ok: false, error: 'faltan' }, 400);
    const idRow = await DB.prepare(`SELECT COALESCE(MAX(id),220000)+1 AS nid FROM entidades`).first() as any;
    const nid = idRow?.nid ?? Date.now();
    if (foto) {
      await DB.prepare(`INSERT INTO entidades (id, codigo_ine, tipo, nombre, descripcion, enlace, latitud, longitud, fuente, foto_data, foto_mime) VALUES (?,?,?,?,?,?,?,?, 'admin', ?, ?)`)
        .bind(nid, codigo, tipo, nombre, descripcion, enlace, lat, lon, foto.buf, foto.mime).run();
    } else {
      await DB.prepare(`INSERT INTO entidades (id, codigo_ine, tipo, nombre, descripcion, enlace, latitud, longitud, fuente) VALUES (?,?,?,?,?,?,?,?, 'admin')`)
        .bind(nid, codigo, tipo, nombre, descripcion, enlace, lat, lon).run();
    }
    return okJson({ ok: true, id: nid });
  }

  return okJson({ ok: false, error: 'accion' }, 400);
};

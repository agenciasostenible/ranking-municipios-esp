/**
 * Edición total de entidades desde el panel admin.
 *   POST ?key=..&accion=editar   body: { id, nombre, descripcion, tipo, enlace, latitud, longitud, foto? }
 *   POST ?key=..&accion=crear    body: { codigo_ine, nombre, tipo, descripcion, enlace, latitud, longitud, foto? }
 *   GET  ?key=..&accion=eliminar&id=NN
 * La foto es un data URL base64 (se guarda en foto_data BLOB).
 */
import type { APIRoute } from 'astro';
import { DB } from '../../lib/d1client';
import { toStorableImage } from '../../lib/imgblob';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);
const okJson = (o: any, s = 200) => new Response(JSON.stringify(o), { status: s, headers: { 'Content-Type': 'application/json' } });

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
  if (accion === 'score-eliminar') {
    const codigo = url.searchParams.get('codigo') ?? '';
    const categoria = url.searchParams.get('categoria') ?? '';
    if (codigo && categoria) {
      await DB.prepare(`DELETE FROM puntuaciones WHERE codigo_ine=? AND categoria=?`).bind(codigo, categoria).run();
    }
    return redirect(`/admin/municipio?key=${encodeURIComponent(key)}&codigo=${codigo}`);
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
  const foto = toStorableImage(b.foto);  // data URL base64 (TEXT) o null

  if (accion === 'editar') {
    const id = parseInt(b.id, 10);
    if (!id || !nombre) return okJson({ ok: false, error: 'faltan' }, 400);
    if (foto) {
      await DB.prepare(`UPDATE entidades SET nombre=?, tipo=?, descripcion=?, enlace=?, latitud=?, longitud=?, foto_data=?, foto_mime=NULL WHERE id=?`)
        .bind(nombre, tipo, descripcion, enlace, lat, lon, foto, id).run();
    } else {
      await DB.prepare(`UPDATE entidades SET nombre=?, tipo=?, descripcion=?, enlace=?, latitud=?, longitud=? WHERE id=?`)
        .bind(nombre, tipo, descripcion, enlace, lat, lon, id).run();
    }
    return okJson({ ok: true, id });
  }

  if (accion === 'score') {
    // Añadir o modificar la valoración (puntuación 0-100) de un municipio en una categoría.
    const codigo = String(b.codigo_ine || '').trim();
    const categoria = String(b.categoria || '').trim().slice(0, 40);
    let pts = Number(b.puntuacion);
    if (!codigo || !categoria || !Number.isFinite(pts)) return okJson({ ok: false, error: 'faltan' }, 400);
    pts = Math.max(0, Math.min(100, pts));
    // upsert respetando UNIQUE(codigo_ine, categoria)
    await DB.prepare(
      `INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES (?,?,?)
       ON CONFLICT(codigo_ine, categoria) DO UPDATE SET puntuacion=excluded.puntuacion, fecha=date('now')`
    ).bind(codigo, categoria, pts).run();
    // Recalcular el puesto de ESTE municipio en esta categoría (provincial + nacional).
    // Nota: recolocar a los demás municipios que este adelante requiere el recálculo global (script aparte).
    const prov = await DB.prepare(`SELECT provincia FROM municipios WHERE codigo_ine=?`).bind(codigo).first() as any;
    const provName = prov?.provincia ?? '';
    const rp = await DB.prepare(
      `SELECT COUNT(*)+1 AS r FROM puntuaciones p JOIN municipios m ON p.codigo_ine=m.codigo_ine
       WHERE p.categoria=? AND m.provincia=? AND COALESCE(m.es_duplicado,0)=0 AND p.puntuacion > ?`
    ).bind(categoria, provName, pts).first() as any;
    const rn = await DB.prepare(
      `SELECT COUNT(*)+1 AS r FROM puntuaciones p JOIN municipios m ON p.codigo_ine=m.codigo_ine
       WHERE p.categoria=? AND COALESCE(m.es_duplicado,0)=0 AND p.puntuacion > ?`
    ).bind(categoria, pts).first() as any;
    const ranking_provincial = rp?.r ?? null;
    const ranking_nacional = rn?.r ?? null;
    await DB.prepare(`UPDATE puntuaciones SET ranking_provincial=?, ranking_nacional=? WHERE codigo_ine=? AND categoria=?`)
      .bind(ranking_provincial, ranking_nacional, codigo, categoria).run();
    // Sincronizar la ficha gemela duplicada (mismo nombre+provincia) si existe
    await DB.prepare(
      `INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion, ranking_provincial, ranking_nacional)
       SELECT m2.codigo_ine, ?, ?, ?, ? FROM municipios m1
       JOIN municipios m2 ON m1.nombre=m2.nombre AND m1.provincia=m2.provincia AND m2.codigo_ine<>m1.codigo_ine
       WHERE m1.codigo_ine=?
       ON CONFLICT(codigo_ine, categoria) DO UPDATE SET puntuacion=excluded.puntuacion,
         ranking_provincial=excluded.ranking_provincial, ranking_nacional=excluded.ranking_nacional`
    ).bind(categoria, pts, ranking_provincial, ranking_nacional, codigo).run();
    return okJson({ ok: true, puntuacion: pts, ranking_provincial, ranking_nacional });
  }

  if (accion === 'crear') {
    const codigo = String(b.codigo_ine || '').trim();
    if (!codigo || !nombre) return okJson({ ok: false, error: 'faltan' }, 400);
    const idRow = await DB.prepare(`SELECT COALESCE(MAX(id),220000)+1 AS nid FROM entidades`).first() as any;
    const nid = idRow?.nid ?? Date.now();
    if (foto) {
      await DB.prepare(`INSERT INTO entidades (id, codigo_ine, tipo, nombre, descripcion, enlace, latitud, longitud, fuente, foto_data) VALUES (?,?,?,?,?,?,?,?, 'admin', ?)`)
        .bind(nid, codigo, tipo, nombre, descripcion, enlace, lat, lon, foto).run();
    } else {
      await DB.prepare(`INSERT INTO entidades (id, codigo_ine, tipo, nombre, descripcion, enlace, latitud, longitud, fuente) VALUES (?,?,?,?,?,?,?,?, 'admin')`)
        .bind(nid, codigo, tipo, nombre, descripcion, enlace, lat, lon).run();
    }
    return okJson({ ok: true, id: nid });
  }

  return okJson({ ok: false, error: 'accion' }, 400);
};

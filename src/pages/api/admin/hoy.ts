/**
 * POST /api/admin/hoy?key=ADMIN_KEY
 * Acciones del panel "Plan de HOY".
 *   { accion:'email', codigo_ine, email }  → guarda el email encontrado a mano
 *     en ayuntamientos_contacto (solo si la fila no tenía email), para que entre
 *     en la campaña de /admin/campana.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../../lib/d1client';
import { rtEnv } from '../../../lib/runtime';

const j = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

export const POST: APIRoute = async ({ request, url }) => {
  const key = url.searchParams.get('key') ?? '';
  if (!rtEnv('ADMIN_KEY') || key !== rtEnv('ADMIN_KEY')) return j({ ok: false, error: 'no-auth' }, 401);

  let b: any = {};
  try { b = await request.json(); } catch { return j({ ok: false, error: 'bad-json' }, 400); }

  if (b.accion === 'email') {
    const codigo = String(b.codigo_ine || '').trim().slice(0, 12);
    const email = String(b.email || '').trim().toLowerCase().slice(0, 120);
    if (!codigo || !/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(email)) return j({ ok: false, error: 'datos' }, 400);
    const r = await DB.prepare(
      `UPDATE ayuntamientos_contacto SET email=?, fuente=COALESCE(fuente,'')||'+manual_hoy'
       WHERE codigo_ine=? AND (email IS NULL OR email='')`
    ).bind(email, codigo).run();
    return j({ ok: true, actualizado: ((r as any)?.meta?.changes || 0) > 0 });
  }

  return j({ ok: false, error: 'accion' }, 400);
};

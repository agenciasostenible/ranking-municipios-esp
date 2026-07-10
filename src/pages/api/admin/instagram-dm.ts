/**
 * POST /api/admin/instagram-dm?key=ADMIN_KEY
 * Marca/desmarca un ayuntamiento como contactado por DM de Instagram.
 * body { codigo_ine: string, enviado: boolean }
 * El envío del DM es manual (o asistido); esto solo lleva el registro.
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
  const codigo = String(b.codigo_ine || '').trim().slice(0, 12);
  if (!codigo) return okJson({ ok: false, error: 'sin_codigo' }, 400);

  const valor = b.enviado ? new Date().toISOString() : null;
  await DB.prepare(`UPDATE ayuntamientos_contacto SET ig_dm_enviado_at = ? WHERE codigo_ine = ?`)
    .bind(valor, codigo).run();
  return okJson({ ok: true, codigo_ine: codigo, enviado: !!valor });
};

/**
 * POST /api/admin/resend-webhook?s=RESEND_WEBHOOK_SECRET
 * Webhook de Resend: cuando un email de la campaña rebota (o hay queja de spam),
 * marca email_error en ayuntamientos_contacto para verlo en /admin/campana.
 * La URL lleva un secreto no adivinable; sin él, 401.
 */
import type { APIRoute } from 'astro';
import { DB } from '../../../lib/d1client';
import { rtEnv } from '../../../lib/runtime';

const env = (k: string) => rtEnv(k);

export const POST: APIRoute = async ({ request }) => {
  const url = new URL(request.url);
  const s = url.searchParams.get('s') ?? '';
  const SECRET = env('RESEND_WEBHOOK_SECRET');
  if (!SECRET || s !== SECRET) return new Response('unauthorized', { status: 401 });

  let ev: any;
  try { ev = await request.json(); } catch { return new Response('bad json', { status: 400 }); }

  const type = String(ev?.type || '');
  // Solo nos interesan los fallos; el resto se acepta y se ignora.
  if (type === 'email.bounced' || type === 'email.complained') {
    const tos: string[] = Array.isArray(ev?.data?.to) ? ev.data.to : [];
    const motivo = String(ev?.data?.bounce?.message || ev?.data?.bounce?.subType || type).slice(0, 240);
    const marca = `${type.replace('email.', '')}: ${motivo}`;
    for (const to of tos) {
      const em = String(to).trim().toLowerCase();
      if (!em.includes('@')) continue;
      // email puede ser multivalor "a@x,b@y" → envolver en comas y buscar el tramo exacto
      await DB.prepare(
        `UPDATE ayuntamientos_contacto
            SET email_error = ?
          WHERE (',' || REPLACE(LOWER(email), ' ', '') || ',') LIKE ?`
      ).bind(marca, `%,${em},%`).run();
    }
  }

  return new Response(JSON.stringify({ ok: true }), { headers: { 'Content-Type': 'application/json' } });
};

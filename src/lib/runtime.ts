/**
 * runtime.ts — Puente al runtime de Cloudflare Workers.
 *
 * En Astro v6 sobre Cloudflare, los bindings (D1 = `DB`) y los secretos se leen con
 * `import { env } from 'cloudflare:workers'` (ya NO existe Astro.locals.runtime.env).
 * `env` es un proxy: solo se puede leer sus propiedades DENTRO de una petición, por eso
 * accedemos siempre dentro de funciones, nunca en el nivel de módulo.
 */
import { env as cfEnv } from 'cloudflare:workers';

/** Binding nativo de D1 si estamos en Cloudflare; null si no (usa la API REST como fallback). */
export function d1Binding(): any {
  try {
    return (cfEnv as any)?.DB ?? null;
  } catch {
    return null;
  }
}

/** Lee una variable/secreto: runtime de Cloudflare → import.meta.env → process.env. */
export function rtEnv(k: string): any {
  try {
    const v = (cfEnv as any)?.[k];
    if (typeof v === 'string') return v;
  } catch { /* fuera de petición */ }
  const im = (import.meta as any).env?.[k];
  if (im != null && im !== '') return im;
  return typeof process !== 'undefined' ? (process as any).env?.[k] : undefined;
}

/** Copia los secretos conocidos a process.env para el helper env() de los ~23 ficheros existentes. */
const SECRET_KEYS = ['ADMIN_KEY', 'RESEND_API_KEY', 'RESEND_WEBHOOK_SECRET', 'ADMIN_EMAIL', 'GOOGLE_PLACES_API_KEY', 'PLACES_PAUSED', 'CF_ACCOUNT_ID', 'CF_API_TOKEN', 'CF_D1_DB_ID'];
export function mirrorSecretsToProcessEnv(): void {
  if (typeof process === 'undefined' || !process.env) return;
  for (const k of SECRET_KEYS) {
    try {
      const v = (cfEnv as any)?.[k];
      if (typeof v === 'string') (process.env as any)[k] = v;
    } catch { /* noop */ }
  }
}

/**
 * d1client.ts
 * -----------
 * Acceso a la base de datos D1.
 *
 * - En Cloudflare (Pages/Workers): usa el **binding nativo** `DB` (rápido, sin token),
 *   capturado por el middleware en `Astro.locals.runtime.env.DB`.
 * - Fuera de Cloudflare (build local, otros): usa la **API REST** de D1 con
 *   CF_ACCOUNT_ID / CF_API_TOKEN / CF_D1_DB_ID.
 *
 * La interfaz (`DB.prepare(sql).bind(...).all()/.first()/.run()`) es idéntica en ambos
 * casos, así que los ~65 ficheros que usan `DB` no cambian.
 */
import { d1Binding, rtEnv } from './runtime';

async function d1Query(sql: string, params: unknown[] = []) {
  const CF_ACCOUNT_ID = rtEnv('CF_ACCOUNT_ID');
  const CF_API_TOKEN = rtEnv('CF_API_TOKEN');
  const CF_D1_DB_ID = rtEnv('CF_D1_DB_ID');
  const BASE_URL = `https://api.cloudflare.com/client/v4/accounts/${CF_ACCOUNT_ID}/d1/database/${CF_D1_DB_ID}/query`;

  const res = await fetch(BASE_URL, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${CF_API_TOKEN}`,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ sql, params }),
  });

  if (!res.ok) {
    const text = await res.text();
    throw new Error(`D1 REST API error ${res.status}: ${text}`);
  }

  const data = await res.json() as any;
  if (!data.success) {
    throw new Error(`D1 query error: ${JSON.stringify(data.errors)}`);
  }

  return data.result?.[0] ?? { results: [] };
}

class D1PreparedStatement {
  private sql: string;
  private params: unknown[];

  constructor(sql: string, params: unknown[] = []) {
    this.sql = sql;
    this.params = params;
  }

  bind(...params: unknown[]): D1PreparedStatement {
    return new D1PreparedStatement(this.sql, params);
  }

  async all(): Promise<{ results: any[] }> {
    const result = await d1Query(this.sql, this.params);
    return { results: result.results ?? [] };
  }

  async first(): Promise<any | null> {
    const result = await d1Query(this.sql, this.params);
    return result.results?.[0] ?? null;
  }

  async run(): Promise<any> {
    return d1Query(this.sql, this.params);
  }
}

export const DB = {
  prepare(sql: string): any {
    const binding = d1Binding();
    if (binding) return binding.prepare(sql); // D1 nativo de Cloudflare (misma interfaz)
    return new D1PreparedStatement(sql);       // fallback API REST
  },
};

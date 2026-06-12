/**
 * d1client.ts
 * -----------
 * Cliente compatible con la API de Cloudflare D1.
 * Reproduce la interfaz DB.prepare().all() / .first() / .bind()
 * usando la REST API de Cloudflare D1 (server-side).
 *
 * Variables de entorno necesarias:
 *   CF_ACCOUNT_ID   — ID de cuenta Cloudflare
 *   CF_API_TOKEN    — API token con permisos D1
 *   CF_D1_DB_ID     — ID de la base de datos D1
 */

const CF_ACCOUNT_ID = import.meta.env.CF_ACCOUNT_ID ?? process.env.CF_ACCOUNT_ID;
const CF_API_TOKEN  = import.meta.env.CF_API_TOKEN  ?? process.env.CF_API_TOKEN;
const CF_D1_DB_ID   = import.meta.env.CF_D1_DB_ID   ?? process.env.CF_D1_DB_ID;

const BASE_URL = `https://api.cloudflare.com/client/v4/accounts/${CF_ACCOUNT_ID}/d1/database/${CF_D1_DB_ID}/query`;

async function d1Query(sql: string, params: unknown[] = []) {
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
  prepare(sql: string): D1PreparedStatement {
    return new D1PreparedStatement(sql);
  },
};

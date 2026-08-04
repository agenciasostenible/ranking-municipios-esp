/**
 * POST /api/admin/duelo-ia?key=ADMIN_KEY
 * Elige el duelo con más chispa de una lista de candidatos y escribe la pregunta.
 * No es solo "los dos más igualados": valora rivalidad real, si son comparables
 * y si un español entraría a discutirlo.
 *   body { candidatos:[{i,nombre,sub,nota,pos}], categoria, ambito, modo }
 *   -> { ok, a, b, pregunta, motivo }
 */
import type { APIRoute } from 'astro';
import { rtEnv } from '../../../lib/runtime';

const j = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

export const POST: APIRoute = async ({ request, url }) => {
  const key = url.searchParams.get('key') ?? '';
  if (!rtEnv('ADMIN_KEY') || key !== rtEnv('ADMIN_KEY')) return j({ ok: false, error: 'no-auth' }, 401);

  const apiKey = rtEnv('ANTHROPIC_API_KEY');
  if (!apiKey) return j({ ok: false, error: 'Falta la clave ANTHROPIC_API_KEY en el servidor.' }, 503);

  let b: any;
  try { b = await request.json(); } catch { return j({ ok: false, error: 'bad-json' }, 400); }
  const cand = Array.isArray(b.candidatos) ? b.candidatos.slice(0, 40) : [];
  if (cand.length < 2) return j({ ok: false, error: 'Hacen falta al menos dos candidatos.' }, 400);

  const lista = cand.map((c: any) =>
    `${c.i}. ${c.nombre} (${c.sub || ''})${c.nota ? ` — nota ${c.nota}, puesto #${c.pos}` : ''}`
  ).join('\n');

  const prompt = `Eres el editor de una cuenta de Instagram española sobre turismo (Ranking Spain) que publica duelos "A vs B" para que la gente vote en comentarios.

Categoría: ${String(b.categoria || '')}
Ámbito: ${String(b.ambito || 'España')}
Estamos comparando: ${b.modo === 'municipios' ? 'municipios' : 'sitios concretos'}

CANDIDATOS (por orden de nuestro ranking):
${lista}

Elige LA PAREJA que más comentarios y debate generaría entre españoles. Criterios, por orden de importancia:
1. Que sean COMPARABLES: dos cosas del mismo tipo y tamaño. Nunca una capital contra un pueblo pequeño, ni un sitio famosísimo contra uno desconocido: ahí no hay debate, gana el obvio.
2. Que exista RIVALIDAD real o un pique reconocible (ciudades vecinas que compiten, dos pueblos de la misma comarca, dos costas, dos escuelas gastronómicas…).
3. Que estén IGUALADOS en nota (una diferencia pequeña hace que la discusión tenga sentido).
4. Que el resultado sea DISCUTIBLE: si todo el mundo respondería lo mismo, no sirve.

Devuelve EXCLUSIVAMENTE un JSON válido, sin texto alrededor:
- "a": número del primer candidato (el índice de la lista)
- "b": número del segundo
- "pregunta": la pregunta del cartel, MUY corta (máximo 5 palabras), específica y con gancho. Nada de "¿Cuál gana?" a secas. Ejemplos del tono: "¿Alpujarra o Altiplano?", "¿Cuál es más bonito?", "El duelo del Cantábrico", "¿Cuál te quedarías?".
- "motivo": UNA frase breve (máximo 25 palabras) explicando por qué este duelo funciona. Es una nota para el editor, no se publica.

Responde solo el JSON.`;

  let resp: Response;
  try {
    resp = await fetch('https://api.anthropic.com/v1/messages', {
      method: 'POST',
      headers: { 'x-api-key': apiKey, 'anthropic-version': '2023-06-01', 'content-type': 'application/json' },
      body: JSON.stringify({
        model: 'claude-haiku-4-5',
        max_tokens: 400,
        messages: [{ role: 'user', content: prompt }],
      }),
    });
  } catch (e: any) {
    return j({ ok: false, error: 'No se pudo contactar con Claude: ' + (e?.message || e) }, 502);
  }
  if (!resp.ok) {
    const t = await resp.text().catch(() => '');
    return j({ ok: false, error: `Claude respondió ${resp.status}. ${t.slice(0, 160)}` }, 502);
  }

  const out: any = await resp.json();
  const txt = (out?.content || []).filter((x: any) => x.type === 'text').map((x: any) => x.text).join('').trim();
  const m = txt.match(/\{[\s\S]*\}/);
  let p: any = {};
  try { p = JSON.parse(m ? m[0] : txt); } catch { return j({ ok: false, error: 'Claude no devolvió un JSON legible.' }, 502); }

  const ia = Number(p.a), ib = Number(p.b);
  const valido = (n: number) => Number.isInteger(n) && cand.some((c: any) => c.i === n);
  if (!valido(ia) || !valido(ib) || ia === ib) return j({ ok: false, error: 'La elección no era válida, prueba otra vez.' }, 502);

  return j({
    ok: true, a: ia, b: ib,
    pregunta: String(p.pregunta || '').trim().slice(0, 48),
    motivo: String(p.motivo || '').trim().slice(0, 300),
  });
};

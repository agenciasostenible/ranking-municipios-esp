/**
 * POST /api/admin/leer-captura?key=ADMIN_KEY
 * Recibe una captura de pantalla (imagen base64) de un post de Instagram y,
 * con Claude Vision, EXTRAE el sitio y REESCRIBE la descripción en nuestro estilo
 * (nunca copia el texto original).
 *   body { imageBase64, mediaType }   ej. mediaType "image/jpeg"
 *   -> { ok, nombre, municipio, descripcion }
 * Necesita el secreto ANTHROPIC_API_KEY (lo pone el dueño en Cloudflare).
 */
import type { APIRoute } from 'astro';

const env = (k: string) =>
  (import.meta as any).env?.[k] ?? (typeof process !== 'undefined' ? (process as any).env[k] : undefined);
const j = (o: any, status = 200) =>
  new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });

const PROMPT = `Esta imagen es una captura de pantalla de una publicación de Instagram (o web) sobre un lugar turístico de España.

Devuelve EXCLUSIVAMENTE un objeto JSON válido, sin texto alrededor, con estas claves:
- "nombre": el nombre propio del sitio (playa, cala, ruta, mirador, cascada, monumento, restaurante…). Si no hay uno claro, usa el nombre del municipio.
- "municipio": el municipio español donde está. Solo el municipio, sin provincia.
- "descripcion": 2 o 3 frases REESCRITAS CON TUS PROPIAS PALABRAS, en español, en estilo de guía de viajes evocadora e inspiradora (que den ganas de ir). NO copies literalmente el texto de la imagen: reformúlalo. Sin hashtags, sin emojis, sin arrobas, sin llamadas a la acción tipo "sígueme" o "guarda este post".

Si algún dato no aparece en la imagen, pon cadena vacía "" en esa clave. Responde solo el JSON.`;

export const POST: APIRoute = async ({ request, url }) => {
  const key = url.searchParams.get('key') ?? '';
  if (!env('ADMIN_KEY') || key !== env('ADMIN_KEY')) return j({ ok: false, error: 'no-auth' }, 401);

  const apiKey = env('ANTHROPIC_API_KEY');
  if (!apiKey) return j({ ok: false, error: 'Falta la clave ANTHROPIC_API_KEY en el servidor. Añádela como secreto en Cloudflare.' }, 503);

  let body: any;
  try { body = await request.json(); } catch { return j({ ok: false, error: 'bad-json' }, 400); }
  let data = String(body.imageBase64 || '');
  const mediaType = String(body.mediaType || 'image/jpeg');
  // aceptar tanto "data:...;base64,XXXX" como solo el base64
  const comma = data.indexOf(',');
  if (data.startsWith('data:') && comma > -1) data = data.slice(comma + 1);
  if (data.length < 100) return j({ ok: false, error: 'La imagen no llegó correctamente.' }, 400);

  let resp: Response;
  try {
    resp = await fetch('https://api.anthropic.com/v1/messages', {
      method: 'POST',
      headers: {
        'x-api-key': apiKey,
        'anthropic-version': '2023-06-01',
        'content-type': 'application/json',
      },
      body: JSON.stringify({
        model: 'claude-haiku-4-5',
        max_tokens: 700,
        messages: [{
          role: 'user',
          content: [
            { type: 'image', source: { type: 'base64', media_type: mediaType, data } },
            { type: 'text', text: PROMPT },
          ],
        }],
      }),
    });
  } catch (e: any) {
    return j({ ok: false, error: 'No se pudo contactar con Claude: ' + (e?.message || e) }, 502);
  }

  if (!resp.ok) {
    const t = await resp.text().catch(() => '');
    return j({ ok: false, error: `Claude respondió ${resp.status}. ${t.slice(0, 200)}` }, 502);
  }

  const out: any = await resp.json();
  const txt = (out?.content || []).filter((b: any) => b.type === 'text').map((b: any) => b.text).join('').trim();
  // extraer el JSON (por si viene con texto alrededor pese a las instrucciones)
  const m = txt.match(/\{[\s\S]*\}/);
  let parsed: any = {};
  try { parsed = JSON.parse(m ? m[0] : txt); } catch { return j({ ok: false, error: 'Claude no devolvió un JSON legible.', raw: txt.slice(0, 300) }, 502); }

  return j({
    ok: true,
    nombre: String(parsed.nombre || '').trim(),
    municipio: String(parsed.municipio || '').trim(),
    descripcion: String(parsed.descripcion || '').trim(),
  });
};

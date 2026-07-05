/**
 * imgblob.ts — Almacenamiento de imágenes en Cloudflare D1 a través de su API REST.
 *
 * PROBLEMA: d1client habla con D1 por REST (JSON). El binario NO viaja por JSON:
 * al hacer bind(Uint8Array), JSON.stringify lo convertía en la cadena "[object Object]"
 * (15 bytes) y eso es lo que se guardaba. Ninguna foto se almacenaba de verdad.
 *
 * SOLUCIÓN: guardamos la imagen como data URL base64 (TEXT) — los strings sí viajan por
 * JSON — y la decodificamos al servirla.
 */

/** Valida un data URL de imagen y lo devuelve tal cual para guardarlo como TEXT (o null). */
export function toStorableImage(dataUrl: unknown, maxLen = 1_600_000): string | null {
  if (typeof dataUrl !== 'string') return null;
  if (!/^data:image\/(?:jpeg|png|webp);base64,/.test(dataUrl)) return null;
  if (dataUrl.length > maxLen) return null;
  return dataUrl;
}

/** Decodifica lo que haya en la columna (data URL base64, base64 pelado o binario legacy) → bytes + mime. */
export function decodeStoredImage(v: unknown): { bytes: Uint8Array; mime: string } | null {
  if (v == null) return null;
  // Binario legacy real (por si alguna fila lo tuviera)
  if (v instanceof Uint8Array) return { bytes: v, mime: 'image/jpeg' };
  if (v instanceof ArrayBuffer) return { bytes: new Uint8Array(v), mime: 'image/jpeg' };
  if (typeof v !== 'string') return null;
  if (v === '[object Object]') return null; // dato corrupto de la versión anterior
  let mime = 'image/jpeg';
  let b64 = v;
  const m = /^data:(image\/[a-z+]+);base64,([\s\S]*)$/.exec(v);
  if (m) { mime = m[1]; b64 = m[2]; }
  try {
    const bin = atob(b64);
    if (bin.length < 100) return null; // demasiado pequeño para ser una imagen
    const bytes = new Uint8Array(bin.length);
    for (let i = 0; i < bin.length; i++) bytes[i] = bin.charCodeAt(i);
    return { bytes, mime };
  } catch {
    return null;
  }
}

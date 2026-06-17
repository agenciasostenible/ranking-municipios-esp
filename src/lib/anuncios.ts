/**
 * anuncios.ts
 * -----------
 * Lectura de establecimientos anunciados y APROBADOS, para mostrarlos con
 * sello "Recomendado" en la ficha del municipio y en las rutas.
 *
 * Se mantienen SEPARADOS del inventario verificado (tabla `entidades`): un
 * anuncio NO entra en los rankings, solo se muestra como recomendación.
 */
import { DB } from './d1client';

export type Anuncio = {
  id: number;
  codigo_ine: string | null;
  tipo: string;
  nombre: string;
  descripcion: string | null;
  direccion: string | null;
  web: string | null;
  telefono: string | null;
  wa: string | null;     // enlace wa.me si el teléfono tiene WhatsApp
  foto: string | null;   // URL servida por /api/anuncio-foto
};

/** Construye el enlace wa.me a partir de un teléfono (asume España +34 si no hay prefijo). */
export function waLink(tel: string | null): string | null {
  if (!tel) return null;
  let d = String(tel).replace(/[^\d+]/g, '');
  if (d.startsWith('+')) d = d.slice(1);
  else if (d.length === 9) d = '34' + d;   // móvil/fijo español sin prefijo
  return d.length >= 9 ? `https://wa.me/${d}` : null;
}

// Etiqueta legible + a qué "ranura" de la ruta pertenece cada tipo de anuncio.
export const ANUNCIO_TIPOS: Record<string, { label: string; slot: 'comer' | 'dormir' | 'cafe' | 'copa' | 'visitar' }> = {
  gastronomia: { label: 'Restaurante',        slot: 'comer'   },
  rural:       { label: 'Alojamiento rural',  slot: 'dormir'  },
  hotel:       { label: 'Hotel / alojamiento', slot: 'dormir' },
  cafe:        { label: 'Cafetería',          slot: 'cafe'    },
  bar:         { label: 'Bar / copas',        slot: 'copa'    },
  activo:      { label: 'Actividad',          slot: 'visitar' },
  otro:        { label: 'Establecimiento',    slot: 'visitar' },
};

function toAnuncio(r: any): Anuncio {
  return {
    id: r.id, codigo_ine: r.codigo_ine, tipo: r.tipo, nombre: r.nombre,
    descripcion: r.descripcion, direccion: r.direccion, web: r.web, telefono: r.telefono,
    wa: r.whatsapp ? waLink(r.telefono) : null,
    foto: r.foto_data ? `/api/anuncio-foto?id=${r.id}` : null,
  };
}

// Superficie donde se muestra → columna de colocación que debe estar a 1.
export type Surface = 'ficha' | 'ruta_mun' | 'ruta_zona';
const COL: Record<Surface, string> = { ficha: 'en_ficha', ruta_mun: 'en_ruta_mun', ruta_zona: 'en_ruta_zona' };

/** Anuncios aprobados de un municipio, visibles en la superficie indicada. */
export async function getAnunciosMunicipio(codigo_ine: string, surface: Surface = 'ficha'): Promise<Anuncio[]> {
  if (!codigo_ine) return [];
  try {
    const { results } = await DB.prepare(
      `SELECT id, codigo_ine, tipo, nombre, descripcion, direccion, web, telefono, whatsapp,
              (foto_data IS NOT NULL) AS foto_data
         FROM anuncios
        WHERE codigo_ine = ? AND estado = 'aprobado' AND ${COL[surface]} = 1
        ORDER BY (foto_data IS NOT NULL) DESC, creado_at DESC`
    ).bind(codigo_ine).all();
    return (results as any[]).map(toAnuncio);
  } catch {
    return [];   // si la tabla aún no existe en este entorno, no rompemos la página
  }
}

/** Anuncios aprobados de varios municipios (para rutas), agrupados por codigo_ine. */
export async function getAnunciosVarios(codigos: string[], surface: Surface = 'ruta_zona'): Promise<Map<string, Anuncio[]>> {
  const map = new Map<string, Anuncio[]>();
  const ids = [...new Set(codigos.filter(Boolean))];
  if (!ids.length) return map;
  try {
    const { results } = await DB.prepare(
      `SELECT id, codigo_ine, tipo, nombre, descripcion, direccion, web, telefono, whatsapp,
              (foto_data IS NOT NULL) AS foto_data
         FROM anuncios
        WHERE estado = 'aprobado' AND ${COL[surface]} = 1
          AND codigo_ine IN (${ids.map(() => '?').join(',')})
        ORDER BY (foto_data IS NOT NULL) DESC, creado_at DESC`
    ).bind(...ids).all();
    for (const r of results as any[]) {
      const a = toAnuncio(r);
      const arr = map.get(r.codigo_ine) ?? [];
      arr.push(a); map.set(r.codigo_ine, arr);
    }
  } catch { /* tabla no disponible */ }
  return map;
}

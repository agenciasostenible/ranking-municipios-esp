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
  foto: string | null;   // URL servida por /api/anuncio-foto
};

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
    foto: r.foto_data ? `/api/anuncio-foto?id=${r.id}` : null,
  };
}

/** Anuncios aprobados de un municipio (ordenados: con foto primero, luego recientes). */
export async function getAnunciosMunicipio(codigo_ine: string): Promise<Anuncio[]> {
  if (!codigo_ine) return [];
  try {
    const { results } = await DB.prepare(
      `SELECT id, codigo_ine, tipo, nombre, descripcion, direccion, web, telefono,
              (foto_data IS NOT NULL) AS foto_data
         FROM anuncios
        WHERE codigo_ine = ? AND estado = 'aprobado'
        ORDER BY (foto_data IS NOT NULL) DESC, creado_at DESC`
    ).bind(codigo_ine).all();
    return (results as any[]).map(toAnuncio);
  } catch {
    return [];   // si la tabla aún no existe en este entorno, no rompemos la página
  }
}

/** Anuncios aprobados de varios municipios, agrupados por codigo_ine (para rutas). */
export async function getAnunciosVarios(codigos: string[]): Promise<Map<string, Anuncio[]>> {
  const map = new Map<string, Anuncio[]>();
  const ids = [...new Set(codigos.filter(Boolean))];
  if (!ids.length) return map;
  try {
    const { results } = await DB.prepare(
      `SELECT id, codigo_ine, tipo, nombre, descripcion, direccion, web, telefono,
              (foto_data IS NOT NULL) AS foto_data
         FROM anuncios
        WHERE estado = 'aprobado' AND codigo_ine IN (${ids.map(() => '?').join(',')})
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

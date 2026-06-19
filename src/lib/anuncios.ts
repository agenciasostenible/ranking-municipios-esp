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
  municipio: string | null;
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
    id: r.id, codigo_ine: r.codigo_ine, municipio: r.municipio, tipo: r.tipo, nombre: r.nombre,
    descripcion: r.descripcion, direccion: r.direccion, web: r.web, telefono: r.telefono,
    wa: r.whatsapp ? waLink(r.telefono) : null,
    foto: r.foto_data ? `/api/anuncio-foto?id=${r.id}` : null,
  };
}

// Superficie donde se muestra → columna de colocación que debe estar a 1.
export type Surface = 'ficha' | 'ruta_mun' | 'ruta_zona' | 'ranking_prov' | 'cerca' | 'joyas';
const COL: Record<Surface, string> = { ficha: 'en_ficha', ruta_mun: 'en_ruta_mun', ruta_zona: 'en_ruta_zona', ranking_prov: 'en_ranking_prov', cerca: 'en_cerca', joyas: 'en_joyas' };

/** Anuncios aprobados de un municipio, visibles en la superficie indicada. */
export async function getAnunciosMunicipio(codigo_ine: string, surface: Surface = 'ficha'): Promise<Anuncio[]> {
  if (!codigo_ine) return [];
  try {
    const { results } = await DB.prepare(
      `SELECT id, codigo_ine, municipio, tipo, nombre, descripcion, direccion, web, telefono, whatsapp,
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

/** Anuncios aprobados de TODA una provincia (publicidad a nivel provincia en rutas por zona). */
export async function getAnunciosProvincia(provincia: string, surface: Surface = 'ruta_zona'): Promise<Anuncio[]> {
  if (!provincia) return [];
  try {
    const { results } = await DB.prepare(
      `SELECT id, codigo_ine, municipio, tipo, nombre, descripcion, direccion, web, telefono, whatsapp,
              (foto_data IS NOT NULL) AS foto_data
         FROM anuncios
        WHERE provincia = ? AND estado = 'aprobado' AND ${COL[surface]} = 1
        ORDER BY (foto_data IS NOT NULL) DESC, creado_at DESC`
    ).bind(provincia).all();
    return (results as any[]).map(toAnuncio);
  } catch {
    return [];
  }
}

/** Anuncios aprobados CERCA de un punto (lat/lon), con su distancia en km, ordenados por cercanía. */
export async function getAnunciosCerca(lat: number, lon: number, radioKm: number, surface: Surface = 'cerca'): Promise<(Anuncio & { dist: number })[]> {
  if (isNaN(lat) || isNaN(lon)) return [];
  const dLat = radioKm / 111, dLon = radioKm / (111 * Math.cos(lat * Math.PI / 180));
  try {
    const { results } = await DB.prepare(
      `SELECT a.id, a.codigo_ine, a.municipio, a.tipo, a.nombre, a.descripcion, a.direccion, a.web, a.telefono, a.whatsapp,
              (a.foto_data IS NOT NULL) AS foto_data, m.latitud AS _lat, m.longitud AS _lon
         FROM anuncios a JOIN municipios m ON m.codigo_ine = a.codigo_ine
        WHERE a.estado = 'aprobado' AND a.${COL[surface]} = 1
          AND m.latitud BETWEEN ? AND ? AND m.longitud BETWEEN ? AND ?`
    ).bind(lat - dLat, lat + dLat, lon - dLon, lon + dLon).all();
    const R = 6371, toR = Math.PI / 180;
    return (results as any[]).map(r => {
      const a = toAnuncio(r) as Anuncio & { dist: number };
      const dLa = (r._lat - lat) * toR, dLo = (r._lon - lon) * toR;
      const s = Math.sin(dLa / 2) ** 2 + Math.cos(lat * toR) * Math.cos(r._lat * toR) * Math.sin(dLo / 2) ** 2;
      a.dist = 2 * R * Math.asin(Math.sqrt(s));
      return a;
    }).filter(a => a.dist <= radioKm).sort((x, y) => x.dist - y.dist);
  } catch { return []; }
}

/** Anuncios aprobados de varios municipios (para rutas), agrupados por codigo_ine. */
export async function getAnunciosVarios(codigos: string[], surface: Surface = 'ruta_zona'): Promise<Map<string, Anuncio[]>> {
  const map = new Map<string, Anuncio[]>();
  const ids = [...new Set(codigos.filter(Boolean))];
  if (!ids.length) return map;
  try {
    const { results } = await DB.prepare(
      `SELECT id, codigo_ine, municipio, tipo, nombre, descripcion, direccion, web, telefono, whatsapp,
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

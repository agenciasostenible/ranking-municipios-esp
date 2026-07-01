/**
 * creadores.ts
 * ------------
 * Creadores de Instagram recomendados (expertos en turismo). Se muestran en las
 * páginas de ranking según el TEMA (categoría) y la ZONA (provincia/comunidad).
 * Son editoriales/curados: NO entran en los rankings, solo se recomiendan.
 */
import { DB } from './d1client';

export type Creador = {
  id: number;
  nombre: string;
  handle: string;
  url: string;
  avatar_url: string | null;
  bio: string | null;
  especialidades: string[];
  destacado: number;
};

function toCreador(r: any): Creador {
  return {
    id: r.id,
    nombre: r.nombre,
    handle: String(r.handle || '').replace(/^@/, ''),
    url: `https://instagram.com/${String(r.handle || '').replace(/^@/, '')}`,
    avatar_url: r.has_avatar ? `/api/creador-foto?id=${r.id}` : (r.avatar_url || null),
    bio: r.bio || null,
    especialidades: String(r.especialidades || '').split(',').map((s) => s.trim()).filter(Boolean),
    destacado: r.destacado ? 1 : 0,
  };
}

/**
 * Creadores aprobados para una superficie (ficha, ruta o ranking).
 * @param categoria  tema (senderismo, gastronomia…). '' = no filtra por tema.
 * @param prov       provincia del contexto (o '')
 * @param ccaa       comunidad (no usado por ahora; reservado)
 * @param codigo     codigo_ine del municipio del contexto (ficha/ruta de pueblo) o ''
 *
 * Aparece si: nacional=1, O su provincia incluye `prov`, O sus municipios incluyen `codigo`.
 * El admin (o el propio creador) define ese alcance: toda España, varias provincias
 * y/o varios municipios concretos.
 */
// Mapa de categoría de ranking → especialidad de instagramer
const CAT_TO_ESP: Record<string, string[]> = {
  gastronomia:        ['gastronomia'],
  soletes:            ['gastronomia'],
  senderismo:         ['naturaleza','aventura'],
  Playas:             ['playa'],
  naturaleza:         ['naturaleza'],
  turismo_activo:     ['aventura','naturaleza'],
  TurismoRural:       ['rural'],
  monumentos:         ['cultura'],
  castillos:          ['cultura'],
  museos:             ['cultura'],
  festivales:         ['cultura'],
  fiestas:            ['cultura'],
  vinos:              ['gastronomia'],
  oleoturismo:        ['gastronomia'],
  miradores:          ['naturaleza','aventura'],
  estrellas:          ['naturaleza'],
  hoteles_encanto:    ['general'],
  lujo:               ['general'],
  solteros:           ['general'],
  pueblo_bonito:      ['rural','cultura'],
};

export async function getCreadores(categoria: string, prov = '', ccaa = '', codigo = '', limit = 8): Promise<Creador[]> {
  const conTema = !!categoria;
  const temaOk = conTema
    ? `AND ((',' || COALESCE(especialidades,'') || ',') LIKE '%,' || ? || ',%'
            OR (',' || COALESCE(especialidades,'') || ',') LIKE '%,general,%'
            OR COALESCE(TRIM(especialidades),'') = '')`
    : '';
  const zonas: string[] = [`nacional = 1`];
  const zonaBinds: any[] = [];
  if (prov) { zonas.push(`(',' || COALESCE(provincias,'') || ',') LIKE '%,' || ? || ',%'`); zonaBinds.push(prov); }
  if (codigo) { zonas.push(`(',' || COALESCE(municipios,'') || ',') LIKE '%,' || ? || ',%'`); zonaBinds.push(codigo); }

  try {
    // 1) Curated creadores table
    const binds: any[] = [...(conTema ? [categoria] : []), ...zonaBinds, limit];
    const { results: curados } = await DB.prepare(
      `SELECT id, nombre, handle, avatar_url, bio, especialidades, destacado,
              (avatar_data IS NOT NULL) AS has_avatar
         FROM creadores
        WHERE aprobado = 1 ${temaOk} AND (${zonas.join(' OR ')})
        ORDER BY destacado DESC, seguidores DESC, creado_at DESC
        LIMIT ?`
    ).bind(...binds).all();

    // 2) User-submitted instagramers (verified)
    const espFiltros = conTema ? (CAT_TO_ESP[categoria] || []) : [];
    let igQuery = `SELECT id, nombre, handle, avatar_url, bio, especialidad, 0 AS destacado FROM instagramers WHERE verificado=1`;
    const igBinds: any[] = [];
    if (espFiltros.length > 0) {
      igQuery += ` AND (especialidad IN (${espFiltros.map(() => '?').join(',')}) OR especialidad IS NULL OR especialidad = '')`;
      igBinds.push(...espFiltros);
    }
    igQuery += ` ORDER BY id DESC LIMIT ?`;
    igBinds.push(limit);
    const { results: submitted } = await DB.prepare(igQuery).bind(...igBinds).all();

    const fromCurados = (curados as any[]).map(toCreador);
    const fromSubmitted = (submitted as any[]).map((r: any) => ({
      id: r.id,
      nombre: r.nombre || r.handle,
      handle: String(r.handle || '').replace(/^@/, ''),
      url: `https://instagram.com/${String(r.handle || '').replace(/^@/, '')}`,
      avatar_url: r.avatar_url || null,
      bio: r.bio || null,
      especialidades: r.especialidad ? [r.especialidad] : [],
      destacado: 0,
    } as Creador));

    // Merge: curados primero, luego submitted; deduplica por handle
    const seen = new Set<string>();
    const merged: Creador[] = [];
    for (const c of [...fromCurados, ...fromSubmitted]) {
      const h = c.handle.toLowerCase();
      if (!seen.has(h)) { seen.add(h); merged.push(c); }
      if (merged.length >= limit) break;
    }
    return merged;
  } catch {
    return [];
  }
}

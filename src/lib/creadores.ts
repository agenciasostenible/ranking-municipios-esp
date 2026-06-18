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
export async function getCreadores(categoria: string, prov = '', ccaa = '', codigo = '', limit = 8): Promise<Creador[]> {
  const conTema = !!categoria;
  const temaOk = conTema
    ? `AND ((',' || COALESCE(especialidades,'') || ',') LIKE '%,' || ? || ',%'
            OR (',' || COALESCE(especialidades,'') || ',') LIKE '%,general,%'
            OR COALESCE(TRIM(especialidades),'') = '')`
    : '';
  // Zona: nacional; o la provincia está en su lista; o el municipio está en su lista.
  const zonas: string[] = [`nacional = 1`];
  const zonaBinds: any[] = [];
  if (prov) { zonas.push(`(',' || COALESCE(provincias,'') || ',') LIKE '%,' || ? || ',%'`); zonaBinds.push(prov); }
  if (codigo) { zonas.push(`(',' || COALESCE(municipios,'') || ',') LIKE '%,' || ? || ',%'`); zonaBinds.push(codigo); }
  try {
    const binds: any[] = [...(conTema ? [categoria] : []), ...zonaBinds, limit];
    const { results } = await DB.prepare(
      `SELECT id, nombre, handle, avatar_url, bio, especialidades, destacado,
              (avatar_data IS NOT NULL) AS has_avatar
         FROM creadores
        WHERE aprobado = 1 ${temaOk} AND (${zonas.join(' OR ')})
        ORDER BY destacado DESC, seguidores DESC, creado_at DESC
        LIMIT ?`
    ).bind(...binds).all();
    return (results as any[]).map(toCreador);
  } catch {
    return []; // si la tabla aún no existe en algún entorno, no rompemos la página
  }
}

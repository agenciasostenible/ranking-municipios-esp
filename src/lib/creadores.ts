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
    avatar_url: r.avatar_url || null,
    bio: r.bio || null,
    especialidades: String(r.especialidades || '').split(',').map((s) => s.trim()).filter(Boolean),
    destacado: r.destacado ? 1 : 0,
  };
}

/**
 * Creadores aprobados para una página de ranking.
 * @param categoria  tema del ranking (senderismo, gastronomia, castillos…)
 * @param prov       provincia activa en el filtro (o '')
 * @param ccaa       comunidad activa en el filtro (o '')
 */
export async function getCreadores(categoria: string, prov = '', ccaa = '', limit = 8): Promise<Creador[]> {
  // Tema: especialidad que incluya la categoría, o 'general', o sin especialidad.
  const temaOk = `(',' || COALESCE(especialidades,'') || ',') LIKE '%,' || ? || ',%'
                  OR (',' || COALESCE(especialidades,'') || ',') LIKE '%,general,%'
                  OR COALESCE(TRIM(especialidades),'') = ''`;
  // Zona: nacional siempre; provincia/comunidad si coinciden con el filtro.
  const zonaOk = `ambito_tipo = 'nacional'
                  OR (ambito_tipo = 'provincia' AND ambito_valor = ?)
                  OR (ambito_tipo = 'comunidad' AND ambito_valor = ?)`;
  try {
    const { results } = await DB.prepare(
      `SELECT * FROM creadores
        WHERE aprobado = 1 AND (${temaOk}) AND (${zonaOk})
        ORDER BY destacado DESC, seguidores DESC, creado_at DESC
        LIMIT ?`
    ).bind(categoria, prov, ccaa, limit).all();
    return (results as any[]).map(toCreador);
  } catch {
    return []; // si la tabla aún no existe en algún entorno, no rompemos la página
  }
}

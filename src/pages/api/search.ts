import { DB } from '../../lib/d1client';
import type { APIRoute } from 'astro';
// @ts-ignore

// Categorías que tienen página de entidades individuales (/entidades/[cat])
const CAT_LABELS: Record<string, string> = {
  castillos:         'Castillos',
  monumentos:        'Monumentos',
  naturaleza:        'Espacios naturales',
  museos:            'Museos',
  fiestas:           'Fiestas',
  festivales:        'Festivales',
  miradores:         'Miradores',
  oleoturismo:       'Oleoturismo',
  misterioso:        'Turismo misterioso',
  estrellas:         'Reservas Starlight',
  Playas:            'Playas',
  hoteles_encanto:   'Hoteles con encanto',
  TurismoRural:      'Turismo rural',
  ciclismo:          'Vías Verdes y rutas',
  vinos:             'Rutas del vino',
  pueblo_bonito:     'Pueblos bonitos',
  turismo_religioso: 'Lugares religiosos',
  lujo:              'Turismo de lujo',
  soletes:           'Restaurantes Repsol',
  gastronomia:       'Restaurantes destacados',
};

// Palabras clave que disparan sugerencia de categoría en la búsqueda
const CAT_KEYWORDS: { words: string[]; cat: string }[] = [
  { words: ['castillo','castillos','fortaleza','alcazar','alcazaba','muralla'], cat: 'castillos' },
  { words: ['monumento','monumentos','patrimonio','iglesia','catedral','palacio'], cat: 'monumentos' },
  { words: ['naturaleza','parque','paraje','reserva natural','espacio natural'], cat: 'naturaleza' },
  { words: ['museo','museos'], cat: 'museos' },
  { words: ['fiesta','fiestas','patron','patrona'], cat: 'fiestas' },
  { words: ['festival','festivales','musica','teatro'], cat: 'festivales' },
  { words: ['mirador','miradores','vistas','panoramica'], cat: 'miradores' },
  { words: ['aceite','olivo','almazara','oleoturismo'], cat: 'oleoturismo' },
  { words: ['misterio','misterioso','leyenda','paranormal','enigma'], cat: 'misterioso' },
  { words: ['estrella','estrellas','astro','astronomia','starlight'], cat: 'estrellas' },
  { words: ['playa','playas','bandera azul','costa','mar'], cat: 'Playas' },
  { words: ['hotel','parador','relais','encanto','alojamiento'], cat: 'hoteles_encanto' },
  { words: ['rural','casas rurales','turismo rural'], cat: 'TurismoRural' },
  { words: ['vino','vinos','bodega','enoturismo'], cat: 'vinos' },
  { words: ['via verde','vias verdes','ciclismo','bici'], cat: 'ciclismo' },
  { words: ['pueblo bonito','pueblos bonitos'], cat: 'pueblo_bonito' },
  { words: ['restaurante','restaurantes','repsol','solete'], cat: 'soletes' },
  { words: ['michelin','estrella michelin','gastronomia','cocina'], cat: 'gastronomia' },
];

// Mapeo fuente → clave de categoría de la ficha (para el parámetro ?desde=)
const FUENTE_CAT: Record<string, string> = {
  inventario_castillos_pdf:    'castillos',
  inventario_monumentos_pdf:   'monumentos',
  inventario_naturaleza_pdf:   'naturaleza',
  wikidata_museos:             'museos',
  inventario_fiestas_pdf:      'fiestas',
  inventario_festivales_pdf:   'festivales',
  guia_michelin:               'soletes',
  guia_repsol_solete:          'soletes',
  gastronomia_ampliacion:      'gastronomia',
  inventario_oleoturismo_pdf:  'oleoturismo',
  inventario_misterioso_pdf:   'misterioso',
  starlight:                   'estrellas',
  bandera_azul:                'Playas',
  pueblos_mas_bonitos:         'pueblo_bonito',
  hoteles_encanto:             'hoteles_encanto',
  inventario_turismo_rural_pdf:'TurismoRural',
  vias_verdes:                 'ciclismo',
  caminos_naturales:           'ciclismo',
  eurovelo:                    'ciclismo',
  inventario_vinos_pdf:        'vinos',
  rutas_vino:                  'vinos',
  inventario_miradores_pdf:    'miradores',
  inventario_turismo_religioso_pdf: 'turismo_religioso',
  inventario_turismo_activo_pdf:    'turismo_activo',
  inventario_lujo_pdf:         'lujo',
  inventario_playas_pdf:       'Playas',
  inventario_solteros_pdf:     'solteros',
  inventario_misterioso_pdf:   'misterioso',
  cuevas_acte:                 'cuevas',
  balnearios_anbal:            'balnearios',
  unesco:                      'patrimonio_unesco',
};

// Etiqueta legible para mostrar en el desplegable de resultados
function entidadLabel(fuente: string, tipo: string): string {
  if (fuente === 'inventario_castillos_pdf') return 'Castillo';
  if (fuente === 'inventario_monumentos_pdf') return 'Monumento';
  if (fuente === 'inventario_naturaleza_pdf') return 'Espacio natural';
  if (fuente === 'wikidata_museos') return 'Museo';
  if (fuente === 'inventario_fiestas_pdf') return 'Fiesta';
  if (fuente === 'inventario_festivales_pdf') return 'Festival';
  if (fuente === 'guia_michelin') return 'Restaurante Michelin';
  if (fuente === 'guia_repsol_solete') return 'Restaurante Repsol';
  if (fuente === 'gastronomia_ampliacion') return 'Restaurante';
  if (fuente === 'inventario_oleoturismo_pdf') return 'Oleoturismo';
  if (fuente === 'inventario_misterioso_pdf') return 'Lugar misterioso';
  if (fuente === 'starlight') return 'Reserva Starlight';
  if (fuente === 'bandera_azul') return 'Playa';
  if (fuente === 'pueblos_mas_bonitos') return 'Pueblo bonito';
  if (fuente === 'hoteles_encanto') return 'Alojamiento';
  if (fuente === 'inventario_turismo_rural_pdf') return 'Turismo rural';
  if (fuente === 'vias_verdes') return 'Vía Verde';
  if (tipo === 'castillo' || tipo === 'fortaleza' || tipo === 'alcazaba') return 'Castillo';
  if (tipo === 'monumento' || tipo === 'palacio' || tipo === 'iglesia') return 'Monumento';
  if (tipo === 'espacio') return 'Espacio natural';
  if (tipo === 'museo' || tipo === 'Museo') return 'Museo';
  return 'Lugar';
}

export const GET: APIRoute = async ({ request }) => {
  const url = new URL(request.url);
  const q = (url.searchParams.get('q') ?? '').trim();
  const prov = url.searchParams.get('provincia') ?? '';
  const ccaa = url.searchParams.get('ccaa') ?? '';
  const comarca = url.searchParams.get('comarca') ?? '';
  const tam = url.searchParams.get('tamano') ?? '';
  const soloMuni = url.searchParams.get('muni') === '1'; // editor admin: solo municipios

  if (!q && !prov && !ccaa && !comarca) {
    return new Response(JSON.stringify([]), { headers: { 'Content-Type': 'application/json' } });
  }

  let sql = `
    SELECT m.codigo_ine, m.nombre, m.provincia, m.comunidad, m.comarca, m.poblacion,
           p.puntuacion, p.ranking_provincial
    FROM municipios m
    LEFT JOIN (SELECT codigo_ine, MAX(puntuacion) as puntuacion, MAX(ranking_provincial) as ranking_provincial FROM puntuaciones WHERE categoria='ranking_global' GROUP BY codigo_ine) p
      ON m.codigo_ine = p.codigo_ine
    WHERE COALESCE(m.es_duplicado,0)=0
  `;
  const params: string[] = [];

  const qNorm = q ? q.normalize('NFD').replace(/[̀-ͯ]/g, '').toLowerCase() : '';

  // Detectar si la búsqueda coincide con una categoría → sugerir /entidades/[cat]
  let catSuggestions: any[] = [];
  if (q && q.length >= 3 && !soloMuni) {
    const qLow = q.normalize('NFD').replace(/[̀-ͯ]/g,'').toLowerCase();
    for (const { words, cat } of CAT_KEYWORDS) {
      if (words.some(w => qLow.includes(w) || w.includes(qLow))) {
        catSuggestions.push({
          tipo: 'categoria',
          nombre: `Ver todos: ${CAT_LABELS[cat] ?? cat}`,
          subtitulo: `Lista completa ordenada por importancia`,
          url: `/entidades/${cat}`,
        });
        if (catSuggestions.length >= 2) break;
      }
    }
  }

  // Buscar provincias y comunidades que coincidan
  let geoResults: any[] = [];
  let entResults: any[] = [];

  if (q && !prov && !ccaa && !comarca && !soloMuni) {
    const normProv = (col: string) =>
      `REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(LOWER(${col}),'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u')`;

    const [{ results: provs }, { results: ccaas }, { results: entRows }] = await Promise.all([
      DB.prepare(
        `SELECT DISTINCT provincia FROM municipios WHERE LOWER(provincia) LIKE LOWER(?) OR ${normProv('provincia')} LIKE ? ORDER BY provincia LIMIT 3`
      ).bind(`%${q}%`, `%${qNorm}%`).all(),
      DB.prepare(
        `SELECT DISTINCT comunidad FROM municipios WHERE LOWER(comunidad) LIKE LOWER(?) OR ${normProv('comunidad')} LIKE ? ORDER BY comunidad LIMIT 2`
      ).bind(`%${q}%`, `%${qNorm}%`).all(),
      // Busca en nombres de entidades (monumentos, castillos, restaurantes, naturaleza…)
      DB.prepare(
        `SELECT e.nombre AS ent_nombre, e.fuente, e.tipo,
                m.codigo_ine, m.nombre AS mun_nombre, m.provincia,
                COALESCE(p.puntuacion, 0) AS pts
         FROM entidades e
         JOIN municipios m ON m.codigo_ine = e.codigo_ine
         LEFT JOIN puntuaciones p ON p.codigo_ine = m.codigo_ine AND p.categoria = 'ranking_global'
         WHERE COALESCE(m.es_duplicado,0)=0
           AND (LOWER(e.nombre) LIKE LOWER(?) OR ${normProv('e.nombre')} LIKE ?)
         ORDER BY
           CASE WHEN LOWER(e.nombre) LIKE LOWER(?) THEN 0 ELSE 1 END,
           pts DESC, length(e.nombre) ASC
         LIMIT 8`
      ).bind(`%${q}%`, `%${qNorm}%`, `%${q}%`).all(),
    ]);

    geoResults = [
      ...(provs as any[]).map((r: any) => ({ tipo: 'provincia', nombre: r.provincia, url: `/provincia/${encodeURIComponent(r.provincia)}` })),
      ...(ccaas as any[]).map((r: any) => ({ tipo: 'comunidad', nombre: r.comunidad, url: `/ranking/ranking_global?ccaa=${encodeURIComponent(r.comunidad)}` })),
    ];

    entResults = (entRows as any[])
      .map(r => ({
        tipo: 'lugar',
        nombre: r.ent_nombre,
        subtitulo: `${entidadLabel(r.fuente, r.tipo)} · ${r.mun_nombre} (${r.provincia})`,
        codigo_ine: r.codigo_ine,
        url: `/municipio/${r.codigo_ine}${FUENTE_CAT[r.fuente] ? `?desde=${FUENTE_CAT[r.fuente]}&ent=${encodeURIComponent(r.ent_nombre)}#desde-block` : ''}`,
      }));
  }

  if (q) {
    sql += ` AND (m.nombre_search LIKE ? OR LOWER(m.nombre) LIKE LOWER(?))`;
    params.push(`%${qNorm}%`, `%${q}%`);
  }
  if (prov)   { sql += ` AND m.provincia = ?`;  params.push(prov); }
  if (ccaa)   { sql += ` AND m.comunidad = ?`;  params.push(ccaa); }
  if (comarca){ sql += ` AND m.comarca = ?`;    params.push(comarca); }
  if (tam === 'micro') sql += ` AND m.poblacion < 500`;
  else if (tam === 'peq') sql += ` AND m.poblacion >= 500 AND m.poblacion < 5000`;
  else if (tam === 'med') sql += ` AND m.poblacion >= 5000 AND m.poblacion < 20000`;
  else if (tam === 'grd') sql += ` AND m.poblacion >= 20000`;

  // Reducimos municipios si ya hay resultados de entidades para no saturar (salvo modo solo-municipios)
  const muniLimit = soloMuni ? 10 : Math.max(1, 8 - geoResults.length - entResults.length - catSuggestions.length);
  // Prioridad: nombre exacto → empieza por la búsqueda → contiene; dentro, por ranking.
  sql += ` GROUP BY m.codigo_ine
    ORDER BY
      CASE WHEN m.nombre_search = ? THEN 0
           WHEN m.nombre_search LIKE ? THEN 1
           ELSE 2 END,
      p.ranking_provincial ASC NULLS LAST
    LIMIT ${muniLimit}`;
  params.push(qNorm, `${qNorm}%`);

  const { results } = await DB.prepare(sql).bind(...params).all();
  const municipios = (results as any[]).map((r: any) => ({ ...r, tipo: 'municipio', url: `/municipio/${r.codigo_ine}` }));

  // Orden: sugerencias de categoría primero, luego geo, municipios, entidades
  return new Response(JSON.stringify([...catSuggestions, ...geoResults, ...municipios, ...entResults]), {
    headers: { 'Content-Type': 'application/json' },
  });
};

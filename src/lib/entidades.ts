// ── Categorías con listado de SITIOS (fuente única de verdad: la usan
//    /entidades/[cat] y la sección "Los mejores sitios" de la home) ──
export const CAT_FUENTES: Record<string, string[]> = {
  castillos:         ['inventario_castillos_pdf', 'inventario_monumentos_pdf', 'monumentos_osm'],
  monumentos:        ['inventario_monumentos_pdf', 'monumentos_osm'],
  naturaleza:        ['inventario_naturaleza_pdf', 'mil_lugares'],
  museos:            ['wikidata_museos'],
  fiestas:           ['inventario_fiestas_pdf', 'fiestas_wiki'],
  festivales:        ['inventario_festivales_pdf', 'festivales_wiki'],
  miradores:         ['inventario_miradores_pdf', 'miradores_osm', 'mil_lugares'],
  oleoturismo:       ['inventario_oleoturismo_pdf', 'oleo_osm', 'oleotour_jaen'],
  misterioso:        ['inventario_misterioso_pdf', 'misterio_osm'],
  estrellas:         ['starlight', 'astro_osm', 'mil_lugares'],
  senderismo:        ['senderos_osm', 'excel_curado', 'mil_lugares'],
  birdwatching:      ['mil_lugares'],
  Playas:            ['bandera_azul', 'inventario_playas_pdf', 'playas_osm', 'mil_lugares'],
  hoteles_encanto:   ['hoteles_encanto', 'encanto_osm'],
  TurismoRural:      ['rural_osm'],
  ciclismo:          ['vias_verdes', 'caminos_naturales', 'eurovelo', 'centros_btt', 'camino_cid', 'pirinexus', 'mil_lugares'],
  pozas:             ['pozas_bano', 'agua_osm', 'mil_lugares'],
  cuevas:            ['cuevas', 'mil_lugares'],
  balnearios:        ['balnearios', 'agua_osm'],
  solteros:          ['ocio_osm'],
  turismo_mascotas:  ['inventario_turismo_mascotas_pdf', 'mascotas_osm', 'mil_lugares'],
  turismo_lgtbi:     ['inventario_turismo_lgtbi_pdf', 'lgtbi_osm', 'lgtbi_wiki', 'lgtbi_curado'],
  vinos:             ['inventario_vinos_pdf', 'rutas_vino', 'vinos_osm'],
  pueblo_bonito:     ['pueblos_mas_bonitos'],
  turismo_religioso: ['inventario_turismo_religioso_pdf', 'religioso_osm'],
  turismo_activo:    ['inventario_turismo_activo_pdf', 'activo_osm', 'mil_lugares'],
  lujo:              ['inventario_lujo_pdf', 'lujo_osm'],
  gastronomia:       ['guia_michelin', 'gastronomia_ampliacion', 'guia_repsol_solete', 'restaurantes_osm'],
  Campings:          ['campings_osm'],
};

export const CAT_TIPOS_F: Record<string, string[]> = {
  balnearios: ['balneario','termas'],
  senderismo: ['sendero'],
  castillos: ['castillo','torre','fortaleza','alcazaba','muralla'],
  Playas: ['playa','playa_urbana'],
  miradores: ['mirador'],
  estrellas: ['astro'],
  pozas: ['poza','cascada','senda_fluvial','playa_fluvial','termas'],
  cuevas: ['cueva'],
  ciclismo: ['ciclismo'],
  turismo_activo: ['activo'],
  birdwatching: ['fauna'],
};

/**
 * Criterio de orden de los SITIOS dentro de una categoría (el mismo en el listado
 * /entidades/[cat] y en la home): primero los distinguidos —nota curada de sitio,
 * sello o distinción oficial—, luego por prestigio del sello/fuente y nota.
 * Requiere que la consulta agrupe por nombre (usa agregados MIN/MAX).
 */
export const ORDER_SITIOS = `
  CASE WHEN MAX(e.puntuacion) IS NOT NULL
         OR (MIN(e.nivel_sello) IS NOT NULL AND MIN(e.nivel_sello)!='')
         OR (MIN(e.sello_oficial) IS NOT NULL AND MIN(e.sello_oficial)!='')
         OR MIN(e.fuente) IN ('bandera_azul','pueblos_mas_bonitos')
       THEN 0 ELSE 1 END,
  CASE MIN(e.nivel_sello)
    WHEN 'Museo de Fama Mundial' THEN 0
    WHEN 'Museo Nacional' THEN 1
    WHEN 'UNESCO' THEN 2
    WHEN '3 Estrellas Michelin' THEN 0
    WHEN '2 Estrellas Michelin' THEN 1
    WHEN '1 Estrella Michelin' THEN 2
    ELSE 3
  END,
  CASE MIN(COALESCE(e.fuente,''))
    WHEN 'guia_michelin' THEN 0
    WHEN 'guia_repsol_solete' THEN 1
    WHEN 'gastronomia_ampliacion' THEN 2
    WHEN 'restaurantes_osm' THEN 8
    ELSE 3
  END,
  CASE LOWER(MIN(e.nombre))
    WHEN 'museo del prado' THEN 0
    WHEN 'museo nacional del prado' THEN 0
    WHEN 'museo guggenheim bilbao' THEN 1
    WHEN 'guggenheim bilbao' THEN 1
    WHEN 'museo nacional centro de arte reina sofía' THEN 2
    WHEN 'museo thyssen-bornemisza' THEN 3
    WHEN 'museu nacional d''art de catalunya' THEN 4
    WHEN 'museu picasso' THEN 5
    WHEN 'teatre-museu dalí' THEN 6
    ELSE 99
  END,
  CASE WHEN MAX(e.puntuacion) IS NOT NULL THEN 0 ELSE 1 END,
  puntuacion DESC,
  CASE WHEN MIN(e.descripcion) IS NOT NULL AND MIN(e.descripcion) NOT LIKE 'Museo en%' THEN 0 ELSE 1 END,
  nombre ASC`;

export const TIPO_ICONS: Record<string, string> = {
  castillo:   '🏰',
  monumento:  '🏛️',
  conjunto:   '🏘️',
  yacimiento: '⚱️',
  fiesta:     '🎉',
  espacio:    '🌿',
  gastronomia:'🍽️',
  producto:   '🧀',
  sendero:    '🥾',
  mirador:    '🔭',
  iglesia:    '⛪',
  museo:      '🖼️',
  festival:   '🎸',
  religioso:  '⛪',
  lgtbi:      '🏳️‍🌈',
  mascotas:   '🐾',
  activo:     '🧗',
  oleoturismo:'🫒',
  rural:      '🏡',
  restaurante:'🍽️',
  bar:        '🍻',
  cafeteria:  '☕',
  chiringuito:'🍹',
  vinoteca:   '🍷',
  heladeria:  '🍦',
  fast_good:  '🍔',
};

export const TIPO_LABEL: Record<string, string> = {
  castillo:   'Castillo',
  monumento:  'Monumento',
  conjunto:   'Conjunto histórico',
  yacimiento: 'Yacimiento',
  fiesta:     'Fiesta',
  espacio:    'Espacio natural',
  gastronomia:'Gastronomía',
  producto:   'Producto local',
  sendero:    'Ruta/Sendero',
  mirador:    'Mirador',
  iglesia:    'Iglesia/Ermita',
  museo:      'Museo',
  festival:   'Festival',
  religioso:  'Turismo religioso',
  lgtbi:      'Turismo LGTBI',
  mascotas:   'Turismo con mascotas',
  activo:     'Turismo activo',
  oleoturismo:'Oleoturismo',
  rural:      'Turismo rural',
  restaurante:'Restaurante',
  bar:        'Bar',
  cafeteria:  'Cafetería',
  chiringuito:'Chiringuito',
  vinoteca:   'Vinoteca',
  heladeria:  'Heladería',
  fast_good:  'Comida rápida',
  cascada:        'Cascada',
  poza:           'Poza de baño',
  termas:         'Termas naturales',
  playa_fluvial:  'Playa fluvial',
  senda_fluvial:  'Senda fluvial',
  ocio_nocturno:  'Ocio nocturno',
};

export const SELLO_COLORS: Record<string, { bg: string; color: string }> = {
  'UNESCO':           { bg: '#e3f2fd', color: '#0d47a1' },
  'IT Internacional': { bg: '#fce4ec', color: '#880e4f' },
  'Parque Nacional':  { bg: '#e8f5e9', color: '#1b5e20' },
  'BIC Nacional':     { bg: '#fff3e0', color: '#e65100' },
  'IT Nacional':      { bg: '#f3e5f5', color: '#4a148c' },
  'Autonómico':       { bg: '#e0f7fa', color: '#006064' },
  'Interés Turístico Regional': { bg: '#e0f7fa', color: '#006064' },
};

export function getSelloStyle(sello: string | null): string {
  if (!sello) return 'background:#f0f0f0;color:#666';
  const s = SELLO_COLORS[sello];
  if (s) return `background:${s.bg};color:${s.color}`;
  return 'background:#f0f0f0;color:#555';
}

export function getTipoIcon(tipo: string): string {
  return TIPO_ICONS[tipo] ?? '📍';
}

// Nombre de icono de LÍNEA (Lucide, vía componente Icon) para cada tipo de entidad.
// Sustituye a los emojis para un look más elegante y uniforme.
export const TIPO_ICON_NAME: Record<string, string> = {
  castillo: 'castle', alcazaba: 'castle', fortaleza: 'castle', torre: 'castle', muralla: 'castle',
  monumento: 'fort', conjunto: 'location_city', conjunto_historico: 'location_city', yacimiento: 'archaeology',
  fiesta: 'celebration', festival: 'festival', espacio: 'park', parque_natural: 'park',
  gastronomia: 'restaurant', producto: 'shopping_basket', sendero: 'hiking', mirador: 'binoculars',
  iglesia: 'church', religioso: 'church', museo: 'museum', lgtbi: 'rainbow', mascotas: 'pets',
  activo: 'mountain', oleoturismo: 'opacity', rural: 'cottage', misterio: 'dark_mode', misterioso: 'dark_mode',
  restaurante: 'restaurant', bar: 'sports_bar', cafeteria: 'local_cafe', chiringuito: 'local_bar',
  vinoteca: 'wine_bar', heladeria: 'icecream', fast_good: 'fastfood',
  cascada: 'water', poza: 'water', termas: 'hot_tub', playa_fluvial: 'beach_access', senda_fluvial: 'hiking', ocio_nocturno: 'nightlife',
};
export function getTipoIconName(tipo: string | null | undefined): string {
  return (tipo && TIPO_ICON_NAME[tipo]) || 'place';
}

// Tipos que NO son un punto concreto con ficha en Google Maps
// (una fiesta/festival es un evento; gastronomía/producto es un plato o producto local).
const NO_MAPS_TIPOS = new Set(['fiesta', 'festival', 'gastronomia', 'producto']);

// ¿Esta entidad es un sitio físico con ficha en Google? (monumento, castillo, mirador,
// museo, iglesia, espacio natural, yacimiento, sendero…). Por defecto sí.
export function tieneFichaMaps(tipo: string | null | undefined): boolean {
  return !!tipo && !NO_MAPS_TIPOS.has(tipo);
}

// Enlace de búsqueda en Google Maps por nombre + municipio + provincia.
export function gmapsUrl(nombre: string, municipio: string, provincia: string): string {
  const q = [nombre, municipio, provincia].filter(Boolean).join(', ');
  return `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(q)}`;
}

// Búsqueda por NOMBRE anclada en unas coordenadas: abre la ficha de Google del sitio
// (mejor que el pin de coordenadas y mejor que la búsqueda a ciegas por nombre).
export function gmapsUrlAt(nombre: string, lat: number, lng: number): string {
  return `https://www.google.com/maps/search/${encodeURIComponent(nombre)}/@${lat},${lng},16z`;
}

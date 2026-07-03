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
};

export const SELLO_COLORS: Record<string, { bg: string; color: string }> = {
  'UNESCO':           { bg: '#e3f2fd', color: '#0d47a1' },
  'IT Internacional': { bg: '#fce4ec', color: '#880e4f' },
  'Parque Nacional':  { bg: '#e8f5e9', color: '#1b5e20' },
  'BIC Nacional':     { bg: '#fff3e0', color: '#e65100' },
  'IT Nacional':      { bg: '#f3e5f5', color: '#4a148c' },
  'Autonómico':       { bg: '#e0f7fa', color: '#006064' },
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
  cascada: 'water', poza: 'water', termas: 'hot_tub', playa_fluvial: 'beach_access', senda_fluvial: 'hiking',
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

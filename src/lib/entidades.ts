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

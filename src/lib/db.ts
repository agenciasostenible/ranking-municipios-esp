export interface Municipio {
  codigo_ine: string;
  nombre: string;
  provincia: string;
  comunidad: string;
  comarca: string | null;
  poblacion: number | null;
  nombre_search: string | null;
}

export interface Puntuacion {
  codigo_ine: string;
  categoria: string;
  puntuacion: number;
  ranking_provincial: number | null;
}

// Icono Material Symbols Rounded por categoría
export const ICONS: Record<string, string> = {
  ranking_global:    'emoji_events',
  fiestas:           'celebration',
  senderismo:        'hiking',
  monumentos:        'fort',
  gastronomia:       'restaurant',
  Campings:          'camping',
  TurismoRural:      'cottage',
  estrellas:         'nights_stay',
  castillos:         'castle',
  yacimientos:       'archaeology',
  museos:            'museum',
  conjuntos:         'location_city',
  festivales:        'festival',
  restaurantes_top:  'star',
  aceite:            'opacity',
  vinos:             'wine_bar',
  playas:            'beach_access',
  pueblo_bonito:     'brightness_5',
  notoriedad_search: 'trending_up',

  miradores:         'binoculars',
  birdwatching:      'flutter_dash',
  cuevas:            'mountain',
  ciclismo:          'pedal_bike',
  escalada:          'climbing',
  pesca:             'phishing',
  mochilero:         'backpack',
  lujo:              'diamond',
  accesible:         'accessible',
  balnearios:        'hot_tub',
  mercados:          'storefront',
  productos_locales: 'shopping_basket',
  mercados_gastro:   'local_grocery_store',
};

export function getIcon(key: string): string {
  return ICONS[key] ?? 'place';
}

// Todas las categorías del buscador
export const LABELS: Record<string, string> = {
  ranking_global:    'Global',
  fiestas:           'Fiestas',
  senderismo:        'Senderismo',
  monumentos:        'Monumentos',
  gastronomia:       'Gastronomía',
  camping:           'Camping',
  TurismoRural:      'Turismo Rural',
  estrellas:         'Astroturismo',
  castillos:         'Castillos',
  yacimientos:       'Arqueología',
  museos:            'Museos',
  conjuntos:         'Conjuntos',
  festivales:        'Festivales',
  restaurantes_top:  'Rest. top',
  aceite:            'Aceite',
  vinos:             'Vinos',
  playas:            'Playas',
  pueblo_bonito:     'Pueblo bonito',
  notoriedad_search: 'Popularidad',

  miradores:         'Miradores',
  birdwatching:      'Birdwatching',
  cuevas:            'Cuevas',
  ciclismo:          'Cicloturismo',
  escalada:          'Escalada',
  pesca:             'Pesca',
  mochilero:         'Mochilero',
  lujo:              'Lujo',
  accesible:         'Accesible',
  balnearios:        'Balnearios',
  mercados:          'Mercados',
  productos_locales: 'Productos locales',
  mercados_gastro:   'Mercados gastro',
};

export function getCatInfo(cat: string) {
  return { icon: getIcon(cat), label: LABELS[cat] ?? cat };
}

export function formatPob(pob: number | null): string {
  if (!pob) return '—';
  return pob.toLocaleString('es-ES');
}

export const TABS = [
  { key: 'ranking_global',   label: 'Global',      icon: 'emoji_events' },
  { key: 'fiestas',          label: 'Fiestas',     icon: 'celebration' },
  { key: 'senderismo',       label: 'Senderismo',  icon: 'hiking' },
  { key: 'monumentos',      label: 'Monumentos',  icon: 'fort' },
  { key: 'gastronomia',      label: 'Gastronomía', icon: 'restaurant' },
  { key: 'Campings',         label: 'Camping',     icon: 'camping' },
  { key: 'TurismoRural',     label: 'Rural',       icon: 'cottage' },
  { key: 'estrellas',        label: 'Astro',       icon: 'nights_stay' },
  { key: 'castillos',        label: 'Castillos',   icon: 'castle' },
  { key: 'yacimientos',      label: 'Arqueología', icon: 'archaeology' },
  { key: 'birdwatching',     label: 'Birds',       icon: 'flutter_dash' },
  { key: 'ciclismo',         label: 'Bici',        icon: 'pedal_bike' },
  { key: 'aceite',           label: 'Aceite',      icon: 'opacity' },
  { key: 'vinos',            label: 'Vinos',       icon: 'wine_bar' },
];

export const SIDEBAR_GROUPS = [
  {
    title: 'Global',
    icon: 'emoji_events',
    items: [
      { key: 'ranking_global',  label: 'Ranking global',  icon: 'emoji_events' },
      { key: 'TurismoRural',    label: 'Turismo rural',   icon: 'cottage' },
    ],
  },
  {
    title: 'Patrimonio',
    icon: 'account_balance',
    items: [
      { key: 'monumentos',  label: 'Monumentos',          icon: 'fort' },
      { key: 'castillos',   label: 'Castillos',           icon: 'castle' },
      { key: 'yacimientos', label: 'Yacimientos',         icon: 'archaeology' },
      { key: 'museos',      label: 'Museos',              icon: 'museum' },
      { key: 'conjuntos',   label: 'Conjuntos históricos',icon: 'location_city' },
    ],
  },
  {
    title: 'Fiestas',
    icon: 'celebration',
    items: [
      { key: 'fiestas',    label: 'Fiestas oficiales', icon: 'celebration' },
      { key: 'festivales', label: 'Festivales',        icon: 'festival' },
    ],
  },
  {
    title: 'Gastronomía',
    icon: 'restaurant',
    items: [
      { key: 'gastronomia',       label: 'Gastronomía',      icon: 'restaurant' },
      { key: 'restaurantes_top',  label: 'Restaurantes top', icon: 'star' },
      { key: 'aceite',            label: 'Aceite de oliva',  icon: 'opacity' },
      { key: 'vinos',             label: 'Vinos y bodegas',  icon: 'wine_bar' },
      { key: 'productos_locales', label: 'Productos locales',icon: 'shopping_basket' },
    ],
  },
  {
    title: 'Naturaleza',
    icon: 'park',
    items: [
      { key: 'miradores',    label: 'Miradores',      icon: 'binoculars' },
      { key: 'birdwatching', label: 'Birdwatching',   icon: 'flutter_dash' },
      { key: 'estrellas',    label: 'Cielos oscuros', icon: 'nights_stay' },
      { key: 'cuevas',       label: 'Cuevas',         icon: 'mountain' },
    ],
  },
  {
    title: 'Activo',
    icon: 'hiking',
    items: [
      { key: 'senderismo', label: 'Senderismo',   icon: 'hiking' },
      { key: 'ciclismo',   label: 'Cicloturismo', icon: 'pedal_bike' },
      { key: 'escalada',   label: 'Escalada',     icon: 'climbing' },
      { key: 'pesca',      label: 'Pesca',        icon: 'phishing' },
    ],
  },
  {
    title: 'Viajero',
    icon: 'person',
    items: [
      { key: 'mochilero',  label: 'Mochilero',  icon: 'backpack' },
      { key: 'lujo',       label: 'Lujo',       icon: 'diamond' },
      { key: 'accesible',  label: 'Accesible',  icon: 'accessible' },
      { key: 'balnearios', label: 'Balnearios', icon: 'hot_tub' },
    ],
  },
];

// Lista completa de categorías del sidebar (para el select de categoría)
export const ALL_CATS = SIDEBAR_GROUPS.flatMap(g => g.items);

// Categorías a mostrar en la ficha de municipio
export const FICHA_CATS = [
  'ranking_global','monumentos','fiestas','senderismo',
  'gastronomia','camping','TurismoRural',
  'estrellas','castillos','yacimientos','ciclismo','birdwatching',
  'pueblo_bonito','notoriedad_search',
];

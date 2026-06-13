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
  Playas:            'beach_access',
  pueblo_bonito:     'brightness_5',
  notoriedad_instagram: 'trending_up',

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
  Campings:          'Camping',
  TurismoRural:      'Turismo Rural',
  castillos:         'Castillos',
  museos:            'Museos',
  conjuntos:         'Conjuntos',
  festivales:        'Festivales',
  restaurantes_top:  'Rest. top',
  vinos:             'Vinos',
  playas:            'Playas',
  Playas:            'Playas',
  pueblo_bonito:     'Pueblo bonito',
  notoriedad_instagram: 'Notoriedad en redes',

  miradores:         'Miradores',
  cuevas:            'Cuevas',
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
  { key: 'castillos',        label: 'Castillos',   icon: 'castle' },
  { key: 'playas',           label: 'Playas',      icon: 'beach_access' },
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
      { key: 'vinos',             label: 'Vinos y bodegas',  icon: 'wine_bar' },
      { key: 'productos_locales', label: 'Productos locales',icon: 'shopping_basket' },
    ],
  },
  {
    title: 'Naturaleza',
    icon: 'park',
    items: [
      { key: 'playas',       label: 'Playas',         icon: 'beach_access' },
      { key: 'miradores',    label: 'Miradores',      icon: 'binoculars' },
      { key: 'cuevas',       label: 'Cuevas',         icon: 'mountain' },
    ],
  },
  {
    title: 'Activo',
    icon: 'hiking',
    items: [
      { key: 'senderismo', label: 'Senderismo',   icon: 'hiking' },
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

// Categorías a mostrar en la ficha de municipio (tarjetas de ranking)
export const FICHA_CATS = [
  'ranking_global','monumentos','fiestas','senderismo',
  'gastronomia','Campings','TurismoRural',
  'castillos',
  'Playas',
  'pueblo_bonito','notoriedad_instagram',
];

// Categorías a mostrar en el gráfico de "Puntuaciones detalladas" (barras)
// Solo las categorías confirmadas / en uso.
export const DETAIL_CATS = [
  'monumentos','gastronomia','Playas','castillos','fiestas',
  'senderismo','TurismoRural','Campings','vinos',
  'pueblo_bonito','notoriedad_instagram',
];

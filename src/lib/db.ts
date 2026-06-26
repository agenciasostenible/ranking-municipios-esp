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
  naturaleza:        'landscape',
  monumentos:        'fort',
  gastronomia:       'restaurant',
  soletes:           'restaurant',
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
  pueblo_bonito:     'auto_awesome',
  turismo_religioso: 'church',
  turismo_lgtbi:     'rainbow',
  turismo_mascotas:  'pets',
  turismo_activo:    'mountain',
  oleoturismo:       'opacity',
  notoriedad_instagram: 'trending_up',

  miradores:         'binoculars',
  solteros:          'nightlife',
  misterioso:        'dark_mode',
  birdwatching:      'flutter_dash',
  cuevas:            'mountain',
  ciclismo:          'pedal_bike',
  escalada:          'climbing',
  pesca:             'phishing',
  hoteles_encanto:   'cottage',
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
  naturaleza:        'Naturaleza',
  monumentos:        'Monumentos',
  gastronomia:       'Gastronomía',
  soletes:           'Dónde comer',
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
  ciclismo:          'Cicloturismo',
  pueblo_bonito:     'Pueblos bonitos',
  turismo_religioso: 'Turismo religioso',
  turismo_lgtbi:     'Turismo LGTBI',
  turismo_mascotas:  'Turismo con mascotas',
  turismo_activo:    'Turismo activo',
  oleoturismo:       'Oleoturismo',
  hoteles_encanto:   'Hoteles con encanto',
  notoriedad_instagram: 'Popularidad en redes',

  miradores:         'Miradores',
  solteros:          'Solteros',
  misterioso:        'Turismo misterioso',
  estrellas:         'Astroturismo (Starlight)',
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
  { key: 'festivales',       label: 'Festivales',  icon: 'festival' },
  { key: 'senderismo',       label: 'Senderismo',  icon: 'hiking' },
  { key: 'naturaleza',       label: 'Naturaleza',  icon: 'landscape' },
  { key: 'monumentos',      label: 'Monumentos',  icon: 'fort' },
  { key: 'gastronomia',      label: 'Gastronomía', icon: 'restaurant' },
  { key: 'soletes',          label: 'Dónde comer', icon: 'restaurant' },
  { key: 'Campings',         label: 'Camping',     icon: 'camping' },
  { key: 'TurismoRural',     label: 'Rural',       icon: 'cottage' },
  { key: 'castillos',        label: 'Castillos',   icon: 'castle' },
  { key: 'playas',           label: 'Playas',      icon: 'beach_access' },
  { key: 'vinos',            label: 'Vinos',       icon: 'wine_bar' },
  { key: 'miradores',        label: 'Miradores',   icon: 'binoculars' },
  { key: 'lujo',             label: 'Lujo',        icon: 'diamond' },
  { key: 'solteros',         label: 'Solteros',    icon: 'nightlife' },
  { key: 'misterioso',       label: 'Misterio',    icon: 'dark_mode' },
  { key: 'pueblo_bonito',    label: 'Pueblos bonitos', icon: 'auto_awesome' },
  { key: 'turismo_religioso',label: 'Religioso',   icon: 'church' },
  { key: 'turismo_activo',   label: 'Activo',      icon: 'mountain' },
  { key: 'oleoturismo',      label: 'Oleoturismo', icon: 'opacity' },
  { key: 'turismo_mascotas', label: 'Mascotas',    icon: 'pets' },
  { key: 'turismo_lgtbi',    label: 'LGTBI',       icon: 'rainbow' },
  { key: 'notoriedad_instagram', label: 'Popularidad', icon: 'trending_up' },
];

export const SIDEBAR_GROUPS = [
  {
    title: 'Global',
    icon: 'emoji_events',
    items: [
      { key: 'ranking_global',  label: 'Ranking global',     icon: 'emoji_events' },
      { key: 'pueblo_bonito',   label: 'Pueblos bonitos',    icon: 'auto_awesome' },
      { key: 'notoriedad_instagram', label: 'Popularidad en redes', icon: 'trending_up' },
    ],
  },
  {
    title: 'Patrimonio',
    icon: 'account_balance',
    items: [
      { key: 'monumentos',  label: 'Monumentos',          icon: 'fort' },
      { key: 'castillos',   label: 'Castillos',           icon: 'castle' },
    ],
  },
  {
    title: 'Fiestas',
    icon: 'celebration',
    items: [
      { key: 'fiestas',    label: 'Fiestas', icon: 'celebration' },
      { key: 'festivales', label: 'Festivales', icon: 'festival' },
    ],
  },
  {
    title: 'Gastronomía',
    icon: 'restaurant',
    items: [
      { key: 'gastronomia',       label: 'Gastronomía',      icon: 'restaurant' },
      { key: 'soletes',           label: 'Dónde comer', icon: 'restaurant' },
      { key: 'vinos',             label: 'Vinos y bodegas',  icon: 'wine_bar' },
      { key: 'oleoturismo',       label: 'Oleoturismo',      icon: 'opacity' },
    ],
  },
  {
    title: 'Naturaleza y aire libre',
    icon: 'park',
    items: [
      { key: 'naturaleza',     label: 'Naturaleza',     icon: 'landscape' },
      { key: 'senderismo',     label: 'Senderismo',     icon: 'hiking' },
      { key: 'turismo_activo', label: 'Turismo activo', icon: 'mountain' },
      { key: 'ciclismo',       label: 'Cicloturismo',   icon: 'pedal_bike' },
      { key: 'cuevas',         label: 'Cuevas turísticas', icon: 'mountain' },
      { key: 'estrellas',      label: 'Astroturismo',   icon: 'nights_stay' },
      { key: 'miradores',      label: 'Miradores',      icon: 'binoculars' },
      { key: 'playas',         label: 'Playas',         icon: 'beach_access' },
    ],
  },
  {
    title: 'Dónde dormir',
    icon: 'cottage',
    items: [
      { key: 'hoteles_encanto', label: 'Hoteles con encanto', icon: 'cottage' },
      { key: 'TurismoRural',   label: 'Turismo rural',  icon: 'cottage' },
      { key: 'Campings',       label: 'Camping',        icon: 'camping' },
    ],
  },
  {
    title: 'Experiencias',
    icon: 'auto_awesome',
    items: [
      { key: 'turismo_religioso', label: 'Turismo religioso',   icon: 'church' },
      { key: 'balnearios',        label: 'Balnearios y termas', icon: 'hot_tub' },
      { key: 'turismo_mascotas',  label: 'Turismo con mascotas', icon: 'pets' },
      { key: 'turismo_lgtbi',     label: 'Turismo LGTBI',       icon: 'rainbow' },
      { key: 'misterioso',        label: 'Turismo misterioso',  icon: 'dark_mode' },
    ],
  },
  {
    title: 'Lujo y lifestyle',
    icon: 'diamond',
    items: [
      { key: 'lujo',         label: 'Turismo de lujo', icon: 'diamond' },
      { key: 'solteros',     label: 'Solteros',        icon: 'nightlife' },
    ],
  },
];

// Microdescripción de cada categoría (qué hay dentro). Evita confundir al usuario.
export const SUBTITLES: Record<string, string> = {
  ranking_global:    'la mejor valoración global de cada pueblo',
  monumentos:        'catedrales, palacios y patrimonio',
  castillos:         'castillos, fortalezas y murallas',
  fiestas:           'fiestas populares y tradiciones',
  festivales:        'festivales de música, cine y arte',
  gastronomia:       'prestigio gastronómico: estrellas, soles, productos y DOP',
  soletes:           'sitios concretos para comer: bares, restaurantes, chiringuitos…',
  vinos:             'bodegas y enoturismo',
  oleoturismo:       'aceite de oliva y almazaras',
  senderismo:        'rutas y caminos para andar',
  turismo_activo:    'aventura y deporte: ferratas, barrancos, escalada',
  miradores:         'vistas y puntos panorámicos',
  playas:            'costa, calas y baño',
  Playas:            'costa, calas y baño',
  naturaleza:        'cascadas, gargantas, embalses y parajes',
  TurismoRural:      'casas rurales y pueblos para desconectar',
  Campings:          'acampada y bungalós en plena naturaleza',
  pueblo_bonito:     'los pueblos con más encanto de España',
  turismo_religioso: 'catedrales, santuarios y peregrinaciones',
  turismo_mascotas:  'destinos para viajar con tu mascota',
  turismo_lgtbi:     'destinos LGTBI-friendly',
  lujo:              'destinos premium y de alta gama',
  solteros:          'ambiente y vida social para singles',
  misterioso:        'leyendas, brujería y lugares con misterio',
  notoriedad_instagram: 'los pueblos más populares en redes',
  hoteles_encanto:   'paradores, hoteles boutique y con encanto (Michelin · Relais)',
  ciclismo:          'cicloturismo: vías verdes, EuroVelo, caminos naturales y rutas en bici',
  estrellas:         'cielos para ver las estrellas (destinos Starlight)',
  balnearios:        'balnearios y aguas termales para el bienestar',
  cuevas:            'cuevas y minas turísticas visitables',
};
export function getSubtitle(cat: string): string {
  return SUBTITLES[cat] ?? '';
}

// Lista completa de categorías del sidebar (para el select de categoría)
export const ALL_CATS = SIDEBAR_GROUPS.flatMap(g => g.items);

// Categorías a mostrar en la ficha de municipio (tarjetas de ranking)
export const FICHA_CATS = [
  'ranking_global','monumentos','fiestas','festivales','senderismo','naturaleza',
  'gastronomia','Campings','TurismoRural',
  'castillos',
  'Playas',
  'vinos','miradores','lujo','solteros','misterioso',
  'pueblo_bonito',
  'turismo_religioso','turismo_activo','oleoturismo','turismo_mascotas','turismo_lgtbi',
  'hoteles_encanto','ciclismo','estrellas','balnearios','cuevas',
  'notoriedad_instagram',
];

// Categorías a mostrar en el gráfico de "Puntuaciones detalladas" (barras)
// Solo las categorías confirmadas / en uso.
export const DETAIL_CATS = [
  'monumentos','gastronomia','Playas','castillos','fiestas','festivales',
  'senderismo','naturaleza','TurismoRural','Campings','vinos','miradores','lujo','solteros','misterioso',
  'turismo_religioso','turismo_activo','oleoturismo','turismo_mascotas','turismo_lgtbi',
  'hoteles_encanto','ciclismo','estrellas','balnearios','cuevas',
  'pueblo_bonito','notoriedad_instagram',
];

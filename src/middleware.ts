import { defineMiddleware } from 'astro:middleware';
import { mirrorSecretsToProcessEnv } from './lib/runtime';

// Al principio de cada petición, reflejamos los secretos de Cloudflare en process.env
// para que el helper env() (import.meta.env ?? process.env) de los ficheros existentes
// siga funcionando sin tener que reescribirlos.
export const onRequest = defineMiddleware(async (context, next) => {
  mirrorSecretsToProcessEnv();
  const res = await next();

  // ── Caché de páginas públicas ──────────────────────────────────────────────
  // El plan gratuito de Workers tiene tope diario de peticiones: si cada visita
  // y cada recarga entra al servidor, se agota. Los rankings cambian como mucho
  // una vez al día, así que se pueden servir cacheados un rato sin que nadie note
  // nada; y con stale-while-revalidate el visitante nunca espera a que se refresque.
  const { pathname } = context.url;
  const esPrivado = pathname.startsWith('/admin') || pathname.startsWith('/api');
  const esHTML = (res.headers.get('content-type') || '').includes('text/html');

  if (esPrivado) {
    // el panel y las APIs nunca se cachean (llevan datos y acciones)
    res.headers.set('Cache-Control', 'private, no-store');
  } else if (context.request.method === 'GET' && esHTML && res.status === 200) {
    res.headers.set('Cache-Control', 'public, max-age=120, s-maxage=600, stale-while-revalidate=86400');
  }

  return res;
});

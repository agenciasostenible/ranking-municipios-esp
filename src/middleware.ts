import { defineMiddleware } from 'astro:middleware';
import { mirrorSecretsToProcessEnv } from './lib/runtime';

// Al principio de cada petición, reflejamos los secretos de Cloudflare en process.env
// para que el helper env() (import.meta.env ?? process.env) de los ficheros existentes
// siga funcionando sin tener que reescribirlos.
export const onRequest = defineMiddleware((_context, next) => {
  mirrorSecretsToProcessEnv();
  return next();
});

-- 0222: Limpia TODOS los datos de playas (entidades + puntuaciones del ranking).
-- Se mantiene la categoría en el código (CAT_TIPOS/labels) para recargar desde el PDF nuevo.
-- NO toca otras categorías ni otros datos.
DELETE FROM entidades   WHERE tipo IN ('Playas','playa','playa_urbana');
DELETE FROM puntuaciones WHERE categoria IN ('Playas','playas','search_playas');

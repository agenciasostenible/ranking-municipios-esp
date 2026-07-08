-- 0422 Baños de la Encina (24012): coordenadas reales (Nominatim/OSM) a 3 monumentos
-- estelares que no las tenían, para que "Ver en Google Maps" apunte al sitio exacto
-- y no a una búsqueda por nombre. La ermita de Jesús del Llano no está como POI en
-- OSM (solo calles homónimas) → se deja con búsqueda por nombre.
UPDATE entidades SET latitud=38.1702171, longitud=-3.7755008 WHERE id=87279 AND codigo_ine='24012'; -- Castillo de Burgalimar
UPDATE entidades SET latitud=38.1713702, longitud=-3.7740414 WHERE id=96140 AND codigo_ine='24012'; -- Iglesia de San Mateo
UPDATE entidades SET latitud=38.1754751, longitud=-3.7715438 WHERE id=96142 AND codigo_ine='24012'; -- Molino de Viento del Santo

# 🏰 PROMPT PARA CARGAR CASTILLOS - NUEVA SESIÓN

## 📋 INSTRUCCIONES PARA EL USUARIO

Cuando tengas el documento de castillos listo, haz esto en la nueva sesión:

```
He preparado un documento con la información de castillos para rankingspain.com.

El documento tiene esta estructura:
- Comunidad Autónoma
- Provincia
- Municipio
- Ranking/Puntos (0-100)
- Nombres de Castillos
- Descripción de por qué destaca

Por favor:
1. Carga el documento (PDF o Excel)
2. Extrae los castillos 
3. Verifica que los municipios existan en BD
4. Evita duplicados con datos anteriores
5. Carga SOLO los castillos, sin tocar otras categorías
6. Despliega en producción
7. Verifica en web
```

---

## 📄 FORMATO ESPERADO DEL DOCUMENTO

### Opción A: Excel (.xlsx)
```
| Comunidad | Provincia | Municipio | Puntos | Nombres de Castillos | Descripción |
|-----------|-----------|-----------|--------|----------------------|-------------|
| Castilla y León | Segovia | Segovia | 95 | Alcázar de Segovia | Fortaleza medieval con...más descripción |
| Castilla y León | Ávila | Ávila | 90 | Muralla y Alcázar | Conjunto histórico de...más descripción |
```

### Opción B: PDF
```
[COMUNIDAD AUTÓNOMA]: Castilla y León
[PROVINCIA]: Segovia
[MUNICIPIO]: Segovia
[PUNTOS]: 95
[NOMBRES DE CASTILLOS]: Alcázar de Segovia
[DESCRIPCIÓN]: Fortaleza medieval del siglo XII...descripción completa
```

---

## 🔄 PASOS QUE CLAUDE SEGUIRÁ

1. **Extracción**: Leer el documento y extraer todos los castillos
2. **Validación**: Verificar que municipios existan en BD (8,257 municipios)
3. **Deduplicación**: Comparar con castillos ya cargados, evitar duplicados
4. **Mapeo**: Obtener código_ine para cada municipio
5. **SQL Migration**: Generar UPDATE para puntuaciones + why_json
6. **Build & Deploy**: Compilar y desplegar a producción
7. **Verificación**: Probar en web que aparezcan correctamente

---

## ✅ CHECKLIST PARA TI

Antes de enviar el documento:

- [ ] Todos los municipios existen en España
- [ ] Las puntuaciones están entre 0-100
- [ ] Las descripciones son completas y detalladas
- [ ] No hay municipios repetidos
- [ ] Los nombres de castillos son correctos (verificados en internet)
- [ ] Las descripciones incluyen: tipo de castillo, época, características principales, qué destacar

---

## 📊 RESULTADO ESPERADO

En la web, cuando hagas clic en un municipio desde `/ranking/castillos`:

```
¿Por qué Segovia destaca en Castillos?
Puntuación: 95.0 pts

🏰 CASTILLOS: Alcázar de Segovia | Fortaleza medieval del siglo XII 
construida sobre un promontorio rocoso, con torres almenadas y una 
arquitectura gótico-isabelina que domina el paisaje de Segovia. 
Declarado Monumento Nacional, es una de las fortalezas más icónicas 
de Europa con vistas espectaculares del valle del Eresma.
```

---

## 🚀 COMANDO PARA NUEVA SESIÓN

Cuando tengas todo listo, copia y pega esto:

```
He preparado castillos para rankingspain.com.

Estructura:
- Comunidad Autónoma
- Provincia  
- Municipio
- Puntos (0-100)
- Nombres de Castillos
- Descripción completa para "¿Por qué destaca?"

Por favor carga todo, evita duplicados, verifica en web y despliega.
```

Luego adjunta el documento (PDF o Excel).

---

## 📝 EJEMPLO COMPLETO

```
CASTILLA Y LEÓN

SEGOVIA:
- Segovia: 95 puntos
  Alcázar de Segovia | Fortaleza medieval del siglo XII construida sobre 
  un promontorio rocoso con torres almenadas. Arquitectura gótico-isabelina 
  que domina el paisaje. Una de las fortalezas más icónicas de Europa.

- Pedraza: 85 puntos
  Castillo de Pedraza | Fortaleza medieval del siglo XIII en el corazón 
  de la villa amurallada. Torre del Homenaje bien conservada. Ejemplo de 
  arquitectura defensiva medieval con vistas al valle del Eresma.

ÁVILA:
- Ávila: 90 puntos
  Muralla y Alcázar | Conjunto histórico único en España. Muralla medieval 
  del siglo XI completamente preservada. Alcázar como residencia real en 
  diferentes épocas. Patrimonio de la Humanidad.
```

---

## ⚙️ DATOS TÉCNICOS (para referencia)

- **Categoría en BD**: `castillos`
- **Campo de puntuación**: `puntuaciones.puntuacion`
- **Campo de descripción**: `municipios.why_json`
- **Formato why_json**: `["🏰 CASTILLOS: [Nombres] | [Descripción]"]`
- **Total municipios en BD**: 8,257
- **Municipios actuales sin castillos**: Todos con puntuación 0 (listos)

---

## 🎯 RESUMEN

**Envía un documento con:**
1. Comunidad + Provincia + Municipio
2. Puntos (0-100)
3. Nombres de castillos (verificados)
4. Descripción de por qué destaca (detallada, 2-3 líneas)

**Claude hará:**
1. Extraer y mapear con BD
2. Evitar duplicados
3. Cargar todo automáticamente
4. Verificar en web
5. Desplegar

**Tiempo estimado**: 15-20 minutos

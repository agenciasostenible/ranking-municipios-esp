#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Genera migration SQL para playas según el patrón del proyecto.
"""

import pandas as pd
from collections import defaultdict

# Cargar datos
csv_path = "/Users/joseluisalvarezaguilera/Downloads/Playas_espa%C3%B1olas.csv"
df = pd.read_csv(csv_path, encoding='utf-8-sig')
df['Código_IN'] = pd.to_numeric(df['Código_IN'], errors='coerce')

# Scoring
def score_playa(row):
    score = 25
    servicios = ['Aseos', 'Duchas', 'Papelera', 'Teléfonos', 'Oficina_tu', 'Servicio_l', 'Alquiler_s']
    servicios_presentes = sum(1 for s in servicios if row.get(s) == 'Sí')
    score += min(servicios_presentes * 4, 30)

    infra = ['Paseo_mar', 'Acceso_dis', 'Aparcamien']
    infra_presente = sum(1 for i in infra if row.get(i) == 'Sí')
    score += infra_presente * 7

    ocupacion = str(row.get('Grado_ocup', '')).strip()
    if ocupacion in ['Alto', 'Medio']:
        score += 10
    elif ocupacion == 'Bajo':
        score += 5

    bandera = row.get('Bandera_az')
    if bandera == 'Sí':
        score += 8

    nudismo = row.get('Nudismo')
    if nudismo == 'Sí':
        score += 2

    return min(int(score), 95)

df['score'] = df.apply(score_playa, axis=1)

# Agrupar por municipio
municipios = defaultdict(lambda: {
    'nombre': None,
    'provincia': None,
    'comunidad': None,
    'playas': [],
    'score': 0
})

for _, row in df[df['Código_IN'].notna()].iterrows():
    cod_ine = int(row['Código_IN'])
    if municipios[cod_ine]['nombre'] is None:
        municipios[cod_ine]['nombre'] = row['Término_M']
        municipios[cod_ine]['provincia'] = row['Provincia']
        municipios[cod_ine]['comunidad'] = row['Comunidad_']

    municipios[cod_ine]['playas'].append({
        'nombre': row['Nombre'],
        'descripcion': row['Descripci'] if pd.notna(row['Descripci']) else '',
        'score': row['score']
    })

# Calcular scores finales
for cod_ine, data in municipios.items():
    if data['playas']:
        scores = [p['score'] for p in data['playas']]
        data['score'] = max(scores)
        playas_notables = [s for s in scores if s > 50]
        if len(playas_notables) > 3:
            data['score'] = min(int(data['score'] * 1.1), 95)

# Generar SQL
sql_lines = []
sql_lines.append("-- Migration: Playas españolas (categoría nueva)")
sql_lines.append("-- Fuente: Dataset ESRI - 3554 playas en 448 municipios")
sql_lines.append("-- Fecha: 2026-06-11")
sql_lines.append("")

# 1. Crear estructura
sql_lines.append("-- 1. Crear estructura de scores para Playas")
sql_lines.append("INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion)")
sql_lines.append("  SELECT codigo_ine, 'Playas', 0 FROM municipios WHERE es_duplicado=0;")
sql_lines.append("")

# 2. Default 12
sql_lines.append("-- 2. Establecer puntuación por defecto (12)")
sql_lines.append("UPDATE puntuaciones SET puntuacion=12 WHERE categoria='Playas';")
sql_lines.append("")

# 3. Limpiar entidades anteriores
sql_lines.append("-- 3. Limpiar entidades anteriores (si las hay)")
sql_lines.append("DELETE FROM entidades WHERE tipo='Playas' AND fuente IN ('wikidata', 'OSM', 'verificado_manual');")
sql_lines.append("")

# 4. Aplicar scores municipales
sql_lines.append("-- 4. Aplicar scores municipales por ciudad/playa")
update_statements = []
for cod_ine in sorted(municipios.keys()):
    data = municipios[cod_ine]
    score = data['score']
    update_statements.append(f"UPDATE puntuaciones SET puntuacion={score} WHERE codigo_ine={int(cod_ine)} AND categoria='Playas';")

# Agregar en bloques
sql_lines.extend(update_statements)
sql_lines.append("")

# 5. Insertar entidades (playas destacadas)
sql_lines.append("-- 5. Insertar entidades (playas destacadas)")
sql_lines.append("-- Se insertan las playas principales de cada municipio con score > 50")
sql_lines.append("")

insert_statements = []
for cod_ine in sorted(municipios.keys()):
    data = municipios[cod_ine]
    if data['score'] > 50 and data['playas']:
        # Insertar hasta 3 playas principales por municipio
        for i, playa in enumerate(data['playas'][:3]):
            if playa['score'] > 50:
                desc = playa['descripcion'][:200].replace("'", "''")  # Escapar comillas
                nombre = playa['nombre'].replace("'", "''")
                insert_statements.append(
                    f"INSERT OR IGNORE INTO entidades (codigo_ine, tipo, nombre, descripcion, fuente, fecha_ingesta) "
                    f"VALUES ({int(cod_ine)}, 'Playas', '{nombre}', '{desc}', 'verificado_manual', date('now'));"
                )

# Limitar a 100 inserts por request
for i in range(0, len(insert_statements), 100):
    batch = insert_statements[i:i+100]
    sql_lines.extend(batch)
    if i + 100 < len(insert_statements):
        sql_lines.append("")

sql_lines.append("")

# 6. Sincronizar duplicados
sql_lines.append("-- 6. Sincronizar puntuaciones en municipios duplicados")
sql_lines.append("-- (asignar puntuación del municipio principal a sus duplicados)")
sql_lines.append("UPDATE puntuaciones SET puntuacion=(")
sql_lines.append("  SELECT p2.puntuacion FROM puntuaciones p2")
sql_lines.append("  JOIN municipios m ON m.codigo_ine=p2.codigo_ine")
sql_lines.append("  WHERE p2.codigo_ine=(")
sql_lines.append("    SELECT MIN(m2.codigo_ine) FROM municipios m2")
sql_lines.append("    WHERE m2.nombre=municipios.nombre AND m2.provincia=municipios.provincia AND m2.es_duplicado=0")
sql_lines.append("  )")
sql_lines.append("  AND p2.categoria='Playas'")
sql_lines.append(")")
sql_lines.append("WHERE categoria='Playas' AND codigo_ine IN (")
sql_lines.append("  SELECT codigo_ine FROM municipios WHERE es_duplicado=1")
sql_lines.append(");")

# Guardar a archivo
output_path = '/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations/0202_playas_inicial.sql'

with open(output_path, 'w', encoding='utf-8') as f:
    f.write('\n'.join(sql_lines))

print(f"✓ Migration SQL generado: {output_path}")
print(f"  - {len(update_statements)} UPDATE statements")
print(f"  - {len(insert_statements)} INSERT statements (entidades)")
sql_content = '\n'.join(sql_lines)
print(f"  - Tamaño: {len(sql_content)} bytes")

# Resumen
print(f"\n📊 RESUMEN:")
print(f"  - Municipios procesados: {len(municipios)}")
print(f"  - Municipios con score > 50: {sum(1 for m in municipios.values() if m['score'] > 50)}")
print(f"  - Score promedio: {sum(m['score'] for m in municipios.values()) / len(municipios):.1f}")
print(f"  - Score máximo: {max(m['score'] for m in municipios.values())}")
print(f"  - Score mínimo: {min(m['score'] for m in municipios.values())}")

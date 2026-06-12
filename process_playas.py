#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script para procesar datos de playas españolas y crear ranking por municipio.
Fuente: Dataset ESRI "Playas españolas" (3554 playas)
"""

import pandas as pd
import numpy as np
from collections import defaultdict
import re

# Cargar CSV
csv_path = "/Users/joseluisalvarezaguilera/Downloads/Playas_espa%C3%B1olas.csv"
df = pd.read_csv(csv_path, encoding='utf-8-sig')

print(f"✓ CSV cargado: {len(df)} playas")
print(f"Columnas: {list(df.columns)}\n")

# Campos clave
print(f"Comunidades: {df['Comunidad_'].nunique()}")
print(f"Provincias: {df['Provincia'].nunique()}")
print(f"Municipios: {df['Término_M'].nunique()}")
print(f"Municipios con código INE: {df['Código_IN'].notna().sum()}\n")

# Verificar códigos INE válidos
df['Código_IN'] = pd.to_numeric(df['Código_IN'], errors='coerce')
print(f"Playas con código INE válido: {df['Código_IN'].notna().sum()}")

# Función de scoring
def score_playa(row):
    """
    Calcula score para una playa (0-100)
    Basado en: servicios, infraestructura, urbanización, grado ocupación
    """
    score = 25  # Base: existe la playa

    # Servicios (máx +30)
    servicios = [
        'Aseos', 'Duchas', 'Papelera', 'Teléfonos',
        'Oficina_tu', 'Servicio_l', 'Alquiler_s'
    ]
    servicios_presentes = sum(1 for s in servicios if row.get(s) == 'Sí')
    score += min(servicios_presentes * 4, 30)

    # Infraestructura (máx +20)
    infra = ['Paseo_mar', 'Acceso_dis', 'Aparcamien']
    infra_presente = sum(1 for i in infra if row.get(i) == 'Sí')
    score += infra_presente * 7

    # Grado de ocupación (máx +10)
    ocupacion = str(row.get('Grado_ocup', '')).strip()
    if ocupacion in ['Alto', 'Medio']:
        score += 10
    elif ocupacion == 'Bajo':
        score += 5

    # Características especiales (máx +10)
    bandera = row.get('Bandera_az')
    if bandera == 'Sí':
        score += 8

    nudismo = row.get('Nudismo')
    if nudismo == 'Sí':
        score += 2

    # Límite máximo
    return min(int(score), 95)

# Aplicar scoring
df['score'] = df.apply(score_playa, axis=1)

print(f"\n📊 SCORING GENERADO")
print(f"Score promedio: {df['score'].mean():.1f}")
print(f"Rango: {df['score'].min()}-{df['score'].max()}\n")

# Agrupar por municipio (código INE)
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

# Calcular score por municipio (máximo o promedio de playas)
for cod_ine, data in municipios.items():
    if data['playas']:
        scores = [p['score'] for p in data['playas']]
        # Usar máximo: la playa mejor de la ciudad define el score
        data['score'] = max(scores)
        # Si hay múltiples playas notables, bonificación
        playas_notables = [s for s in scores if s > 50]
        if len(playas_notables) > 3:
            data['score'] = min(int(data['score'] * 1.1), 95)

print(f"✓ {len(municipios)} municipios con playas")
print(f"Municipios con score >50: {sum(1 for m in municipios.values() if m['score'] > 50)}\n")

# Top 20 municipios
top_municipios = sorted(
    municipios.items(),
    key=lambda x: x[1]['score'],
    reverse=True
)[:20]

print("🏆 TOP 20 MUNICIPIOS CON PLAYAS")
print("-" * 80)
for cod_ine, data in top_municipios:
    num_playas = len(data['playas'])
    print(f"{data['nombre']:25} ({data['provincia']:15}) Score: {data['score']:2} | Playas: {num_playas}")

print("\n" + "=" * 80)
print("PRÓXIMOS PASOS:")
print("1. Revisar scores (especialmente top 50)")
print("2. Generar Excel para validación manual")
print("3. Ajustar scores si es necesario")
print("4. Crear migration SQL")
print("5. Deployer a BD remota")
print("=" * 80)

# Guardar datos para siguiente paso
import json
output_data = {
    'municipios': {
        str(k): {
            'nombre': v['nombre'],
            'provincia': v['provincia'],
            'comunidad': v['comunidad'],
            'score': v['score'],
            'num_playas': len(v['playas']),
            'playas': [
                {
                    'nombre': p['nombre'],
                    'descripcion': p['descripcion'][:100] + '...' if len(p['descripcion']) > 100 else p['descripcion'],
                    'score': p['score']
                }
                for p in v['playas']
            ]
        }
        for k, v in municipios.items()
    }
}

with open('/tmp/playas_scoring.json', 'w') as f:
    json.dump(output_data, f, ensure_ascii=False, indent=2)

print("\n✓ Datos guardados en /tmp/playas_scoring.json")
print(f"Total de municipios procesados: {len(municipios)}")

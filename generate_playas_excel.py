#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Genera Excel con datos de playas para revisión y implementación.
"""

import pandas as pd
import numpy as np
from collections import defaultdict
import json

# Cargar CSV
csv_path = "/Users/joseluisalvarezaguilera/Downloads/Playas_espa%C3%B1olas.csv"
df = pd.read_csv(csv_path, encoding='utf-8-sig')
df['Código_IN'] = pd.to_numeric(df['Código_IN'], errors='coerce')

# Función de scoring (igual que en process_playas.py)
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
        'score': row['score'],
        'aseos': 'Sí' if row.get('Aseos') == 'Sí' else 'No',
        'duchas': 'Sí' if row.get('Duchas') == 'Sí' else 'No',
        'bandera': 'Sí' if row.get('Bandera_az') == 'Sí' else 'No',
    })

# Calcular score por municipio
for cod_ine, data in municipios.items():
    if data['playas']:
        scores = [p['score'] for p in data['playas']]
        data['score'] = max(scores)
        playas_notables = [s for s in scores if s > 50]
        if len(playas_notables) > 3:
            data['score'] = min(int(data['score'] * 1.1), 95)

# Crear DataFrame para Excel
excel_data = []
for cod_ine in sorted(municipios.keys()):
    data = municipios[cod_ine]
    excel_data.append({
        'Codigo_INE': int(cod_ine),
        'Municipio': data['nombre'],
        'Provincia': data['provincia'],
        'Comunidad': data['comunidad'],
        'Score': data['score'],
        'Num_Playas': len(data['playas']),
        'Descripcion': ' | '.join([f"{p['nombre']} ({p['score']})" for p in data['playas'][:3]])
    })

excel_df = pd.DataFrame(excel_data)

# Exportar a Excel
output_path = '/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/PLAYAS_RANKING_FINAL.xlsx'
excel_df.to_excel(output_path, index=False, sheet_name='Playas')

print(f"✓ Excel generado: {output_path}")
print(f"  - {len(excel_df)} municipios")
print(f"  - Columnas: {list(excel_df.columns)}")
print(f"\n📊 DISTRIBUCIÓN DE SCORES:")
print(excel_df['Score'].value_counts().sort_index(ascending=False).head(10))
print(f"\n🏆 TOP 10:")
print(excel_df.nlargest(10, 'Score')[['Municipio', 'Provincia', 'Score', 'Num_Playas']])

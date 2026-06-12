#!/usr/bin/env python3
import pandas as pd
import re

# Cargar CSV de playas
csv_path = "/Users/joseluisalvarezaguilera/Downloads/Playas_espa%C3%B1olas.csv"
df = pd.read_csv(csv_path, encoding='utf-8-sig')
df['Código_IN'] = pd.to_numeric(df['Código_IN'], errors='coerce')

# Obtener códigos únicos del dataset
codigos_dataset = set(df[df['Código_IN'].notna()]['Código_IN'].astype(int).unique())
print(f"Códigos INE en dataset: {len(codigos_dataset)}")

# Leer archivo de inserts
with open('/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations/0202c_playas_inserts.sql', 'r') as f:
    inserts = f.readlines()

# Extraer códigos INE de los INSERT
pattern = r"VALUES \((\d+),\s*'Playas'"
codigos_inserts = set()
for insert in inserts:
    match = re.search(pattern, insert)
    if match:
        codigos_inserts.add(int(match.group(1)))

print(f"Códigos INE en INSERTs: {len(codigos_inserts)}")
print(f"Códigos en dataset pero no en inserts: {len(codigos_dataset - codigos_inserts)}")
print(f"Códigos en inserts pero no en dataset: {len(codigos_inserts - codigos_dataset)}")

# Mostrar algunos ejemplos
if codigos_inserts - codigos_dataset:
    print(f"\nEjemplos de códigos en inserts pero no en dataset:")
    for codigo in sorted(list(codigos_inserts - codigos_dataset))[:10]:
        print(f"  {codigo}")

# El problema es que hay códigos que no están en municipios
# Vamos a verificar qué códigos están en municipios (de una migration anterior)
# Por ahora, vamos a assumir que todos los códigos del dataset deberían existir
# El problema podría ser que los INSERT usan OR IGNORE pero hay un problema con FK

# Vamos a simplemente insertar solo playas de municipios con score asignado
print(f"\nCreando archivo de inserts validados...")

# Leer scores aplicados en la migration anterior
scores_file = '/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations/0202b_playas_scores.sql'
codigos_con_score = set()
with open(scores_file, 'r') as f:
    for line in f:
        match = re.search(r'codigo_ine=(\d+)', line)
        if match:
            codigos_con_score.add(int(match.group(1)))

print(f"Códigos con score asignado: {len(codigos_con_score)}")

# Filtrar inserts para solo incluir códigos con score
inserts_validados = []
for insert in inserts:
    match = re.search(pattern, insert)
    if match:
        codigo = int(match.group(1))
        if codigo in codigos_con_score:
            inserts_validados.append(insert)

print(f"Inserts validados: {len(inserts_validados)}")

# Guardar inserts validados
with open('/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations/0202c_playas_inserts_validados.sql', 'w') as f:
    f.writelines(inserts_validados)

print(f"Guardado a 0202c_playas_inserts_validados.sql")

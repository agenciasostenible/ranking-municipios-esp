#!/usr/bin/env python3
import re

# Leer archivo original
with open('/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations/0202_playas_inicial.sql', 'r') as f:
    content = f.read()

# Extraer INSERT statements (pueden ser multilineados)
insert_pattern = r"INSERT OR IGNORE INTO entidades.*?;(?=\n|$)"
inserts = re.findall(insert_pattern, content, re.DOTALL)

print(f"Found {len(inserts)} INSERT statements")

# Limpiar y validar inserts
clean_inserts = []
for insert in inserts:
    # Convertir a una sola línea
    insert_clean = ' '.join(insert.split())
    # Verificar que termina con ;
    if not insert_clean.endswith(';'):
        insert_clean += ';'
    clean_inserts.append(insert_clean)

# Guardar a archivo en lotes
with open('/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations/0202c_playas_inserts.sql', 'w') as f:
    for i, insert in enumerate(clean_inserts):
        f.write(insert + '\n')

print(f"Saved {len(clean_inserts)} INSERT statements to 0202c_playas_inserts.sql")

# Mostrar primero y último
if clean_inserts:
    print(f"\nFirst insert (truncated):\n{clean_inserts[0][:150]}...")
    print(f"\nLast insert (truncated):\n{clean_inserts[-1][:150]}...")

#!/usr/bin/env python3
import re

# Leer archivo original
with open('/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations/0202_playas_inicial.sql', 'r') as f:
    content = f.read()

# Extraer solo los UPDATE statements simples (una línea)
pattern = r"^UPDATE puntuaciones SET puntuacion=\d+ WHERE codigo_ine=\d+ AND categoria='Playas';$"
updates = re.findall(pattern, content, re.MULTILINE)

print(f"Found {len(updates)} simple UPDATE statements")

# Guardar a archivo
with open('/Users/joseluisalvarezaguilera/Documents/ranking-municipios-esp/migrations/0202b_playas_scores.sql', 'w') as f:
    f.write('\n'.join(updates))

print(f"Saved to 0202b_playas_scores.sql")

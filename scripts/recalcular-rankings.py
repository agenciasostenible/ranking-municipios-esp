#!/usr/bin/env python3
"""
recalcular-rankings.py
======================
Recalcula ranking_global y boostea categorías con señales SEMrush.

Pasos:
  1. Para cada municipio, suma search_X a su categoría padre (con factor amortiguador)
  2. Recalcula ranking_global con fórmula ponderada sobre todas las categorías
  3. Genera SQL con MAX() — nunca baja una puntuación existente

Uso:
  python3 scripts/recalcular-rankings.py            # genera SQL
  python3 scripts/recalcular-rankings.py --apply    # genera y aplica directo
"""

import json, math, subprocess, argparse, datetime
from collections import defaultdict
from pathlib import Path

PROJECT_DIR = Path(__file__).parent.parent

# ── Pesos por categoría para ranking_global ─────────────────────────────────
# Tier A (1.2): las categorías que más busca la gente para turismo
# Tier B (1.0): importantes pero más nicho
# Tier C (0.6): señales complementarias
PESOS = {
    "monumentos":       1.3,
    "pueblo_bonito":    1.2,
    "gastronomia":      1.1,
    "castillos":        1.0,
    "conjuntos":        1.0,
    "museos":           0.9,
    "Playas":           0.8,
    "senderismo":       0.8,
    "fiestas":          0.8,
    # 'TurismoRural' excluido del global desde 2026-06-25 (score casi universal, distorsionaba)
    "vinos":            0.6,
    "festivales":       0.5,
}

# ── Cómo cada search_X boostea su categoría padre ───────────────────────────
# boost_final = MIN(techo, categoria_existente + search_score * factor)
# El factor es bajo para no distorsionar calibraciones manuales
SEARCH_BOOSTS = {
    "search_gastronomia":   ("gastronomia",   0.35, 100),
    "search_playas":        ("playas",         0.40, 100),
    "search_senderismo":    ("senderismo",     0.45, 100),
    "search_historia":      ("historia",       0.35, 100),
    "search_castillos":     ("castillos",      0.45, 100),
    "search_naturaleza":    ("naturaleza",     0.35, 100),
    "search_pueblo_bonito": ("pueblo_bonito",  0.50, 100),
}

# Media amortiguada (shrinkage): un sitio necesita destacar en VARIAS categorías
# para liderar. Con pocas categorías, la nota se acerca a una base baja.
K_VIRTUAL = 2.0
BASE_M    = 28.0
# La fama (notoriedad búsqueda + Instagram) solo cuenta como desempate mínimo.
FAMA_CAP  = 3.0


def calc_global(scores: dict) -> float:
    """
    Fórmula ranking_global (justa):
      - Media ponderada de las categorías con score > 0 (no penaliza al de
        interior por no tener playa: lo que falta no entra en el divisor)
      - Amortiguada hacia una base baja (28) según cuántas categorías tenga,
        para que un sitio de una sola categoría fuerte NO lidere
      - + fama (notoriedad) como desempate mínimo (máx 3 pts)
      - Cap 100
    """
    suma_pond  = 0.0
    suma_pesos = 0.0

    for cat, peso in PESOS.items():
        val = scores.get(cat, 0)
        if val > 0:
            suma_pond  += val * peso
            suma_pesos += peso

    if suma_pesos == 0:
        return 0.0

    base = (suma_pond + K_VIRTUAL * BASE_M) / (suma_pesos + K_VIRTUAL)
    fama = min(FAMA_CAP, scores.get("notoriedad_search", 0) * 0.04
                       + scores.get("notoriedad_instagram", 0) * 0.03)

    return round(min(100.0, base + fama), 1)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true", help="Aplica el SQL a D1 remoto")
    args = parser.parse_args()

    # Cargar scores desde caché local (o regenerar desde D1)
    cache = Path("/tmp/all_scores.json")
    if not cache.exists():
        print("Descargando scores desde D1...")
        result = subprocess.run(
            ["npx", "wrangler", "d1", "execute", "ranking-municipios",
             "--remote", "--command",
             "SELECT codigo_ine, categoria, puntuacion FROM puntuaciones WHERE puntuacion > 0",
             "--json"],
            capture_output=True, text=True, cwd=PROJECT_DIR
        )
        data = json.loads(result.stdout)
        rows = data[0]["results"]
        cache.write_text(json.dumps(rows))
    else:
        rows = json.loads(cache.read_text())

    print(f"Scores cargados: {len(rows)}")

    # Agrupar por municipio
    by_muni = defaultdict(dict)
    for r in rows:
        by_muni[r["codigo_ine"]][r["categoria"]] = r["puntuacion"]

    print(f"Municipios con algún score: {len(by_muni)}")

    lines = [
        "-- Recalculo de rankings: boosts SEMrush + nuevo ranking_global ponderado",
        f"-- Generado: {datetime.datetime.now().isoformat()}",
        "-- Usa MAX() — nunca baja una puntuación existente",
        "",
    ]

    stats = {"boosted": 0, "global_updated": 0, "global_new": 0}

    for ine, scores in sorted(by_muni.items()):

        # ── 1. Aplicar boosts search_X → categoría padre ─────────────────
        for search_cat, (parent_cat, factor, techo) in SEARCH_BOOSTS.items():
            search_val = scores.get(search_cat, 0)
            if search_val <= 0:
                continue
            existing = scores.get(parent_cat, 0)
            boosted  = min(techo, existing + search_val * factor)
            if boosted > existing:
                diff = round(boosted - existing, 1)
                lines.append(
                    f"UPDATE puntuaciones SET puntuacion=ROUND(MIN({techo}, puntuacion+{diff}),1) "
                    f"WHERE codigo_ine='{ine}' AND categoria='{parent_cat}';"
                )
                scores[parent_cat] = boosted  # actualizar para el cálculo global
                stats["boosted"] += 1

        # ── 2. Recalcular ranking_global ──────────────────────────────────
        nuevo_global = calc_global(scores)
        if nuevo_global <= 0:
            continue

        viejo_global = scores.get("ranking_global", 0)
        if viejo_global > 0:
            # Municipio ya tenía global: actualizar solo si el nuevo es mayor
            lines.append(
                f"UPDATE puntuaciones SET puntuacion=MAX(puntuacion, {nuevo_global}) "
                f"WHERE codigo_ine='{ine}' AND categoria='ranking_global';"
            )
            stats["global_updated"] += 1
        else:
            # Municipio sin global: insertar
            lines.append(
                f"INSERT INTO puntuaciones (codigo_ine, categoria, puntuacion) "
                f"VALUES ('{ine}', 'ranking_global', {nuevo_global}) "
                f"ON CONFLICT(codigo_ine, categoria) DO UPDATE SET "
                f"puntuacion=MAX(puntuacion, excluded.puntuacion);"
            )
            stats["global_new"] += 1

    out = PROJECT_DIR / "migrations" / "0020_recalculo_rankings.sql"
    out.write_text("\n".join(lines))

    print(f"\n✓ SQL generado: {out}")
    print(f"  Boosts aplicados:      {stats['boosted']}")
    print(f"  Global actualizados:   {stats['global_updated']}")
    print(f"  Global nuevos:         {stats['global_new']}")
    print(f"  Total statements:      {len([l for l in lines if l.startswith('UPDATE') or l.startswith('INSERT')])}")

    if args.apply:
        print("\nAplicando a D1 remoto...")
        result = subprocess.run(
            ["npx", "wrangler", "d1", "execute", "ranking-municipios",
             "--remote", f"--file={out}", "--json"],
            capture_output=True, text=True, cwd=PROJECT_DIR
        )
        try:
            data = json.loads(result.stdout)
            meta = data[0]["meta"]
            print(f"  ✓ changes={meta['changes']}  rows_written={meta['rows_written']}")
        except Exception:
            print(result.stdout[-500:])
            print(result.stderr[-300:])


if __name__ == "__main__":
    main()

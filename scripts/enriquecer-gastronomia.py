#!/usr/bin/env python3
"""
enriquecer-gastronomia.py — Michelin, destinos gastronómicos, productos DOP
Uso: python3 scripts/enriquecer-gastronomia.py --apply
"""
import json, subprocess, argparse
from pathlib import Path

PROJECT_DIR = Path(__file__).parent.parent
OUT_PATH = PROJECT_DIR / "migrations" / "gastronomia_real.sql"

# 100 = San Sebastián (capital gastronómica mundial)
# 95  = ciudad con 3 estrellas Michelin o destino top mundial
# 90  = 2 estrellas Michelin o destino gastronómico nacional top
# 85  = 1 estrella Michelin o destino gastronómico regional
# 80  = DOP producto estrella + gastronomía notable
# 70  = DOP/IGP importante
# 60  = destino gastronómico conocido

GASTRONOMIA = [
    # ── País Vasco — capital gastronómica mundial ─────────────────────────
    ("20069", 100, "San Sebastián — Capital gastronómica mundial, más estrellas Michelin/km² del mundo"),
    ("20069", 100, "San Sebastián — Pintxos, La Parte Vieja, mercado La Bretxa"),
    ("48020", 95, "Bilbao — Gastronomía vasca, mercado de la Ribera, pintxos"),
    ("01059", 90, "Vitoria-Gasteiz — Capital verde, gastronomía vasca"),
    ("20030", 92, "Hondarribia — Gastronomía vasca, txakoli, mariscos"),
    ("20046", 92, "Getaria — Txakoli, asadores de pescado, kokotxas"),
    ("20065", 90, "Zarautz — Gastronomía vasca costera"),
    ("48078", 90, "Mundaka — Gastronomía marinera vasca"),
    ("20043", 90, "Fuenterrabía — Gastronomía vasca fronteriza"),

    # ── Cataluña ──────────────────────────────────────────────────────────
    ("08019", 93, "Barcelona — Gastronomía mundial, La Boqueria, Michelin"),
    ("17079", 88, "Girona — El Celler de Can Roca (3 estrellas, mejor restaurante del mundo)"),
    ("17155", 85, "Roses — elBulli (Ferran Adrià), gastronomía de vanguardia"),
    ("43148", 85, "Tarragona — Gastronomía mediterránea, romesco"),
    ("17046", 85, "La Jonquera — Zona gastronómica"),
    ("08221", 85, "Sitges — Gastronomía mediterránea"),
    ("08197", 85, "Sant Feliu de Guíxols — Gastronomía costera"),

    # ── Madrid ────────────────────────────────────────────────────────────
    ("28079", 92, "Madrid — Capital gastronómica, mercado de San Miguel, DiverXO (3 estrellas)"),
    ("28005", 85, "Alcobendas — Restaurantes de alta gama"),
    ("28045", 85, "El Escorial — Gastronomía madrileña"),

    # ── Castilla y León ───────────────────────────────────────────────────
    ("37274", 90, "Salamanca — Jamón ibérico, cochinillo, gastronomía castellana"),
    ("47186", 88, "Valladolid — Cochinillo asado, lechazo, capital gastronómica CyL"),
    ("09059", 88, "Burgos — Morcilla de Burgos, cordero lechal, queso castellano"),
    ("40181", 88, "Segovia — Cochinillo asado, Mesón de Cándido, DOP"),
    ("05019", 85, "Ávila — Chuletón de Ávila, yemas de Santa Teresa"),
    ("24089", 85, "León — Botillo del Bierzo, cecina, gastronomía leonesa"),
    ("34120", 85, "Palencia — Menestra de verduras, truchas del Palencia"),
    ("42173", 85, "Soria — Setas, cordero, trufa negra"),
    ("49275", 85, "Zamora — Pimentón de la Vera, gastronomía zamorana"),
    ("05185", 85, "Arévalo — Cochinillo DOP Segovia"),

    # ── Guijuelo — capital del jamón ibérico ──────────────────────────────
    ("37150", 95, "Guijuelo — DOP Jamón Ibérico de Guijuelo, capital del jamón"),
    ("06042", 95, "Guijuelo (Extremadura) — DOP Jamón Ibérico de Guijuelo"),
    ("21006", 93, "Jabugo — DOP Jamón de Jabugo (5J), el mejor jamón del mundo"),
    ("21025", 90, "Cortegana — DOP Jamón Ibérico de Huelva"),
    ("06002", 92, "Azuaga — Zona jamón ibérico Extremadura"),

    # ── Galicia ───────────────────────────────────────────────────────────
    ("15078", 92, "Santiago de Compostela — Pulpo, empanada, tarta de Santiago, mercado de Abastos"),
    ("36057", 90, "Pontevedra — Mariscos, pulpo, empanada gallega"),
    ("15030", 90, "A Coruña — Mariscos, pulpo á feira, percebes"),
    ("27028", 85, "Lugo — Pulpo de feria, carne gallega, tapas"),
    ("32054", 85, "Ourense — Cocido, pulpo, caldos gallegos"),
    ("36012", 88, "Cambados — Mariscos, albariño, mejillones"),
    ("36034", 88, "O Grove — Mariscos, mejillones, ostras"),
    ("36001", 85, "A Guarda — Langostas, mariscos"),

    # ── Andalucía ─────────────────────────────────────────────────────────
    ("11020", 92, "Jerez de la Frontera — Tapa, pescaíto frito, fino, manzanilla"),
    ("41091", 92, "Sevilla — Tapas, pescaíto, cocina andaluza, Mercado Triana"),
    ("18087", 88, "Granada — Tapas gratis, pionono, habas con jamón"),
    ("29067", 90, "Málaga — Espetos, fritura malagueña, boquerones"),
    ("11032", 90, "Sanlúcar de Barrameda — Langostinos, manzanilla, mariscos"),
    ("04013", 85, "Almería — Ajoblanco, migas, tapas"),
    ("23050", 88, "Jaén — Andrajos, pipirrana, gastronomía jiennense"),
    ("14021", 88, "Córdoba — Salmorejo, rabo de toro, flamenquín"),
    ("21006", 88, "Almonte — Chacinas, jamón, gastronomía del Condado"),
    ("11011", 85, "Cádiz — Tortillitas de camarones, pescaíto, chicharrones"),

    # ── Extremadura ───────────────────────────────────────────────────────
    ("10037", 90, "Cáceres — Pimentón de la Vera DOP, queso de la Serena, Torta del Casar"),
    ("06083", 88, "Mérida — Gastronomía extremeña, jamón, quesos"),
    ("10020", 90, "Jaraíz de la Vera — Pimentón de la Vera DOP"),
    ("10019", 88, "Jarandilla de la Vera — Pimentón de la Vera DOP"),
    ("10025", 88, "Losar de la Vera — Pimentón de la Vera DOP"),
    ("06013", 88, "Azuaga — Queso de la Serena DOP"),
    ("06020", 90, "Casar de Cáceres — Torta del Casar DOP"),

    # ── La Rioja ──────────────────────────────────────────────────────────
    ("26089", 90, "Logroño — Calle del Laurel, pinchos, chorizo a la riojana"),
    ("26064", 88, "Haro — Gastronomía riojana, batalla del vino"),
    ("26101", 85, "Santo Domingo de la Calzada — Gastronomía riojana medieval"),

    # ── Navarra ───────────────────────────────────────────────────────────
    ("31201", 90, "Pamplona — Pintxos, espárragos de Navarra DOP, Mercado de Santo Domingo"),
    ("31232", 85, "Tudela — Verduras DOP, menestra navarra"),
    ("31066", 85, "Cascante — Verduras de Navarra, espárragos"),

    # ── Aragón ────────────────────────────────────────────────────────────
    ("50297", 88, "Zaragoza — Ternasco DOP, longaniza de Graus, gastronomía aragonesa"),
    ("22125", 85, "Huesca — Longaniza de Graus, ternasco, trufa negra"),
    ("44216", 85, "Teruel — Jamón de Teruel DOP, melocotón de Calanda DOP"),
    ("44043", 88, "Calanda — Melocotón de Calanda DOP"),

    # ── Valencia ──────────────────────────────────────────────────────────
    ("46250", 95, "Valencia — Paella valenciana, horchata DOP, agua de Valencia"),
    ("46131", 88, "Gandia — Fideuà, gastronomía marinera"),
    ("46070", 85, "Cullera — Gastronomía marinera, arroces"),
    ("12040", 85, "Castellón — Gastronomía valenciana, cocas"),
    ("03099", 85, "Alicante — Arroz y costa, turrones DOP Jijona"),
    ("03074", 90, "Jijona — Turrón DOP, el mejor turrón de España"),
    ("03066", 88, "Elche — Palmeras de dátiles, gastronomía ilicitana"),

    # ── Murcia ────────────────────────────────────────────────────────────
    ("30016", 88, "Murcia — Pimentón de Murcia DOP, huerta murciana, caldero"),
    ("30030", 85, "Cartagena — Caldero del Mar Menor, pescados"),
    ("30015", 88, "Calasparra — Arroz de Calasparra DOP"),

    # ── Asturias ──────────────────────────────────────────────────────────
    ("33044", 90, "Oviedo — Fabada asturiana, cachopo, quesos DOP"),
    ("33024", 88, "Gijón — Sidra asturiana, fabada, gastronomía marinera"),
    ("33067", 88, "Avilés — Gastronomía asturiana"),
    ("33060", 90, "Llanes — Queso afuega'l pitu, gastronomía marinera asturiana"),
    ("33032", 92, "Cabrales — Queso de Cabrales DOP, el queso más potente de España"),
    ("33009", 90, "Cangas de Narcea — Sidra y quesos asturianos"),

    # ── Cantabria ─────────────────────────────────────────────────────────
    ("39075", 90, "Santander — Cocido montañés, sobaos, quesadas"),
    ("39005", 88, "Santillana del Mar — Sobao pasiego, gastronomía cántabra"),
    ("39019", 88, "San Vicente de la Barquera — Gastronomía marinera"),
    ("39006", 88, "Liébana — Queso Picón Bejes-Tresviso DOP"),

    # ── Castilla-La Mancha ────────────────────────────────────────────────
    ("45168", 88, "Toledo — Mazapán DOP, carcamusas, perdiz estofada"),
    ("16078", 85, "Cuenca — Morteruelo, gastronomía conquense"),
    ("02003", 85, "Albacete — Ajo arriero, gazpacho manchego"),
    ("13034", 85, "Ciudad Real — Pisto manchego, queso manchego DOP"),
    ("19130", 85, "Guadalajara — Migas, gastronomía alcarreña"),
    ("13052", 92, "Tomelloso — Zona vitivinícola La Mancha"),
    ("45113", 85, "Tembleque — Gastronomía manchega"),

    # ── Baleares ──────────────────────────────────────────────────────────
    ("07040", 88, "Palma — Ensaimada DOP, tumbet, gastronomía balear"),
    ("07054", 85, "Ciutadella — Gastronomía menorquina, caldereta"),
    ("07026", 85, "Maó — Queso de Mahón-Menorca DOP"),
    ("07063", 85, "Sa Pobla — Sobrasada DOP, gastronomía payesa"),

    # ── Canarias ──────────────────────────────────────────────────────────
    ("38038", 85, "Santa Cruz de Tenerife — Papas arrugadas, mojo, gofio"),
    ("35016", 85, "Las Palmas — Ropa vieja, papas arrugadas, mojo"),
    ("38023", 85, "Candelaria — Gastronomía canaria"),
    ("35004", 88, "Agaete — Café de Agaete, único café cultivado en Europa"),
]

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true")
    args = parser.parse_args()

    print(f"Generando SQL para {len(GASTRONOMIA)} entradas de gastronomía...")
    lines = ["-- gastronomia_real.sql", f"-- {len(GASTRONOMIA)} entradas", ""]

    for ine, score, motivo in GASTRONOMIA:
        m = motivo.replace("'", "''")[:120]
        lines.append(f"UPDATE puntuaciones SET puntuacion = MAX(puntuacion, {score}) WHERE codigo_ine = '{ine}' AND categoria = 'gastronomia';")
        lines.append(f"INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('{ine}', 'gastronomia', {score});")
        if score >= 85:
            lines.append(f"UPDATE municipios SET why_json = json_insert(COALESCE(why_json,'[]'),'$[#]','🍽️ Gastronomía: {m}') WHERE codigo_ine='{ine}' AND COALESCE(why_json,'[]') NOT LIKE '%🍽️ Gastronomía: {m[:30]}%';")

    lines.append("")
    out = Path(PROJECT_DIR) / "migrations" / "gastronomia_real.sql"
    out.write_text("\n".join(lines))
    print(f"  SQL: {out}")

    if args.apply:
        print("Aplicando a D1...")
        statements = [l for l in lines if l.strip() and not l.startswith("--")]
        for j in range(0, len(statements), 50):
            chunk = "\n".join(statements[j:j+50])
            r = subprocess.run(["npx", "wrangler", "d1", "execute", "ranking-municipios", "--remote", "--command", chunk],
                capture_output=True, text=True, cwd=str(PROJECT_DIR))
            if r.returncode != 0:
                print(f"  ERROR: {r.stderr[:100]}")
        print("  ¡Listo!")

if __name__ == "__main__":
    main()

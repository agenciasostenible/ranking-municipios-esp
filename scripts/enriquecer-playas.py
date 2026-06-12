#!/usr/bin/env python3
"""
enriquecer-playas.py — Banderas Azules + playas más famosas de España
Uso: python3 scripts/enriquecer-playas.py --apply
"""
import json, subprocess, argparse
from pathlib import Path

PROJECT_DIR = Path(__file__).parent.parent

# Scores:
# 95 = destino playero top mundial / icónico
# 88 = destino playero top nacional, muchas Banderas Azules
# 80 = importante destino de playa
# 70 = municipio costero con playas destacadas
# 60 = municipio costero con playas

PLAYAS = [
    # ── Baleares ──────────────────────────────────────────────────────────
    ("07040", 95, "Palma — Playas top Mallorca, Es Trenc, Cala Major"),
    ("07002", 95, "Alcúdia — Playa de Alcúdia, una de las mejores de España"),
    ("07013", 92, "Andratx — Calas espectaculares, Camp de Mar"),
    ("07017", 92, "Artà — Cala Mesquida, Cala Torta"),
    ("07020", 92, "Calvià — Magaluf, Santa Ponça, Peguera — gran destino"),
    ("07025", 92, "Capdepera — Cala Ratjada, Cala Mesquida"),
    ("07032", 90, "Felanitx — Cala d'Or, Calas del sur"),
    ("07038", 92, "Llucmajor — S'Arenal, playas del sur"),
    ("07042", 95, "Pollença — Formentor (una de las mejores playas del mundo), Pollença"),
    ("07048", 92, "Santanyí — Cala Mondragó, Es Trenc"),
    ("07054", 90, "Ciutadella — Playas vírgenes de Menorca"),
    ("07026", 90, "Es Mercadal — Cala Pregonda, Arenal den Castell"),
    ("07063", 90, "Sa Pobla — Port de Pollença"),
    ("07005", 95, "Eivissa — Ses Salines (Ibiza), playa icónica"),
    ("07048", 92, "Formentera — Ses Illetes, playa más bonita de Europa"),
    ("07028", 92, "Formentera — Playa de Levant, Migjorn"),

    # ── Canarias ──────────────────────────────────────────────────────────
    ("35016", 93, "Las Palmas de Gran Canaria — Playa de Las Canteras, icónica urbana"),
    ("35005", 95, "San Bartolomé de Tirajana — Maspalomas, Playa del Inglés, dunas"),
    ("35006", 90, "Mogán — Puerto de Mogán, playas del suroeste GC"),
    ("35017", 88, "Santa Lucía de Tirajana — Playas del sur"),
    ("38001", 90, "Adeje — Playa de Las Américas, Los Cristianos"),
    ("38023", 88, "Candelaria — Playas del este Tenerife"),
    ("38026", 92, "Puerto de la Cruz — Playa Jardín, Lago Martiánez"),
    ("38038", 88, "Santa Cruz de Tenerife — Playa de Las Teresitas (arena del Sáhara)"),
    ("38050", 90, "Arona — Costa del Silencio, Ten-Bel"),
    ("35003", 92, "Agüimes — Pozo Izquierdo, playas del este"),
    ("35013", 90, "Pájara — Morro Jable, Cofete (playa virgen)"),
    ("35023", 92, "La Oliva — Corralejo, playas con dunas Fuerteventura"),
    ("35026", 95, "Puerto del Rosario — Playa de Sotavento (kitesurf mundial)"),
    ("38033", 90, "San Sebastián de La Gomera — Playa de San Sebastián"),

    # ── Costa del Sol (Málaga) ────────────────────────────────────────────
    ("29067", 90, "Málaga — Playas urbanas, paseo marítimo"),
    ("29042", 95, "Marbella — Puerto Banús, playa del Faro, destino lujo"),
    ("29069", 92, "Estepona — Playa del Arroyo Vaquero, playa de la Rada"),
    ("29054", 88, "Nerja — Playa de Burriana, Maro"),
    ("29032", 88, "Benalmádena — Playa Bil-Bil"),
    ("29050", 88, "Fuengirola — Playa de Los Boliches"),
    ("29051", 90, "Manilva — Duquesa, Castillo"),
    ("29052", 88, "Mijas — Cala del Moral"),
    ("29055", 88, "Rincón de la Victoria — Playa de la Cala"),
    ("29058", 90, "Torremolinos — Playa de la Carihuela, los Álamos"),

    # ── Costa de la Luz (Cádiz/Huelva) ───────────────────────────────────
    ("11032", 93, "Sanlúcar de Barrameda — Playa de Bajo de Guía, carreras de caballos"),
    ("11015", 92, "Chiclana de la Frontera — La Barrosa, una de las mejores de España"),
    ("11005", 90, "Barbate — Playa de Zahara de los Atunes"),
    ("11026", 90, "El Puerto de Santa María — Playa de Valdelagrana"),
    ("11022", 90, "La Línea de la Concepción — Playa"),
    ("11029", 95, "Tarifa — Playas de Los Lances, kitesurf, viento"),
    ("11030", 90, "Vejer de la Frontera — El Palmar, Caños de Meca"),
    ("21032", 90, "Punta Umbría — Playas de Huelva"),
    ("21036", 88, "Cartaya — El Rompido"),
    ("21039", 88, "Isla Cristina — Playa de Isla Cristina"),
    ("21040", 85, "Lepe — Playas onubenses"),
    ("21046", 88, "Moguer — Mazagón"),

    # ── Costa Brava (Girona) ──────────────────────────────────────────────
    ("17079", 88, "Girona — acceso Costa Brava"),
    ("17033", 92, "Castelló d'Empúries — Empuriabrava, playa de la Rubina"),
    ("17046", 85, "La Jonquera — acceso Costa Brava norte"),
    ("17057", 93, "Begur — Calas espectaculares, Aiguafreda, Sa Tuna"),
    ("17096", 90, "Palafrugell — Calella, Llafranc, Tamariu — top calas España"),
    ("17105", 92, "Palamós — Playa de La Fosca, cala S'Alguer"),
    ("17107", 88, "Peralada — zona costera norte"),
    ("17131", 90, "Roses — Golf de Roses, Cala Montjoi"),
    ("17139", 88, "Sant Feliu de Guíxols — Playa de Sant Pol"),
    ("17148", 90, "Tossa de Mar — Playa Gran, una de las más bonitas de España"),
    ("17154", 95, "Cadaqués — Playa Es Pianc, Cala Es Llaner, la más pintoresca Costa Brava"),

    # ── Costa Daurada (Tarragona) ─────────────────────────────────────────
    ("43011", 90, "Cambrils — Playa de Cambrils"),
    ("43041", 88, "Cunit — Playa de Cunit"),
    ("43047", 88, "L'Ametlla de Mar — Calas"),
    ("43065", 90, "Salou — Port Aventura, playas"),
    ("43100", 88, "Torredembarra — Playa de Torredembarra"),
    ("43148", 88, "Tarragona — Playa del Miracle, La Arrabassada"),
    ("43151", 92, "Vandellòs i l'Hospitalet de l'Infant — Playas del Riu"),

    # ── Costa Valencia ────────────────────────────────────────────────────
    ("46131", 90, "Gandia — Playa de Gandia, larga y famosa"),
    ("46070", 88, "Cullera — Playa de Marenys de Rafalcaïd"),
    ("46249", 92, "Valencia — Playa de la Malvarrosa, playa de Las Arenas"),
    ("46023", 88, "Benidorm — destino playero icónico Levante y Poniente"),
    ("03024", 95, "Benidorm — Playa de Levante (una de las más concurridas del mundo)"),
    ("03099", 88, "Alicante — Playa del Postiguet"),
    ("03082", 90, "Guardamar del Segura — Playa de Guardamar"),
    ("03089", 88, "La Vila Joiosa — Playa Centro"),
    ("03105", 92, "Santa Pola — Playa de Santa Pola, Gran Playa"),
    ("03110", 90, "Torrevieja — Playa de Los Locos, El Cura"),
    ("03138", 85, "Villena — interior"),
    ("12054", 90, "Oropesa del Mar — Playa de la Concha, Marina d'Or"),
    ("12094", 88, "Peñíscola — Playa Norte, playa Sur"),
    ("12095", 88, "Torreblanca — Playa de Torre la Sal"),

    # ── Costa Verde (Asturias) ────────────────────────────────────────────
    ("33024", 90, "Gijón — Playa de San Lorenzo (la mejor urbana del norte)"),
    ("33060", 88, "Llanes — Playa de Toró, Gulpiyuri, Ballota"),
    ("33044", 85, "Oviedo — acceso playas"),
    ("33067", 88, "Avilés — Playa de Salinas"),
    ("33017", 88, "Cudillero — Playa del Silencio, Aguilar"),
    ("33040", 90, "Navia — Playa de Navia"),
    ("33050", 88, "Ribadesella — Playa de Santa Marina"),

    # ── Cantabria ─────────────────────────────────────────────────────────
    ("39075", 90, "Santander — El Sardinero, Las Magdalenas"),
    ("39019", 88, "San Vicente de la Barquera — Playa de Merón"),
    ("39012", 88, "Castro-Urdiales — Playa de Brazomar"),
    ("39037", 90, "Laredo — Playa de La Salvé, una de las mejores del norte"),
    ("39044", 88, "Noja — Playas de Ris y Trengandín"),
    ("39052", 88, "Santoña — Playas de Berria"),
    ("39058", 88, "Suances — Playa de La Concha"),

    # ── País Vasco ────────────────────────────────────────────────────────
    ("20069", 90, "San Sebastián — La Concha (la playa urbana más bonita del mundo)"),
    ("20065", 88, "Zarautz — Playa larga de surf"),
    ("20046", 85, "Getaria — Playa de Getaria"),
    ("48052", 90, "Lekeitio — Playa de Lekeitio, Isla de San Nicolás"),
    ("48064", 88, "Mundaka — Mundaka (ola de surf famosa mundialmente)"),
    ("48078", 88, "Ondarroa — Playa de Saturrarán"),
    ("20030", 88, "Hondarribia — Playa de Hondarribia"),

    # ── Galicia ───────────────────────────────────────────────────────────
    ("15030", 88, "A Coruña — Playa de Riazor, Orzan"),
    ("15040", 95, "Carnota — Playa de Carnota (la más larga de Galicia)"),
    ("15050", 90, "Fisterra — Playa de Mar de Fora, fin del mundo"),
    ("15006", 88, "A Baña — zona interior"),
    ("15060", 90, "Muros — Playa de Area Longa"),
    ("36001", 88, "A Guarda — Playa de O Muíño"),
    ("36046", 90, "Sanxenxo — Playa de Silgar (top España)"),
    ("36010", 90, "Bueu — Playa de Agrelo, Lapamán"),
    ("27060", 90, "Viveiro — Playa de Covas, Area Maior"),
    ("27026", 88, "Foz — Playa de Llas, playa de Altar"),

    # ── Murcia ────────────────────────────────────────────────────────────
    ("30016", 88, "Murcia — acceso Mar Menor"),
    ("30006", 92, "Águilas — Playas vírgenes, Cala Cerrada"),
    ("30008", 92, "Cartagena — Playa de Calblanque, parque natural"),
    ("30017", 88, "La Unión — Mar Menor"),
    ("30030", 90, "Mazarrón — Playa de Bolnuevo (piedras de yeso), Puerto de Mazarrón"),
    ("30032", 90, "San Javier — Los Alcázares, Mar Menor"),
    ("30034", 88, "San Pedro del Pinatar — Playas del Mar Menor, lodazales"),

    # ── Almería ───────────────────────────────────────────────────────────
    ("04013", 88, "Almería — Playa de El Palmeral"),
    ("04049", 95, "Níjar — Cabo de Gata, playas vírgenes más bonitas de España"),
    ("04058", 90, "Roquetas de Mar — Playa de La Romanilla"),
    ("04082", 92, "Vera — Playa de Vera, turismo nudista"),
    ("04086", 90, "Adra — Playa de Poniente"),
    ("04901", 88, "El Ejido — Playa de Almerimar"),
    ("04902", 90, "Mojácar — Playa de Mojácar, Costa de Almería"),
]

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true")
    args = parser.parse_args()

    print(f"Generando SQL para {len(PLAYAS)} municipios costeros...")
    lines = ["-- playas_real.sql", f"-- {len(PLAYAS)} entradas", ""]

    for ine, score, motivo in PLAYAS:
        m = motivo.replace("'", "''")[:120]
        lines.append(f"UPDATE puntuaciones SET puntuacion = MAX(puntuacion, {score}) WHERE codigo_ine = '{ine}' AND categoria = 'playas';")
        lines.append(f"INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('{ine}', 'playas', {score});")
        if score >= 85:
            lines.append(f"UPDATE municipios SET why_json = json_insert(COALESCE(why_json,'[]'),'$[#]','🏖️ Playas: {m}') WHERE codigo_ine='{ine}' AND COALESCE(why_json,'[]') NOT LIKE '%🏖️ Playas:%';")

    lines.append("")
    out = Path(PROJECT_DIR) / "migrations" / "playas_real.sql"
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

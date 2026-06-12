#!/usr/bin/env python3
"""
enriquecer-vinos.py — DOPs vinícolas oficiales de España
Uso: python3 scripts/enriquecer-vinos.py --apply
"""
import json, subprocess, argparse
from pathlib import Path

PROJECT_DIR = Path(__file__).parent.parent
OUT_PATH = PROJECT_DIR / "migrations" / "vinos_dop.sql"

# Scores: 95=DOCa/DOQ mundial, 88=DO premium, 80=DO reconocida, 70=DO menor/IGP

VINOS = [
    # ── DOCa Rioja (la más famosa de España) ──────────────────────────────
    ("26089", 95, "DOCa Rioja — Logroño"),
    ("26003", 92, "DOCa Rioja — Alfaro"),
    ("26008", 92, "DOCa Rioja — Arnedo"),
    ("26016", 92, "DOCa Rioja — Autol"),
    ("26019", 92, "DOCa Rioja — Ausejo"),
    ("26031", 92, "DOCa Rioja — Calahorra"),
    ("26038", 92, "DOCa Rioja — Cervera del Río Alhama"),
    ("26043", 92, "DOCa Rioja — Clavijo"),
    ("26052", 92, "DOCa Rioja — Elciego"),
    ("26055", 92, "DOCa Rioja — Entrena"),
    ("26063", 92, "DOCa Rioja — Fuenmayor"),
    ("26064", 92, "DOCa Rioja — Haro"),
    ("26067", 92, "DOCa Rioja — Labastida"),
    ("26068", 92, "DOCa Rioja — Laguardia"),
    ("26069", 92, "DOCa Rioja — Laguna de Cameros"),
    ("26072", 92, "DOCa Rioja — Lardero"),
    ("26075", 92, "DOCa Rioja — Logroño"),
    ("26079", 92, "DOCa Rioja — Nájera"),
    ("26081", 92, "DOCa Rioja — Navarrete"),
    ("26085", 92, "DOCa Rioja — Ollauri"),
    ("26086", 92, "DOCa Rioja — Oyón-Oion"),
    ("26092", 92, "DOCa Rioja — San Asensio"),
    ("26095", 92, "DOCa Rioja — San Vicente de la Sonsierra"),
    ("26099", 92, "DOCa Rioja — Sajazarra"),
    ("26101", 92, "DOCa Rioja — Santo Domingo de la Calzada"),
    ("26111", 92, "DOCa Rioja — Villabuena de Álava"),
    ("26113", 92, "DOCa Rioja — Pradejón"),
    ("26116", 92, "DOCa Rioja — Quel"),
    ("26119", 92, "DOCa Rioja — Ribafrecha"),
    # Rioja Alavesa
    ("01001", 92, "DOCa Rioja Alavesa — Laguardia"),
    ("01006", 92, "DOCa Rioja Alavesa — Baños de Ebro"),
    ("01016", 92, "DOCa Rioja Alavesa — Elciego"),
    ("01018", 92, "DOCa Rioja Alavesa — Elvillar"),
    ("01022", 92, "DOCa Rioja Alavesa — Labastida"),
    ("01026", 92, "DOCa Rioja Alavesa — Lanciego"),
    ("01028", 92, "DOCa Rioja Alavesa — Lapuebla de Labarca"),
    ("01031", 92, "DOCa Rioja Alavesa — Moreda de Álava"),
    ("01040", 92, "DOCa Rioja Alavesa — Oyón-Oion"),
    ("01048", 92, "DOCa Rioja Alavesa — Samaniego"),
    ("01051", 92, "DOCa Rioja Alavesa — Villabuena de Álava"),
    ("01059", 92, "DOCa Rioja Alavesa — Vitoria-Gasteiz (parcial)"),
    # Rioja Navarra
    ("31066", 88, "DOCa Rioja (Navarra) — Cascante"),
    ("31086", 88, "DOCa Rioja (Navarra) — Corella"),
    ("31232", 88, "DOCa Rioja (Navarra) — Tudela"),

    # ── DOQ Priorat (uno de los mejores vinos del mundo) ──────────────────
    ("43024", 95, "DOQ Priorat — Cornudella de Montsant"),
    ("43031", 95, "DOQ Priorat — Falset"),
    ("43044", 95, "DOQ Priorat — Gratallops"),
    ("43049", 95, "DOQ Priorat — La Bisbal de Falset"),
    ("43051", 95, "DOQ Priorat — La Figuera"),
    ("43053", 95, "DOQ Priorat — La Vilella Alta"),
    ("43054", 95, "DOQ Priorat — La Vilella Baixa"),
    ("43057", 95, "DOQ Priorat — Lloa"),
    ("43060", 95, "DOQ Priorat — Margalef"),
    ("43070", 95, "DOQ Priorat — Pradell de la Teixeta"),
    ("43074", 95, "DOQ Priorat — Ulldemolins"),
    ("43083", 95, "DOQ Priorat — Poboleda"),
    ("43090", 95, "DOQ Priorat — Porrera"),

    # ── DO Ribera del Duero ───────────────────────────────────────────────
    ("09059", 93, "DO Ribera del Duero — Burgos"),
    ("09007", 92, "DO Ribera del Duero — Aranda de Duero"),
    ("09010", 92, "DO Ribera del Duero — Anguix"),
    ("09013", 92, "DO Ribera del Duero — Gumiel de Izán"),
    ("09017", 92, "DO Ribera del Duero — Gumiel del Mercado"),
    ("09023", 92, "DO Ribera del Duero — La Horra"),
    ("09025", 92, "DO Ribera del Duero — Nava de Roa"),
    ("09027", 92, "DO Ribera del Duero — Pedrosa de Duero"),
    ("09029", 92, "DO Ribera del Duero — Peñaranda de Duero"),
    ("09033", 92, "DO Ribera del Duero — Quemada"),
    ("09036", 92, "DO Ribera del Duero — Roa"),
    ("09040", 92, "DO Ribera del Duero — Santa Cruz de la Salceda"),
    ("09043", 92, "DO Ribera del Duero — Sotillo de la Ribera"),
    ("09047", 92, "DO Ribera del Duero — Vadocondes"),
    ("40181", 88, "DO Ribera del Duero — Segovia"),
    ("42173", 88, "DO Ribera del Duero — Soria"),
    ("47186", 88, "DO Ribera del Duero — Valladolid"),
    ("47004", 92, "DO Ribera del Duero — Valbuena de Duero"),
    ("47007", 92, "DO Ribera del Duero — Pesquera de Duero"),

    # ── DO Rías Baixas (Albariño) ─────────────────────────────────────────
    ("36057", 93, "DO Rías Baixas — Pontevedra"),
    ("36001", 90, "DO Rías Baixas — A Guarda"),
    ("36003", 90, "DO Rías Baixas — Arbo"),
    ("36005", 90, "DO Rías Baixas — Baiona"),
    ("36012", 90, "DO Rías Baixas — Cambados"),
    ("36018", 90, "DO Rías Baixas — Catoira"),
    ("36025", 90, "DO Rías Baixas — Meaño"),
    ("36026", 90, "DO Rías Baixas — Meis"),
    ("36028", 90, "DO Rías Baixas — Moaña"),
    ("36029", 90, "DO Rías Baixas — Mos"),
    ("36034", 90, "DO Rías Baixas — O Grove"),
    ("36038", 90, "DO Rías Baixas — Pontevedra"),
    ("36041", 90, "DO Rías Baixas — Redondela"),
    ("36043", 90, "DO Rías Baixas — Ribadumia"),
    ("36044", 90, "DO Rías Baixas — Salceda de Caselas"),
    ("36046", 90, "DO Rías Baixas — Sanxenxo"),
    ("36047", 90, "DO Rías Baixas — Silleda"),
    ("36049", 90, "DO Rías Baixas — Tomiño"),
    ("36050", 90, "DO Rías Baixas — Tui"),
    ("36051", 90, "DO Rías Baixas — Valga"),
    ("36052", 90, "DO Rías Baixas — Vilaboa"),
    ("36054", 90, "DO Rías Baixas — Vilagarcía de Arousa"),

    # ── DO Jerez / Manzanilla (vinos únicos en el mundo) ─────────────────
    ("11020", 95, "DO Jerez-Xérès-Sherry — Jerez de la Frontera"),
    ("11026", 92, "DO Jerez — El Puerto de Santa María"),
    ("11032", 92, "DO Jerez — Sanlúcar de Barrameda"),
    ("11004", 85, "DO Jerez (área) — Algeciras"),
    ("11011", 85, "DO Jerez (área) — Cádiz"),

    # ── DO Penedès ────────────────────────────────────────────────────────
    ("08019", 90, "DO Penedès — Barcelona"),
    ("08101", 90, "DO Penedès — Vilafranca del Penedès"),
    ("08196", 90, "DO Penedès — Sant Sadurní d'Anoia (Cava)"),
    ("08221", 88, "DO Penedès — Sitges"),
    ("08065", 88, "DO Penedès — Castellvi de la Marca"),
    ("08076", 88, "DO Penedès — El Pla del Penedès"),
    ("08107", 88, "DO Penedès — Gelida"),
    ("08130", 88, "DO Penedès — Les Cabanyes"),
    ("08146", 88, "DO Penedès — Mediona"),
    ("08163", 88, "DO Penedès — Olèrdola"),
    ("08173", 88, "DO Penedès — Pacs del Penedès"),
    ("08220", 88, "DO Penedès — Subirats"),

    # ── DO Cava (Sant Sadurní d'Anoia y zona) ────────────────────────────
    ("08196", 93, "DO Cava — Sant Sadurní d'Anoia (capital del cava)"),

    # ── DO Rueda ──────────────────────────────────────────────────────────
    ("47186", 88, "DO Rueda — Valladolid"),
    ("47174", 90, "DO Rueda — Rueda"),
    ("47161", 88, "DO Rueda — Medina del Campo"),
    ("40057", 88, "DO Rueda — Nava de la Asunción"),
    ("40086", 88, "DO Rueda — Olmedo"),
    ("05119", 85, "DO Rueda (Ávila) — Madrigal de las Altas Torres"),

    # ── DO Toro ───────────────────────────────────────────────────────────
    ("49275", 88, "DO Toro — Zamora"),
    ("49216", 92, "DO Toro — Toro"),
    ("49017", 88, "DO Toro — Benafarces"),
    ("49041", 88, "DO Toro — Fresno de la Ribera"),
    ("49057", 88, "DO Toro — Morales de Toro"),
    ("49079", 88, "DO Toro — Peleagonzalo"),
    ("49101", 88, "DO Toro — San Miguel de la Ribera"),
    ("49116", 88, "DO Toro — Sanzoles"),
    ("49120", 88, "DO Toro — Valdefinjas"),
    ("47080", 88, "DO Toro (Valladolid) — Pedrosa del Rey"),

    # ── DO Bierzo ─────────────────────────────────────────────────────────
    ("24089", 88, "DO Bierzo — León"),
    ("24006", 90, "DO Bierzo — Arganza"),
    ("24013", 90, "DO Bierzo — Cacabelos"),
    ("24017", 90, "DO Bierzo — Camponaraya"),
    ("24026", 90, "DO Bierzo — Carracedelo"),
    ("24044", 90, "DO Bierzo — Corullón"),
    ("24056", 92, "DO Bierzo — Villafranca del Bierzo"),
    ("24065", 88, "DO Bierzo — Ponferrada"),
    ("24073", 88, "DO Bierzo — Priaranza del Bierzo"),

    # ── DO Somontano ──────────────────────────────────────────────────────
    ("22125", 90, "DO Somontano — Huesca"),
    ("22032", 92, "DO Somontano — Barbastro"),
    ("22055", 88, "DO Somontano — Bierge"),
    ("22072", 88, "DO Somontano — Colungo"),
    ("22093", 88, "DO Somontano — El Grado"),
    ("22099", 88, "DO Somontano — Estadilla"),
    ("22105", 88, "DO Somontano — Hoz y Costean"),
    ("22116", 88, "DO Somontano — Lascellas-Ponzano"),
    ("22120", 88, "DO Somontano — Naval"),
    ("22143", 88, "DO Somontano — Peralta de Alcofea"),
    ("22152", 88, "DO Somontano — Pozán de Vero"),
    ("22163", 88, "DO Somontano — Salas Altas"),
    ("22164", 88, "DO Somontano — Salas Bajas"),

    # ── DO Valdepeñas ─────────────────────────────────────────────────────
    ("13079", 88, "DO Valdepeñas — Valdepeñas"),
    ("13004", 85, "DO Valdepeñas — Alcubillas"),
    ("13023", 85, "DO Valdepeñas — Cózar"),
    ("13030", 85, "DO Valdepeñas — Granátula de Calatrava"),
    ("13041", 85, "DO Valdepeñas — Moral de Calatrava"),
    ("13054", 85, "DO Valdepeñas — Santa Cruz de Mudela"),
    ("13058", 85, "DO Valdepeñas — Torre de Juan Abad"),
    ("13060", 85, "DO Valdepeñas — Torrenueva"),
    ("13070", 85, "DO Valdepeñas — Villanueva de los Infantes"),
    ("13073", 85, "DO Valdepeñas — Viso del Marqués"),

    # ── DO Txakoli (País Vasco) ───────────────────────────────────────────
    ("48001", 90, "DO Txakoli de Álava — Araba"),
    ("48020", 88, "DO Txakoli — Bilbao"),
    ("20046", 90, "DO Txakoli de Getaria — Getaria"),
    ("20050", 90, "DO Txakoli de Getaria — Guetaria"),
    ("20069", 88, "DO Txakoli — San Sebastián"),

    # ── DO Arlanza / Cigales / Ribera del Arlanza ─────────────────────────
    ("09059", 88, "DO Arlanza — Burgos"),
    ("34120", 85, "DO Cigales — Palencia"),
    ("47013", 88, "DO Cigales — Cigales"),
    ("47014", 88, "DO Cigales — Corcos"),
    ("47019", 88, "DO Cigales — Cubillas de Santa Marta"),
    ("47047", 88, "DO Cigales — Fuensaldaña"),
    ("47054", 88, "DO Cigales — Mucientes"),
    ("47064", 88, "DO Cigales — Quintanilla de Trigueros"),
    ("47070", 88, "DO Cigales — San Martín de Valvení"),
    ("47073", 88, "DO Cigales — Santovenia de Pisuerga"),
    ("47098", 88, "DO Cigales — Valoria la Buena"),

    # ── DO Monterrei / Ribeiro / Valdeorras (Galicia) ─────────────────────
    ("32054", 88, "DO Monterrei — Xinzo de Limia"),
    ("32017", 90, "DO Monterrei — Castrelo do Val"),
    ("32020", 90, "DO Monterrei — Monterrei"),
    ("32042", 90, "DO Monterrei — Oímbra"),
    ("32053", 90, "DO Monterrei — Verín"),
    ("32055", 90, "DO Monterrei — Vilardevós"),
    ("32006", 88, "DO Ribeiro — Arnoia"),
    ("32009", 88, "DO Ribeiro — Beade"),
    ("32010", 88, "DO Ribeiro — Beariz"),
    ("32014", 88, "DO Ribeiro — Carballeda de Avia"),
    ("32015", 88, "DO Ribeiro — Carballiño"),
    ("32022", 88, "DO Ribeiro — Cenlle"),
    ("32025", 88, "DO Ribeiro — Cortegada"),
    ("32038", 88, "DO Ribeiro — Leiro"),
    ("32040", 88, "DO Ribeiro — Melón"),
    ("32044", 90, "DO Ribeiro — Ribadavia"),
    ("32052", 88, "DO Valdeorras — Vilamartín de Valdeorras"),
    ("32001", 88, "DO Valdeorras — A Rúa"),
    ("32003", 90, "DO Valdeorras — Barco de Valdeorras"),
    ("32005", 88, "DO Valdeorras — A Veiga"),
    ("32033", 88, "DO Valdeorras — Larouco"),

    # ── DO Navarra ────────────────────────────────────────────────────────
    ("31201", 88, "DO Navarra — Pamplona"),
    ("31232", 88, "DO Navarra — Tudela"),
    ("31066", 88, "DO Navarra — Cascante"),
    ("31086", 88, "DO Navarra — Corella"),
    ("31074", 88, "DO Navarra — Cintruénigo"),
    ("31134", 85, "DO Navarra — Fitero"),
    ("31173", 85, "DO Navarra — Murchante"),

    # ── DO Empordà (Girona) ───────────────────────────────────────────────
    ("17079", 88, "DO Empordà — Girona"),
    ("17033", 88, "DO Empordà — Castelló d'Empúries"),
    ("17131", 88, "DO Empordà — Roses"),
    ("17163", 85, "DO Empordà — Vilafant"),
    ("17046", 85, "DO Empordà — La Jonquera"),

    # ── DO Cariñena / Campo de Borja / Calatayud (Aragón) ─────────────────
    ("50297", 88, "DO Cariñena/Calatayud — Zaragoza"),
    ("50069", 90, "DO Cariñena — Cariñena"),
    ("50016", 88, "DO Cariñena — Aguarón"),
    ("50023", 88, "DO Cariñena — Alfamén"),
    ("50038", 88, "DO Cariñena — Almonacid de la Sierra"),
    ("50057", 88, "DO Cariñena — Bardallur"),
    ("50074", 88, "DO Cariñena — Cosuenda"),
    ("50086", 88, "DO Cariñena — El Frasno"),
    ("50096", 88, "DO Cariñena — Encinacorba"),
    ("50113", 88, "DO Cariñena — Longares"),
    ("50163", 88, "DO Cariñena — Muel"),
    ("50164", 88, "DO Cariñena — Munébrega"),
    ("50195", 88, "DO Cariñena — Paniza"),
    ("50225", 88, "DO Cariñena — Retascón"),
    ("50249", 88, "DO Cariñena — Tosos"),
    ("50272", 88, "DO Cariñena — Villanueva de Huerva"),
    ("50033", 88, "DO Campo de Borja — Ainzón"),
    ("50044", 88, "DO Campo de Borja — Bisimbre"),
    ("50058", 88, "DO Campo de Borja — Borja"),
    ("50083", 88, "DO Campo de Borja — Bulbuente"),
    ("50084", 88, "DO Campo de Borja — Bureta"),
    ("50093", 88, "DO Campo de Borja — El Buste"),
    ("50160", 88, "DO Campo de Borja — Maleján"),
    ("50168", 88, "DO Campo de Borja — Magallón"),
    ("50171", 88, "DO Campo de Borja — Murillo de la Mata"),
    ("50208", 88, "DO Campo de Borja — Pozuelo de Aragón"),
    ("50222", 88, "DO Campo de Borja — Pozuelo de Aragón"),

    # ── DO Jumilla / Yecla / Alicante / Utiel-Requena ─────────────────────
    ("30027", 88, "DO Jumilla — Lorca (parcial)"),
    ("30024", 92, "DO Jumilla — Jumilla"),
    ("30040", 88, "DO Yecla — Yecla"),
    ("03099", 88, "DO Alicante — Alicante"),
    ("03014", 88, "DO Alicante — Alcoy"),
    ("46250", 88, "DO Utiel-Requena — Valencia"),
    ("46215", 92, "DO Utiel-Requena — Requena"),
    ("46243", 90, "DO Utiel-Requena — Utiel"),
    ("46040", 88, "DO Utiel-Requena — Camporrobles"),
    ("46071", 88, "DO Utiel-Requena — Caudete de las Fuentes"),
    ("46116", 88, "DO Utiel-Requena — Fuenterrobles"),
    ("46160", 88, "DO Utiel-Requena — Iniesta"),
    ("46190", 88, "DO Utiel-Requena — Mira"),
    ("46204", 88, "DO Utiel-Requena — Pedralba"),
    ("46259", 88, "DO Utiel-Requena — Venta del Moro"),
    ("46264", 88, "DO Utiel-Requena — Villargordo del Cabriel"),

    # ── DO Ribera del Guadiana (Extremadura) ──────────────────────────────
    ("06015", 85, "DO Ribera del Guadiana — Badajoz"),
    ("06083", 85, "DO Ribera del Guadiana — Mérida"),
    ("06004", 88, "DO Ribera del Guadiana — Almendralejo"),
    ("06016", 85, "DO Ribera del Guadiana — Barcarrota"),
    ("06024", 85, "DO Ribera del Guadiana — Castuera"),
    ("06028", 85, "DO Ribera del Guadiana — Don Benito"),
    ("06033", 85, "DO Ribera del Guadiana — Fuente del Maestre"),
    ("06041", 85, "DO Ribera del Guadiana — Guareña"),
    ("06044", 85, "DO Ribera del Guadiana — Jerez de los Caballeros"),
    ("06064", 85, "DO Ribera del Guadiana — Montemolín"),
    ("06075", 85, "DO Ribera del Guadiana — Puebla de Sancho Pérez"),
    ("06081", 85, "DO Ribera del Guadiana — Santa Marta"),
    ("06089", 85, "DO Ribera del Guadiana — Villafranca de los Barros"),
    ("06095", 85, "DO Ribera del Guadiana — Zafra"),

    # ── DO Condado de Huelva ──────────────────────────────────────────────
    ("21041", 85, "DO Condado de Huelva — Huelva"),
    ("21006", 88, "DO Condado de Huelva — Almonte"),
    ("21007", 88, "DO Condado de Huelva — Bonares"),
    ("21010", 88, "DO Condado de Huelva — Bollullos Par del Condado"),
    ("21011", 88, "DO Condado de Huelva — Chucena"),
    ("21013", 88, "DO Condado de Huelva — Hinojos"),
    ("21016", 88, "DO Condado de Huelva — La Palma del Condado"),
    ("21020", 88, "DO Condado de Huelva — Lucena del Puerto"),
    ("21024", 88, "DO Condado de Huelva — Manzanilla"),
    ("21031", 88, "DO Condado de Huelva — Rociana del Condado"),
    ("21033", 88, "DO Condado de Huelva — San Juan del Puerto"),
    ("21037", 88, "DO Condado de Huelva — Villalba del Alcor"),
    ("21038", 88, "DO Condado de Huelva — Villarrasa"),

    # ── DO Málaga / Sierras de Málaga ─────────────────────────────────────
    ("29067", 85, "DO Málaga/Sierras de Málaga — Málaga"),
    ("29023", 88, "DO Málaga — Axarquía"),
    ("29053", 88, "DO Málaga — Ronda (vinos de Ronda)"),
    ("29065", 85, "DO Málaga — Vélez-Málaga"),
]

def d1_query(sql):
    result = subprocess.run(
        ["npx", "wrangler", "d1", "execute", "ranking-municipios",
         "--remote", "--command", sql, "--json"],
        capture_output=True, text=True, cwd=str(PROJECT_DIR)
    )
    if result.returncode != 0:
        raise RuntimeError(result.stderr[:200])
    return json.loads(result.stdout)[0].get("results", [])

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true")
    args = parser.parse_args()

    print(f"Generando SQL para {len(VINOS)} entradas de vinos...")
    lines = ["-- vinos_dop.sql", f"-- {len(VINOS)} municipios", ""]

    for ine, score, motivo in VINOS:
        m = motivo.replace("'", "''")
        lines.append(f"UPDATE puntuaciones SET puntuacion = MAX(puntuacion, {score}) WHERE codigo_ine = '{ine}' AND categoria = 'vinos';")
        lines.append(f"INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) VALUES ('{ine}', 'vinos', {score});")
        if score >= 85:
            lines.append(f"UPDATE municipios SET why_json = json_insert(COALESCE(why_json,'[]'),'$[#]','🍷 Vinos: {m}') WHERE codigo_ine='{ine}' AND COALESCE(why_json,'[]') NOT LIKE '%🍷 Vinos:%';")

    lines.append("")
    OUT_PATH.write_text("\n".join(lines))
    print(f"  SQL: {OUT_PATH} ({len(lines)} líneas)")

    if args.apply:
        print("Aplicando a D1...")
        statements = [l for l in lines if l.strip() and not l.startswith("--")]
        for j in range(0, len(statements), 50):
            chunk = "\n".join(statements[j:j+50])
            r = subprocess.run(["npx", "wrangler", "d1", "execute", "ranking-municipios", "--remote", "--command", chunk],
                capture_output=True, text=True, cwd=str(PROJECT_DIR))
            if r.returncode != 0:
                print(f"  ERROR chunk {j//50}: {r.stderr[:100]}")
        print("  ¡Listo!")

if __name__ == "__main__":
    main()

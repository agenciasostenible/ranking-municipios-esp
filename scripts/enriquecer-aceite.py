#!/usr/bin/env python3
"""
enriquecer-aceite.py
====================
Enriquece scores de aceite de oliva basándose en:
  1. Denominaciones de Origen Protegidas (DOP) oficiales — municipios curados
  2. Wikipedia — detecta menciones de aceite, almazara, olivar, DOP

Scores:
  95 — DOP top mundial (Sierra Mágina, Baena, Priego, Les Garrigues, Siurana)
  85 — DOP reconocida nacional
  70 — DOP menor / IGP aceite
  55 — Gran productor olivarero sin DOP propia (Wikipedia confirma)
  35 — Municipio con olivar mencionado en Wikipedia
   0 — Sin datos

Uso:
  python3 scripts/enriquecer-aceite.py           # genera SQL
  python3 scripts/enriquecer-aceite.py --apply   # aplica directo

Checkpoint: /tmp/aceite_checkpoint.json
Salida:     migrations/aceite_dop.sql
"""

import json, time, re, os, sys, subprocess, unicodedata, argparse
import urllib.request, urllib.parse
from pathlib import Path

PROJECT_DIR = Path(__file__).parent.parent
OUT_PATH    = PROJECT_DIR / "migrations" / "aceite_dop.sql"
CHECKPOINT  = "/tmp/aceite_checkpoint.json"
HEADERS     = {"User-Agent": "RankingSpain/1.0 (jlalvarez600@gmail.com)"}

# ── Municipios por DOP ────────────────────────────────────────────────────────
# Formato: (codigo_ine, score, descripcion)

DOP_MUNICIPIOS = [

    # ═══════════════════════════════════════════════
    # JAÉN — Capital mundial del aceite de oliva
    # ═══════════════════════════════════════════════

    # DOP Sierra Mágina — una de las mejores del mundo
    ("23001", 95, "DOP Sierra Mágina — Albanchez de Mágina"),
    ("23011", 95, "DOP Sierra Mágina — Bedmar y Garcíez"),
    ("23013", 95, "DOP Sierra Mágina — Bélmez de la Moraleda"),
    ("23019", 95, "DOP Sierra Mágina — Cabra del Santo Cristo"),
    ("23020", 95, "DOP Sierra Mágina — Cambil"),
    ("23021", 95, "DOP Sierra Mágina — Campillo de Arenas"),
    ("23024", 95, "DOP Sierra Mágina — Cárcheles"),
    ("23037", 95, "DOP Sierra Mágina — Huelma"),
    ("23043", 95, "DOP Sierra Mágina — Jimena"),
    ("23046", 95, "DOP Sierra Mágina — Jódar"),
    ("23051", 95, "DOP Sierra Mágina — Larva"),
    ("23055", 95, "DOP Sierra Mágina — Mancha Real"),
    ("23060", 95, "DOP Sierra Mágina — Noalejo"),
    ("23066", 95, "DOP Sierra Mágina — Pegalajar"),
    ("23079", 95, "DOP Sierra Mágina — Torres"),
    ("23012", 95, "DOP Sierra Mágina — Beas de Segura (parcial)"),

    # DOP Sierra de Cazorla
    ("23022", 90, "DOP Sierra de Cazorla — Cazorla"),
    ("23025", 90, "DOP Sierra de Cazorla — Chilluévar"),
    ("23045", 90, "DOP Sierra de Cazorla — Iznatoraf"),
    ("23048", 90, "DOP Sierra de Cazorla — La Iruela"),
    ("23049", 90, "DOP Sierra de Cazorla — Hinojares"),
    ("23058", 90, "DOP Sierra de Cazorla — Peal de Becerro"),
    ("23059", 90, "DOP Sierra de Cazorla — Pozo Alcón"),
    ("23062", 90, "DOP Sierra de Cazorla — Quesada"),
    ("23075", 90, "DOP Sierra de Cazorla — Santo Tomé"),
    ("23076", 90, "DOP Sierra de Cazorla — Segura de la Sierra"),
    ("23078", 90, "DOP Sierra de Cazorla — Sorihuela del Guadalimar"),

    # DOP Sierra de Segura
    ("23004", 90, "DOP Sierra de Segura — Arroyo del Ojanco"),
    ("23010", 90, "DOP Sierra de Segura — Benatae"),
    ("23015", 90, "DOP Sierra de Segura — Bienservida"),
    ("23029", 90, "DOP Sierra de Segura — Cotillas"),
    ("23032", 90, "DOP Sierra de Segura — Génave"),
    ("23033", 90, "DOP Sierra de Segura — Hornos"),
    ("23042", 90, "DOP Sierra de Segura — Iznatoraf"),
    ("23052", 90, "DOP Sierra de Segura — La Puerta de Segura"),
    ("23053", 90, "DOP Sierra de Segura — Orcera"),
    ("23054", 90, "DOP Sierra de Segura — Puente de Génave"),
    ("23061", 90, "DOP Sierra de Segura — Pontones"),
    ("23069", 90, "DOP Sierra de Segura — Santiago de la Espada"),
    ("23070", 90, "DOP Sierra de Segura — Segura de la Sierra"),
    ("23072", 90, "DOP Sierra de Segura — Siles"),
    ("23083", 90, "DOP Sierra de Segura — Torres de Albanchez"),
    ("23085", 90, "DOP Sierra de Segura — Villarrodrigo"),

    # DOP Jaén Sierra Sur
    ("23002", 85, "DOP Jaén Sierra Sur — Alcalá la Real"),
    ("23005", 85, "DOP Jaén Sierra Sur — Alcaudete"),
    ("23016", 85, "DOP Jaén Sierra Sur — Bobadilla"),
    ("23027", 85, "DOP Jaén Sierra Sur — Castillo de Locubín"),
    ("23039", 85, "DOP Jaén Sierra Sur — Fuensanta de Martos"),
    ("23040", 85, "DOP Jaén Sierra Sur — Fuerte del Rey"),
    ("23044", 85, "DOP Jaén Sierra Sur — Jamilena"),
    ("23047", 85, "DOP Jaén Sierra Sur — La Guardia de Jaén"),
    ("23056", 85, "DOP Jaén Sierra Sur — Martos"),
    ("23063", 85, "DOP Jaén Sierra Sur — Santiago de Calatrava"),
    ("23064", 85, "DOP Jaén Sierra Sur — Valdepeñas de Jaén"),
    ("23067", 85, "DOP Jaén Sierra Sur — Porcuna"),
    ("23071", 85, "DOP Jaén Sierra Sur — Torredonjimeno"),
    ("23073", 85, "DOP Jaén Sierra Sur — Torre del Campo"),
    ("23074", 85, "DOP Jaén Sierra Sur — Torredelcampo"),

    # Jaén ciudad y grandes productores
    ("23050", 90, "Jaén — Gran capital olivarera, mayor producción del mundo"),
    ("23003", 85, "DOP Aceite de Jaén — Andújar"),
    ("23009", 85, "DOP Aceite de Jaén — Baeza"),
    ("23065", 85, "DOP Aceite de Jaén — Úbeda"),
    ("23030", 85, "DOP Aceite de Jaén — Linares"),
    ("23006", 85, "DOP Aceite de Jaén — Alcaudete"),

    # ═══════════════════════════════════════════════
    # CÓRDOBA
    # ═══════════════════════════════════════════════

    # DOP Baena — aceite de oliva virgen extra premium
    ("14007", 95, "DOP Baena — Baena"),
    ("14008", 95, "DOP Baena — Cabra"),
    ("14011", 95, "DOP Baena — Castro del Río"),
    ("14022", 95, "DOP Baena — Doña Mencía"),
    ("14027", 95, "DOP Baena — Luque"),
    ("14030", 95, "DOP Baena — Nueva Carteya"),
    ("14032", 95, "DOP Baena — Zuheros"),

    # DOP Priego de Córdoba — múltiples premios mundiales
    ("14051", 95, "DOP Priego de Córdoba — Priego de Córdoba"),
    ("14004", 95, "DOP Priego de Córdoba — Almedinilla"),
    ("14037", 95, "DOP Priego de Córdoba — Carcabuey"),
    ("14038", 95, "DOP Priego de Córdoba — Fuente Tójar"),
    ("14040", 95, "DOP Priego de Córdoba — Rute"),

    # DOP Montoro-Adamuz
    ("14002", 85, "DOP Montoro-Adamuz — Adamuz"),
    ("14043", 85, "DOP Montoro-Adamuz — Montoro"),
    ("14049", 85, "DOP Montoro-Adamuz — Pedro Abad"),
    ("14014", 85, "DOP Montoro-Adamuz — Cardeña"),
    ("14010", 85, "DOP Montoro-Adamuz — Bujalance"),
    ("14009", 85, "DOP Montoro-Adamuz — Espejo"),

    # DOP Lucena
    ("14039", 85, "DOP Aceite de Lucena — Lucena"),
    ("14018", 85, "DOP Aceite de Lucena — Benamejí"),
    ("14017", 85, "DOP Aceite de Lucena — Aguilar de la Frontera"),

    # ═══════════════════════════════════════════════
    # SEVILLA
    # ═══════════════════════════════════════════════

    # DOP Estepa — famosa a nivel mundial
    ("41038", 95, "DOP Estepa — Estepa"),
    ("41007", 95, "DOP Estepa — Aguadulce"),
    ("41011", 95, "DOP Estepa — Badolatosa"),
    ("41026", 95, "DOP Estepa — Casariche"),
    ("41033", 95, "DOP Estepa — El Rubio"),
    ("41054", 95, "DOP Estepa — Marinaleda"),
    ("41060", 95, "DOP Estepa — Lora de Estepa"),
    ("41067", 95, "DOP Estepa — Pedrera"),
    ("41075", 95, "DOP Estepa — La Roda de Andalucía"),
    ("41092", 85, "DOP Estepa — Herrera"),

    # ═══════════════════════════════════════════════
    # GRANADA
    # ═══════════════════════════════════════════════

    # DOP Montes de Granada
    ("18004", 85, "DOP Montes de Granada — Albolote"),
    ("18013", 85, "DOP Montes de Granada — Alfacar"),
    ("18023", 85, "DOP Montes de Granada — Atarfe"),
    ("18036", 85, "DOP Montes de Granada — Cogollos de la Vega"),
    ("18044", 85, "DOP Montes de Granada — Deifontes"),
    ("18053", 85, "DOP Montes de Granada — Guadahortuna"),
    ("18063", 85, "DOP Montes de Granada — Iznalloz"),
    ("18076", 85, "DOP Montes de Granada — Moclín"),
    ("18092", 85, "DOP Montes de Granada — Pinar"),
    ("18104", 85, "DOP Montes de Granada — Pinos Puente"),
    ("18116", 85, "DOP Montes de Granada — Tocón"),
    ("18119", 85, "DOP Montes de Granada — Víznar"),

    # DOP Poniente de Granada
    ("18005", 85, "DOP Poniente de Granada — Albuñán"),
    ("18016", 85, "DOP Poniente de Granada — Alhama de Granada"),
    ("18019", 85, "DOP Poniente de Granada — Arenas del Rey"),
    ("18021", 85, "DOP Poniente de Granada — Cacín"),
    ("18029", 85, "DOP Poniente de Granada — Chimeneas"),
    ("18038", 85, "DOP Poniente de Granada — Cúllar Vega"),
    ("18058", 85, "DOP Poniente de Granada — Huétor Tájar"),
    ("18075", 85, "DOP Poniente de Granada — Moraleda de Zafayona"),
    ("18094", 85, "DOP Poniente de Granada — Pinos Genil"),

    # ═══════════════════════════════════════════════
    # MÁLAGA
    # ═══════════════════════════════════════════════

    # DOP Antequera
    ("29014", 85, "DOP Antequera — Antequera"),
    ("29021", 85, "DOP Antequera — Archidona"),
    ("29025", 85, "DOP Antequera — Cuevas Bajas"),
    ("29026", 85, "DOP Antequera — Cuevas de San Marcos"),
    ("29047", 85, "DOP Antequera — Humilladero"),
    ("29052", 85, "DOP Antequera — Mollina"),
    ("29063", 85, "DOP Antequera — Sierra de Yeguas"),
    ("29066", 85, "DOP Antequera — Villanueva de Algaidas"),
    ("29069", 85, "DOP Antequera — Villanueva del Trabuco"),

    # DOP Axarquía
    ("29002", 80, "DOP Aceite de Málaga/Axarquía — Alcaucín"),
    ("29007", 80, "DOP Aceite de Málaga/Axarquía — Alfarnate"),
    ("29008", 80, "DOP Aceite de Málaga/Axarquía — Alfarnatejo"),
    ("29034", 80, "DOP Aceite de Málaga/Axarquía — Colmenar"),
    ("29053", 80, "DOP Aceite de Málaga/Axarquía — Periana"),
    ("29059", 80, "DOP Aceite de Málaga/Axarquía — Riogordo"),
    ("29065", 80, "DOP Aceite de Málaga/Axarquía — Vélez-Málaga"),

    # ═══════════════════════════════════════════════
    # CATALUÑA
    # ═══════════════════════════════════════════════

    # DOP Les Garrigues — aceite premium catalán
    ("25077", 95, "DOP Les Garrigues — Arbeca"),
    ("25078", 95, "DOP Les Garrigues — Argrens"),
    ("25079", 95, "DOP Les Garrigues — Belianes"),
    ("25080", 95, "DOP Les Garrigues — Bovera"),
    ("25082", 95, "DOP Les Garrigues — Castelldans"),
    ("25083", 95, "DOP Les Garrigues — Cervià de les Garrigues"),
    ("25086", 95, "DOP Les Garrigues — El Vilosell"),
    ("25087", 95, "DOP Les Garrigues — Els Omells de na Gaia"),
    ("25089", 95, "DOP Les Garrigues — Fulleda"),
    ("25090", 95, "DOP Les Garrigues — Granyena de les Garrigues"),
    ("25091", 95, "DOP Les Garrigues — Juncosa"),
    ("25092", 95, "DOP Les Garrigues — Juneda"),
    ("25093", 95, "DOP Les Garrigues — La Floresta"),
    ("25094", 95, "DOP Les Garrigues — L'Albi"),
    ("25095", 95, "DOP Les Garrigues — Les Borges Blanques"),
    ("25097", 95, "DOP Les Garrigues — Puiggròs"),
    ("25098", 95, "DOP Les Garrigues — Tarrés"),
    ("25099", 95, "DOP Les Garrigues — Vinaixa"),

    # DOP Siurana (Tarragona)
    ("43011", 95, "DOP Siurana — Cambrils"),
    ("43024", 95, "DOP Siurana — Cornudella de Montsant"),
    ("43031", 95, "DOP Siurana — Falset"),
    ("43044", 95, "DOP Siurana — Gratallops"),
    ("43049", 95, "DOP Siurana — La Bisbal de Falset"),
    ("43051", 95, "DOP Siurana — La Figuera"),
    ("43053", 95, "DOP Siurana — La Vilella Alta"),
    ("43054", 95, "DOP Siurana — La Vilella Baixa"),
    ("43057", 95, "DOP Siurana — Lloa"),
    ("43060", 95, "DOP Siurana — Margalef"),
    ("43070", 95, "DOP Siurana — Pradell de la Teixeta"),
    ("43074", 95, "DOP Siurana — Ulldemolins"),

    # DOP Terra Alta (Tarragona)
    ("43013", 85, "DOP Terra Alta — Arnes"),
    ("43016", 85, "DOP Terra Alta — Batea"),
    ("43020", 85, "DOP Terra Alta — Bot"),
    ("43025", 85, "DOP Terra Alta — Caseres"),
    ("43039", 85, "DOP Terra Alta — Corbera d'Ebre"),
    ("43043", 85, "DOP Terra Alta — Gandesa"),
    ("43045", 85, "DOP Terra Alta — Horta de Sant Joan"),
    ("43059", 85, "DOP Terra Alta — La Fatarella"),
    ("43067", 85, "DOP Terra Alta — Pinell de Brai"),
    ("43076", 85, "DOP Terra Alta — Vilalba dels Arcs"),

    # DOP Empordà (Girona)
    ("17033", 85, "DOP Oli de l'Empordà — Castelló d'Empúries"),
    ("17045", 85, "DOP Oli de l'Empordà — Garriguella"),
    ("17046", 85, "DOP Oli de l'Empordà — La Jonquera"),
    ("17079", 85, "DOP Oli de l'Empordà — Girona"),
    ("17086", 85, "DOP Oli de l'Empordà — Lladó"),
    ("17088", 85, "DOP Oli de l'Empordà — Llançà"),
    ("17095", 85, "DOP Oli de l'Empordà — Mollet de Peralada"),
    ("17099", 85, "DOP Oli de l'Empordà — Palau-saverdera"),
    ("17107", 85, "DOP Oli de l'Empordà — Peralada"),
    ("17131", 85, "DOP Oli de l'Empordà — Roses"),
    ("17163", 85, "DOP Oli de l'Empordà — Vilafant"),

    # ═══════════════════════════════════════════════
    # ARAGÓN
    # ═══════════════════════════════════════════════

    # DOP Bajo Aragón
    ("44003", 85, "DOP Aceite del Bajo Aragón — Aguaviva"),
    ("44010", 85, "DOP Aceite del Bajo Aragón — Alcañiz"),
    ("44015", 85, "DOP Aceite del Bajo Aragón — Alcorisa"),
    ("44021", 85, "DOP Aceite del Bajo Aragón — Andorra"),
    ("44028", 85, "DOP Aceite del Bajo Aragón — Ariño"),
    ("44031", 85, "DOP Aceite del Bajo Aragón — Berge"),
    ("44041", 85, "DOP Aceite del Bajo Aragón — Calaceite"),
    ("44043", 85, "DOP Aceite del Bajo Aragón — Calanda"),
    ("44050", 85, "DOP Aceite del Bajo Aragón — Castelserás"),
    ("44054", 85, "DOP Aceite del Bajo Aragón — Castellote"),
    ("44059", 85, "DOP Aceite del Bajo Aragón — Cretas"),
    ("44063", 85, "DOP Aceite del Bajo Aragón — Fórnoles"),
    ("44069", 85, "DOP Aceite del Bajo Aragón — Híjar"),
    ("44083", 85, "DOP Aceite del Bajo Aragón — La Cañada de Verich"),
    ("44094", 85, "DOP Aceite del Bajo Aragón — Maella"),
    ("44098", 85, "DOP Aceite del Bajo Aragón — Mas de las Matas"),
    ("44109", 85, "DOP Aceite del Bajo Aragón — Molinos"),
    ("44120", 85, "DOP Aceite del Bajo Aragón — Oliete"),
    ("44125", 85, "DOP Aceite del Bajo Aragón — Palomar de Arroyos"),
    ("44131", 85, "DOP Aceite del Bajo Aragón — Puigmoreno"),
    ("44145", 85, "DOP Aceite del Bajo Aragón — Samper de Calanda"),
    ("44160", 85, "DOP Aceite del Bajo Aragón — Torre de Arcas"),
    ("44163", 85, "DOP Aceite del Bajo Aragón — Torre del Compte"),
    ("44166", 85, "DOP Aceite del Bajo Aragón — Urrea de Gaén"),
    ("44167", 85, "DOP Aceite del Bajo Aragón — Valdealgorfa"),
    ("44170", 85, "DOP Aceite del Bajo Aragón — Valderrobres"),

    # ═══════════════════════════════════════════════
    # EXTREMADURA
    # ═══════════════════════════════════════════════

    # DOP Monterrubio
    ("06024", 85, "DOP Monterrubio — Castuera"),
    ("06026", 85, "DOP Monterrubio — Don Benito"),
    ("06028", 85, "DOP Monterrubio — Monterrubio de la Serena"),
    ("06039", 85, "DOP Monterrubio — Malpartida de la Serena"),
    ("06040", 85, "DOP Monterrubio — Zalamea de la Serena"),

    # DOP Gata-Hurdes (Cáceres)
    ("10022", 80, "DOP Aceite Gata-Hurdes — Coria"),
    ("10023", 80, "DOP Aceite Gata-Hurdes — Moraleja"),
    ("10029", 80, "DOP Aceite Gata-Hurdes — Hoyos"),
    ("10035", 80, "DOP Aceite Gata-Hurdes — Caminomorisco"),
    ("10036", 80, "DOP Aceite Gata-Hurdes — Pinofranqueado"),
    ("10037", 80, "DOP Aceite Gata-Hurdes — Cáceres"),

    # ═══════════════════════════════════════════════
    # CASTILLA-LA MANCHA
    # ═══════════════════════════════════════════════

    # DOP Montes de Toledo
    ("45007", 80, "DOP Montes de Toledo — Almonacid de Toledo"),
    ("45016", 80, "DOP Montes de Toledo — Burguillos de Toledo"),
    ("45019", 80, "DOP Montes de Toledo — Chueca"),
    ("45025", 80, "DOP Montes de Toledo — Cobisa"),
    ("45033", 80, "DOP Montes de Toledo — Guadamur"),
    ("45071", 80, "DOP Montes de Toledo — Menasalbas"),
    ("45073", 80, "DOP Montes de Toledo — Mora"),
    ("45087", 80, "DOP Montes de Toledo — Orgaz"),
    ("45088", 80, "DOP Montes de Toledo — Los Yébenes"),
    ("45106", 80, "DOP Montes de Toledo — San Pablo de los Montes"),
    ("45109", 80, "DOP Montes de Toledo — Sonseca"),
    ("45126", 80, "DOP Montes de Toledo — Totanés"),
    ("45168", 80, "DOP Montes de Toledo — Toledo"),

    # DOP Campo de Calatrava (Ciudad Real)
    ("13005", 80, "DOP Campo de Calatrava — Aldea del Rey"),
    ("13007", 80, "DOP Campo de Calatrava — Almagro"),
    ("13010", 80, "DOP Campo de Calatrava — Argamasilla de Calatrava"),
    ("13021", 80, "DOP Campo de Calatrava — Calzada de Calatrava"),
    ("13026", 80, "DOP Campo de Calatrava — Corral de Calatrava"),
    ("13032", 80, "DOP Campo de Calatrava — Granátula de Calatrava"),
    ("13043", 80, "DOP Campo de Calatrava — Miguelturra"),
    ("13053", 80, "DOP Campo de Calatrava — Pozuelo de Calatrava"),
    ("13064", 80, "DOP Campo de Calatrava — Torralba de Calatrava"),
    ("13068", 80, "DOP Campo de Calatrava — Valenzuela de Calatrava"),
    ("13069", 80, "DOP Campo de Calatrava — Villanueva de San Carlos"),
    ("13075", 80, "DOP Campo de Calatrava — Villar del Pozo"),

    # ═══════════════════════════════════════════════
    # LA RIOJA
    # ═══════════════════════════════════════════════
    ("26089", 80, "DOP Aceite de La Rioja — Logroño"),
    ("26003", 80, "DOP Aceite de La Rioja — Agoncillo"),
    ("26020", 80, "DOP Aceite de La Rioja — Ausejo"),
    ("26021", 80, "DOP Aceite de La Rioja — Autol"),
    ("26031", 80, "DOP Aceite de La Rioja — Calahorra"),
    ("26038", 80, "DOP Aceite de La Rioja — Cervera del Río Alhama"),
    ("26043", 80, "DOP Aceite de La Rioja — Clavijo"),
    ("26055", 80, "DOP Aceite de La Rioja — Entrena"),
    ("26072", 80, "DOP Aceite de La Rioja — Jubera"),
    ("26085", 80, "DOP Aceite de La Rioja — Lagunilla del Jubera"),
    ("26092", 80, "DOP Aceite de La Rioja — Murillo de Río Leza"),
    ("26113", 80, "DOP Aceite de La Rioja — Pradejón"),
    ("26116", 80, "DOP Aceite de La Rioja — Quel"),
    ("26119", 80, "DOP Aceite de La Rioja — Ribafrecha"),
    ("26133", 80, "DOP Aceite de La Rioja — Santa Engracia del Jubera"),

    # ═══════════════════════════════════════════════
    # NAVARRA
    # ═══════════════════════════════════════════════
    ("31066", 80, "DOP Aceite de Navarra — Cascante"),
    ("31074", 80, "DOP Aceite de Navarra — Cintruénigo"),
    ("31086", 80, "DOP Aceite de Navarra — Corella"),
    ("31134", 80, "DOP Aceite de Navarra — Fitero"),
    ("31173", 80, "DOP Aceite de Navarra — Murchante"),
    ("31201", 80, "DOP Aceite de Navarra — Pamplona"),
    ("31212", 80, "DOP Aceite de Navarra — Ribaforada"),
    ("31232", 80, "DOP Aceite de Navarra — Tudela"),
    ("31245", 80, "DOP Aceite de Navarra — Villafranca"),

    # ═══════════════════════════════════════════════
    # COMUNITAT VALENCIANA
    # ═══════════════════════════════════════════════
    ("03065", 80, "DOP Aceite de la Comunitat Valenciana — Elda"),
    ("03099", 80, "DOP Aceite de la Comunitat Valenciana — Alicante"),
    ("12005", 80, "DOP Aceite de la Comunitat Valenciana — Alcalà de Xivert"),
    ("12040", 80, "DOP Aceite de la Comunitat Valenciana — Castelló de la Plana"),
    ("46018", 80, "DOP Aceite de la Comunitat Valenciana — Ayora"),
    ("46078", 80, "DOP Aceite de la Comunitat Valenciana — Cofrentes"),
    ("46127", 80, "DOP Aceite de la Comunitat Valenciana — Enguera"),
    ("46170", 80, "DOP Aceite de la Comunitat Valenciana — Llombai"),

    # ═══════════════════════════════════════════════
    # CASTILLA Y LEÓN
    # ═══════════════════════════════════════════════
    ("37059", 70, "Productor olivarero CyL — Béjar"),
    ("37274", 70, "Productor olivarero CyL — Salamanca"),
    ("49275", 70, "Productor olivarero CyL — Zamora"),

    # ═══════════════════════════════════════════════
    # ANDALUCÍA — otros grandes productores
    # ═══════════════════════════════════════════════
    ("04013", 85, "Gran productor olivarero — Almería"),
    ("04102", 85, "Gran productor olivarero — Vélez-Rubio"),
    ("11012", 70, "Productor olivarero — Cádiz"),
    ("18087", 80, "Gran productor olivarero — Granada"),
    ("21041", 70, "Productor olivarero — Huelva"),
    ("29067", 75, "Productor olivarero — Málaga"),
    ("41091", 75, "Productor olivarero — Sevilla"),
]

# ── Keywords para Wikipedia ───────────────────────────────────────────────────
KEYWORDS_DOP = [
    "denominación de origen", "denominacion de origen", "d.o.p", "dop aceite",
    "aceite de oliva virgen extra", "aove", "oleicultura", "olivicultura",
]
KEYWORDS_ALMAZARA = [
    "almazara", "molino de aceite", "cooperativa oleícola", "cooperativa aceitera",
    "aceite de oliva", "producción de aceite", "olivar",
]
KEYWORDS_OLIVO = [
    "olivo", "olivicultura", "aceituna", "cosecha de aceituna",
]

def normalize(text: str) -> str:
    return unicodedata.normalize("NFKD", text.lower())

def get_wikipedia_extract(title: str):
    url = (
        "https://es.wikipedia.org/w/api.php?action=query"
        f"&titles={urllib.parse.quote(title)}"
        "&prop=extracts&explaintext=1&exsectionformat=plain"
        "&format=json&redirects=1"
    )
    try:
        req = urllib.request.Request(url, headers=HEADERS)
        with urllib.request.urlopen(req, timeout=15) as r:
            data = json.loads(r.read().decode())
        pages = data.get("query", {}).get("pages", {})
        page = next(iter(pages.values()))
        if "missing" in page:
            return None
        return page.get("extract", "")
    except Exception:
        return None

def score_from_wikipedia(text: str) -> tuple:
    t = normalize(text[:10000])
    if any(k in t for k in KEYWORDS_DOP):
        return 70, "DOP/AOVE mencionado en Wikipedia"
    if any(k in t for k in KEYWORDS_ALMAZARA):
        return 55, "Almazara/producción olivarera en Wikipedia"
    if any(k in t for k in KEYWORDS_OLIVO):
        return 35, "Olivar/aceituna mencionado en Wikipedia"
    return 0, "Sin datos de aceite"

def d1_query(sql: str) -> list:
    result = subprocess.run(
        ["npx", "wrangler", "d1", "execute", "ranking-municipios",
         "--remote", "--command", sql, "--json"],
        capture_output=True, text=True, cwd=str(PROJECT_DIR)
    )
    if result.returncode != 0:
        raise RuntimeError(result.stderr[:300])
    return json.loads(result.stdout)[0].get("results", [])

def escape_sql(s: str) -> str:
    return s.replace("'", "''")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--apply", action="store_true")
    args = parser.parse_args()

    # Checkpoint
    checkpoint = {}
    if os.path.exists(CHECKPOINT):
        with open(CHECKPOINT) as f:
            checkpoint = json.load(f)
        print(f"  Checkpoint: {len(checkpoint)} municipios ya procesados")

    print("Leyendo municipios desde D1...")
    rows = d1_query("SELECT codigo_ine, nombre, provincia FROM municipios ORDER BY codigo_ine")
    print(f"  {len(rows)} municipios")

    resultados = dict(checkpoint)

    # 1. Aplicar DOPs curadas
    print("\nAplicando DOPs curadas...")
    for ine, score, motivo in DOP_MUNICIPIOS:
        if ine not in resultados or resultados[ine]["score"] < score:
            resultados[ine] = {"score": score, "motivo": motivo, "fuente": "dop_curado"}
    print(f"  {sum(1 for v in resultados.values() if v['fuente']=='dop_curado')} municipios con DOP curada")

    # 2. Wikipedia para los que no tienen DOP o tienen score bajo
    pendientes = [r for r in rows if r["codigo_ine"] not in checkpoint]
    print(f"\nConsultando Wikipedia para {len(pendientes)} municipios pendientes...")

    for i, row in enumerate(pendientes, 1):
        ine    = row["codigo_ine"]
        nombre = row["nombre"]
        prov   = row["provincia"]

        if i % 200 == 0:
            print(f"[{i}/{len(pendientes)} {i/len(pendientes)*100:.1f}%] {nombre} ({prov})...")
            with open(CHECKPOINT, "w") as f:
                json.dump(resultados, f)

        # Si ya tiene DOP curada con score alto, solo registrar para checkpoint
        existing = resultados.get(ine, {})
        if existing.get("fuente") == "dop_curado" and existing.get("score", 0) >= 70:
            resultados[ine] = existing  # mantener
            time.sleep(0.05)
            continue

        titles = [nombre, f"{nombre} ({prov})", f"{nombre} (municipio)"]
        text = None
        for title in titles:
            text = get_wikipedia_extract(title)
            if text and len(text) > 200:
                break
            time.sleep(0.05)

        if not text:
            if ine not in resultados:
                resultados[ine] = {"score": 0, "motivo": "Sin artículo Wikipedia", "fuente": "wikipedia"}
            time.sleep(0.1)
            continue

        score, motivo = score_from_wikipedia(text)

        if existing.get("fuente") == "dop_curado":
            resultados[ine]["wiki_score"] = score
        elif score > existing.get("score", 0):
            resultados[ine] = {"score": score, "motivo": motivo, "fuente": "wikipedia"}
        elif ine not in resultados:
            resultados[ine] = {"score": score, "motivo": motivo, "fuente": "wikipedia"}

        time.sleep(0.15)

    with open(CHECKPOINT, "w") as f:
        json.dump(resultados, f)
    print(f"\nCheckpoint guardado: {len(resultados)} procesados")

    # ── Generar SQL ───────────────────────────────────────────────────────────
    print("\nGenerando SQL...")
    lines = [
        "-- aceite_dop.sql — Generado por enriquecer-aceite.py",
        f"-- {len(resultados)} municipios",
        "",
    ]

    actualizados = 0
    for ine, data in resultados.items():
        score  = data.get("score", 0)
        motivo = data.get("motivo", "")
        if score <= 0:
            continue

        lines.append(
            f"UPDATE puntuaciones SET puntuacion = MAX(puntuacion, {score}) "
            f"WHERE codigo_ine = '{ine}' AND categoria = 'aceite';"
        )
        lines.append(
            f"INSERT OR IGNORE INTO puntuaciones (codigo_ine, categoria, puntuacion) "
            f"VALUES ('{ine}', 'aceite', {score});"
        )

        if score >= 70:
            desc = escape_sql(motivo[:100])
            lines.append(
                f"UPDATE municipios SET why_json = json_insert(COALESCE(why_json,'[]'),'$[#]',"
                f"'🫒 Aceite: {desc}') "
                f"WHERE codigo_ine='{ine}' AND COALESCE(why_json,'[]') NOT LIKE '%🫒 Aceite:%';"
            )
        actualizados += 1

    lines.append("")
    OUT_PATH.write_text("\n".join(lines))
    print(f"  SQL: {OUT_PATH}")
    print(f"  Municipios con score > 0: {actualizados}")

    scores = [d["score"] for d in resultados.values() if d["score"] > 0]
    if scores:
        print(f"\n  Score 95 (DOP top): {sum(1 for s in scores if s>=95)}")
        print(f"  Score 85 (DOP nac): {sum(1 for s in scores if 85<=s<95)}")
        print(f"  Score 70-84 (DOP):  {sum(1 for s in scores if 70<=s<85)}")
        print(f"  Score 55 (almazara):{sum(1 for s in scores if 55<=s<70)}")
        print(f"  Score 35 (olivar):  {sum(1 for s in scores if 35<=s<55)}")

    if args.apply:
        print("\nAplicando a D1...")
        statements = [l for l in lines if l.strip() and not l.startswith("--")]
        for j in range(0, len(statements), 50):
            chunk = "\n".join(statements[j:j+50])
            result = subprocess.run(
                ["npx", "wrangler", "d1", "execute", "ranking-municipios",
                 "--remote", "--command", chunk],
                capture_output=True, text=True, cwd=str(PROJECT_DIR)
            )
            if result.returncode != 0:
                print(f"  ERROR chunk {j//50}: {result.stderr[:150]}")
            elif j % 500 == 0 and j > 0:
                print(f"  {j}/{len(statements)} aplicados...")
        print("  ¡Listo!")
        print("\nRecalculando rankings...")
        result = subprocess.run(
            ["python3", "scripts/recalcular-rankings.py", "--apply"],
            capture_output=True, text=True, cwd=str(PROJECT_DIR)
        )
        print(result.stdout[-500:] if result.stdout else "")
        if result.returncode != 0:
            print("ERROR:", result.stderr[-200:])
    else:
        print(f"\nPara aplicar: python3 scripts/enriquecer-aceite.py --apply")

if __name__ == "__main__":
    main()

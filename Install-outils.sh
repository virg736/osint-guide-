#!/bin/bash

# -------------------------------------------------------
# Script d'installation automatique d'outils OSINT
# Auteur : virg736
# GitHub : https://github.com/virg736/osint-guide-
# Licence : MIT
# Dernière MàJ: 2025-05-22
# -------------------------------------------------------

echo "Installation des outils OSINT..."

# -------------------------------------------------------
# 1. Mise à jour et installation des paquets systèmes
# -------------------------------------------------------
sudo apt update && sudo apt install -y \
git \
python3-pip \
python3-venv \
theharvester

# -------------------------------------------------------
# 2. Création d'un environnement Python isolé
# -------------------------------------------------------
python3 -m venv venv
source venv/bin/activate

# -------------------------------------------------------
# 3. Installation des dépendances Python manuelles
# nécessaires pour SpiderFoot
# -------------------------------------------------------
pip install \
dnspython \
cryptography \
pyopenssl \
requests \
publicsuffixlist \
networkx \
beautifulsoup4 \
phonenumbers

# -------------------------------------------------------
# 4. Clonage et installation de dnscan
# -------------------------------------------------------
git clone https://github.com/rbsec/dnscan.git
cd dnscan
pip install -r requirements.txt
cd ..

# -------------------------------------------------------
# 5. Clonage et installation de SpiderFoot
# -------------------------------------------------------
git clone https://github.com/smicallef/spiderfoot.git
cd spiderfoot
pip install -r requirements.txt
cd ..

echo "Installation terminée !"




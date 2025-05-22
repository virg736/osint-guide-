#!/bin/bash
# -------------------------------------------------------
# Script d'installation automatique d'outils OSINT
# Auteur : virg736
# GitHub : https://github.com/virg736/osint-guide-
# Licence : MIT
# Dernière mise à jour : 2025-05-22
# -------------------------------------------------------


echo "Installation des outils OSINT..."

# Mise à jour et installation des paquets nécessaires
sudo apt update && sudo apt install -y theharvester git python3-pip  python3-venv

# Création d'un environnement virtuel 
python3 -m venv venv 
source venv/bin/activate

# dnscan
git clone https://github.com/rbsec/dnscan.git
cd dnscan
pip3 install -r requirements.txt
cd ..

# SpiderFoot
git clone https://github.com/smicallef/spiderfoot.git
cd spiderfoot
pip3 install -r requirements.txt
cd ..

echo "Installation terminée !"


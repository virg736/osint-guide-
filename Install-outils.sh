#!/bin/bash

# -------------------------------------------------------
# Script d'installation automatique d'outils OSINT
# Auteur : virg736
# GitHub : https://github.com/virg736/osint-guide-
# Licence : MIT
# Dernière MàJ: 2025-05-22
# -------------------------------------------------------

set -e  # Arrête l'exécution du script en cas d'erreur

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
if [ -f venv/bin/activate ]; then
    # shellcheck disable=SC1091
    source venv/bin/activate
else
    echo "Erreur : échec de création de l'environnement virtuel." >&2
    exit 1
fi

# -------------------------------------------------------
# 3. Installation des dépendances Python
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
cd dnscan || exit 1
pip install -r requirements.txt
cd ..

# -------------------------------------------------------
# 5. Clonage et installation de SpiderFoot
# -------------------------------------------------------
git clone https://github.com/smicallef/spiderfoot.git
cd spiderfoot || exit 1
pip install -r requirements.txt
cd ..

echo "✅ Installation terminée !"

# -------------------------------------------------------
# Avertissement légal
# -------------------------------------------------------

echo ""
echo "⚠️  Ce projet est destiné uniquement à un usage éducatif."
echo "L’autrice n’autorise aucune utilisation illégale ou malveillante."
echo "Responsabilité entière de l'utilisateur."










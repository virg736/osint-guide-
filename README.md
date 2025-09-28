[![ShellCheck](https://github.com/virg736/osint-guide-/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/virg736/osint-guide-/actions/workflows/shellcheck.yml)
[![Licence: MIT](https://img.shields.io/badge/license-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Dernière mise à jour](https://img.shields.io/badge/dernière%20mise%20à%20jour-2025--05--22-blue)](README.md)

<p align="center">
<a href="https://creativecommons.org/licenses/by/4.0/">
<img src="https://img.shields.io/badge/Licence-Creative%20Commons%20BY%204.0-lightgrey.svg" alt="Licence Creative Commons BY 4.0">
</a>
</p>
<p align="center">
<img src="OSINT.PNG" alt="OSINT image" style="max-width: 100%; height: auto;">
</p>





# osint-guide-

Guide complet OSINT (passive & active techniques, tools, real use cases)
Ce projet fournit un guide complet pour découvrir, installer et utiliser des outils OSINT (Open Source Intelligence).
Il s’adresse aux passionnés de cybersécurité, aux étudiants ou aux professionnels souhaitant automatiser la collecte d’informations avec Kali Linux.

---

## Introduction générale du projet

Ce projet fournit un guide complet pour découvrir, installer et utiliser des outils OSINT.
Il s’adresse aux passionnés de cybersécurité, aux étudiants ou aux professionnels souhaitant automatiser la collecte d’informations avec Kali Linux.

## Sommaire

- [Introduction](#introduction)
- [Techniques OSINT Passives](#techniques-osint-passives)
- [Techniques OSINT Actives](#techniques-osint-actives)
- [Outils utilisés](#outils-utilisées)
- [Google Dorks](#google-dorks)
- [Commandes sur Kali Linux](#commandes-sur-kali-linux)
- [Installation automatique des outils](#installation-automatique-des-outils)
- [Comment utiliser ce script ?](#comment-utiliser-ce-script)

---

## Introduction

L’OSINT (Open Source Intelligence) consiste à collecter des informations à partir de sources ouvertes.

---

## Techniques OSINT Passives

### 1. Google Dorks
intitle:“index of” site:example.com

inurl:admin site:target.com

### 2. Whois / DNS
whois target.com

host site.com

### 3. MXtoolbox

- Site : [https://mxtoolbox.com](https://mxtoolbox.com)

---

## Techniques OSINT Actives

**Remarque éthique :** n’utilisez que des domaines contrôlés (`example.com`, `test.local`) ou obtenez une autorisation écrite avant toute collecte active.

### 1. theHarvester

Outil de collecte d’emails, noms de domaine, IP depuis Google, Bing, etc.

theharvester -d example.com -b google -l 100 -v

- `-d` : domaine
- `-b` : source (google, bing, linkedin, etc.)
- `-l` : limite de résultats
- `-v` : mode verbeux

### 2. Metagoofil

Extrait les métadonnées de fichiers (PDF, DOC, XLS, etc.)

metagoofil -d example.com -t pdf,doc,xls -l 20 -o resultat -f result.html

- `-d` : domaine
- `-t` : types de fichiers
- `-l` : nombre de fichiers à télécharger
- `-o` : dossier de sortie
- `-f` : nom du fichier HTML exporté

### 3. SpiderFoot

Scanner OSINT automatisé avec interface Web.

cd spiderfoot

python3 sf.py

Accès Web : http://127.0.0.1:5001
Lance un “New Scan”
Cible : domaine, IP ou email
Résultats : graphe interactif + tableau

---

**Alternatives / outils modernes recommandés :**
- `amass`, `subfinder`, `assetfinder` — découverte de sous-domaines
- `httpx` — vérification rapide des endpoints HTTP(S)
- `waybackurls` / `gau` — URLs historiques
- `exiftool` — extraction métadonnées locale (meilleur que Metagoofil pour fichiers locaux)
- `nuclei` — scanning de templates (après collecte)

---


## Outils utilisées

- theHarvester
- dnscan
- SpiderFoot
- Metagoofil

---

## Google Dorks
intitle:“index of” site:example.com

inurl:admin site:target.com

---

## Commandes sur Kali Linux

---

## Installation automatique des outils

Pour installer automatiquement **theHarvester**, **dnscan** et **SpiderFoot**, utilisez ce script :
[Install-outils.sh](./Install-outils.sh)

---

## Comment utiliser ce script ?

1. Ouvre un terminal sous Kali Linux.
2. Va dans le dossier où tu veux installer les outils.
3. Exécute les commandes suivantes :

```bash
wget https://raw.githubusercontent.com/virg736/osint-guide-/main/Install-outils.sh
chmod +x Install-outils.sh
./Install-outils.sh

---

## Avertissement légal

 Ce projet est exclusivement destiné à des fins éducatives, dans le cadre de la formation à la cybersécurité.
 L’auteure ne cautionne ni n’autorise l’utilisation de ces techniques en dehors d’un cadre légal strictement défini.
 Toute utilisation non autorisée est interdite et relève de la seule responsabilité de l’utilisateur.


## Auteur / Droits

© 2025 Virginie Lechene — Tous droits réservés.
Reproduction interdite sans autorisation.




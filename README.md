# osint-guide-
Guide complet OSINT (passive & active techniques, tools,real use cases) Guide complet OSINT (techniques passives & actives, outils, cas pratiques)

  OSINT GUIDE
│
## Introduction générale du projet

- [Introduction](#introduction)
- [Techniques OSINT Passives](#techniques-osint-passives)
- [Techniques OSINT Actives](#techniques-osint-actives)
- [Outils utilisés](#outils-utilisés)
- [Google Dorks](#google-dorks)
- [Commandes sur Kali Linux](#commandes-sur-kali-linux)
- [Archives Web](#archives-web)
- [Cas pratiques](#cas-pratiques)
- [Ressources complémentaires](#ressources-complémentaires)

# Techniques OSINT Passives

## 1. Google Dorks
Utilisation manuelle :site:example.com filetype:pdf

## 2. Whois / DNS
Outils :
- `whois nomdedomaine.com`
- `host site.com` sur Kali

## 3. MXtoolbox
Site : [https://mxtoolbox.com](https://mxtoolbox.com)

git add .
git commit -m "Ajout de la structure et du contenu OSINT"
git push origin main

## Table of Contents

1. [Introduction](#introduction)
2. [OSINT passif](#osint-passif)
...
Voir le script d'installation ici : [install-outils.sh](./install-outils.sh)

## Techniques OSINT Actives

### 1. theHarvester
Outil de collecte d’emails, noms de domaine, IP depuis Google, Bing, etc.

```bash
theharvester -d example.com -b google -l 100 -v
-d : domaine
-b : source (google, bing, linkedin, etc.)
-l : limite de résultats
-v : mode verbeux

### 2. Metagoofil
Extrait les métadonnées de fichiers (PDF, DOC, XLS, etc.)

metagoofil -d example.com -t pdf,doc,xls -l 20 -n 10 -o resultat -f result.html
-d : domaine
-t : types de fichiers
-l : nombre de fichiers à télécharger
-o : dossier de sortie
-f : nom du fichier HTML exporté

### 3. SpiderFoot

Scanner OSINT automatisé avec interface Web.

cd spiderfoot
python3 sf.py
Accès Web : http://127.0.0.1:5001
Lance un “New Scan”
Cible : domaine, IP ou email
Résultats : graphe interactif + tableau

---

###Installation automatique des outils
Pour installer automatiquement **theHarvester**, **dnscan** et **SpiderFoot**, utilisez ce script:
[install-outils.sh](./install-outils.sh)

---





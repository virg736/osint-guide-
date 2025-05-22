#!/bin/bash

echo "Installation des outils OSINT..."

sudo apt update && sudo apt install -y theharvester git python3-pip

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

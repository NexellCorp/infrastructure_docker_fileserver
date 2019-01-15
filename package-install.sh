#!/bin/bash

mkdir -p /srv/releases.nexell.co.kr

chown nexell:www-data /srv/releases.nexell.co.kr
chmod 775 /srv/releases.nexell.co.kr
 
cd /srv/releases.nexell.co.kr
git clone https://review.gerrithub.io/NexellCorp/infrastructure_server_linaro-license-protection linaro-license-protection
git clone https://review.gerrithub.io/NexellCorp/infrastructure_server_linaro-license-protection-configs configs

cd linaro-license-protection
pip install -r requirements.txt

cp -a /srv/releases.nexell.co.kr /srv/snapshots.nexell.co.kr

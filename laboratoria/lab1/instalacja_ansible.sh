#!/bin/bash

# na hoscie (opcjonalnie zaleznie od uprawnien, moze wystapic koniecznosc wywolania ponizszych komend z sudo)
# podlaczenie sie do kontenera
#docker exec -ti nasz_kontener bash

# stop i kiedys start kontenera
#docker ps -a 
#docker start nasz_kontener

apt-get update
apt-get install python3
pip install ansible
ansible --version

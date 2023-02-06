#!/bin/bash

#na hoscie (opcjonalnie zaleznie od uprawnien, moze wystapic koniecznosc wywolania ponizszych komend z sudo)
mkdir ~/katalog/
chmod 777 ~/katalog/

docker  run  -d  --name nasz_kontener -p 8080:8080 -v ~/katalog:/katalog ubuntu:22.04  sh -c 'sleep 300d'
docker ps

# podlaczenie sie do kontenera
#docker exec -ti nasz_kontener bash


# mozliwe problemy

#docker: Error response from daemon: Conflict. The container name "/nasz_kontener" is already in use by container "2bba8ad52909d2781d318f1b5a97586c75b5fa2ca14374294eb6484e7e788be0". You have to remove (or rename) that container to be able to reuse that name.

# UWAGA, jesli pojawia sie taki komunikat, oznacza to, ze istnieje juz na naszym srodowisku kontener docker o takiej nazwie
# zaleznie od naszej potrzeby, mozemy albo podlaczyc sie do tego istniejacego obrazu, albo go usunac i ponowic tworzenie nowej instancji 


# Przydatne komendy

# stop i kiedys start kontenera
#docker stop nasz_kontener
#docker start nasz_kontener

# czyszczenie
#docker stop nasz_kontener
#docker rm nasz_kontener


# podlaczenie sie do kontenera
#docker exec -ti nasz_kontener bash

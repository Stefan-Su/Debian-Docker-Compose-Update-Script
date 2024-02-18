#!/bin/bash

# pfad zum "docker-compose.yml" file
pfad_zum_docker_compose_file=/root/nginx-proxy-manager


# Docker Compose runterfahren
cd $pfad_zum_docker_compose_file
docker compose down

# Updates abrufen
apt update

# Vorhandese Updates einspielen
apt upgrade -y

# M  gliche entfernte Programme l  schen
apt autoremove -y

# Docker pullen
docker compose pull

# Docker wieder starten
docker compose up -d

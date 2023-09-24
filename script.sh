#!/bin/bash
#clean the docker images, containers, volumes and network to be able re-run it safely
make clean
make down
sudo rm -rf /home/mbadaoui/data/wordpress/*
sudo rm -rf /home/mbadaoui/data/mariadb/*
docker system prune

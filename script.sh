#!/bin/bash

make clean
make down
sudo rm -rf /home/mbadaoui/data/wordpress/*
sudo rm -rf /home/mbadaoui/data/mariadb/*
docker system prune

#!/bin/bash

sudo pacman -Syu --needed --noconfirm docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo docker version
sudo docker info

sudo usermod -aG docker $USER
docker info

#!/bin/bash
#Install Docker
apt-get update
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
apt-add-repository "deb https://apt.dockerproject.org/repo ubuntu-xenial main"
apt-get update
apt-get -y install docker-engine
usermod -aG docker "$USER"
systemctl enable docker

#Install Python Installer and Docker-Compose
apt-get -y install python-pip
pip install docker-compose

#install git
apt-get install git

#Clone the repository
git clone https://github.com/experiencedevops/finalscript.git

#Docker Compose run
cd finalscript
docker-compose up -d

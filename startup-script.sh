#!/bin/bash

apt-get update && apt-get install -y  curl \
                                      apt-transport-https \
                                      ca-certificates \
                                      software-properties-common
curl -fsSL https://yum.dockerproject.org/gpg | apt-key add -
sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       debian-$(lsb_release -cs) \
       main"
apt-get update
apt-get -y install docker-engine

# install docker

#

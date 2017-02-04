#!/bin/bash

# Mound disk
EX_DIR="/data"
if [ -d "$EX_DIR" ]; then
  mkdir -p $EX_DIR
  sudo mkfs.ext4 -F -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb
  sudo mount -o discard,defaults /dev/sdb $EX_DIR
  echo UUID="$(blkid -s UUID -o value /dev/sdb)" $EX_DIR ext4 discard,defaults 0 2 | tee -a /etc/fstab
fi

# Install docker
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

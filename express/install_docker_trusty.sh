#!/bin/sh
apt-get update -qq
apt-get install -y apt-transport-https ca-certificates

DOCKER_REPO_APT_SOURCE="/etc/apt/sources.list.d/docker.list"
if [ ! -f "${DOCKER_REPO_APT_SOURCE}" ]; then
  apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
  echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > ${DOCKER_REPO_APT_SOURCE}
fi

# Skip if docker-engine installed
if ! dpkg -l "docker-engine" > /dev/null 2>&1; then
  apt-get update -qq
  dpkg -l "lxc-docker" > /dev/null && apt-get purge lxc-docker
  apt-get install -y linux-image-extra-$(uname -r) apparmor docker-engine
  usermod -a -G docker vagrant
fi

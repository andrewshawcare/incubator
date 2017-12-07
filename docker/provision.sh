#!/bin/sh
if ! which docker; then
  wget -O - get.docker.com | sh

  sudo groupadd docker
  sudo usermod -aG docker "${USER}"
fi
#!/bin/sh
if ! which docker; then
  wget -O - get.docker.com | sh
  sudo usermod -aG docker "${USER}"
fi

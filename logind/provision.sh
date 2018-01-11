#!/bin/sh
configuration_file='/etc/systemd/logind.conf.d/logind.conf'
if [ ! -f "$configuration_file" ]; then
  sudo mkdir -p "$(dirname ${configuration_file})"
  sudo sh -c "echo '[Login]\nHandleLidSwitch=ignore' > '${configuration_file}'"
fi
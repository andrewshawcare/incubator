#!/bin/sh
sources_list_path='/etc/apt/sources.list.d/google-chrome.list'

if test ! -f "${sources_list_path}"; then
  sudo sh -c "echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb stable main' \
    > '${sources_list_path}'"
fi

wget \
  --quiet \
  --output-document - \
  'https://dl.google.com/linux/linux_signing_key.pub' \
| \
sudo apt-key add -

sudo apt update
sudo apt install --yes google-chrome-stable

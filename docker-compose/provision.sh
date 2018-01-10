#!/bin/sh
if ! which docker-compose; then
  version="$(\
    curl \
      --silent \
      --location \
      --header 'Accept: application/json' \
      'https://github.com/docker/compose/releases/latest' \
    | \
    sed \
      --regexp-extended \
      's/.*"tag_name":"([0-9.]+)".*/\1/' \
  )"
  binary_path='/usr/local/bin/docker-compose'

  sudo curl \
    --location \
    "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" \
   --output "${binary_path}"

  sudo chmod +x "${binary_path}"
fi

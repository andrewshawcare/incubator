#!/bin/sh
set -e

for provision_path in $(find -mindepth 2 -name provision.sh); do
  [ -x "${provision_path}" ] || continue
  sh -c "${provision_path}"
done

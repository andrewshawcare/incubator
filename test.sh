#!/bin/sh
set -e

for test_path in "$(find -mindepth 2 -name test.sh)"; do
  result=''
  if $(sh "${test_path}"); then
    result="✓"
  else
    result="✗"
  fi
  echo "${result} ${test_path}"
done

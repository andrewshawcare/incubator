#!/bin/sh
set -e

code=0
for test_path in $(find -mindepth 2 -name test.sh); do
  result=''

  if $(sh -c "${test_path}"); then
    result='✓'
  else
    code=$?
    result='✗'
  fi

  echo "${result} ${test_path}"
done

exit $code

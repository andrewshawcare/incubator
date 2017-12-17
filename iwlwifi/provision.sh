#!/bin/sh
line='options iwlwifi 11n_disable=1'
file='/etc/modprobe.d/iwlwifi.conf'

grep "$line" "$file" || echo "$line" >> "$file"
#!/bin/sh
test "$(grep -o 'options iwlwifi 11n_disable=1' /etc/modprobe.d/iwlwifi.conf | wc -l)" -eq 1
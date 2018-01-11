#!/bin/sh
picture_uri='file:///usr/share/backgrounds/pop/kate-hazen-fractal-mountains.png'
test "$(gsettings get org.gnome.desktop.background picture-uri | tr -d \')" = "${picture_uri}"

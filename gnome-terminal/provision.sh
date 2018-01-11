#!/bin/sh

gtk_css_path="${HOME}/.config/gtk-3.0/gtk.css"

if test ! -f "${gtk_css_path}"; then
  echo 'vte-terminal { padding: 1rem; }' > "${gtk_css_path}"
fi

gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

default_profile_identifier=`gsettings get org.gnome.Terminal.ProfilesList default | tr -d \'`
default_profile_path="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${default_profile_identifier}/"

gsettings set "${default_profile_path}" background-transparency-percent 5
gsettings set "${default_profile_path}" use-transparent-background true
gsettings set "${default_profile_path}" scrollbar-policy 'never'
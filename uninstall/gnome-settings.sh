printf "$(tput setaf 1)\n Resetting Gnome settings...\n"
gsettings reset org.gnome.shell favorite-apps
gsettings reset org.gnome.mutter center-new-windows
gsettings reset org.gnome.desktop.calendar show-weekdate
gsettings reset org.gnome.settings-daemon.plugins.media-keys screensaver
gsettings reset org.gnome.desktop.interface color-scheme
gsettings reset org.gnome.desktop.interface cursor-theme
gsettings reset org.gnome.desktop.interface gtk-theme
gsettings reset org.gnome.desktop.interface icon-theme
printf "$(tput setaf 1)\n Gnome settings reset...\n"

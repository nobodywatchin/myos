#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

# Activates custom dotfiles
ags

# Removes cringe anime wallpapers
for file in /usr/share/hyprland/*.png; do
    if [[ $file == *anime*.png ]]; then
        rm "$file"
        echo "Removed: $file"
    fi
done

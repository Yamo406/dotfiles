#!/usr/bin/env zsh

# remove unused flatpak packages
flatpak uninstall --unused

# repair flatpak packages
flatpak repair

# update flatpak packages
flatpak update

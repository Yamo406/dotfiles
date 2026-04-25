#!/usr/bin/env zsh

sudo modprobe -r btusb
sudo modprobe btusb
sudo systemctl restart bluetooth

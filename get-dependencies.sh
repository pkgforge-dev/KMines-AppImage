#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
pacman -Syu --noconfirm \
    kmines        \
    kvantum       \
    libpipewire   \
    lxqt-qtplugin \
    qt6ct

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common --prefer-nano kiconthemes-mini ffmpeg-nano

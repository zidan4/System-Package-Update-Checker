#!/bin/bash

# Description: Checks for available updates depending on your distro.

if command -v pacman &> /dev/null; then
    echo "[*] Checking Arch packages..."
    sudo pacman -Syu --noconfirm
elif command -v apt &> /dev/null; then
    echo "[*] Checking Debian-based packages..."
    sudo apt update && sudo apt upgrade -y
else
    echo "[!] Package manager not supported."
    exit 1
fi

echo "[✓] System is up to date."

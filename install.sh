#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
export PATH="$PATH:$HOME/.local/bin"

# Display menu to the user using whiptail for install_mode
install_mode_choice=$(whiptail --title "Choose Installation Mode" --menu "Select an installation mode:" 20 70 10 \
    "1" "Light: Default minimum installation (lacking Go tools, Cargo tools, Apt tools, wordlists, etc)" \
    "2" "Full: Light installation with all tools from various sources (Go, Cargo, Gem, etc)" \
    "3" "Hard: Default minimum installation with hardening (disabling DHCP, changing kernel params, setting up UFW rules, etc)" \
    3>&1 1>&2 2>&3)

# Map the install_mode_choice to actual installation mode names
case $install_mode_choice in
    "1") install_mode="light" ;;
    "2") install_mode="full" ;;
    "3") install_mode="hard" ;;
    *)  install_mode="light" ;;  # Default to Light if an unexpected value is chosen
esac

# Display menu to the user using whiptail for desktop environment
desktop_choice=$(whiptail --title "Choose Desktop Environment" --menu "Select a desktop environment:" 20 70 10 \
    "1" "XFCE" \
    "2" "i3" \
    "3" "Regolith" \
    3>&1 1>&2 2>&3)

# Map the desktop_choice to actual desktop environment names
case $desktop_choice in
    "1") install_desktop="XFCE" ;;
    "2") install_desktop="i3" ;;
    "3") install_desktop="regolith" ;;
    *)  install_desktop="XFCE" ;;  # Default to XFCE if an unexpected value is chosen
esac

# Run Ansible playbook with the chosen install_mode and install_desktop
ansible-playbook -vv -i inventory.ini --ask-become main.yml -e "install_mode=$install_mode install_desktop=$install_desktop"

# Display completion message
echo "[*] Done! Logout, then you can pick your desktop environment and Login!"
echo "[🌹] Enjoy your new distro!"

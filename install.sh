#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
export PATH="$PATH:$HOME/.local/bin"

# Display menu to the user using whiptail
choice=$(whiptail --title "Choose Installation Mode" --menu "Select an installation mode:" 20 70 10 \
    "1" "Light: Default minimum installation (lacking Go tools, Cargo tools, Apt tools, wordlists, etc)" \
    "2" "Full: Light installation with all tools from various sources (Go, Cargo, Gem, etc)" \
    "3" "Hard: Default minimum installation with hardening (disabling DHCP, changing kernel params, setting up UFW rules, etc)" \
    3>&1 1>&2 2>&3)

# Check if user canceled or pressed Esc
if [ $? -ne 0 ]; then
    echo "User canceled. Exiting."
    exit 1
fi

# Set default choice to "light" if input is invalid
case $choice in
    1) install_mode="light";;
    2) install_mode="full";;
    3) install_mode="hard";;
    255) echo "User canceled. Exiting."; exit 1;;
    *) echo "Invalid choice. Defaulting to light."; install_mode="light";;
esac

# Display an initial dialog box
whiptail --title "Kali Build Installer" --msgbox "This script will install Kali Build in $install_mode mode. Click OK to proceed." 10 60

# Run Ansible playbook with the chosen install_mode
whiptail --title "Kali Build Installer" --infobox "Installing Kali Build in $install_mode mode. Please wait..." 10 60
ansible-playbook -vv -i inventory.ini --ask-become main.yml -e "install_mode=$install_mode"

# Display completion message
echo "[*] Done! Logout, then you can pick i3 and Login!"
echo "[🌹] Enjoy your new distro!"

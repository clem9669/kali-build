#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
export PATH="$PATH:$HOME/.local/bin"

# Display menu to the user using whiptail for install_mode
install_mode_choice=$(whiptail --title "Choose Installation Mode" --menu "Select an installation mode:" 20 70 10 \
    "1" "Full: Light installation with all tools from various sources (Go, Cargo, Gem, IA, etc)" \
    "2" "Light: Default minimum installation (lacking Go tools, Cargo tools, Apt tools, wordlists, etc)" \
    "3" "Hard: Light installation with hardening (disabling DHCP, changing kernel params, setting up UFW rules, etc)" \
    3>&1 1>&2 2>&3)

# Map the install_mode_choice to actual installation mode names
case $install_mode_choice in
    "1") install_mode="full" ;;
    "2") install_mode="light" ;;
    "3") install_mode="hard" ;;
    *)  install_mode="full" ;;  # Default to full if an unexpected value is chosen
esac

# Display menu to the user using whiptail for desktop environment
desktop_choice=$(whiptail --title "Choose Desktop Environment" --menu "Select a desktop environment:" 20 70 10 \
    "1" "i3" \
    "2" "XFCE" \
    "3" "Regolith" \
    3>&1 1>&2 2>&3)

# Map the desktop_choice to actual desktop environment names
case $desktop_choice in
    "1") install_desktop="i3" ;;
    "2") install_desktop="xfce" ;;
    "3") install_desktop="regolith" ;;
    *)  install_desktop="i3" ;;  # Default to i3 if an unexpected value is chosen
esac

# Display menu to the user using whiptail for terminal choice
terminal_choice=$(whiptail --title "Choose Terminal" --menu "Select a terminal:" 20 70 10 \
    "1" "Install Alacritty" \
    "2" "Default from the OS (e.g., qterminal)" \
    3>&1 1>&2 2>&3)

# Map the terminal_choice to actual terminal names
case $terminal_choice in
    "1") install_terminal="alacritty" ;;
    "2") install_terminal="default" ;;
    *)  install_terminal="alacritty" ;;  # Default to alacritty terminal if an unexpected value is chosen
esac

# Display menu to the user for Docker installation choice
docker_choice=$(whiptail --title "Install Docker" --menu "Do you want to install Docker?" 20 70 10 \
    "1" "Do not install Docker" \
    "2" "Install Docker" \
    3>&1 1>&2 2>&3)

# Map the docker_choice to actual Docker installation flag using case
case $docker_choice in
    "1") install_docker="false" ;;
    "2") install_docker="true" ;;
    *)  install_docker="false" ;;  # Default to false if an unexpected value is chosen
esac

# Ask if the user wants to install Ollama only if the install_mode is "full"
if [[ "$install_mode" == "full" ]]; then
    ollama_choice=$(whiptail --title "Install Ollama + Mistral (4Gb)" --menu "Do you want to install Ollama with a model?" 20 70 10 \
        "1" "Do not install Ollama" \
        "2" "Install Ollama + Mistral (4Gb)" \
        3>&1 1>&2 2>&3)

    # Map the ollama_choice to actual Ollama installation flag using case
    case $ollama_choice in
        "1") install_ollama="false" ;;
        "2") install_ollama="true" ;;
        *)  install_ollama="false" ;;  # Default to false if an unexpected value is chosen
    esac
else
    install_ollama="false"  # Automatically set to false if not in "full" mode
fi

# Run Ansible playbook with the chosen options
ansible-playbook -vv -i inventory.ini --ask-become main.yml \
    -e "install_mode=$install_mode install_desktop=$install_desktop install_terminal=$install_terminal install_ollama=$install_ollama install_docker=$install_docker"

# Display completion message
echo "[*] Done! Logout, then you can pick your desktop environment and Login!"
echo "[🌹] Enjoy your new distro!"

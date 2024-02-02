#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
# http://redsymbol.net/articles/unofficial-bash-strict-mode/

echo "[*] Installing linux basics"
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y pipx curl git wget whiptail neofetch ufw feh pipx

echo "[*] Installing Pipx & Ansible"
pipx install ansible --force
pipx ensurepath
export PATH="$PATH:$HOME/.local/bin"

echo "[*] Installing Ansible Galaxy Collections"
ansible-galaxy install -r requirements.yml
echo "[*] All good, now run:"
echo "bash -x install.sh"

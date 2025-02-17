#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
# http://redsymbol.net/articles/unofficial-bash-strict-mode/

echo "[*] Installing linux basics"
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y pipx curl git wget whiptail fastfetch ufw feh pipx ca-certificates

echo "[*] Installing Pipx & Ansible"
pipx install ansible --force --include-deps
pipx ensurepath
export PATH="$PATH:$HOME/.local/bin"

echo "[*] Installing Ansible Galaxy Collections"
$HOME/.local/bin/ansible-galaxy install -r requirements.yml
echo "[*] All good, now run:"
echo "bash install.sh"

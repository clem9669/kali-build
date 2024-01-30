#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
export PATH="$PATH:$HOME/.local/bin"
# http://redsymbol.net/articles/unofficial-bash-strict-mode/

echo "[*] Installing kali-build. Go grab yourself a coffee, this will run for A WHILE. :D"
ansible-playbook -vv -i inventory.ini --ask-become main.yml -e "install_mode=light"
echo "[*] Done! Logout, then you can pick i3 and Login!"
echo "[🌹] Enjoy your new distro!"

# Ansible Playbook README

## Desktop Environment Configuration

This Ansible playbook configures the desktop environment based on the user's selection. It supports multiple desktop environments (i3, XFCE, Regolith) and handles package management, window manager setup, and terminal configuration.

### Included Tasks

1. **APT Package Management**
   - File: `apt.yml`
   - Updates package cache with a 1-hour validation time
   - Performs a full system upgrade
   - Runs autoremove and autoclean to keep the system tidy
   - Executes only on Debian-based systems

2. **XFCE Desktop Configuration**
   - File: `xfce.yml`
   - Executed when `install_desktop` is set to 'xfce'
   - Creates the Qterminal configuration directory
   - Deploys a custom Qterminal configuration file optimized for XFCE

3. **i3 Window Manager Configuration**
   - File: `i3.yml`
   - Executed when `install_desktop` is set to 'i3'
   - Installs i3, i3blocks, and i3lock packages
   - Creates necessary configuration directories in the user's home folder
   - Deploys custom i3 configuration files:
     - Main i3 config file for keyboard shortcuts and window behavior
     - i3blocks configuration for the status bar
     - Feh background configuration for desktop wallpaper
   - Copies a background image to the user's Pictures directory
   - Configures Qterminal with settings optimized for i3

4. **Regolith Desktop Configuration**
   - File: `regolith.yml`
   - Executed when `install_desktop` is set to 'regolith'
   - Installs the Regolith desktop environment (a customized i3 experience)
   - Steps:
     - Adds Regolith repository and GPG key
     - Installs regolith-desktop, regolith-session-flashback, and regolith-look-nord
     - Installs additional i3xrocks status bar components for system monitoring
     - Creates and configures Regolith-specific directories and files
     - Applies custom i3 configuration and Xresources
     - Sets GNOME interface to use dark theme
     - Deploys wallpaper and configures Qterminal


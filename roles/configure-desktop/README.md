# Ansible Playbook README

## System Configuration

This Ansible playbook aims to configure various aspects of the system, including package updates, installation of software, and setup of desktop environment components. The playbook is organized into separate tasks for clarity.

### Included Tasks

1. **APT Package Management**
   - File: `apt.yml`
   - Includes tasks for updating and upgrading the package cache on Debian/Ubuntu systems, as well as installing various packages using APT.

2. **i3 Window Manager Configuration**
   - File: `i3.yml`
   - Includes tasks for installing and configuring the i3 window manager, along with related configurations.

3. **Feh Background Configuration**
   - File: `feh.yml`
   - Includes tasks for creating directories, configuring the background, and copying an image for use with the Feh image viewer.

4. **Qterminal Profile Configuration**
   - File: `qterminal.yml`
   - Includes tasks for configuring the Qterminal profile by copying a customized `qterminal.ini` file.


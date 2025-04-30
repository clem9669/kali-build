# Ansible Playbook README

## Terminal Environment Configuration

This Ansible role configures the terminal environment for the system, including terminal emulator selection, keyboard layout, and virtualization-specific settings. It provides a consistent terminal experience across different installations.

### Implemented Components

1. **Terminal Emulator Selection**
   - **QTerminal Configuration** (when `install_terminal = 'qterminal'`)
     - File: `qterminal.yml`
     - Configures the QTerminal emulator with optimized settings
   
   - **Alacritty Configuration** (when `install_terminal = 'alacritty'`)
     - File: `alacritty.yml`
     - Installs the Alacritty terminal emulator
     - Sets Alacritty as the default terminal application
     - Deploys custom configuration with optimized settings:
       - Color schemes
       - Font selection and rendering
       - Window behavior and appearance
       - Terminal behavior (scrollback, cursor, etc.)

2. **Keyboard Layout Configuration**
   - File: `keyboard_layout.yml`
   - Sets the system keyboard layout to French (AZERTY)
   - Configures keyboard parameters:
     - Model: pc105
     - Layout: fr (French)
     - Backspace behavior: guess
   - Applied system-wide for all users

3. **Virtualization Detection and Configuration**
   - File: `vmware.yaml`
   - Detects if the system is running in a VMware virtual machine
   - Provides VMware-specific configuration:
     - Creates a help file for shared folder configuration
     - Sets up VMware-specific settings for better integration

### Configuration Details

The terminal configuration includes:
- Font selection and rendering options
- Color schemes and visual appearance
- Terminal behavior settings (scrollback buffer, cursor)
- Keyboard shortcuts and input handling
- System integration settings

### Usage Notes

- Terminal selection is determined by the `install_terminal` variable
- Default QTerminal configurations are included with desktop environments
- Alacritty provides better performance for terminal-intensive workflows
- VMware-specific settings are only applied in VMware environments
- Keyboard layout is configured independently of terminal selection

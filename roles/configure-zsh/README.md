# Ansible Playbook README

## Zsh and Shell Configuration

This Ansible playbook focuses on configuring the Zsh shell and related components. The playbook is modular, organized into separate tasks for different aspects of shell configuration.

### Included Tasks

1. **Zshrc Configuration**
   - File: `zshrc.yml`
   - Includes tasks for copying the Zsh configuration file (`zshrc`) to the home directory.

2. **Zsh Theme Configuration**
   - File: `zshtheme.yml`
   - Includes tasks for checking and copying the custom Zsh theme (`agnoster.zsh-theme`) to the Oh My Zsh themes directory.

3. **Zsh Autosuggestions Configuration**
   - File: `zsh-autosuggestions.yml`
   - Includes tasks for checking and installing Zsh Autosuggestions from the official GitHub repository.

4. **Atuin Configuration**
   - File: `atuin.yml`
   - Includes tasks for checking and installing Atuin, a Zsh plugin manager, and copying the Atuin configuration file (`config.toml`).


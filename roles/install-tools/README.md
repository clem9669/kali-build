# Ansible Playbook README

## Tool Installation Playbook

This Ansible playbook focuses on installing various tools and utilities on a target system. The playbook is modular, with separate tasks for different categories of tools.

### Included Tasks

1. **APT Packages Installation**
   - File: `apt.yml`
   - Installs essential APT packages based on the selected installation mode (`light` or `full`).

2. **Burp Suite Installation**
   - File: `burp.yml`
   - Downloads and configures Burp Suite Community and Pro versions, including CA certificate setup.
      - param_miner.bapp
      - retire_js.bapp
      - json_web_token.bapp
      - active_scan_plus.bapp
      - autorize.bapp
      - js_miner.bapp
      - J2EEScan.bapp
      - 403bypass.bapp
      - JS_Link_Finder.bapp
      - Auth_Analyzer.bapp
      - Authz.bapp

3. **Ruby Gems Installation**
   - File: `gem.yml`
   - Installs Ruby gems used for various purposes.

4. **GitHub Repositories Cloning**
   - File: `github.yml`
   - Clones various GitHub repositories into the `/opt/` directory.

5. **Pip Packages Installation**
   - File: `pip.yml`
   - Installs Python packages using pip or pipx, including some tools and libraries.

6. **Sublime Text Installation**
   - File: `sublimetext.yml`
   - Installs Sublime Text and configures user preferences.

7. **ZedEncrypt Installation**
   - File: `zedencrypt.yml`
   - Installs ZedEncrypt tool on the target system.

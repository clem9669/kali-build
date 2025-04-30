# Ansible Playbook README

## Tool Installation Playbook

This Ansible playbook focuses on installing various tools and utilities on a target system. The playbook is modular, with separate tasks for different categories of tools.

### Included Tasks

1. **APT Packages Installation**
   - File: `apt.yml`
   - Installs essential APT packages based on the selected installation mode:
     - **Light Install**: jq, ntpdate, flameshot, xxd, gdb, npm, xclip, bettercap, wafw00f, remmina, nuclei, feroxbuster, gobuster, rsyslog, xz-utils, httpx-toolkit, testssl.sh, iptables-persistent, keepassxc, btop, strace, ltrace, cmake, exploitdb-papers, python3-pip, fzf, sshpass
     - **Full Install**: seclists, exiftool, bloodhound, xsltproc, wine64, realtek-rtl88xxau-dkms, libpcap-dev, libreoffice, libkrb5-dev, krb5-config, krb5-user, freerdp3-x11, hydra, chromium, vlc, rlwrap, genisoimage

2. **Burp Suite Configuration**
   - File: `burp.yml`
   - Downloads and configures Burp Suite Community and Pro versions
   - Sets up extension directories and downloads extensions
   - Installs key Burp extensions:
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
   - Configures community and pro versions with custom settings

3. **Ruby Gems Installation**
   - File: `gem.yml`
   - Installs Ruby gems when in full installation mode:
     - logger, stringio, winrm, builder, erubi, gssapi
     - gyoku, httpclient, logging, little-plugger, nori
     - rubyntlm, winrm-fs, evil-winrm (for Windows Remote Management)

4. **GitHub Repositories Cloning**
   - File: `github.yml`
   - Clones 60+ pentesting and security GitHub repositories into `/opt/` including:
     - Privilege escalation tools: PEASS-ng, GodPotato, PrintSpoofer, juicy-potato
     - Active Directory tools: BloodHound, krbrelayx, mitm6, Rubeus, Certify
     - Credential dumping: LaZagne, Mimikatz, lsassy, PCredz, pypykatz
     - Network tools: Responder, IOXIDResolver, chisel, Cameradar
     - Various exploit and scanning tools: ntlm_theft, bypass-403, ntdsextract2
     - Wordlists and rules for password cracking
   - Downloads additional binaries from GitHub releases for tools like PEASS, pspy, and GodPotato
   - Configures GDB with GEF (GDB Enhanced Features)
   - Downloads Microsoft Sysinternals Suite

5. **Python Packages Installation**
   - File: `pip.yml`
   - Installs specialized Python tools via pipx:
     - impacket, ldeep, certipy-ad, coercer, tldr, sipvicious
     - ApacheTomcatScanner, NetExec, DonPAPI, dploot, bypass-url-parser
     - adidnsdump, bopscrk
   - Installs 50+ Python libraries via pip:
     - Network libraries: scapy, netifaces, netaddr, dnspython
     - Cryptography: cryptography, pycryptodome, pyOpenSSL
     - Parsers: lxml, beautifulsoup4, pefile, pylnk3
     - Data manipulation: pandas, openpyxl
     - And many more support libraries for security tools

6. **Sublime Text Installation**
   - File: `sublimetext.yml`
   - Installs Sublime Text editor with custom key bindings and preferences
   - Adds the official Sublime Text repository
   - Configures user preferences and keybindings

7. **ZedEncrypt Installation**
   - File: `zedencrypt.yml`
   - Installs ZED Free and ZEDLE digital forensics tools
   - Downloads packages, extracts them, and installs via dpkg
   - Performs cleanup after installation to save disk space

8. **Cargo (Rust) Tools Installation**
   - File: `cargo.yml`
   - Installs Rust via rustup
   - Installs bat (a cat clone with syntax highlighting) via cargo

9. **Go Tools Installation**
   - File: `go.yml`
   - Installs Go-based security and utility tools:
     - sourcemapper: for mapping JavaScript source maps
     - croc: secure file transfer tool
     - gowitness: web screenshot utility
     - cent: nuclei templates enrichment tool
     - fq: jq-like tool for binary formats
     - gau: fetch known URLs from various sources
     - gron: makes JSON greppable
     - pdtm: ProjectDiscovery's tool manager
   - Configures pdtm to install or update all ProjectDiscovery tools

10. **AI Tool Installation**
    - File: `IA.yml`
    - Installs Ollama AI tool for local AI models
    - Downloads and configures the Mistral AI model when enabled

11. **Docker Installation**
    - File: `docker.yml`
    - Removes unofficial Docker packages
    - Installs official Docker CE from Docker's repository
    - Configures Docker repositories and GPG keys
    - Installs Docker components: docker-ce, docker-ce-cli, containerd.io, docker-buildx-plugin, docker-compose-plugin

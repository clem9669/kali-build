# Ansible Playbook README

## Logging and Security Configuration

This Ansible playbook focuses on configuring logging, security, and system-related settings. The playbook is modular, organized into separate tasks for different aspects of system configuration.

### Included Tasks

1. **UFW (Uncomplicated Firewall) Configuration**
   - File: `ufw.yml`
   - Includes tasks for installing UFW, setting up firewall policies, and enabling logging for UFW.

2. **Auditd Configuration**
   - File: `auditd.yml`
   - Includes tasks for installing the `auditd` package, configuring audit rules, and restarting the `auditd` service.

3. **General System Configuration**
   - File: `general.yml`
   - Includes tasks for setting the system timezone to "Europe/Paris," updating the local database, and enabling the `rsyslog` service.

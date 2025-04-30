# Ansible Playbook README

## System Logging and Auditing

This Ansible role configures comprehensive system logging, security auditing, and basic system settings. It focuses on enabling detailed activity tracking while ensuring proper system configuration.

### Implemented Components

1. **UFW Logging Configuration**
   - File: `ufw.yml`
   - Ensures the UFW firewall is properly installed and configured
   - Implements logging for all firewall activities:
     - Enables comprehensive UFW logging
     - Configures rsyslog for proper log handling
     - Sets up log rotation to manage log files
     - Adds custom log rules for specific traffic patterns
   - Implements a security-focused firewall policy

2. **Auditd Installation and Configuration**
   - File: `auditd.yml`
   - Installs the Linux Audit daemon (auditd) package
   - Deploys a comprehensive set of audit rules that track:
     - File system access to sensitive files
     - Privileged command execution
     - User and group management
     - System call monitoring for suspicious activity
     - Network configuration changes
     - Account modification events
   - Ensures auditd service is enabled and running
   - Configures proper log retention and rotation

3. **General System Configuration**
   - File: `general.yml`
   - Sets the system timezone to Europe/Paris
   - Updates the system's file database with `updatedb` for improved file searching
   - Adds commented network configuration templates to `/etc/network/interfaces`
     - Provides examples for static IP configuration
     - Includes templates for address, netmask, and gateway settings

### Security Monitoring Capabilities

The configured logging system provides:

- Detailed system activity tracking for forensic analysis
- Real-time monitoring capabilities for security events
- Compliance with security best practices for system logging
- Proper log management to prevent disk space issues
- Network activity monitoring through firewall logs

### Implementation Notes

- Auditd is configured with a comprehensive rule set to track system activity
- UFW logging is enabled to monitor all network traffic
- System logging is configured to maintain a detailed record of system events
- All logs use proper rotation to manage disk space
- Time synchronization is configured to ensure accurate timestamps

# Ansible Playbook README

## System Security Hardening

This Ansible role implements extensive security hardening measures for Linux systems, particularly focused on Debian-based distributions. It applies defense-in-depth principles across network services, kernel parameters, system access, and more.

### Implemented Security Controls

1. **Service Hardening**
   - File: `services.yml`
   - Disables potentially vulnerable services:
     - Stops and disables SSH server to prevent remote access
     - Disables NetworkManager to prevent automatic network configuration changes

2. **Kernel Parameter Hardening**
   - File: `kernel_param.yml`
   - Creates a custom sysctl configuration file with extensive security settings:
     - Enables SYN flood protection
     - Disables packet forwarding and routing functionality
     - Implements IP spoofing protection via reverse path filtering
     - Ignores ICMP redirects and broadcast requests
     - Randomizes memory addresses (ASLR)
     - Protects against hardlink/symlink attacks
     - Restricts kernel pointer exposure
     - Disables IPv6 when not needed
   - Applies settings immediately with sysctl

3. **Secure Login Banner**
   - File: `banner.yml`
   - Configures system login banners with security warnings

4. **Firewall Configuration**
   - File: `ufw.yml`
   - Implements a default-deny policy with Uncomplicated Firewall (UFW):
     - Denies all incoming connections by default
     - Denies all forwarded traffic
     - Allows established connections
     - Enables UFW logging for security monitoring
     - Adds custom logging for SYN packets
     - Persists rules across reboots with iptables-persistent
   - Ensures rsyslog service is running for log collection

5. **System Information Protection**
   - File: `bios.yml`
   - Audits system BIOS information for security assessment
   - Identifies potential firmware vulnerabilities

6. **Desktop Environment Hardening**
   - File: `i3.yml`
   - Secures the i3 window manager configuration for workstation security

### Security Considerations

- This role is designed to be used with the `hard` installation mode
- Some measures may impact system usability (e.g., disabling SSH)
- Kernel parameters are configured for maximum security, not performance
- Firewall rules implement a strict default-deny approach

The hardening measures aim to significantly reduce attack surface, prevent common attack vectors, and provide enhanced logging for security monitoring.


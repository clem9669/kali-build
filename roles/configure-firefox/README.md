# Ansible Playbook README

## Firefox Configuration Role

This Ansible role is designed to harden and optimize Firefox for security, privacy, and penetration testing. It applies a comprehensive set of policies to Firefox and installs security-focused extensions.

### Role Overview

- **Creates Directory**: Establishes the `/etc/firefox/policies/` directory for system-wide Firefox policies
- **Applies Policies**: Deploys a customized `policies.json` file with security and privacy settings
- **Installs Extensions**: Configures Firefox to automatically install security and penetration testing extensions

### Deployed Firefox Policies

The role configures Firefox with the following security and privacy settings:

1. **Privacy Enhancements**:
   - Rejects third-party cookies and trackers
   - Disables Pocket integration
   - Disables Firefox accounts
   - Disables telemetry and studies

2. **Security Settings**:
   - Installs custom certificates (including Burp Suite CA for intercepting HTTPS)
   - Controls password management features
   - Sets secure DNS settings

3. **Penetration Testing Optimizations**:
   - Enables developer tools
   - Configures proxy settings
   - Allows customization of user agent

4. **Bookmarks Organization**:
   - Creates structured bookmark folders for:
     - CTF tools (CyberChef, GTFOBins, JWT.io, etc.)
     - OSINT resources
     - Password cracking sites
     - Reference materials for internal/external testing
     - General security utilities

### Pre-installed Extensions

Firefox is configured to automatically install these security-focused extensions:

- **FoxyProxy Standard**: Advanced proxy management
- **uBlock Origin**: Ad and tracker blocking
- **Decentraleyes**: Local CDN emulation for privacy
- **Wappalyzer**: Technology identification
- **Privacy Badger**: Automatic tracker blocking
- **PwnFox**: Penetration testing assistance

### Implementation Details

- The task uses Ansible's template module to deploy a Jinja2 template (`policies.json.j2`)
- Policies are applied system-wide to affect all users
- The configuration requires root privileges (via become/sudo)

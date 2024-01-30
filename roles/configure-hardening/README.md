# Ansible Playbook README

## Configure Hardening

This Ansible playbook focuses on configuring various security-hardening measures on a target system. The playbook is modular, organized into separate tasks for different aspects of system hardening.

### Included Tasks

1. **Services Configuration**
   - File: `services.yml`
   - Includes tasks related to configuring and managing system services.

2. **Kernel Parameter Hardening**
   - File: `kernel_param.yml`
   - Includes tasks for configuring kernel parameters to enhance security.

3. **Banner Configuration**
   - File: `banner.yml`
   - Includes tasks for configuring system banners.

4. **UFW (Uncomplicated Firewall) Configuration**
   - File: `ufw.yml`
   - Includes tasks for installing UFW and setting up firewall rules.

5. **BIOS Information Retrieval**
   - File: `bios.yml`
   - Includes tasks for running `dmidecode` to retrieve BIOS information and displaying the BIOS version.

6. **i3 Window Manager Configuration**
   - File: `i3.yml`
    
7. **Additional Hardening Measures**
   - File: (Uncommented) `ntp.yml`


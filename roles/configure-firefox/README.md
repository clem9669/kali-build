# Ansible Task README

## Updating Firefox Policies

This Ansible task is designed to automate the process of updating Firefox policies on a target system using the policy templates provided by Mozilla. The task leverages the Jinja2 template engine to customize the `policies.json` file and then deploys it to the specified destination on the target system.

### Task Details

- **Task Name:** Updating Firefox Policies
- **Task Module:** `template`
- **Source Template:** `templates/policies.json.j2`
- **Destination Path:** `/usr/share/firefox-esr/distribution/policies.json`
- **Privilege Escalation:** The task uses `become` with `sudo` as the privilege escalation method.

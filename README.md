<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/clem9669/kali-build">
    <img src="https://upload.wikimedia.org/wikipedia/commons/2/24/Ansible_logo.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Kali-build</h3>

  <p align="center">
    Ansible automation playbooks for debian based OS for pentesters
    <br>
  </p>
</div>
  
<!-- ABOUT THE PROJECT -->
## About The Project

Every time a new (virtual) machine is created, pentesters often find themselves recreating their entire environment, including the window manager, terminal, software, configurations, and more. 
Inspired by Ippsec's video and repository, I've embarked on a journey with Ansible to simplify this process.

Feel free to fork this project to start you own version and add custom specifications ! 

Here's the goals:
* Optimize your Time: Your valuable time should be spent on meaningful tasks, not repetitive setup.
* Eliminate repetition: Say goodbye to performing the same tasks repeatedly; automate them.
* Rapid Machine Creation: with this project, you can create an identical machine within minutes.
* Flexibility in Configuration: quickly tailor the sensitivity of the pentester's machine to your needs.

## Sum-Up

The ansible playbook `main.yml` applies 10 ansible roles which are:

- roles/configure-i3
- gantsign.oh-my-zsh
- gantsign.golang
- roles/configure-zsh
- roles/install-tools
- gantsign.visual-studio-code
- roles/configure-firefox
- roles/configure-logging
- roles/configure-hardening
- roles/configure-terminals

## Pre-Install, Install, Update

I recommand to install ansible with pip instead of apt.
Starting from a nice and clean OS will avoid any trouble with dependencies and previous installati

```bash
# Pre-install
sudo apt install -y curl wget git # Basics
git clone https://github.com/clem9669/kali-build
cd kali-build
bash pre-install.sh

# Main Install
bash install.sh

```

It is possible to adjust the script with the 3 followings args `ansible-playbook main.yml -K -e "install_mode=full"`:
- light
- full (=> all tools)
- hard (=> hardening)

<!-- USAGE EXAMPLES -->
## Details and explanations

### roles/configure-i3

| Step                | Description                                                                                     | File(s) / Command(s) Modified                                                                 | Comments                                                                                   |
|---------------------|-------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| 1. Install i3 packages | - Installs the i3 window manager and possibly its dependencies (i3status, i3lock, etc.).       | - Uses the apt module to install the necessary packages (e.g., i3, i3status)                | Ensures that i3 and associated tools are present on the system.                            |
| 2. Create configuration directory | - Creates the configuration directory for i3 in the user's home directory (usually ~/.config/i3). | - Uses the file module to create the directory ~/.config/i3                                 | Verifies that the directory exists before copying configuration files.                   |
| 3. Deploy configuration file | - Copies or generates the main i3 configuration file (often named config) in the configuration directory. | - Uses the copy or template module to deploy the config file (e.g., files/config or templates/config.j2) | Allows customization of the i3 configuration (keyboard shortcuts, appearance, etc.).      |
| 4. Deploy additional files | - Deploys other optional files (e.g., configuration for i3status or autostart scripts).       | - Uses the copy module to transfer files like i3status.conf or autostart scripts            | Provides a complete configuration for the i3 environment.                                 |
| 5. Manage permissions | - Ensures that the deployed files and directories have the correct permissions and ownership.  | - Uses the file module with owner, group, and mode parameters                               | Important to ensure that the configuration will be read correctly by i3.                  |
| 6. Restart / reload i3 | - (Optional) Runs a command to restart or reload the i3 configuration to apply changes immediately. | - Uses the command or shell module to execute i3-msg restart or i3-msg reload              | This step can be conditional or displayed as a manual recommendation to the user.          |

### gantsign.oh-my-zsh

| Step                | Action Performed                                                                                     | Module/Instruction                                                                 | Condition / Note                                                                                   |
|---------------------|-----------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| 1. Load system-specific variables | Searches for and imports the variable file corresponding to the OS family (e.g., "Debian.yml" or "default.yml") | ansible.builtin.include_vars with a lookup first_found                            | The variable files are located in the vars/os_family directory                                    |
| 2. Install Oh My Zsh | Executes the set of tasks for installing and configuring Oh My Zsh by importing the task file "install.yml" | ansible.builtin.import_tasks: install.yml                                         | This file contains the actual installation logic (cloning the repo, configuration, etc.)          |
| 3. Adjustments for the console on Debian | Performs specific settings for the console configuration on Debian-based distributions | ansible.builtin.include_tasks: debian-console-setup.yml                          | This step is only executed if ansible_facts.os_family is Debian                                  |

### gantsign.golang
### roles/configure-zsh
### roles/install-tools
### gantsign.visual-studio-code
### roles/configure-firefox
### roles/configure-logging
### roles/configure-hardening

Make a table for all the things done in playbooks


### Built With

This section should list any major resources used to build the project. 

* https://github.com/ippsec/parrot-build
* https://github.com/laluka/lalubuntu
* https://www.youtube.com/ippsec
* https://chat.openai.com/
* https://docs.ansible.com/
* https://www.sublimetext.com/

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/clem9669/kali-build/issues) for a full list of proposed features (and known issues).


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

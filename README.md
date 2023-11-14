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

### Built With

This section should list any major resources used to build the project. 

* https://github.com/ippsec/parrot-build
* https://www.youtube.com/ippsec
* https://chat.openai.com/
* https://docs.ansible.com/
* https://www.sublimetext.com/

<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.

### Prerequisites

I recommand to install ansible with pip instead of apt.
Starting from a nice and clean OS will avoid any trouble with dependencies and previous installations.

```sh
pip install ansible
```

### Installation

Follow these steps to set up your environment on a Debian-based operating system:

1. Prepare Your Environment:
    * Ensure you are on a Debian-based OS with knowledge of the privileged account password.

2. Clone the Repository:
    * Clone the repository and navigate to the project directory:

        ```sh
        git clone https://github.com/clem9669/kali-build
        cd kali-build/
        ```

3. Install Dependencies:
    * Install the necessary Ansible roles and dependencies using Ansible Galaxy:

        ```sh
        ansible-galaxy install -r requirements.yml
        ```

4. Execute Ansible Playbook:
    * Start the Ansible playbook and provide your root password when prompted for elevated operations:

        ```sh
        ansible-playbook main.yml --ask-become-pass # or -K
        ```

Copy/paste:
```sh
git clone https://github.com/clem9669/kali-build
cd kali-build/
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml --ask-become-pass
```

It is possible to adjust the script with the 3 followings args `ansible-playbook main.yml -K -e "install_mode=full"`:
- light
- full (=> all tools)
- hard (=> hardening)

<!-- USAGE EXAMPLES -->
## Usage

Make a table for all the things done in playbooks


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

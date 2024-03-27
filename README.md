<!-- 項目標誌 -->
<div align="center">
  <a href="https://github.com/TheProdigyLeague/another_lilnux_build">
    <img src="https://github.com/TheProdigyLeague/another_linux_build/assets/30985576/69127d4e-9f4b-4f12-8f7b-06be375d850e" alt="Logo" width="550" height="450">
  </a>
  <div align="center">
  <a href="https://github.com/clem9669/kali-build">
    <img src="https://upload.wikimedia.org/wikipedia/commons/2/24/Ansible_logo.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Linux A.I.</h3>

  <p align="center">
    https://www.ansible.com/ - A Debian based OS for hackers.
    <br>
  </p>
</div>
  
<!-- 關於項目 -->

# 適用於 Linux 滲透測試人員的 Ansible(c) 自動化

When Corporate Executives create a machine. A new "virtual environment" is derived from Windows terminals, software, management, and configurations. Subsequently, hackers will often be eager to competitively apply for testing. At a hearty sum. This project was inspired by: https://www.hackthebox.com/ipsec <br>
I, Clem9669, wanted to simplify this process by adding my own custom specifications.

## Goals:

* **Clock Optimization:** *Priority should be focused on end-user ☑️ instead of ⚙️*
* **Repitions Based:** *Performance based tasks should be automated.*
* **Machine Learning:** *Project to production engineering.*
* **Opaque Configuration:** *Tailor's sensitivity towards machine exploitation.*

### Sum-Up

Ansible(c) `main.yml` applies roles:

- `roles/configure-i3`
- `gantsign.oh-my-zsh`
- `gantsign.golang`
- `roles/configure-zsh`
- `roles/install-tools`
- `gantsign.visual-studio-code`
- `roles/configure-firefox`
- `roles/configure-logging`
- `roles/configure-hardening`

#### Download, Install, Update, Repeat

End-Users install Ansible(c) with `pip` instead of `apt`.
I, Clem9669, started from Oracle(c(TM))'s VM, to avoid any trouble with dependencies and previous installations.

```bash
# Pre-install
sudo apt install -y curl wget git # pkg man
git clone https://github.com/clem9669/kali-build
cd kali-build
bash -x pre-install.sh
bash -x install.sh # dependency build

```

I, Clem9669, adjusted `script.py` with `args` , `ansible-playbook main.yml -K -e "install_mode=full"`:

- light (▶ No security)
- hard (▶ Shell hardening)
- full (▶ Dev tools)


<!-- 使用表 -->
#### Details and explanations

- `roles/configure-i3`
- `gantsign.oh-my-zsh`
- `gantsign.golang`
- `roles/configure-zsh`
- `roles/install-tools`
- `gantsign.visual-studio-code`
- `roles/configure-firefox`
- `roles/configure-logging`
- `roles/configure-hardening`

**A playbook table has not been made**


#### Building

**Source:**

* https://github.com/ippsec/parrot-build
* https://github.com/laluka/lalubuntu
~~https://www.youtube.com/ippsec~~
* https://chat.openai.com/
* https://docs.ansible.com/
* https://www.sublimetext.com/

<!-- 亚洲开发团队。 -->

[Issues](https://github.com/clem9669/kali-build/issues) A full list of ~~proposed~~ features.


<!-- مختبري الاختراق لدينا -->
#### आय

*Our contributors come from all over the world. Our developers make it "Open-source" by default. But growth also brings with it the motivation of profit. Donations will therefore be made, mostly from Asian nations. Only hackers, penetration testers, and beta testers are eligible to submit suggestions. Pull requests initiated by forking this repository without prior approval from our Executive Team will be placed on a waiting list. Open issues require "enhancements" and tags. If not, it will be thrown away.*

**एक:** प्रोजेक्ट को फोर्क करें
**दो:** अपनी फ़ीचर शाखा बनाएं (`git checkout -b फ़ीचर/AmazingFeature`)
**तीन:** अपने परिवर्तन प्रतिबद्ध करें (`गिट कमिट -एम 'कुछ अद्भुत फीचर जोड़ें'`)
**चार:** शाखा पर पुश करें ('गिट पुश ओरिजिन फीचर/अमेजिंगफीचर')
**पाँच:** एक पुल अनुरोध खोलें

-- eof --

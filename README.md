# 🍷 Sommelier

**Sommelier** is an opinionated and automated development environment setup for **Ubuntu**, **Fedora** and **macOS**. It ensures that your system is configured with the necessary packages, tools and configurations for a seamless development experience. Ever had to spend half-a-day setting up a new development machine? Sommelier was built to solve this problem.

# 🚀 Features

- **Automatic Installation** - Installs essential development tools and dependencies.
- **Cross-platform support** - Works on Ubuntu, Fedora and macOS.
- **Repeatable and consistent** - Standardises environment setup across multiple machines.
- **Terminal commands** that enable you to install, uninstall and update Sommelier.

# 🛠️ Installs

- **Desktop apps** including Sublime Text, ghostty, Google Chrome, Slack and other tools.
- **Terminal tools** such as git, ripgrep, eza, fastfetch, GitHub CLI and btop.
- **Styles** including Gnome settings, desktop backgrounds, fonts and the terminal theme Dracula.

# 🖥️ Installation breakdown by type

## Desktop

| Tool | Fedora | Ubuntu | macOS
| ---- | :------: | :-------: | :-------: |
| [Google Chrome](https://www.google.com/intl/en_uk/chrome/) | ✔️ | ✔️ | ✔️ |
| [DBeaver](https://dbeaver.io/) | ✔️ | ✔️ | ✔️ |
| [Flameshot](https://flameshot.org/) | ❌ | ✔️ | ❌ | 
| [Ghostty](https://ghostty.org/) | ✔️ | ✔️ | ✔️ |
| [LocalSend](https://localsend.org/) | ❌ | ✔️ | ❌ |
| [Signal](https://signal.org/) | ❌ | ✔️ | ✔️ |
| [Slack](https://slack.com/intl/en-gb) | ✔️ | ✔️ | ✔️ |
| [Spotify](https://open.spotify.com/) | ❌ | ✔️ | ✔️ |
| [Sublime Text](https://www.sublimetext.com/) | ✔️ | ✔️ | ✔️ |
| [VLC](https://www.videolan.org/) | ✔️ | ✔️ | ✔️ |
| [Xournal](https://xournalpp.github.io/) | ✔️ | ✔️ | ❌ |

## Terminal Tools
| Tool | Fedora | Ubuntu | macOS
| ---- | :------: | :-------: | :-------: |
| [bat](https://github.com/sharkdp/bat) | ✔️ | ✔️ | ✔️ 
| [btop](https://github.com/aristocratos/btop) | ✔️ | ✔️ | ✔️ |
| [Docker](https://www.docker.com/)| ✔️ | ✔️ | ✔️ |
| [eza](https://github.com/eza-community/eza) | ✔️ | ✔️ | ✔️ |
| [Fastfetch](https://github.com/fastfetch-cli/fastfetch) | ✔️ | ✔️ | ✔️ |
| [Fish Shell](https://fishshell.com/) | ✔️ | ✔️ | ✔️ |
| [fzf](https://github.com/junegunn/fzf) | ✔️ | ✔️ | ✔️ |
| [GitHub CLI](https://cli.github.com/) | ✔️ | ✔️ | ✔️ |
| [Gnome Sushi](https://gitlab.gnome.org/GNOME/sushi) | ❌ | ✔️ | ❌ |
| [Gnome Tweaks](https://gitlab.gnome.org/GNOME/gnome-tweaks) | ❌ | ✔️ | ❌ |
| [plocate](https://plocate.sesse.net/) | ✔️ | ✔️ | ✔️ |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | ✔️ | ✔️ | ✔️ |
| [Neovim](https://neovim.io/) | ✔️ | ✔️ | ✔️ | 
| [wl-clipboard](https://github.com/bugaevc/wl-clipboard) | ✔️ | ✔️ | ❌ |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | ✔️ | ✔️ | ✔️ |

## Styles

| Tool | Fedora | Ubuntu | macOS
| ---- | :------: | :-------: | :-------: |
| Backgrounds | ✔️ | ✔️ | ❌
| [Cascadia Mono (font)](https://www.nerdfonts.com/font-downloads) | ✔️ | ✔️ | ✔️ |
| [Dracula (terminal theme)](https://draculatheme.com/fish) | ✔️ | ✔️ | ✔️ |
| [Fira Code (font)](https://www.programmingfonts.org/#firacode) | ✔️ | ✔️ | ✔️ |
| [Ubuntu Mono (Font)](https://www.programmingfonts.org/#ubuntu) | ✔️ | ✔️ | ✔️ |

## Gnome Settings
There are multiple Gnome settings that are tweaked as part of the installation process. These only apply to Fedora and Ubuntu, as macOS does not run on Gnome. These include pinning favourite apps to the dock, which include Sublime Text, Ghostty and Chrome, along with Spotify and Signal for Ubuntu. Google Chrome is also set as the default web browser and the stylistics of the UI adapted to prefer using dark themes (with [Adwaita](https://gnome.pages.gitlab.gnome.org/libadwaita/) in Fedora and [Yaru](https://github.com/ubuntu/yaru) for Ubuntu). Additionally, a new hotkey is added to enable locking a screen using `<Cntrl> + L`. 

# 📦 Installation

You can clone the repository and run `run.sh` in the root directory.

```
git clone https://github.com/aroundwithalex/sommelier.git
cd sommelier
./run.sh
```

# ⭐ Contributions

Contributions are welcome! Please feel free to open pull requests with enhancements. If you want to add more applications, please also feel free to fork this repository and adapt 
as per your needs.

# 📏 How to extend

If you want to add more applications or tools, you first need to identify the operating system that you're using. Next, you will need to add a shell script containing the name of the application and a command to install it. This should be the same command that you'd use with the default package manager on your OS (for Mac, Sommelier will automatically make sure Homebrew is installed, so you can just use that one). If you need to download binaries, you could use wget or curl within your shell script. Refer to the existing scripts for guidance.

# ⚖️ License

MIT license - free for use and modification.

# Tested On

- Fedora Workstation 41
- Ubuntu 24.04.1 LTS
- macOS Sequoia 15.3

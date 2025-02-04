# Sommelier

*Sommelier* is an opinionated and automated development environment setup for *Ubuntu*, *Fedora* and *macOS*. It ensures that your system is configured with the necessary packages, tools and configurations for a seamless development experience. Ever had to spend half-a-day setting up a new development machine? Sommelier was built to solve this problem.

# Features

- *Automatic Installation* - Installs essential development tools and dependencies.
- *Cross-platform support* - Works on Ubuntu, Fedora and macOS.
- *Repeatable and consistent* - Standardises environment setup across multiple machines.
- *Terminal commands* that enable you to install, uninstall and update Sommelier.

# Installs

- *Desktop apps* including Sublime Text, ghostty, Google Chrome, Slack and other tools.
- *Terminal tools* such as git, ripgrep, eza, fastfetch, GitHub CLI and btop.
- *Styles* including Gnome settings, desktop backgrounds, fonts and the terminal theme Dracula.

# Installation

You can clone the repository and run `run.sh` in the root directory.

```
git clone https://github.com/aroundwithalex/sommelier.git
cd sommelier
./run.sh
```

# Contributions

Contributions are welcome! Please feel free to open pull requests with enhancements. If you want to add more applications, please also feel free to fork this repository and adapt 
as per your needs.

# How to extend

If you want to add more applications or tools, you first need to identify the operating system that you're using. Next, you will need to add a shell script containing the name of the application and a command to install it. This should be the same command that you'd use with the default package manager on your OS (for Mac, Sommelier will automatically make sure Homebrew is installed, so you can just use that one). If you need to download binaries, you could use wget or curl within your shell script. Refer to the existing scripts for guidance.

# License

MIT license - free for use and modification.
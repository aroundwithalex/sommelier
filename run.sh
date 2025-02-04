#!/bin/bash

set -exuo

printf "$(tput setaf 2)\n Welcome to sommelier, a tool to automatically set up Unix machines!\n"
printf "$(tput setaf 2)\n Please note that only certain operating systems (Fedora, Ubuntu, macOS) are supported\n"

printf "$(tput setaf 3)\n Beginning installation (abort with ctrl+c, suspend with ctrl+z)\n"
printf "$(tput setaf 3)\n You will be prompted for your password at various points in this process.\n"

if ! command -v uname &>/dev/null; then
	printf "$(tput setaf 1)\n Unable to check whether this operating system is supported\n"
	printf "$(tput setaf 1)\n Please install uname using your package manager and start again \n"
fi

SUPPORTED_OS=$([[ "$(uname -s)" = 'Linux' || "$(uname -s)" = 'Darwin' ]] && echo true || echo false)

if [ ! "$SUPPORTED_OS" = 'true' ]; then
	printf "$(tput setaf 1)\n $(uname) is not a supported operating system. Exiting\n"
	exit 1
fi

printf "$(tput setaf 2)\n You are running on $(uname), which is a supported OS\n"

DETECTED_OS='mac'
PKG_MANAGER='brew'

if [ "$(uname -s)"  = 'Linux' ]; then
	if [ ! -f /etc/os-release ]; then
		printf "$(tput setaf 1)\n Cannot found /etc/osrelease\n"
		printf "$(tput setaf 1)\n We can therefore deduce that this variant of Linux is not supported\n"
		exit 1
	fi

	source /etc/os-release

	case "$ID" in
		"fedora")
			printf "$(tput setaf 2)\n You're running on Fedora, which is a supported OS\n"
			DETECTED_OS='fedora'
			PKG_MANAGER='sudo dnf'
			;; 
		"ubuntu")
			printf "$(tput setaf 2)\n You're running on Ubuntu, which is a supported OS\n"
			DETECTED_OS='ubuntu'
			PKG_MANAGER='sudo apt'
			;;
		*)
			printf "$(tput setaf 1)\n You are running on ${ID}, which is an unsupported Linux distro\n"
			printf "$(tput setaf 1)\n Exiting \n"
			exit 1
			;;
	esac
elif [ "$(uname -s)" = 'Darwin' ]; then
	if ! command -v brew &>/dev/null; then
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	fi
fi

$PKG_MANAGER install -y git curl wget unzip > /dev/null
$PKG_MANAGER update >/dev/null && $PKG_MANAGER upgrade > /dev/null

rm -rf ~/.local/share/sommelier

git clone https://github.com/aroundwithalex/sommelier.git --single-branch  ~/.local/share/sommelier > /dev/null

cd ~/.local/share/sommelier

bash install.sh $DETECTED_OS

printf "$(tput setaf 2)\n Installation finished. Please restart your shell\n"

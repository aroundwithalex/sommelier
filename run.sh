#!/bin/bash

set -euo

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
	printf "$(tput setaf 2)\n You are running on $(uname), which is a supported OS\n"
	if ! command -v brew &>/dev/null; then
		printf "$(tput setaf 2)\n Homebrew is not installed. Installing...\n"
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	fi
fi

printf "$(tput setaf 2)\n Installing dependencies (git, curl, wget, unzip)...\n"

if ! $PKG_MANAGER install git curl wget unzip 2> /dev/null; then
	printf "$(tput setaf 1)\n Unable to install dependencies. Please try again later.\n"
	exit 1
fi 

printf "$(tput setaf 2)\n Updating and upgrading system with $PKG_MANAGER\n"

if ! $PKG_MANAGER update; then
	printf "$(tput setaf 1)\n Unable to update packages via $PKG_MANAGER\n"
	exit 1
fi

if ! $PKG_MANAGER upgrade; then
	printf "$(tput setaf 1)\n Unable to upgrade packages via $PKG_MAMANGER\n"
	exit 1
fi

rm -rf ~/.local/share/sommelier

git clone https://github.com/aroundwithalex/sommelier.git --single-branch  ~/.local/share/sommelier > /dev/null

cd ~/.local/share/sommelier

bash install.sh $DETECTED_OS

printf "$(tput setaf 2)\n Installation finished. Please restart your shell\n"

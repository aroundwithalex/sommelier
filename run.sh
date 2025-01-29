#!/bin/bash

set -exuo

echo "\n\n Welcome to sommelier, a tool to automatically set up Unix machines!\n\n"
echo "\n\n Please note that only certain operating systems (Fedora, Ubuntu, macOS) are supported\n\n"

echo "\n\n Beginning installation (abort with ctrl+c, suspend with ctrl+z)\n\n"

if ! command -v uname &>/dev/null; then
	echo "\n\n Unable to check whether this operating system is supported\n\n"
	echo "\n\n Please install uname using your package manager and start again \n\n"
fi

SUPPORTED_OS=$([[ "$(uname -s)" = 'Linux' || "$(uname -s)" = 'Darwin' ]] && echo true || echo false)

if [ ! "$SUPPORTED_OS" = 'true' ]; then
	echo "\n\n $(uname) is not a supported operating system. Exiting\n\n"
	exit 1
fi

echo "\n\n You are running on $(uname), which is a supported OS"

DETECTED_OS='mac'
PKG_MANAGER='brew'

if [ "$(uname -s)"  = 'Linux' ]; then
	if [ ! -f /etc/os-release ]; then
		echo "\n\n Cannot found /etc/osrelease\n\n"
		echo "\n\n We can therefore deduce that this variant of Linux is not supported\n\n"
		exit 1
	fi

	source /etc/os-release

	case "$ID" in
		"fedora")
			echo "\n\n You're running on Fedora, which is a supported OS\n\n"
			DETECTED_OS='fedora'
			PKG_MANAGER='sudo dnf'
			;; 
		"ubuntu")
			echo "\n\n You're running on Ubuntu, which is a supported OS\n\n"
			DETECTED_OS='ubuntu'
			PKG_MANAGER='sudo apt'
			;;
		*)
			echo "\n\n You are running on ${ID}, which is an unsupported Linux distro\n\n"
			echo "\n\n Exiting \n\n"
			exit 1
			;;
	esac
elif [ "$(uname -s)" = 'Darwin' ]; then
	if ! command -v brew &>/dev/null; then
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	fi
fi

$PKG_MANAGER install -y git > /dev/null
$PKG_MANAGER update >/dev/null && $PKG_MANAGER upgrade > /dev/null

rm -rf ~/.local/share/sommelier

git clone https://github.com/aroundwithalex/sommelier.git --single-branch  ~/.local/share/sommelier > /dev/null

cd ~/.local/share/sommelier

source install.sh $DETECTED_OS

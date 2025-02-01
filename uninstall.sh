#!/bin/bash

if [ "$(uname -s)" == 'Darwin' ]; then
    for file in ~/.local/share/sommelier/uninstall/mac/*.sh; do
        source $file
    done
    brew autoremove
else
    source /etc/os-release
    if [ "$ID" == 'fedora' ]; then
        for file in ~/.local/share/sommelier/uninstall/fedora/*.sh; do
            source $file
        done
        sudo dnf autoremove -y
    elif [ "$ID" == 'ubuntu' ]; then
        for file in ~/.local/share/sommelier/uninstall/ubuntu/*.sh; do
            source $file
        done
        sudo apt autoremove -y
    else
        echo "\n\n Unable to uninstall applications as you are using an"
        echo "unsupported version of Linu: $OS\n\n"
        exit 1
    fi
fi

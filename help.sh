#!/bin/bash

printf "$(tput setaf 5)\n Sommelier: A tool for automatically building new development environments. \n"
printf "$(tput setaf 5)\n Commands: \n"
printf "$(tput setaf 5)\n\t sommelier-install: Installs all packages, styles and configs for your OS\n"
printf "$(tput setaf 5)\n\t sommelier-uninstall: Removes all packages and styles, along with sommelier itself\n"
printf "$(tput setaf 5)\n\t sommelier-update: Updates your local version of sommelier to the lastest upstream one\n"
printf "$(tput setaf 5)\n\t sommelier-help: Displays this help menu."
printf "$(tput setaf 5)\n\n Usage:\n"
printf "$(tput setaf 5)\n\t $ sommelier-update \n\n"
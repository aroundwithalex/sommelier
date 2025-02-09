#!/bin/bash

printf "$(tput setaf 2)\n Updating sommelier\n"

cd ~/.local/share/sommelier/

if [[ -n $(git status --porcelain) ]] ; then
    git stash &> /dev/null
fi

git checkout main &> /dev/null
git pull &> /dev/null

printf "$(tput setaf 2)\n sommelier successfully updated\n"

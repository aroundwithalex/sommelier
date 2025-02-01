#!/bin/bash

echo "\n\n Updating sommelier\n\n"

cd ~/.local/share/sommelier/

if [[ -n $(git status --porcelain) ]] ; then
    git stash &> /dev/null
fi

git checkout main &> /dev/null
git pull &> /dev/null

echo "\n\n sommelier successfully updated\n\n"

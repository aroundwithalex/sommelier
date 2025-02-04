#!/bin/bash

OS=$1

if [ -z "$1" ]; then
	printf "$(tput setaf 1)\n No operating system specified. Exiting.\n"
	exit 1
fi


if [ -d "/tmp/sommelier" ]; then
	rm -rf /tmp/sommelier
fi

mkdir /tmp/sommelier

for file in $(pwd)/install/${OS}/*.sh; do
	cd /tmp/sommelier &> /dev/null
	source $file
	cd - &> /dev/null
done

for file in $(pwd)/install/generic/tools/*.sh; do
	cd /tmp/sommelier &> /dev/null
	source $file
	cd - &> /dev/null
done

for file in $(pwd)/install/generic/langs/*.sh; do
	cd /tmp/sommelier &> /dev/null
	source $file
	cd - &> /dev/null
done

# TODO: Also pull down background images
for file in $(pwd)/style/${OS}/*.sh; do
	cd /tmp/sommelier &> /dev/null
	source $file
	cd - &> /dev/null
done

rm -rf /tmp/sommelier 
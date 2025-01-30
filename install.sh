#!/bin/bash

OS=$1

if [ -z "$1" ]; then
	echo "\n\n No operating system specified. Exiting.\n\n"
	exit 1
fi

rm -rf /tmp/sommelier
mkdir /tmp/sommelier

for file in $(pwd)/install/${OS}/*.sh; do
	cd /tmp/sommelier
	source $file
	cd -
done

for file in $(pwd)/install/generic/tools/*.sh; do
	cd /tmp/sommelier
	source $file
	cd - 
done

for file in $(pwd)/install/generic/langs/*.sh; do
	cd /tmp/sommelier
	source $file
	cd -
done

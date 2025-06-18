#!/bin/bash

# read all files in the ./shell/

shell=$(pwd)

for file in shell; do
	fullpath=$(realpath $file)
	echo "source $fullpath >> ~/.dotfiles/.zshrc"
done

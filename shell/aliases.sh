#!/bin/bash

function git-commit() {
	echo "Message: "
	read message
	git commit -m $message
}

alias v='nvim'
alias xr="xrandr --output DP-2 --auto --right-of eDP-1"
alias wifimenu='bash ~/.local/bin/rofi-wifi-menu.sh'
alias xr='xrandr --output DP-2 --auto --right-of eDP-1'
alias p3='python3'
alias ss='grim -g "$(slurp)" - | swappy -f -'
alias gs='git status'
alias gaa='git add .'
alias gc=git-commit
alias nf='neofetch'
alias ff='fastfetch'

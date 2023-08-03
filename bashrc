# Example of .bashrc
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

GREEN="\[$(tput setaf 220)\]"
RESET="\[$(tput sgr0)\]"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1="${GREEN}[\u@\h \W]\$ ${RESET}"

source ~/.config/bash_alias.sh

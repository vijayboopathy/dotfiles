#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


# CUSTOM
# LC fixm
export LC_ALL=en_US.UTF-8

# Set kitty as the terminal
TERMINAL=kitty

# List
alias ll='ls -lah'

# Cursor command
cursor() {
	/home/vijay/Applications/cursor.appimage "$@"
} 
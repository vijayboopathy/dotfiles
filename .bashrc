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

# Aliases
alias ll='ls -lah'
alias vim='nvim'

# Cursor command
cursor() {
	/home/vijay/Applications/cursor.appimage "$@"
}
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Doom Emacs
export PATH="$PATH:$HOME/.config/emacs/bin"
alias emacs="emacsclient -c -a 'emacs'"

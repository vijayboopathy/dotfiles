# ZSH config
# Initialize Zsh's advanced completion system
autoload -Uz compinit
compinit

# PATH
export PATH="$HOME/.local/bin:$PATH"

# Starship init script
eval "$(starship init zsh)"

# Atuin init script
eval "$(atuin init zsh --disable-up-arrow)"

# UV shell autocompletion
eval "$(uv generate-shell-completion zsh)"

# alias
alias vim='nvim'
# alias pbcopy='wl-copy'
# alias pbpage='wl-paste'



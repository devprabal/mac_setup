export VISUAL="nvim"
export EDITOR="$VISUAL"
export PATH="/opt/homebrew/bin:$PATH"

alias gits='git status'
alias gitb='git branch'
alias ls='ls -G'
alias batcat='bat'
alias gitlog='git log --all --decorate --oneline --graph'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

autoload -Uz compinit && compinit

export PATH="/opt/homebrew/lib/python3.11/site-packages:$PATH"
eval "$(starship init zsh)"



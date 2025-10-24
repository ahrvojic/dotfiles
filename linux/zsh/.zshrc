export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export EDITOR=nvim

alias history="history 1"
alias ll="ls -al"

source "$HOME/.antidote/antidote.zsh"
antidote load

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

ZSH_DIR="$HOME/.zsh"
if [[ -d "$ZSH_DIR" ]]; then
  for file in "$ZSH_DIR"/*; do source "$file"; done
fi

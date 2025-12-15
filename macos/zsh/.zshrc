export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export EDITOR=nvim

alias history="history 1"
alias ll="ls -al"

source /usr/local/opt/antidote/share/antidote/antidote.zsh
antidote load

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

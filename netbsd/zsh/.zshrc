source $HOME/opt/antidote/antidote.zsh
antidote load

autoload -Uz promptinit && promptinit && prompt pure
zstyle :prompt:pure:prompt:success color cyan

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

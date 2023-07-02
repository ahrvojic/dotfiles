export PATH="$HOME/bin:/usr/local/jdk-17/bin:$PATH"

alias history="history 1"

source $HOME/.antidote/antidote.zsh
antidote load

autoload -Uz promptinit && promptinit && prompt pure
zstyle :prompt:pure:prompt:success color cyan

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down


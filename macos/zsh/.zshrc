export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH"

alias history="history 1"
alias ll="ls -al"

source /usr/local/opt/antidote/share/antidote/antidote.zsh
antidote load

autoload -Uz promptinit && promptinit && prompt pure
zstyle :prompt:pure:prompt:success color cyan

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


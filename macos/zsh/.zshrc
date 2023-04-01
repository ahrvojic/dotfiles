export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH"

source /usr/local/opt/antidote/share/antidote/antidote.zsh
antidote load

export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

autoload -Uz promptinit && promptinit && prompt pure
zstyle :prompt:pure:prompt:success color cyan

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

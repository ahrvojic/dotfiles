export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH"

alias history="history 1"
alias ll="ls -al"

source $HOME/.antidote/antidote.zsh
antidote load

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

autoload -Uz promptinit && promptinit && prompt pure
zstyle :prompt:pure:prompt:success color cyan

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

ZSH_DIR="$HOME/.zsh"
if [[ -d $ZSH_DIR ]]; then
  for file in $ZSH_DIR/*; do
    source "$file"
  done
fi


export PATH="$HOME/.local/bin:/opt/local/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export EDITOR=nvim
export VISUAL=nvim

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FCNTL_LOCK

alias history="history 1"
alias ll="ls -alG"
alias gs="git switch"
alias gsc="git switch -c"

source "$HOME/.antidote/antidote.zsh"
antidote load

autoload -Uz compinit
() {
  setopt local_options extended_glob
  local dump=${ZDOTDIR:-$HOME}/.zcompdump
  if [[ ! -f $dump || $dump -ot ${ZDOTDIR:-$HOME}/.zshrc || $dump -ot ${ZDOTDIR:-$HOME}/.zsh_plugins.txt || -n $dump(#qN.mh+24) ]]; then
    compinit -d $dump
  else
    compinit -C -d $dump
  fi
}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
[[ -n ${terminfo[kcuu1]} ]] && bindkey ${terminfo[kcuu1]} history-substring-search-up
[[ -n ${terminfo[kcud1]} ]] && bindkey ${terminfo[kcud1]} history-substring-search-down
[[ -n ${terminfo[khome]} ]] && bindkey ${terminfo[khome]} beginning-of-line
[[ -n ${terminfo[kend]} ]] && bindkey ${terminfo[kend]} end-of-line
[[ -n ${terminfo[kdch1]} ]] && bindkey ${terminfo[kdch1]} delete-char

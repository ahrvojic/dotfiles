export PATH="$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH"

source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle fzf
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply

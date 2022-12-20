# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='lsd'
alias cat='bat'
alias less='less --mouse --wheel-lines=5'
alias s='git status'
alias d='git diff'
alias pacman='pacman --color=auto'
alias pakku='pakku --color=auto'

# variables
export PS1="[\u@\[$(tput sgr0)\]\[\033[38;5;99m\]\h\[$(tput sgr0)\] \W] \$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\\$ \[$(tput sgr0)\]"
export DOCKER_BUILDKIT=1
export CHROME_BIN=/usr/bin/chromium
export HISTFILESIZE=
export HISTSIZE=

source /usr/share/nvm/init-nvm.sh
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
source /usr/share/bash-completion/completions/git

source ~/.bashrc.d/*

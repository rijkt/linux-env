# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='lsd'
alias cat='bat'
alias less='less --mouse --wheel-lines=5'
alias s='git status'
alias d='git diff'
alias pacman='pacman --color=auto'
alias ..='cd ..'

# variables
export PS1="[\u@\[$(tput sgr0)\]\[\033[38;5;99m\]\h\[$(tput sgr0)\] \W] \$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\\$ \[$(tput sgr0)\]"
export HISTFILESIZE=
export HISTSIZE=
export PATH="$PATH:$HOME/.cargo/bin:$HOME/.local/bin:$PATH:"
## use fd for fzf to respect .gitignore
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
## set the one true editor
export VISUAL=nvim
export EDITOR="$VISUAL"
export GIT_EDITOR="$VISUAL"

# completions
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

# system-specific extensions
if [[ -f ~/.bashrc.d/ ]]; then
    source ~/.bashrc.d/*
fi

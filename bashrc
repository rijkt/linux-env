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
alias ..='cd ..'

# variables
export PS1="[\u@\[$(tput sgr0)\]\[\033[38;5;99m\]\h\[$(tput sgr0)\] \W] \$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\\$ \[$(tput sgr0)\]"
export DOCKER_BUILDKIT=1
export CHROME_BIN=/usr/bin/chromium
export HISTFILESIZE=
export HISTSIZE=
export PATH="$PATH:$HOME/.cargo/bin"
# use fd for fzf to respect .gitignore
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"



# completions
source /usr/share/nvm/init-nvm.sh
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
source ~/git-checkout/gradle-completion/gradle-completion.bash
# output of 'ng completion script'
###-begin-ng-completions-###
_ng_yargs_completions()
{
    local cur_word args type_list

    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=("${COMP_WORDS[@]}")

    # ask yargs to generate completions.
    type_list=$(ng --get-yargs-completions "${args[@]}")

    COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )

    # if no match was found, fall back to filename completion
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
      COMPREPLY=()
    fi

    return 0
}
complete -o bashdefault -o default -F _ng_yargs_completions ng
###-end-ng-completions-###

# system-specific extensions
if [[ -f ~/.bashrc.d/ ]]; then
    source ~/.bashrc.d/*
fi

#!/usr/bin/env zsh
umask 022
limit coredumpsize 0
bindkey -d

# zplug
if [[ -f ~/.zplug/init.zsh ]]; then
    export ZPLUG_LOADFILE=~/.zsh/zplug.zsh
    source ~/.zplug/init.zsh

    if ! zplug check --verbose; then
        printf "Install? [y/n]: "
        if read -q; then
            echo; zplug install
        fi
        echo
    fi
    zplug load
fi

if [[ -f $HOME/.zshrc.local ]]; then
    source $HOME/.zshrc.local
fi

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"


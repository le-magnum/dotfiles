if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# export PATH="/usr/local/anaconda3/bin:$PATH"  # commented out by conda initialize
HOMEBREW_PREFIX="$(brew --prefix)"
source "$HOME/.config/zsh/git-completion.bash"
eval "$(starship init bash)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$($(echo $HOMEBREW_PREFIX)'/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$(echo $HOMEBREW_PREFIX)/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$(echo $HOMEBREW_PREFIX)/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$(echo $HOMEBREW_PREFIX)/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias config='/usr/bin/git --git-dir='$(echo $HOME)'/dotfiles/ --work-tree='$(echo $HOME)
 [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"


. "$HOME/.cargo/env"

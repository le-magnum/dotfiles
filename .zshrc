eval "$(starship init zsh)"

export STARSHIP_CONFIG=~/.config/starship.toml

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$($(echo $HOMEBREW_PREFIX)'/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$(echo $HOMEBREW_PREFIX)/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "$(echo $HOMEBREW_PREFIX)/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="$(echo $HOMEBREW_PREFIX)/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
source $(echo $HOMEBREW_PREFIX)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

zstyle ':completion:*:*:git:*' script ~/.config/zsh/git-completion.bash
fpath=(~/.config./zsh $fpath)

autoload -Uz compinit && compinit

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

alias ls="ls --color=auto"
alias lsl="ls -Alsh --color=auto"

export PATH="/opt/homebrew/opt/dotnet@6/libexec:$PATH"
# Add .NET Core SDK tools
export PATH="$PATH:/Users/workmac/.dotnet/tools"

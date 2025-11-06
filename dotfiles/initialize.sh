#!/bin/bash

git clone --bare https://github.com/le-magnum/dotfiles.git $HOME/dotfiles
# The $@ splits up arguments given with the command which allows you to give sub commands after calling config
function config {
   /usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME $@
}
mkdir -p $HOME/dotfiles/backup/.config/zsh
mkdir -p $HOME/dotfiles/backup/.config/iterm2
mkdir -p $HOME/dotfiles/backup/.config/nvim
config checkout
if [ $? = 0 ]; then
    echo "The config files have been checked out";
    else 
        echo "Moving existing config files to backup folder";
        config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} $HOME/dotfiles/backup/{}
fi;
config checkout
config config status.showUntrackedFiles no

# install all the stuff
brew bundle install --file $HOME/dotfiles/Brewfile
# install packer, remember to run PackerSync afterwards
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# 


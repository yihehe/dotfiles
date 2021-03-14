#!/bin/zsh

git clone --bare https://github.com/yihehe/dotfiles.git $HOME/.gitdf

alias gitdf='git --git-dir=$HOME/.gitdf/ --work-tree=$HOME'
gitdf checkout
gitdf pull
gitdf config status.showUntrackedFiles no

# set up vimrc dirs
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/swap
mkdir -p ~/.vim/undo

if ! grep -q "source ~/.yihe_profile.zsh" ~/.zshrc; then \
    if [[ "$(uname)" == "Darwin" ]]
    then
        sed -i '' '1i\
source ~/.yihe_profile.zsh
' ~/.zshrc
    else
        sed -i '1i\
source ~/.yihe_profile.zsh
' ~/.zshrc
    fi
fi

source ~/.zshrc


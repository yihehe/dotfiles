#!/bin/zsh

git clone --bare https://github.com/yihehe/dotfiles.git $HOME/.gitdf
if [ $? -ne 0 ]
then
    echo "Failed clone"
    exit 1
fi


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
        # macos
        sed -i '' '1i\
source ~/.yihe_profile.zsh
' ~/.zshrc
        sed -i '' 's/^ZSH_THEME="robbyrussell"$/# ZSH_THEME="robbyrussell"/g' .zshrc
    else
        sed -i '1i\
source ~/.yihe_profile.zsh
' ~/.zshrc
        sed -i 's/^ZSH_THEME="robbyrussell"$/# ZSH_THEME="robbyrussell"/g' .zshrc
    fi
fi

source ~/.zshrc


#!/bin/zsh

alias gitdf='git --git-dir=$HOME/.gitdf/ --work-tree=$HOME'

# revert .zshrc
mv ~/.zshrc ~/.zshrc.bak
sed "/^source ~\/.yihe_profile.zsh$/d" ~/.zshrc.bak > ~/.zshrc

if [[ "$(uname)" == "Darwin" ]]
then
    # macos
    sed -i '' 's/^# ZSH_THEME="robbyrussell"$/ZSH_THEME="robbyrussell"/g' .zshrc
else
    sed -i 's/^# ZSH_THEME="robbyrussell"$/ZSH_THEME="robbyrussell"/g' .zshrc
fi

if [ -s "$HOME/.zshrc" ]
then
    rm ~/.zshrc.bak
else
    echo "something went wrong, ./.zshrc backed up in ./.zshrc.bak"
    exit 1
fi

# remove git repo
gitdf rm -r '*'
rm -rf ./.gitdf


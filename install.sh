#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install $(cat ./brew/leaves)
brew install $(cat ./brew/casks)

dotfiles=(.bashrc .gitconfig .gitmessage .tmux.conf .vimrc)
for file in ${dotfiles[@]}; do
 echo ln -s $HOME/mac-dotfiles/$file $HOME/$file
done


#!/bin/bash
mkdir -p ~/.cache/shell
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone git://github.com/creationix/nvm.git ~/.nvm
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    ln -s $HOME/dotfiles/$f $HOME/$f
    echo "$f -> $HOME/$f"
done

#!/bin/bash

cd $(dirname $0)

# git clone vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# cp rc files
cp -r config ~/.vim/
cp local/vimrc.bundles.local ~/.vimrc.bundles.local

ln -s ~/.vim/config/vimrc ~/.vimrc
ln -s ~/.vim/config/gvimrc ~/.gvimrc

# vundle install

echo "Installing vundles..."

vim +PluginInstall +qall

echo "Cloning configuartions..."

mv ~/.vim/config/postcore ~/.vim/config/core

cp local/vimrc.local ~/.vimrc.local
cp local/gvimrc.local ~/.gvimrc.local

echo "Done."

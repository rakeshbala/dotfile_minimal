#!/bin/bash

if [ ! -f $HOME/.bashrc ]; then
    echo "No .bashrc detected. Creating $HOME/.bashrc"
    touch $HOME/.bashrc
fi
source bashrc
echo "Adding 'source $(pwd)/bashrc' to $HOME/.bashrc"
echo "source $(pwd)/bashrc" >> $HOME/.bashrc

if [ ! -f $HOME/.vimrc ]; then
    echo "No .vimrc detected. Creating $HOME/.vimrc"
    touch $HOME/.vimrc
fi
echo "Adding 'so $(pwd)/vimrc' to $HOME/.vimrc"
echo "so $(pwd)/vimrc" >> $HOME/.vimrc

if [ ! -f $HOME/.gitconfig ]; then
    echo "No .gitconfig detected. Creating $HOME/.gitconfig"
    touch $HOME/.gitconfig
fi

echo "Adding 'include $(pwd)/gitconfig' to $HOME/.gitconfig"
echo "[include]\n\tpath = $(pwd)/gitconfig" >> $HOME/.gitconfig

echo "All set!"

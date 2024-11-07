#!/bin/bash

ln -s $(pwd)/bash/.bashrc ~/.bashrc
ln -s $(pwd)/vim/.vimrc ~/.vimrc
ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/gdb/.gdbinit ~/.gdbinit

mkdir -p ~/.config
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/git

ln -sv $(pwd)/config/git/config ~/.config/git/config
ln -sv $(pwd)/config/git/.gitignore ~/.gitignore
ln -sv $(pwd)/config/starship.toml  ~/.config/
[ -d ~/.config/nvim ] || ln -sv $(pwd)/config/nvim ~/.config/nvim

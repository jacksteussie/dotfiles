#!/bin/bash

mkdir -p ~/.config/nvim ~/.config/starship ~/.config/ghostty ~/.config/aerospace/ ~/.config/sketchybar/ ~/.config/borders/
stow -t ~/.config/nvim nvim
stow -t ~/.config starship
stow -t ~/.config/ghostty ghostty
stow -t ~/.config/aerospace aerospace
stow -t ~/.config/sketchybar sketchybar
stow -t ~/.config/borders borders
stow -t ~/.config/fastfetch/ fastfetch

stow -t ~/ zsh
stow -t ~/ tmux

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "darwin detected..."
    brew update
    brew bundle install --file=~/.dotfiles/Brewfile
    open -a AeroSpace
fi

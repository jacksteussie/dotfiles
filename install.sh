#!/bin/bash

mkdir -p ~/.config/nvim ~/.config/starship ~/.config/ghostty ~/.config/aerospace/ ~/.config/sketchybar/ ~/.config/borders/
stow -t ~/.config/nvim nvim
stow -t ~/.config starship
stow -t ~/.config/ghostty ghostty
stow -t ~/.config/aerospace aerospace
stow -t ~/.config/sketchybar sketchybar
stow -t ~/.config/borders borders

stow -t ~/ zsh
stow -t ~/ tmux

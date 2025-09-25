#!/bin/bash

mkdir -p ~/.config/nvim ~/.config/starship ~/.config/ghostty
stow -t ~/.config/nvim nvim
stow -t ~/.config starship
stow -t ~/.config/ghostty ghostty
stow -t ~/ zsh

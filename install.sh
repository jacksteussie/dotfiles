#!/bin/bash

mkdir -p ~/.config/nvim ~/.config/starship ~/.config/ghostty
stow -t ~/.config/nvim nvim
stow -t ~/.config starship ghostty
stow -t ~/ zsh

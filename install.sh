#!/bin/bash

#####################
#       Kitty       #
#####################

rm -rf "$HOME/.config/kitty"
ln -sf "$HOME/dotfiles/kitty" "$HOME/.config"

#####################
#       NeoVim      #
#####################

mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim/init.vim"

#####################
#       i3          #
#####################

rm -rf "$HOME/.config/i3" 
ln -sf "$HOME/dotfiles/i3" "$HOME/.config"

#####################
#       ZSH         #
#####################

mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"
rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/dotfiles/zsh/external" "$HOME/.config/zsh"

#####################
#       ROFI        #
#####################

mkdir -p "$HOME/.config/rofi"
ln -sf "$HOME/dotfiles/rofi/config.rasi" "$HOME/.config/rofi"

#####################
#       Fonts       #
#####################

mkdir -p "$HOME/.fonts"
cp -rf "$HOME/dotfiles/fonts/." "$HOME/.fonts"

#####################
#       Dunst       #
#####################

mkdir -p "$HOME/.config/dunst"
ln -sf "$HOME/dotfiles/dunst/dunstrc" "$HOME/.config/dunst"

#####################
#       Polybar     #
#####################

rm -rf "$HOME/.config/polybar"
ln -sf "$HOME/dotfiles/polybar" "$HOME/.config"

#####################
#       Starship    #
#####################

ln -sf "$HOME/dotfiles/starship.toml" "$HOME/.config"

#####################
#       Conky       #
#####################

rm -rf "$HOME/.config/conky"
ln -sf "$HOME/dotfiles/conky" "$HOME/.config"

#####################
#       Picom       #
#####################

rm -rf "$HOME/.config/picom"
ln -sf "$HOME/dotfiles/picom" "$HOME/.config"

#!/usr/bin/env fish

## install fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

## install fisher plugins
fisher install jethrokuan/z
fisher install jorgebucaran/nvm.fish
fisher install jorgebucaran/fish-nvm-completions

## install virtualfish
pip install virtualfish
vf install

## copy fish config
cp -r ./files/fish ~/.config/fish/config.fish
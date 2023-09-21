#!/usr/bin/env fish

# install fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# install fisher plugins
fisher install jethrokuan/z
fisher install jorgebucaran/nvm.fish

# install virtualfish
# mkdir ~/.virtualenvs
# pip install virtualfish
# vf install
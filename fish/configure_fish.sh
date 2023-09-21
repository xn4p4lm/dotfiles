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

## Set colors
set -L
set -U fish_color_normal normal
set -U fish_color_command 00BF32
set -U fish_color_quote 206676
set -U fish_color_redirection 7CB02C
set -U fish_color_end 8EEB00
set -U fish_color_error 60B9CE
set -U fish_color_param 04819E
set -U fish_color_comment 5C9900
set -U fish_color_match --background=brblue
set -U fish_color_selection white --bold --background=brblack
set -U fish_color_search_match bryellow --background=brblack
set -U fish_color_history_current --bold
set -U fish_color_operator 00a6b2
set -U fish_color_escape 00a6b2
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_valid_path --underline
set -U fish_color_autosuggestion 64DF85
set -U fish_color_user brgreen
set -U fish_color_host normal
set -U fish_color_cancel -r
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D yellow
set -U fish_pager_color_prefix white --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan

## if GH_GH_PAT is set, set GITHUB_TOKEN and set the fish variable globally
if test -n "$GH_GH_PAT"
    set -Ux GITHUB_TOKEN $GH_GH_PAT
end
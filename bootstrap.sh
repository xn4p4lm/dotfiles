#!/usr/bin/env fish

set -x DOTFILE_DIR /workspaces/.codespaces/.persistedshare/dotfiles

# Define fish configs folder
set -x FISH_CONFIG_DIR $DOTFILE_DIR/fish

# Define git configs folder
set -x GIT_CONFIG_DIR $DOTFILE_DIR/git

function source_files -d "Source fish and git config files"
    # install fish plugins
    source $FISH_CONFIG_DIR/install_plugins.fish

    # run configure_fish
    source $FISH_CONFIG_DIR/configure_fish.fish

    # run configure_git.sh
    source $GIT_CONFIG_DIR/configure_git.fish
end

source_files

#!/usr/bin/env fish

# Define variables
set -x FISH_CONFIG_DIR ~/.config/fish
set -x DOTFILES_REPO "https://github.com/xn4p4lm/dotfiles.git"
set -x WORKSPACES_DIR ~/workspaces
set -x DOTFILES_DIR $WORKSPACES_DIR/dotfiles
set -x Currenenv

# Define fish configs folder
set -x FISH_CONFIG_DIR $DOTFILES_DIR/fish

# Define git configs folder
set -x GIT_CONFIG_DIR $DOTFILES_DIR/git

# clone dotfiles repo into workspace if it doesn't exist
if not test -d $DOTFILES_DIR
    git clone $DOTFILES_REPO $DOTFILES_DIR

    # if branch variable is set, checkout that branch
    if test -n "$DOTFILES_BRANCH"
        git -C $DOTFILES_DIR checkout $DOTFILES_BRANCH
    end

    # install fish plugins
    $DOTFILES_DIR/fish/install_plugins.fish

    # run configure_fish
    $DOTFILES_DIR/fish/configure_fish.fish

    # run configure_git.sh
    $DOTFILES_DIR/git/configure_git.fish
else
    # install fish plugins
    $DOTFILES_DIR/fish/install_plugins.fish

    # run configure_fish
    $DOTFILES_DIR/fish/configure_fish.fish

    # run configure_git.sh
    $DOTFILES_DIR/git/configure_git.fish
end





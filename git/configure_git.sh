#!/usr/bin/env fish

# Set aliases
git config --global alias.s status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.tree "log --oneline --graph --decorate --all"
git config --global alias.line "log --abbrev-commit --pretty=oneline"
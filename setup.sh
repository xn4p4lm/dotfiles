#!/bin/bash
echo '[[ -v GH_GH_PAT ]] && export GITHUB_TOKEN=$GH_GH_PAT' >> ~/.bashrc



#run config scripts
./scripts/configure_fish.sh

# if GH_GH_PAT is set, set GITHUB_TOKEN and set the fish variable globally
if [[ -v GH_GH_PAT ]]; then
    echo 'set -gx GITHUB_TOKEN $GH_GH_PAT' >> ~/.config/fish/config.fish
fi

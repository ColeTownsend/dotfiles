#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
    rsync --exclude ".git/"\
          --exclude ".DS_Store"\
          --exclude "bootstrap.sh"\
          --exclude "brew-install.sh"\
          --exclude "cask-install.sh"\
          --exclude "init/"\
          --exclude "README.md"\
          --exclude "LICENSE-MIT.txt"\
          --exclude ".gitconfig.example"\
          -avh\
          --no-perms . ~;

    zsh ~/.zshrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;

unset doIt;

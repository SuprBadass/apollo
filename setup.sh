#!/usr/bin/env bash

SOURCE_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd ~/
shopt -s dotglob
for file in $SOURCE_DIR/dotfiles/*; do
    ln -s "$file"
done

cd ~/.local
ln -s "$SOURCE_DIR/scripts"

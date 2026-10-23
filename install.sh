#!/bin/bash
# Automatically symlink your bashrc to the home directory
ln -sf ~/dotfiles/.bashrc ~/.bashrc

# Ensure the new configuration is loaded
source ~/.bashrc
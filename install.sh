#!/bin/bash

set -xe

cd ~
ln -s `pwd`/iterm2 ~/.iterm2
ln -s `pwd`/tmux ~/.tmux
ln -s `pwd`/tmux.conf ~/.tmux.conf

# Installing tpm
git clone https://github.com/tmux-plugins/tpm ~/tmux/plugins/tpm
git clone https://github.com/jimeh/tmux-themepack.git ~/tmux/tmux-themepack


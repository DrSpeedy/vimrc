#!/bin/bash

hash curl 2>/dev/null || { echo >&2 "I require cURL but it's not installed.  Aborting."; exit 1; }

RETURN_DIR="$(pwd)"

cd /tmp
curl -L https://github.com/DrSpeedy/vimrc/archive/master.zip > drspeedy_vimrc.zip
unzip drspeedy_vimrc.zip
mkdir -p $HOME/.vim
mv vimrc-master/* $HOME/.vim/
cd $RETURN_DIR
ln -s $HOME/.vim/vimrc $HOME/.vimrc

echo "Run vim and type ':PluginInstall' into the command window"
echo "Done."

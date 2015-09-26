#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

chmod a+x ./install-scripts/install.sh
chmod a+x ./system-setup/capl_lock_to_escape_shell.sh
chmod a+x ./system-setup/capl_lock_to_escape_x.sh

echo "Executing installscripts"

./install-scripts/install.sh
./system-setup/capl_lock_to_escape_shell.sh
./system-setup/capl_lock_to_escape_x.sh

chmod a-x ./install-scripts/install.sh
chmod a-x ./system-setup/capl_lock_to_escape_shell.sh
chmod a-x ./system-setup/capl_lock_to_escape_x.sh

echo "Copying files"

cp -r ./dotfiles/.moc ~/.moc

cp ./dotfiles/.vimrc ~/.vimrc
cp -r ./dotfiles/.vim ~/.vim

echo "Installing vim plugins"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

curdir=pwd
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
cd $curdir

echo "Finished"

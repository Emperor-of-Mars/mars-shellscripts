#!/bin/sh

chmod a+x ./install-scripts/install.sh
chmod a+x ./system-setup/capl_lock_to_escape_shell.sh
chmod a+x ./system-setup/capl_lock_to_escape_x.sh

./install-scripts/install.sh
./system-setup/capl_lock_to_escape_shell.sh
./system-setup/capl_lock_to_escape_x.sh

cp ./dotfiles/.vimrc ~/.vimrc
cp -r ./dotfiles/.vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

$curdir = pwd
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
cd $curdir

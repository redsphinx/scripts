#!/bin/sh

echo "what's your username?"
read uname

echo "1. installing git"
sudo apt-get install git

echo "2. installing vim"
sudo apt-get install vim

cd
mkdir .vim
mkdir .vim/bundle
mkdir .vim/colors

echo "... getting vimrc"
git clone https://github.com/redsphinx/vim/ /home/$uname/vimtmp

cp /home/$uname/vimtmp/vimrc /home/$uname/.vimrc
rm -rf /home/$uname/vimtmp

echo "... installing molokai vim colorscheme"
git clone https://github.com/tomasr/molokai/ /home/$uname/molokai

cp /home/$uname/molokai/colors/molokai.vim /home/$uname/.vim/colors/molokai.vim
rm -rf /home/$uname/molokai

echo "... installing vundle"
git clone https://github.com/VundleVim/Vundle.vim.git /home/$uname/.vim/bundle/Vundle.vim

echo "... finishing installing vim"
vim +PluginInstall +qall

echo "3. installing gimp"
sudo apt-get install gimp

echo "4. installing wallch"
sudo apt-get install wallch

echo "5. installing redshift"
sudo apt-get install redshift

echo "6. installing wine"
sudo apt-get install wine

echo "7. installing java"
sudo apt-get install default-jre

echo "8. installing okular"
sudo apt-get install okular

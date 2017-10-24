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

#not sure if this works correctly
#echo "5. installing f.lux"
#sudo apt-get install python-appindicator python-xdg python-pexpect python-gconf python-gtk2 python-glade2 libxxf86vm1
#git clone https://github.com/xflux-gui/xflux-gui.git /tmp/xflux-gui
#python /tmp/xflux-gui/download-xflux.py
#sudo python /tmp/xflux-gui/setup.py install
#sudo mv /usr/local/bin/fluxgui /usr/local/bin/xflux
#sudo chmod +x /usr/local/bin/xflux
#run with command `xflux`

echo "6. installing wine"
sudo apt-get install wine

echo "7. installing java"
sudo apt-get install default-jre

echo "8. installing okular"
sudo apt-get install okular

echo "9. installing virtualenv"
sudo apt-get install virtualenv

echo "10. installing spotify"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

echo "11. installing vlc"
sudo apt-get install vlc

echo "12. installing mendeley"
sudo apt-get install mendeleydesktop

echo "13. installing pip"
sudo apt-get install python-pip

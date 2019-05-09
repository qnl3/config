#!/bin/bash

ConfigFolder="$HOME/.config/nvim"
DataFolder="$HOME/.local/share/nvim"
ConfigFile="$ConfigFolder/init.vim"

mkdir -p $ConfigFolder
mkdir -p $DataFolder

PluginFolder="$DataFolder/plug"
VIMPlug="$DataFolder/site/autoload/plug.vim"

# install configuration file 
cp -f init.vim $ConfigFile


## install vim-plug
if [ ! -f $VIMPlug ];then
	echo "[installing] vim-plug - plugin manager"
	curl -fLo $VIMPlug --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	echo "[skiped] vim-plug - already installed"
fi

#echo "*** configure neovim python plugin ***"
#pip3 show neovim 2&> /dev/null
#if [ $? -ne 0 ];then
#	echo "[installing] neovim python plugin - already installed"
#	pip install neovim
#fi

# make sure gocode is installed
#go get -u github.com/nsf/gocode
	
## install surround.vim
#myPluginInstaller surround "https://github.com/tpope/vim-surround.git" surround
## install nerdtree.vim
#myPluginInstaller nerdtree "https://github.com/scrooloose/nerdtree.git" nerdtree
## install auto-pair.vim
#myPluginInstaller auto-pairs "https://github.com/jiangmiao/auto-pairs.git" auto-pairs
## install vim-go 
#myPluginInstaller vim-go "https://github.com/fatih/vim-go.git" vim-go

nvim +PlugInstall +qall

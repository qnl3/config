#!/bin/bash

ConfigFolder="$HOME/.config/nvim"
DataFolder="$HOME/.local/share/nvim/site"
ConfigFile="$ConfigFolder/init.vim"

PluginFolder="/nvim/site/plug"

# install configuration file 
cp -f init.vim $ConfigFile


## install vim-plug
if [ ! -f $DataFolder/autoload/plug.vim ];then
	echo "[installing] vim-plug - plugin manager"
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	echo "[skiped] vim-plug - already installed"
fi

## install surround.vim
#myPluginInstaller surround "https://github.com/tpope/vim-surround.git" surround
## install nerdtree.vim
#myPluginInstaller nerdtree "https://github.com/scrooloose/nerdtree.git" nerdtree
## install auto-pair.vim
#myPluginInstaller auto-pairs "https://github.com/jiangmiao/auto-pairs.git" auto-pairs
## install vim-go 
#myPluginInstaller vim-go "https://github.com/fatih/vim-go.git" vim-go

nvim +PlugInstall +qall
	

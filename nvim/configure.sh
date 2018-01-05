#!/bin/bash

ConfigFolder="$HOME/.config/nvim"
ConfigFile="$ConfigFolder/init.vim"
PluginDir="$ConfigFolder/nvim/site/plug"

# install configuration file 
cp -f init.vim $ConfigFile

# install plugin manager


# myPlugininstaller name  "repo" path
function myPluginInstaller() {
	if [ -d $HOME/.vim/pack/plugins/start/$1 ]
	then # do nothing
		echo -e "$1.vim ... updating";
		cd "$HOME/.vim/pack/plugins/start/$3"
		git pull
	else # install or update plugin
		git clone $2 $HOME/.vim/pack/plugins/start/$3
		echo -e "$1.vim ... Installed";
	fi
}

## install node.vim
myPluginInstaller node "https://github.com/moll/vim-node.git" node
## install surround.vim
myPluginInstaller surround "https://github.com/tpope/vim-surround.git" surround
## install nerdtree.vim
myPluginInstaller nerdtree "https://github.com/scrooloose/nerdtree.git" nerdtree
## install auto-pair.vim
myPluginInstaller auto-pairs "https://github.com/jiangmiao/auto-pairs.git" auto-pairs
## install vim-go 
myPluginInstaller vim-go "https://github.com/fatih/vim-go.git" vim-go


	

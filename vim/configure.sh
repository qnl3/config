#!/bin/bash

# install vimrc 
cp vimrc ~/.vimrc

mkdir -p ~/.vim/pack/plugins

# myPlugininstaller name  "repo" path
function myPluginInstaller() {
	if [ -d ~/.vim/pack/plugins/start/$1 ]
	then # do nothing
		echo -e "$1.vim ... [\e[32:1mok\e[0m]";
	else # install node.vim
		git clone $2 ~/.vim/bundle/$3
		echo -e "$1.vim ... [\e[32:1mInstalled\e[0m]";

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



	

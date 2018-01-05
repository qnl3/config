#!/bin/bash

# copy vimrc 

cp -f vimrc $HOME/.vimrc
# install pathogen if not already installed

if [ -f ~/.vim/autoload/pathogen.vim ]
then ## do nothing ;
	echo -e "pathogen.vim ... [\e[32:1mok\e[0m]";
else ## install pathogen
	if [ -d ~/.vim/autoload ];then # if dir exists do nothing
		echo "autoload ....... [\e[32:1mok\e[0m]";
	else # make dire and all its parents
		mkdir -p ~/.vim/autoload;
	fi

	if [ -d ~/.vim/bundle ];then # if dir exists do nothing
		echo "bundle ......... [\e[32:1mok\e[0m]";
	else # make dire and all its parents
		mkdir -p ~/.vim/bundle;
	fi

mkdir -p ~/.vim/pack/plugins

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
## install deoplete-goo 
myPluginInstaller deoplete-go "https://github.com/fatih/vim-go.git" deoplete-go



	

#!/bin/bash

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

	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pathogen.vim
fi

# myPlugininstaller name  "repo" path
function myPluginInstaller() {
	if [ -d ~/.vim/bundle/$1 ]
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



	

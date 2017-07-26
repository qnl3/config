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
	  

	

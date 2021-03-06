# Titan's vimfiles

My vim configuration files aims to provide an Integrated Development Environment for some common use and dynamic languages, especially ruby. Some of the configurations are inspired by the great textmate text editor.

The configuration file are using pathogen plugin to let different vim plugin reside in different subfolders to allow for individual management. Therefore, users can easily add new plugins by adding new submodules by git.

And if you find some configuration is missing or can be more useful, please let me know. Thanks in advance.

## Current Plugins
  * ack.vim
  * command-t
  * match-it
  * nerdcommenter
  * nerdtree
  * snipmate.vim
  * snipmate-snippets
  * supertab
  * surround
  * taglist.vim
  * vim-rails
  * zencoding

## Usage

	$ git clone http://github.com/T1tan/vimfiles ~/.vim
	$ cd ~/.vim && git submodule init &&	git submodule update
	$ cd ~ && ln -s .vim/vimrc .vimrc

## For windows users
Edit the original _vimrc file to include the vimrc file here.
And resolve encoding issues by specifying languages and menu settings.
Take my setting as a sample:

	set nocompatible
	source $VIM/vimfiles/vimrc
	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	source $VIMRUNTIME/delmenu.vim
	language messages en_US.utf-8
	behave mswin

## License

I don't know which license to use, maybe GPL version 3. Use it as you like, as long as you do not violate the license of plugins.

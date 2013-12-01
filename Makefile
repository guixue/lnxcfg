CUR_DIR= $(abspath ./)


all: vim

vim: vim-tools
	ln -s $(CUR_DIR)/vim ~/.vim -f
	ln -s $(CUR_DIR)/vimrc ~/.vimrc -f

vim-tools:
	# install vim and related tools
	sudo apt-get install vim
	sudo apt-get install ctags cscope


help:
	@cat Usage.txt

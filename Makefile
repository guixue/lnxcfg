CUR_DIR= $(abspath ./)


all: vim sh

vim: vim-tools
	ln -s $(CUR_DIR)/vim ~/.vim -f
	ln -s $(CUR_DIR)/vimrc ~/.vimrc -f

vim-tools:
	# install vim and related tools
	sudo apt-get install vim
	sudo apt-get install ctags cscope

sh:
	chmod a+x $(CUR_DIR)/git-completion.bash
	chmod a+x $(CUR_DIR)/git-meld.sh
	ln -s $(CUR_DIR)/mybashrc ~/.mybashrc -f
	ln -s $(CUR_DIR)/git-completion.bash ~/.git-completion.bash -f
	ln -s $(CUR_DIR)/git-meld.sh ~/.git-meld.sh -f
	ln -s $(CUR_DIR)/gitconfig ~/.gitconfig -f

help:
	@cat Usage.txt

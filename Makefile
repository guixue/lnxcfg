
install:
	cp .vimrc ~/.vimrc
	cp .vim ~/.vim -rf

ctag:
	wget http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
	tar -zxvf ./ctags-5.8.tar.gz
	cd ctags-5.8/;./configure; make; sudo make install
	rm ctags-5.8 -rf
	rm ctags-5.8.tar.gz



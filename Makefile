clean:
	-rm ~/.vim
	-rm ~/.vimrc

install: clean
	git submodule init
	git submodule update
	ln -s $$(pwd)/vim/ ~/.vim
	ln -s $$(pwd)/vimrc ~/.vimrc
	vim +BundleInstall +qall

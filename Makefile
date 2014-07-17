clean:
	-rm ~/.vim
	-rm ~/.vimrc

install: clean
	ln -s $$(pwd)/vim/ ~/.vim
	ln -s $$(pwd)/vimrc ~/.vimrc
	git submodule update --init
	vim +BundleInstall +qall

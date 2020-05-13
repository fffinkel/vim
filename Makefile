clean:
	-rm -rf ~/.vim
	-rm ~/.vimrc

install: clean
	ln -s ~/cnf/vim/vim/ ~/.vim
	ln -s ~/cnf/vim/vimrc ~/.vimrc
	git submodule update --init
	vim +BundleInstall +qall
